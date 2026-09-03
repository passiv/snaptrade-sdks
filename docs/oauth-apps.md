# Build an OAuth App

SnapTrade OAuth lets your app request access to brokerage accounts that a user already manages in [SnapTrade Personal](https://dashboard.snaptrade.com). The user signs in to SnapTrade, reviews the requested access, and grants your app permission. Your app receives OAuth tokens instead of creating a second SnapTrade user or handling a SnapTrade consumer key for that person.

OAuth is a good fit for read-oriented consumer apps such as portfolio dashboards, analytics tools, tax tools, AI assistants, and personal finance apps.

:::info{title="Limited-time free preview"}
OAuth app access is free for a limited time while we work with developers to test and improve the platform. There is no per-user OAuth fee during the preview, so this is a good time to build an integration, test it with real SnapTrade Personal users, and help shape the product before paid pricing is introduced.

We expect the free preview to run for a few months while we learn from early integrations. Future pricing and timing will be announced separately.
:::

## Why Build With OAuth

- **A shorter integration:** Your app does not register SnapTrade users, store `userSecret` values, sign API requests, or embed the Connection Portal just to access accounts the user already connected.
- **Reusable connections:** A user can share the same SnapTrade-managed brokerage connection with multiple apps instead of creating a separate upstream connection for every app.
- **User-controlled access:** Users manage their brokerage connections in the [SnapTrade Dashboard](https://dashboard.snaptrade.com) and explicitly approve access for each app.
- **Sign-in included:** SnapTrade is also an OpenID Connect provider, so the same authorization request that grants account access can sign the user in to your app and return a verified email address.
- **A path to distribution:** Eligible OAuth apps may be featured to SnapTrade Personal users as SnapTrade expands app discovery and distribution.
- **Free while you build:** During the limited-time preview, you can develop, test, and launch an OAuth integration without per-user OAuth fees.

Because OAuth apps can reuse connections that users already maintain with SnapTrade, future OAuth pricing can be lower than traditional per-user Commercial pricing. Pricing after the preview has not been finalized.

## OAuth or a Commercial Integration?

| Choose OAuth when                                                     | Choose a Commercial integration when                                     |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| Users have or can create a SnapTrade Personal account                 | Your app must create and own the SnapTrade user lifecycle                |
| Users can manage their brokerage connections in SnapTrade             | Your app must fully own the brokerage connection experience              |
| Your app needs `read` access, optionally with `webhook` notifications | Your app needs trading or another capability not available to OAuth apps |
| You want users to grant access to existing connections                | Each connection must belong exclusively to your app's integration        |

OAuth currently supports account data and connection-management workflows, optional asynchronous event notifications, and OpenID Connect sign-in. OAuth does not currently support placing, modifying, or cancelling trades. Personal API keys can support trading for an individual user's own accounts where enabled; Commercial credentials support apps that manage SnapTrade users and connections themselves.

## Scopes

| Scope     | What the user grants                                                                            | Availability                                              |
| --------- | ----------------------------------------------------------------------------------------------- | --------------------------------------------------------- |
| `read`    | View connected accounts and account data.                                                       | Every OAuth app. Required in every authorization request. |
| `openid`  | Sign in to your app and confirm the user's SnapTrade identity, returned as a signed `id_token`. | Every OAuth app.                                          |
| `email`   | View the email address on the user's SnapTrade account, added to the `id_token` as claims.      | Every OAuth app. Only valid together with `openid`.       |
| `webhook` | Receive ongoing connection and account event notifications.                                     | Apps registered in the SnapTrade Dashboard.               |

A few rules the authorization endpoint enforces:

- Every request must include `read`. Identity-only grants are not offered.
- `email` is only accepted alongside `openid`. Requesting `email` on its own is rejected.
- Requesting a scope your app is not approved for is rejected before the consent screen is shown.
- Scopes are granted per authorization. Adding a scope to your app does not upgrade an existing grant: users who authorized an earlier scope set must go through the flow again.

## Before You Start

You need:

- An eligible Commercial Pay-as-you-go SnapTrade account with OAuth app registration enabled.
- An app backend that can keep a client secret and refresh tokens confidential.
- At least one redirect URI. Production redirects must use HTTPS; local testing can use `http://localhost`, `http://127.0.0.1`, or `http://[::1]`.
- A SnapTrade Personal test account with Personal OAuth enabled and at least one brokerage connection. During early access, contact [support@snaptrade.com](mailto:support@snaptrade.com) to enable a test account.

The self-serve OAuth app created in the SnapTrade Dashboard is a **confidential client**. Do not embed its client secret in browser JavaScript, a mobile app, a desktop app, or a distributed CLI. Those clients should send the authorization result to a backend that performs the token exchange and stores tokens securely.

## 1. Register Your App

In the [SnapTrade Dashboard](https://dashboard.snaptrade.com), open **Settings**, select **OAuth App**, and add your callback URLs. During early access, each eligible developer account can register one OAuth app. The app name shown during consent comes from the name of your SnapTrade customer account.

To receive webhooks, also configure a listener URL in the **Webhooks** section of the Dashboard. OAuth apps registered under the same SnapTrade customer use that customer's existing webhook URL, signing key, and custom headers. The `oauthClientId` in each OAuth webhook identifies the receiving app.

When you create the app, SnapTrade shows the `client_id` and `client_secret`. Save the secret immediately: it is shown only once and is stored hashed. If it is lost or exposed, rotate it from the same settings page. Rotation invalidates the previous secret.

Redirect URIs must match exactly, including scheme, host, port, path, and trailing slash. You can register up to 10. For example:

```text
https://app.example.com/oauth/snaptrade/callback
http://127.0.0.1:3000/oauth/snaptrade/callback
```

## 2. Discover the OAuth Endpoints

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
  "scopes_supported": ["openid", "email", "read"],
  "response_types_supported": ["code"],
  "id_token_signing_alg_values_supported": ["RS256"],
  "subject_types_supported": ["public"],
  "code_challenge_methods_supported": ["S256"]
}
```

Most OIDC client libraries and identity providers can configure themselves from this document. Point them at the issuer `https://api.snaptrade.com` and let them discover the rest.

SnapTrade does not expose a `userinfo` endpoint. Every identity claim your app receives is carried in the `id_token`.

## 3. Start Authorization With PKCE

Generate a new high-entropy `state` and PKCE `code_verifier` for every authorization attempt. Store them in the user's server-side login session. Derive the `code_challenge` using SHA-256 and base64url encoding without padding.

Add `openid` to the scope when the authorization should also sign the user in, and `email` when your app needs their email address. When you request `openid`, also generate a `nonce`: SnapTrade echoes it inside the `id_token` so your app can bind that token to this specific authorization attempt.

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

## 4. Handle the Callback

SnapTrade redirects the browser to the registered `redirect_uri` with either:

```text
?code=ONE_TIME_CODE&state=ORIGINAL_STATE
```

or an OAuth error such as:

```text
?error=access_denied&state=ORIGINAL_STATE
```

Before exchanging the code:

1. Reject the callback if `state` is missing or does not exactly match the value in the user's login session.
2. Handle an `error` response without attempting a token exchange.
3. Consume the stored `state` and `code_verifier` so they cannot be reused.

## 5. Exchange the Code

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

When the authorization included `openid`, the response also contains an `id_token`: a signed JWT that identifies the user. Verify it before trusting any claim in it (step 6).

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

Store the following encrypted and associated with the signed-in user in your app:

- `access_token`
- `refresh_token`
- an expiry timestamp computed from `expires_in`
- `scope`
- the SnapTrade Personal user ID, taken from the verified `id_token` `sub` claim

Access tokens are valid for 10 hours (`expires_in` is `36000`). Refresh tokens do not have a fixed time-based expiry. A refresh token remains valid until it is successfully used, revoked, or otherwise invalidated. Because refresh tokens rotate, successfully using one invalidates it and returns a new refresh token that your app must store.

The `id_token` is a sign-in assertion, not a credential to keep. Verify it during the callback, copy the claims you need, and discard it. It is never sent to the SnapTrade API.

Never log authorization codes, access tokens, refresh tokens, ID tokens, or the client secret.

:::info{title="The non-standard `sub` object is deprecated"}
Token responses also include a top-level `sub` object holding `email` and `snaptrade_user_id`. It predates OIDC support and will be removed after a deprecation window. Request `openid` (plus `email` when you need the address) and read identity from the verified `id_token` instead. Its `sub` claim carries exactly the same SnapTrade user ID.
:::

## 6. Verify the ID Token

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

You can then use the supported read and connection endpoints to list the user's connections, accounts, positions, balances, orders, and activities.

The API reference may still show Commercial authentication fields as required. Omit those fields when making a Bearer-token request.

## 8. Receive Webhooks

Request the `webhook` scope alongside `read` when you want SnapTrade to notify your app about supported connection and account events:

```text
scope=read webhook
```

The consent screen asks the user to grant webhook access. SnapTrade sends events only while the user has an active authorization for your OAuth app that includes `webhook`. Adding the scope to your app does not update an existing grant: users who previously granted only `read` must go through the authorization flow again and approve the new scope.

Webhooks are sent to the listener URL configured for the SnapTrade customer that owns the OAuth app. Verify the `Signature` header with that customer's consumer key, and use `oauthClientId` to distinguish apps when the customer has more than one OAuth app.

OAuth webhooks use the versioned `oauth_v1` payload. In this schema, `userId` is the SnapTrade Personal user UUID (the same value as the `id_token` `sub` claim, and as the deprecated `sub.snaptrade_user_id`, from the token exchange), and `connectionId` identifies the brokerage connection. See [Webhooks](https://docs.snaptrade.com/docs/webhooks#oauth-application-webhooks) for the full schema, supported events, delivery behavior, and signature-verification example.

## 9. Refresh Tokens

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
```

SnapTrade rotates refresh tokens. Refreshing invalidates the token you sent and returns a new refresh token with no fixed time-based expiry. Replace the stored refresh token atomically whenever a refresh succeeds; do not keep using the previous value. If an API request returns `401`, refresh once and retry once. If that fails, clear the stored tokens and ask the user to authorize again.

A refresh response never contains an `id_token`, even when the grant includes `openid`. An `id_token` asserts that the user authenticated, and a refresh happens without them present, so re-issuing one there would misstate when they last signed in. Your app receives its `id_token` at the authorization code exchange. If you need a fresh authentication assertion, for example to satisfy a session policy or a `max_age` requirement, send the user through the authorization flow again.

## 10. Revoke Access

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
3. Use a separate SnapTrade Personal test account instead of the developer account that owns the OAuth app.
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
- Request `openid` only when you sign users in, `email` only when you need the address, and `webhook` only when your app needs notifications. Handle users denying any of them.
- Configure a production webhook listener and verify every webhook's `Signature` header.
- Ask existing users to authorize again before relying on any newly requested scope, such as `openid`, `email`, or `webhook`.
- Link users to the SnapTrade Dashboard to add, repair, or remove brokerage connections.
- Explain what brokerage data your app uses and link to a privacy policy.
- Do not describe OAuth as supporting trading until a trading scope is available to your app.

The OAuth preview is the best time to start building: access is free, the integration is smaller than a traditional Commercial implementation, and early apps can give direct feedback on the platform. When your integration is ready, contact SnapTrade to discuss production access and app discovery eligibility.
