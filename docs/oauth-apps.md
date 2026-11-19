# Build an OAuth App

SnapTrade OAuth lets your app request access to brokerage accounts that a user already manages in [SnapTrade Personal](https://dashboard.snaptrade.com). The user signs in to SnapTrade, reviews the requested access, and grants your app permission. Your app receives OAuth tokens instead of creating a second SnapTrade user or handling a SnapTrade consumer key for that person.

To integrate, choose the authentication model, register your app, authorize a user and exchange the code, then call the API and manage token refresh and revocation. The TypeScript and Python SDKs handle the protocol requests; your backend owns sessions, token storage, and refresh coordination.

## Why Build With OAuth

- **A shorter integration:** Your app does not register SnapTrade users, store `userSecret` values, sign API requests, or embed the Connection Portal just to access accounts the user already connected.
- **Reusable connections:** A user can share the same SnapTrade-managed brokerage connection with multiple apps instead of creating a separate upstream connection for every app.
- **Immediate broker access:** All brokers supported by SnapTrade Personal are available to your app immediately because Personal users manage their own connections. Your app does not need separate broker approvals or wait for broker onboarding. See the [Broker Access Guide](https://docs.snaptrade.com/docs/broker-access-guide) for the approval steps and delays that apply to Commercial API-key integrations.
- **User-controlled access:** Users manage their brokerage connections in the [SnapTrade Dashboard](https://dashboard.snaptrade.com) and explicitly approve access for each app.
- **Sign-in included:** SnapTrade is also an OpenID Connect provider, so the same authorization request that grants account access can sign the user in to your app and return a verified email address.
- **A path to distribution:** Eligible OAuth apps may be featured to SnapTrade Personal users as SnapTrade expands app discovery and distribution.

Because OAuth apps can reuse connections that users already maintain with SnapTrade, OAuth pricing is typically lower than traditional per-user Commercial API-key pricing.

<a id="oauth-or-a-commercial-integration"></a>

<a id="commercial-oauth-or-a-commercial-api-key-integration"></a>

## OAuth or a Commercial API-Key Integration?

| Choose OAuth when                                                     | Choose a Commercial API-key integration when                                     |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| Users have or can create a SnapTrade Personal account                 | Your app must create and own the SnapTrade user lifecycle                |
| Users can manage their brokerage connections in SnapTrade             | Your app must fully own the brokerage connection experience              |
| You want users to grant access to existing connections                | Each connection must belong exclusively to your app's integration        |

OAuth supports account data and connection-management workflows, optional asynchronous event notifications, and OpenID Connect sign-in. Apps that request the `trade` scope can also place, modify, and cancel trades where supported by the connected brokerage. Trading is currently in beta. Commercial API Key credentials support apps that manage SnapTrade users and connections themselves.

## Scopes

| Scope | What the user grants |
| --- | --- |
| `openid` | Sign in to your app and confirm the user's SnapTrade identity, returned as a signed `id_token`. |
| `profile` | View the user's name and profile picture, returned as `name` and `picture` claims in the `id_token`. |
| `email` | View the email address on the user's SnapTrade account, added to the `id_token` as claims. |
| `read` | View connected accounts and account data. |
| `trade` | Place, modify, and cancel trades where supported by the connected brokerage. |
| `webhook` | Receive ongoing connection and account event notifications. |

A few rules the authorization endpoint enforces:

- Every request must include `read`. Identity-only grants are not offered.
- `profile` and `email` are only accepted alongside `openid`. Requesting either without `openid` is rejected.
- Requesting a scope your app is not approved for is rejected before the consent screen is shown.
- Scopes are granted per authorization. Adding a scope to your app does not upgrade an existing grant: users who authorized an earlier scope set must go through the flow again.

## Before You Start

You need:

- A Commercial SnapTrade account.
- An app backend that can keep a client secret and refresh tokens confidential.
- At least one redirect URI. Production redirects must use HTTPS; local testing can use `http://localhost`, `http://127.0.0.1`, or `http://[::1]`.
- A SnapTrade Personal account/workspace with at least one brokerage connection, for testing the consent flow.

The self-serve OAuth app created in the SnapTrade Dashboard is a **confidential client**. Do not embed its client secret in browser JavaScript, a mobile app, a desktop app, or a distributed CLI. Those clients should send the authorization result to a backend that performs the token exchange and stores tokens securely.

## 1. Register Your App

In the [SnapTrade Dashboard](https://dashboard.snaptrade.com), select **OAuth Apps** in the left sidebar, create your app, and add your callback URLs. Each developer account can register one **Test** OAuth app and one **Production** OAuth app. Test OAuth apps are limited to **5 users**. The app name shown during consent comes from the name of your SnapTrade customer account.

Creating a Production OAuth app requires the same KYC approval process as Commercial production API access. Complete the [Production Access Application](https://dashboard.snaptrade.com/production-access) before registering your Production app. This is SnapTrade's production approval process; no separate broker approvals are required for your OAuth app.

To receive webhooks, also configure a listener URL in the **Webhooks** section of the Dashboard. OAuth apps registered under the same SnapTrade customer use that customer's existing webhook URL, signing key, and custom headers. The `oauthClientId` in each OAuth webhook identifies the receiving app.

When you create the app, SnapTrade shows the `client_id` and `client_secret`. Save the secret immediately: it is shown only once and is stored hashed. If it is lost or exposed, rotate it from the app's page in **OAuth Apps**. Rotation invalidates the previous secret.

Redirect URIs must match exactly, including scheme, host, port, path, and trailing slash. You can register up to 10. For example:

```text
https://app.example.com/oauth/snaptrade/callback
http://127.0.0.1:3000/oauth/snaptrade/callback
```

<a id="choose-an-implementation-path"></a>

## SDK Setup

This guide uses the TypeScript and Python SDK helpers for the authorization-code lifecycle and generated clients for API operations. Use a standard OAuth client in other languages.

<a id="use-raw-http"></a>
<a id="2-discover-the-oauth-endpoints"></a>

SnapTrade implements [OAuth 2.0](https://www.rfc-editor.org/rfc/rfc6749) with PKCE. The helpers discover endpoints from the [OAuth authorization server metadata](https://api.snaptrade.com/.well-known/oauth-authorization-server), which describes authorization, token and revocation endpoints, scopes, grant types, and client authentication methods. Optional sign-in uses [OpenID Connect discovery](https://api.snaptrade.com/.well-known/openid-configuration). SnapTrade has no `userinfo` endpoint; identity claims are returned in the ID token.

## Application Responsibilities

Your backend must:

- Keep fresh state and a PKCE verifier per authorization attempt in the user's server-side session, with a short expiry. Validate and consume the matching attempt once before handling callback errors or exchanging a code; reject missing, mismatched, expired, or reused state.
- Encrypt and atomically store the current access/refresh token pair, granted scope, and expiry (response arrival time plus the token lifetime). Read the current saved tokens for API calls and refreshes.
- Coordinate refreshes per user's authorization and handle failures according to [Refresh Tokens](#10-refresh-tokens).
- Never log codes, tokens, or the client secret. If using OIDC, verify the ID token, retain only needed claims, and discard the raw ID token.

## Authorize Users and Exchange Codes

Use the helpers below to obtain tokens, then call the API and manage the token lifecycle.

### Use the SDK Helpers

The TypeScript and Python SDKs include authorization-code helpers. Install the SDK for your project:

```sh
npm install snaptrade-typescript-sdk
# For Python projects:
pip install snaptrade-python-sdk
```

The helpers discover endpoints, generate fresh state and S256 PKCE values, exchange a code, and explicitly refresh tokens. Providing a client secret uses HTTP Basic client authentication by default. Keep the helper and confidential client secret on your backend. Existing device authorization helpers remain available separately.

The helpers do not handle callbacks, store tokens, or refresh automatically. These **application-owned helpers are not SDK exports**; implement them in your session and storage layer using the [responsibilities above](#application-responsibilities):

| Application helper (TypeScript / Python) | Role in these examples |
| --- | --- |
| `saveAttempt` / `save_attempt` | Save state and PKCE verifier for one session attempt. |
| `consumeAttempt` / `consume_attempt` | Atomically match and remove an unexpired session attempt; return no attempt for invalid or reused state. |
| `saveTokens` / `save_tokens` | Atomically save the token pair, scope, and computed expiry, using `expiresIn` / `expires_in` seconds. Discard raw ID tokens. |
| `loadTokens` / `load_tokens` | Read the current saved tokens for this authorization. |
| `withUserRefresh` / `with_user_refresh` | Apply the shared refresh coordination and failure rules. |

`userId` / `user_id` in these helpers identifies your app's signed-in user, not a SnapTrade operation parameter.

#### TypeScript

**Setup.** Import the session and storage helpers from your own application module.

```typescript
import { Snaptrade, SnaptradeAuth, SnaptradeOAuth } from "snaptrade-typescript-sdk";
import { saveAttempt, consumeAttempt, saveTokens, loadTokens, withUserRefresh } from "./app-oauth-store";

const oauth = new SnaptradeOAuth({
  clientId: process.env.SNAPTRADE_OAUTH_CLIENT_ID!,
  clientSecret: process.env.SNAPTRADE_OAUTH_CLIENT_SECRET!,
  redirectUri: "https://app.example.com/oauth/snaptrade/callback",
});
```

**Start authorization.** Redirect the user's browser to the returned URL.

```typescript
async function startAuthorization(userId: string) {
  const flow = await oauth.createAuthorizationUrl({ scope: "read" });
  await saveAttempt(userId, flow);
  return flow.url;
}
```

**Handle the callback.** Pass the callback query and the user identified by your server-side session.

```typescript
async function handleCallback(userId: string, query: URLSearchParams) {
  const state = query.get("state");
  if (!state) throw new Error("Missing OAuth state");
  const attempt = await consumeAttempt(userId, state);
  if (!attempt) throw new Error("Invalid or already used OAuth state");
  if (query.has("error")) throw new Error("OAuth authorization was denied or failed");
  const code = query.get("code");
  if (!code) throw new Error("Missing authorization code");

  const tokens = await oauth.exchangeCode({ code, codeVerifier: attempt.codeVerifier });
  await saveTokens(userId, tokens);
  const snaptrade = new Snaptrade({
    auth: SnaptradeAuth.oauth({ accessToken: tokens.accessToken }),
  });
  return snaptrade.accountInformation.listAllUserAccounts();
}
```

**Refresh explicitly.** Load current tokens inside the coordination helper, save the replacement pair, then use the refreshed access token.

```typescript
async function refreshAccounts(userId: string) {
  const refreshed = await withUserRefresh(userId, async () => {
    const current = await loadTokens(userId);
    if (!current.refreshToken) throw new Error("Authorization required");
    const replacement = await oauth.refreshToken({ refreshToken: current.refreshToken });
    await saveTokens(userId, replacement);
    return replacement;
  });
  const snaptrade = new Snaptrade({
    auth: SnaptradeAuth.oauth({ accessToken: refreshed.accessToken }),
  });
  return snaptrade.accountInformation.listAllUserAccounts();
}
```

#### Python

**Setup.** `app_oauth_store` is your own application module.

```python
import os
from snaptrade_client import SnapTrade, SnapTradeAuth, SnapTradeOAuth
from app_oauth_store import save_attempt, consume_attempt, save_tokens, load_tokens, with_user_refresh

oauth = SnapTradeOAuth(
    client_id=os.environ["SNAPTRADE_OAUTH_CLIENT_ID"],
    client_secret=os.environ["SNAPTRADE_OAUTH_CLIENT_SECRET"],
    redirect_uri="https://app.example.com/oauth/snaptrade/callback",
)
```

**Start authorization.** Redirect the user's browser to the returned URL.

```python
def start_authorization(user_id: str):
    flow = oauth.create_authorization_url(scope="read")
    save_attempt(user_id, flow)
    return flow.url
```

**Handle the callback.** `query` contains the callback query parameters; identify the user through your server-side session.

```python
def handle_callback(user_id: str, query: dict[str, str]):
    state = query.get("state")
    if not state:
        raise ValueError("Missing OAuth state")
    attempt = consume_attempt(user_id, state)
    if attempt is None:
        raise ValueError("Invalid or already used OAuth state")
    if "error" in query:
        raise ValueError("OAuth authorization was denied or failed")
    code = query.get("code")
    if not code:
        raise ValueError("Missing authorization code")

    tokens = oauth.exchange_code(code=code, code_verifier=attempt.code_verifier)
    save_tokens(user_id, tokens)
    snaptrade = SnapTrade(auth=SnapTradeAuth.oauth(access_token=tokens.access_token))
    return snaptrade.account_information.list_all_user_accounts()
```

**Refresh explicitly.** The app's per-user helper coordinates calls and shares the result.

```python
def refresh_accounts(user_id: str):
    def refresh_current():
        current = load_tokens(user_id)
        if not current.refresh_token:
            raise RuntimeError("Authorization required")
        replacement = oauth.refresh_token(refresh_token=current.refresh_token)
        save_tokens(user_id, replacement)
        return replacement

    refreshed = with_user_refresh(user_id, refresh_current)
    snaptrade = SnapTrade(auth=SnapTradeAuth.oauth(access_token=refreshed.access_token))
    return snaptrade.account_information.list_all_user_accounts()
```

Token results expose `accessToken`, `refreshToken`, `expiresIn`, `tokenType`, `scope`, and `raw` in TypeScript, and `access_token`, `refresh_token`, `expires_in`, `token_type`, `scope`, and `raw` in Python. Optional fields may be absent. Follow the shared [Refresh Tokens](#10-refresh-tokens) rules when a refresh fails.

For optional sign-in, follow [Verify the ID Token](#6-verify-the-id-token), including its SDK nonce instructions.

<a id="3-start-authorization-with-pkce"></a>
<a id="4-handle-the-callback"></a>
<a id="5-exchange-the-code"></a>

The start and callback examples above replace manual PKCE generation and token requests. The browser returns either `code` and `state`, or an OAuth `error` and `state`. Always validate and consume state before handling either response. The SDK exchanges the one-time code with the matched verifier; it does not validate your session or callback.

## 6. Verify the ID Token

Skip this section unless you request `openid`. The SDK helpers do not validate ID tokens.

When using the SDK authorization helper for sign-in, generate a fresh nonce, add it to the returned authorization URL, and bind it to that same session attempt; the helper does not add one for you.

The `id_token` is a sign-in assertion, not an API credential. Verify it during the callback, associate its `sub` with your local user, retain only the claims your app needs, and discard the token. Read it from `tokens.raw.id_token` in TypeScript or `tokens.raw["id_token"]` in Python before the storage helper discards it.

Never trust an `id_token` you have not verified. Use a standard OIDC or JWT library rather than decoding the JWT yourself.

The following TypeScript functions extend the setup above. Add a `nonce` field to your application-owned attempt record and persist the complete attempt. In the callback, after state validation and code exchange, call `verifyIdentity(tokens.raw, attempt.nonce)` before saving tokens. This requires the `jose` package.

```typescript
import { randomBytes } from "node:crypto";
import { createRemoteJWKSet, jwtVerify } from "jose";

// Fetch discovery once at startup; jose caches and refreshes the signing keys.
const discovery = await fetch("https://api.snaptrade.com/.well-known/openid-configuration");
if (!discovery.ok) throw new Error("OIDC discovery failed");
const metadata = await discovery.json();
if (metadata.issuer !== "https://api.snaptrade.com" || typeof metadata.jwks_uri !== "string") {
  throw new Error("Unexpected OIDC metadata");
}
const jwks = createRemoteJWKSet(new URL(metadata.jwks_uri));

async function startSignIn(userId: string) {
  const flow = await oauth.createAuthorizationUrl({ scope: "openid email read" });
  const nonce = randomBytes(32).toString("base64url");
  const url = new URL(flow.url);
  url.searchParams.set("nonce", nonce);
  await saveAttempt(userId, { ...flow, nonce });
  return url.toString();
}

async function verifyIdentity(raw: Record<string, unknown>, expectedNonce: string) {
  if (typeof raw.id_token !== "string") throw new Error("Missing ID token");
  const { payload: claims } = await jwtVerify(raw.id_token, jwks, {
    algorithms: ["RS256"],
    issuer: "https://api.snaptrade.com",
    audience: process.env.SNAPTRADE_OAUTH_CLIENT_ID!,
    requiredClaims: ["sub", "exp", "iat", "nonce"],
    maxTokenAge: "5m",
  });
  if (claims.nonce !== expectedNonce) throw new Error("ID token nonce mismatch");
  return claims;
}
```

A verification must check all of the following:

1. The RS256 signature, against the key in `https://api.snaptrade.com/.well-known/jwks.json` whose `kid` matches the token header.
2. `iss` equals `https://api.snaptrade.com`.
3. `aud` equals your `client_id`.
4. `exp` is in the future and `iat` is not implausibly old.
5. `nonce` equals the value stored in the login session, when you sent one.

Cache the JWKS and refetch it when you see an unfamiliar `kid`. Never pin a single key: signing keys can be rotated.

### ID Token Claims

| Claim            | Present when                  | Value                                                                                      |
| ---------------- | ----------------------------- | ------------------------------------------------------------------------------------------ |
| `iss`            | always                        | `https://api.snaptrade.com`                                                                |
| `sub`            | always                        | The SnapTrade Personal user ID (UUID). Stable for the user across apps and authorizations. |
| `aud`            | always                        | Your `client_id`                                                                           |
| `exp`, `iat`     | always                        | Expiry and issue time                                                                      |
| `auth_time`      | always                        | When the user authenticated to SnapTrade for this authorization                            |
| `nonce`          | you sent a `nonce`            | The exact value you sent                                                                   |
| `name`           | the `profile` scope was granted | The user's name on their SnapTrade account                                               |
| `picture`        | the `profile` scope was granted | The user's profile picture URL, when available                                           |
| `email`          | the `email` scope was granted | The email address on the user's SnapTrade account, not a brokerage email                   |
| `email_verified` | the `email` scope was granted | Whether SnapTrade has verified that address                                                |

The `sub` claim is the same identifier that appears as `userId` in OAuth webhooks and as `snaptrade_user_id` in the deprecated `sub` object. Key your own user records on it.

If your app links a SnapTrade sign-in to an existing local account by email address, only do so when `email_verified` is `true`. Treating an unverified address as proof of ownership lets someone claim an account they do not own. When it is `false`, fall back to an explicit link step the user confirms while signed in.

## 7. Call the SnapTrade API

Send the access token as a Bearer token. Do not include `clientId`, `consumerKey`, `userId`, `userSecret`, `timestamp`, or `Signature` on an OAuth request, and never send the `id_token` here: it identifies the user to your app, not to the API. The access token identifies the SnapTrade Personal user.

Use the generated API client with the current token from your application's store. These functions use the setup imports above:

```typescript
async function listAccounts(userId: string) {
  const tokens = await loadTokens(userId);
  const snaptrade = new Snaptrade({ auth: SnaptradeAuth.oauth({ accessToken: tokens.accessToken }) });
  return snaptrade.accountInformation.listAllUserAccounts();
}
```

```python
def list_accounts(user_id: str):
    tokens = load_tokens(user_id)
    snaptrade = SnapTrade(auth=SnapTradeAuth.oauth(access_token=tokens.access_token))
    return snaptrade.account_information.list_all_user_accounts()
```

The client sends `Authorization: Bearer …` to the canonical `/accounts/all` endpoint. Accounts are returned in `response.data.results` in TypeScript and `response.body["results"]` in Python. The list can contain different account kinds; select `kind == "investment"` before requesting positions.

You can then use the supported read and connection endpoints to list the user's connections, accounts, positions, balances, orders, and transactions.

The OAuth auth factory selects the supported OAuth operation parameters. For authentication failures, see [General Errors](https://docs.snaptrade.com/docs/requests).

## 8. Trading

OAuth apps can place, modify, and cancel orders where supported by the connected brokerage. Trading is currently in beta.

### Request Trading Permission

Include `trade` alongside the required `read` scope in your authorization request:

```text
scope=read trade
```

If your app also uses sign-in, profile information, email, and webhooks, the scope set is:

```text
scope=openid profile email read trade webhook
```

Request only the scopes your app needs. Users who previously authorized your app without `trade` must go through the authorization flow again to grant trading permission. Refreshing an existing token does not add the scope.

### Use a Trading-Enabled Connection

The user's brokerage connection must also support trading. Granting your app the `trade` scope does not upgrade a read-only connection or enable features the brokerage does not support. Personal users manage their connections in the [SnapTrade Dashboard](https://dashboard.snaptrade.com); direct them there if they need to enable trading on a supported connection.

### Submit and Track Orders

Use the generated client’s `trading` methods with the same OAuth auth factory. TypeScript exposes `placeForceOrder`, `placeMlegOrder`, and `placeCryptoOrder`; Python exposes `place_force_order`, `place_mleg_order`, and `place_crypto_order`. Pass the account ID and order payload required by the linked operation, without Commercial user credentials.

1. Select the user's account and validate the order details for that brokerage.
2. Show the user the order details and available impact and fee information, then obtain their confirmation. See [Order Impact and Confirmation](https://docs.snaptrade.com/docs/order-impact-and-confirmation).
3. Submit the order with the endpoint for the asset: :api[Trading_placeForceOrder] for equities, :api[Trading_placeMlegOrder] for options, or :api[Trading_placeCryptoOrder] for crypto.
4. Track the order's status with :api[AccountInformation_getAccountOrder], using the brokerage order ID returned by the submission. This public beta endpoint returns an order with a `legs` list and `kind`-discriminated instruments and order types. Its request and response schemas and behavior may change without advance notice. A successful submission does not mean the order has filled.

See [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade) for order payloads and brokerage-specific capabilities. Its Connection Portal setup instructions apply to Commercial API-key integrations; OAuth apps use connections managed by Personal users.

## 9. Receive Webhooks

Request the `webhook` scope alongside `read` when you want SnapTrade to notify your app about supported connection and account events:

```text
scope=read webhook
```

The consent screen asks the user to grant webhook access. SnapTrade sends events only while the user has an active authorization for your OAuth app that includes `webhook`. Adding the scope to your app does not update an existing grant: users who previously granted only `read` must go through the authorization flow again and approve the new scope.

Webhooks are sent to the listener URL configured for the SnapTrade customer that owns the OAuth app. Verify the `Signature` header with that customer's consumer key, and use `oauthClientId` to distinguish apps when the customer has more than one OAuth app.

OAuth webhooks use the versioned `oauth_v1` payload. In this schema, `userId` is the SnapTrade Personal user UUID (the same value as the `id_token` `sub` claim, and as the deprecated `sub.snaptrade_user_id`, from the token exchange), and `connectionId` identifies the brokerage connection. See [Webhooks](https://docs.snaptrade.com/docs/webhooks#oauth-application-webhooks) for the full schema, supported events, delivery behavior, and signature-verification example.

## 10. Refresh Tokens

Refresh shortly before the stored access-token expiry using `oauth.refreshToken` / `oauth.refresh_token`, as shown in [the SDK examples](#use-the-sdk-helpers). The helper applies the same client authentication as the code exchange. It does not refresh automatically.

SnapTrade rotates refresh tokens: a successful refresh invalidates the token you sent and returns a replacement. Refresh tokens have no fixed time-based expiry; they remain valid until used, revoked, or otherwise invalidated.

Your app must allow **only one refresh at a time per user's authorization**. Concurrent requests share that result; different users refresh independently. Load the current saved refresh token, then atomically persist the full replacement pair and expiry before allowing another refresh. The SDK does not coordinate this for you.

On a network or `5xx` failure, retain the saved tokens for retry. An expired or revoked authorization, including `invalid_grant`, requires clearing unusable tokens and asking the user to authorize again. If an API request returns `401`, refresh once and retry that API request **at most once after a successful refresh**. Do not loop, or clear tokens solely because of a transient refresh failure or a failed API retry.

A refresh response never contains an `id_token`, even when the grant includes `openid`. An `id_token` asserts that the user authenticated, and a refresh happens without them present, so re-issuing one there would misstate when they last signed in. Your app receives its `id_token` at the authorization code exchange. If you need a fresh authentication assertion, for example to satisfy a session policy or a `max_age` requirement, send the user through the authorization flow again.

## 11. Revoke Access

Let users disconnect SnapTrade from inside your app. Use the current refresh token from your store, revoke it from the backend, and only after success remove that authorization's locally stored tokens. Coordinate disconnect with in-flight refreshes so a rotated pair cannot survive the disconnect. The following fragments belong inside that application-owned operation and reuse the `oauth` and `current` values from the SDK examples:

```typescript
await oauth.revokeToken({ token: current.refreshToken!, tokenTypeHint: "refresh_token" });
```

```python
oauth.revoke_token(token=current.refresh_token, token_type_hint="refresh_token")
```

Require a stored refresh token before calling these methods. A failed revocation must be surfaced for retry rather than silently reported as a successful disconnect.

Revoking an access token invalidates every copy of that access token; its refresh token remains valid. Revoking a refresh token invalidates that token and its paired access token. Other independently issued token pairs remain valid. Revoking all credentials for a user/app in the Dashboard is a separate action; these helpers do not revoke every session.

## Test Locally

1. Register a loopback callback such as `http://127.0.0.1:3000/oauth/snaptrade/callback` alongside your production callback.
2. If testing webhooks, expose a local listener through an HTTPS tunnel and configure that public URL in the **Webhooks** section of the Dashboard.
3. Use a SnapTrade Personal workspace as the test user granting access to your app.
4. Connect the SnapTrade Sandbox brokerage or a test brokerage connection from the SnapTrade Dashboard.
5. Run the authorization flow with `scope=openid email read webhook` and confirm the consent page lists every permission you requested.
6. Use the SDK callback exchange on your backend and list accounts with its OAuth API client.
7. Verify the `id_token`: check the signature against the JWKS, confirm `iss`, `aud`, and `nonce` match what you sent, and use the verified `sub` as the SnapTrade identity. Skip identity checks when not requesting `openid`.
8. Confirm `email_verified` matches the real state of the test account, including after leaving an address unverified.
9. Refresh the token and confirm the response contains no `id_token`.
10. Confirm `scope=email read` (without `openid`) is rejected at the authorization endpoint.
11. Add, reconnect, refresh, or remove a test connection and confirm your listener receives an `oauth_v1` payload with the expected `oauthClientId` and `userId`.
12. Verify the same account is still visible in the SnapTrade Dashboard and can be granted to another test app without creating another brokerage connection.
13. Test refresh-token rotation, a forced `401`, denial at the consent screen, a mismatched `state`, an expired code, and an unregistered redirect URI.
14. Revoke a refresh token and confirm it and its paired access token stop working. Confirm independently issued pairs are unaffected; Dashboard-wide revocation is a separate test.

## Production Checklist

- Use HTTPS for every production redirect URI.
- Keep the client secret and tokens on your backend.
- Use authorization code + PKCE with `S256`.
- Generate and verify a fresh `state` for every attempt, and a fresh `nonce` whenever you request `openid`.
- Require an exact redirect URI match.
- Encrypt refresh tokens at rest and never log them.
- Verify every `id_token` before trusting it: RS256 signature against the JWKS key matching the token's `kid`, plus `iss`, `aud`, `exp`, and `nonce`.
- Cache the JWKS and refetch on an unknown `kid` instead of pinning one signing key.
- Only link a SnapTrade sign-in to an existing local account by email when `email_verified` is `true`.
- Key your user records on the `id_token` `sub` claim, and migrate off the deprecated top-level `sub` object.
- Replace rotated refresh tokens atomically.
- Retry at most once after refreshing a failed API request.
- Provide an in-app disconnect action that revokes access.
- Request `openid` only when you sign users in, `profile` only when you need the name or profile picture, `email` only when you need the address, `trade` only when your app needs trading, and `webhook` only when your app needs notifications. Handle users denying any of them.
- Configure a production webhook listener and verify every webhook's `Signature` header.
- Ask existing users to authorize again before relying on any newly requested scope, such as `openid`, `email`, or `webhook`.
- Link users to the SnapTrade Dashboard to add, repair, or remove brokerage connections.
- Explain what brokerage data your app uses and link to a privacy policy.

When your integration is ready, contact SnapTrade to discuss app discovery eligibility.
