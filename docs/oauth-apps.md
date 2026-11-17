# Build an OAuth App

SnapTrade OAuth lets your app request access to brokerage accounts that a user already manages in [SnapTrade Personal](https://dashboard.snaptrade.com). The user signs in to SnapTrade, reviews the requested access, and grants your app permission. Your app receives OAuth tokens instead of creating a second SnapTrade user or handling a SnapTrade consumer key for that person.

To integrate, choose the authentication model, register your app, authorize a user and exchange the code, then call the API and manage token refresh and revocation. SDKs and raw HTTP are two ways to implement that same lifecycle.

## Why Build With OAuth

- **A shorter integration:** Your app does not register SnapTrade users, store `userSecret` values, sign API requests, or embed the Connection Portal just to access accounts the user already connected.
- **Reusable connections:** A user can share the same SnapTrade-managed brokerage connection with multiple apps instead of creating a separate upstream connection for every app.
- **Immediate broker access:** All brokers supported by SnapTrade Personal are available to your app immediately because Personal users manage their own connections. Your app does not need separate broker approvals or wait for broker onboarding. See the [Broker Access Guide](https://docs.snaptrade.com/docs/broker-access-guide) for the approval steps and delays that apply to Commercial API-key integrations.
- **User-controlled access:** Users manage their brokerage connections in the [SnapTrade Dashboard](https://dashboard.snaptrade.com) and explicitly approve access for each app.
- **Sign-in included:** SnapTrade is also an OpenID Connect provider, so the same authorization request that grants account access can sign the user in to your app and return a verified email address.
- **A path to distribution:** Eligible OAuth apps may be featured to SnapTrade Personal users as SnapTrade expands app discovery and distribution.

Because OAuth apps can reuse connections that users already maintain with SnapTrade, OAuth pricing is typically lower than traditional per-user Commercial API-key pricing.

<a id="oauth-or-a-commercial-integration"></a>

## Commercial OAuth or a Commercial API-Key Integration?

| Choose Commercial OAuth when                                                     | Choose a Commercial API-key integration when                                     |
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

## Choose an Implementation Path

After registering your app, choose **one** path:

- [SDK helpers](#use-the-sdk-helpers) for TypeScript and Python: the SDK handles discovery, PKCE generation, and token requests.
- [Raw HTTP](#use-raw-http): use an HTTP client or standard OAuth library in your language.

Both paths share the [application responsibilities](#application-responsibilities) and [refresh rules](#10-refresh-tokens). [OIDC sign-in](#6-verify-the-id-token) is optional for either path.

## Application Responsibilities

Whichever implementation you choose, your backend must:

- Keep fresh state and a PKCE verifier per authorization attempt in the user's server-side session, with a short expiry. Validate and consume the matching attempt once before handling callback errors or exchanging a code; reject missing, mismatched, expired, or reused state.
- Encrypt and atomically store the current access/refresh token pair, granted scope, and expiry (response arrival time plus the token lifetime). Read the current saved tokens for API calls and refreshes.
- Coordinate refreshes per user's authorization and handle failures according to [Refresh Tokens](#10-refresh-tokens).
- Never log codes, tokens, or the client secret. If using OIDC, verify the ID token, retain only needed claims, and discard the raw ID token.

## Authorize Users and Exchange Codes

Use either implementation below to obtain tokens, then continue with the shared API and token lifecycle guidance.

### Use the SDK Helpers

TypeScript `snaptrade-typescript-sdk` **13.3.0** and Python `snaptrade-python-sdk` **13.3.0** include explicit authorization-code helpers. Install these versions or later:

```sh
npm install snaptrade-typescript-sdk@^13.3.0
# For Python projects:
pip install "snaptrade-python-sdk>=13.3.0"
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
  return snaptrade.accountInformation.listUserAccounts();
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
  return snaptrade.accountInformation.listUserAccounts();
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
    return snaptrade.account_information.list_user_accounts()
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
    return snaptrade.account_information.list_user_accounts()
```

Token results expose `accessToken`, `refreshToken`, `expiresIn`, `tokenType`, `scope`, and `raw` in TypeScript, and `access_token`, `refresh_token`, `expires_in`, `token_type`, `scope`, and `raw` in Python. Optional fields may be absent. Follow the shared [Refresh Tokens](#10-refresh-tokens) rules when a refresh fails.

For optional sign-in, follow [Verify the ID Token](#6-verify-the-id-token), including its SDK nonce instructions.

SDK users can skip raw HTTP and continue with [Call the SnapTrade API](#7-call-the-snaptrade-api) and the shared lifecycle guidance.

### Use Raw HTTP

Implement discovery, authorization, and token requests directly. Apply the [application responsibilities](#application-responsibilities) above, then continue with the shared API and lifecycle guidance.

#### 2. Discover the OAuth Endpoints

Read the authorization server metadata instead of hard-coding individual endpoints:

```http
GET https://api.snaptrade.com/.well-known/oauth-authorization-server
Accept: application/json
```

The metadata includes the authorization, token, revocation, and registration endpoints, supported scopes and grant types, and supported token authentication methods.

```typescript
const metadata = await fetch(
  "https://api.snaptrade.com/.well-known/oauth-authorization-server",
).then((response) => response.json());

const authorizationEndpoint = metadata.authorization_endpoint;
const tokenEndpoint = metadata.token_endpoint;
const revocationEndpoint = metadata.revocation_endpoint;
```

If your app signs users in, read the OpenID Connect discovery document instead. It carries the same endpoints plus the fields an OIDC client needs:

```http
GET https://api.snaptrade.com/.well-known/openid-configuration
Accept: application/json
```

```json
{
  "issuer": "https://api.snaptrade.com",
  "authorization_endpoint": "https://dashboard.snaptrade.com/oauth/authorize",
  "token_endpoint": "https://api.snaptrade.com/oauth/token/",
  "jwks_uri": "https://api.snaptrade.com/.well-known/jwks.json",
  "scopes_supported": ["openid", "profile", "email", "read"],
  "response_types_supported": ["code"],
  "id_token_signing_alg_values_supported": ["RS256"],
  "subject_types_supported": ["public"],
  "code_challenge_methods_supported": ["S256"]
}
```

Most OIDC client libraries and identity providers can configure themselves from this document. Point them at the issuer `https://api.snaptrade.com` and let them discover the rest.

SnapTrade does not expose a `userinfo` endpoint. Every identity claim your app receives is carried in the `id_token`.

#### 3. Start Authorization With PKCE

Generate a new high-entropy `state` and PKCE `code_verifier` for every authorization attempt. Store them in the user's server-side login session. Derive the `code_challenge` using SHA-256 and base64url encoding without padding.

Add `openid` to the scope when the authorization should also sign the user in, `profile` when your app needs their name and profile picture, and `email` when it needs their email address. Add `trade` alongside `read` when your app needs trading. When you request `openid`, also generate a `nonce`: SnapTrade echoes it inside the `id_token` so your app can bind that token to this specific authorization attempt.

```typescript
import crypto from "node:crypto";

const base64url = (value: Buffer) => value.toString("base64url");

const state = base64url(crypto.randomBytes(32));
const nonce = base64url(crypto.randomBytes(32));
const codeVerifier = base64url(crypto.randomBytes(64));
const codeChallenge = base64url(
  crypto.createHash("sha256").update(codeVerifier).digest(),
);

const authorizationUrl = new URL(authorizationEndpoint);
authorizationUrl.searchParams.set("response_type", "code");
authorizationUrl.searchParams.set(
  "client_id",
  process.env.SNAPTRADE_OAUTH_CLIENT_ID!,
);
authorizationUrl.searchParams.set(
  "redirect_uri",
  "https://app.example.com/oauth/snaptrade/callback",
);
authorizationUrl.searchParams.set("scope", "openid email read webhook");
authorizationUrl.searchParams.set("state", state);
authorizationUrl.searchParams.set("nonce", nonce);
authorizationUrl.searchParams.set("code_challenge", codeChallenge);
authorizationUrl.searchParams.set("code_challenge_method", "S256");
```

Store `nonce` in the same server-side login session as `state` and `code_verifier`. Request only the scopes your app actually uses: every extra permission is one more thing the user has to approve.

Redirect the user's browser to `authorizationUrl`. The user signs in to SnapTrade and approves or denies your app's request. The consent screen lists each requested permission, including sign-in and email access.

#### 4. Handle the Callback

SnapTrade redirects the browser to the registered `redirect_uri` with either:

```text
?code=ONE_TIME_CODE&state=ORIGINAL_STATE
```

or an OAuth error such as:

```text
?error=access_denied&state=ORIGINAL_STATE
```

Apply the state validation and one-use consumption rules in [Application Responsibilities](#application-responsibilities). Handle any OAuth error without exchanging a code; otherwise require a non-empty `code` and use the verifier from that matched session attempt.

#### 5. Exchange the Code

Exchange the one-time code from your backend. Authenticate the OAuth client with HTTP Basic and send the body as `application/x-www-form-urlencoded`.

```typescript
const clientId = process.env.SNAPTRADE_OAUTH_CLIENT_ID!;
const clientSecret = process.env.SNAPTRADE_OAUTH_CLIENT_SECRET!;

const response = await fetch(tokenEndpoint, {
  method: "POST",
  headers: {
    Accept: "application/json",
    Authorization: `Basic ${Buffer.from(`${clientId}:${clientSecret}`).toString("base64")}`,
    "Content-Type": "application/x-www-form-urlencoded",
  },
  body: new URLSearchParams({
    grant_type: "authorization_code",
    code,
    code_verifier: codeVerifier,
    redirect_uri: "https://app.example.com/oauth/snaptrade/callback",
  }),
});

if (!response.ok) {
  throw new Error(
    `Token exchange failed: ${response.status} ${await response.text()}`,
  );
}

const tokens = await response.json();
```

When the authorization included `openid`, the response also contains an `id_token`: a signed JWT that identifies the user. Verify it before trusting any claim in it ([Verify the ID Token](#6-verify-the-id-token)).

```json
{
  "access_token": "...",
  "refresh_token": "...",
  "expires_in": 36000,
  "token_type": "Bearer",
  "scope": "openid email read webhook",
  "id_token": "eyJhbGciOiJSUzI1NiIsImtpZCI6..."
}
```

Store the token response using the encrypted, atomic storage contract in [Application Responsibilities](#application-responsibilities), using `access_token`, `refresh_token`, and `scope`, with expiry computed from `expires_in` seconds. Access tokens are valid for 10 hours (`expires_in` is `36000`). See [Refresh Tokens](#10-refresh-tokens) for rotation and refresh-token lifetime.

:::info{title="The non-standard `sub` object is deprecated"}
Token responses also include a top-level `sub` object holding `email` and `snaptrade_user_id`. It predates OIDC support and will be removed after a deprecation window. Request `openid` (plus `email` when you need the address) and read identity from the verified `id_token` instead. Its `sub` claim carries exactly the same SnapTrade user ID.
:::

## 6. Verify the ID Token

For either implementation path, skip this section unless you request `openid`. The SDK helpers do not validate ID tokens.

When using the SDK authorization helper for sign-in, generate a fresh nonce, add it to the returned authorization URL, and bind it to that same session attempt; the helper does not add one for you.

The `id_token` is a sign-in assertion, not an API credential. Verify it during the callback, associate its `sub` with your local user, retain only the claims your app needs, and discard the token. SDK code reads it from `tokens.raw`; raw HTTP code reads `tokens.id_token`.

Never trust an `id_token` you have not verified. Use a standard OIDC or JWT library rather than decoding the JWT yourself.

```typescript
import { createRemoteJWKSet, jwtVerify } from "jose";

// Create this once at startup: it caches keys and refetches on an unknown kid.
const jwks = createRemoteJWKSet(new URL(metadata.jwks_uri));

const { payload: claims } = await jwtVerify(tokens.id_token, jwks, {
  issuer: metadata.issuer, // "https://api.snaptrade.com"
  audience: clientId,
});

if (claims.nonce !== sessionNonce) {
  throw new Error("ID token nonce mismatch");
}

const snapTradeUserId = claims.sub;
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

```http
GET https://api.snaptrade.com/accounts
Authorization: Bearer ACCESS_TOKEN
Accept: application/json
```

You can then use the supported read and connection endpoints to list the user's connections, accounts, positions, balances, orders, and transactions.

The API reference may still show Commercial authentication fields as required. Omit those fields when making a Bearer-token request.

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

Use the trading endpoints with the same Bearer access token described above. Omit Commercial authentication fields such as `clientId`, `consumerKey`, `userId`, `userSecret`, `timestamp`, and `Signature`.

1. Select the user's account and validate the order details for that brokerage.
2. Show the user the order details and available impact and fee information, then obtain their confirmation. See [Order Impact and Confirmation](https://docs.snaptrade.com/docs/order-impact-and-confirmation).
3. Submit the order with the endpoint for the asset: :api[Trading_placeForceOrder] for equities, :api[Trading_placeMlegOrder] for options, or :api[Trading_placeCryptoOrder] for crypto.
4. Track the order's status with :api[AccountInformation_getUserAccountOrderDetailV2], using the brokerage order ID returned by the submission. A successful submission does not mean the order has filled.

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

Refresh shortly before the access token expires. Use the same client authentication as the initial token exchange:

```typescript
const response = await fetch(tokenEndpoint, {
  method: "POST",
  headers: {
    Accept: "application/json",
    Authorization: `Basic ${Buffer.from(`${clientId}:${clientSecret}`).toString("base64")}`,
    "Content-Type": "application/x-www-form-urlencoded",
  },
  body: new URLSearchParams({
    grant_type: "refresh_token",
    refresh_token: storedRefreshToken,
  }),
});

const refreshedTokens = await response.json();
if (!response.ok) {
  throw new Error(`Refresh failed: ${refreshedTokens.error ?? response.status}`);
}
```

SnapTrade rotates refresh tokens: a successful refresh invalidates the token you sent and returns a replacement. Refresh tokens have no fixed time-based expiry; they remain valid until used, revoked, or otherwise invalidated.

For both SDK and raw HTTP integrations, your app must allow **only one refresh at a time per user's authorization**. Concurrent requests share that result; different users refresh independently. Load the current saved refresh token, then atomically persist the full replacement pair and expiry before allowing another refresh. The SDK does not coordinate this for you.

On a network or `5xx` failure, retain the saved tokens for retry. An expired or revoked authorization, including `invalid_grant`, requires clearing unusable tokens and asking the user to authorize again. If an API request returns `401`, refresh once and retry that API request **at most once after a successful refresh**. Do not loop, or clear tokens solely because of a transient refresh failure or a failed API retry.

A refresh response never contains an `id_token`, even when the grant includes `openid`. An `id_token` asserts that the user authenticated, and a refresh happens without them present, so re-issuing one there would misstate when they last signed in. Your app receives its `id_token` at the authorization code exchange. If you need a fresh authentication assertion, for example to satisfy a session policy or a `max_age` requirement, send the user through the authorization flow again.

## 11. Revoke Access

Let users disconnect SnapTrade from inside your app. Revoke the refresh token from your backend, then delete all locally stored SnapTrade tokens:

```typescript
await fetch(revocationEndpoint, {
  method: "POST",
  headers: {
    Accept: "application/json",
    Authorization: `Basic ${Buffer.from(`${clientId}:${clientSecret}`).toString("base64")}`,
    "Content-Type": "application/x-www-form-urlencoded",
  },
  body: new URLSearchParams({
    token: storedRefreshToken,
    token_type_hint: "refresh_token",
  }),
});
```

## Test Locally

1. Register a loopback callback such as `http://127.0.0.1:3000/oauth/snaptrade/callback` alongside your production callback.
2. If testing webhooks, expose a local listener through an HTTPS tunnel and configure that public URL in the **Webhooks** section of the Dashboard.
3. Use a SnapTrade Personal workspace as the test user granting access to your app.
4. Connect the SnapTrade Sandbox brokerage or a test brokerage connection from the SnapTrade Dashboard.
5. Run the authorization flow with `scope=openid email read webhook` and confirm the consent page lists every permission you requested.
6. Exchange the code from your backend and call `GET /accounts` with only the Bearer token.
7. Verify the `id_token`: check the signature against the JWKS, confirm `iss`, `aud`, and `nonce` match what you sent, and confirm `sub` is the same UUID as `sub.snaptrade_user_id` in the token response.
8. Confirm `email_verified` matches the real state of the test account, including after leaving an address unverified.
9. Refresh the token and confirm the response contains no `id_token`.
10. Confirm `scope=email read` (without `openid`) is rejected at the authorization endpoint.
11. Add, reconnect, refresh, or remove a test connection and confirm your listener receives an `oauth_v1` payload with the expected `oauthClientId` and `userId`.
12. Verify the same account is still visible in the SnapTrade Dashboard and can be granted to another test app without creating another brokerage connection.
13. Test refresh-token rotation, a forced `401`, denial at the consent screen, a mismatched `state`, an expired code, and an unregistered redirect URI.
14. Revoke access and confirm the refresh token can no longer obtain an access token or receive new webhooks.

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
