# Build an OAuth App

SnapTrade OAuth lets your app request access to brokerage accounts that a user already manages in [SnapTrade Personal](https://dashboard.snaptrade.com). The user signs in to SnapTrade, reviews the requested access, and grants your app permission. Your app receives OAuth tokens instead of creating a second SnapTrade user or handling a SnapTrade consumer key for that person.

OAuth is a good fit for read-oriented consumer apps such as portfolio dashboards, analytics tools, tax tools, AI assistants, and personal finance apps.

:::info Limited-time free preview
OAuth app access is free for a limited time while we work with developers to test and improve the platform. There is no per-user OAuth fee during the preview, so this is a good time to build an integration, test it with real SnapTrade Personal users, and help shape the product before paid pricing is introduced.

We expect the free preview to run for a few months while we learn from early integrations. Future pricing and timing will be announced separately.
:::

## Why Build With OAuth

- **A shorter integration:** Your app does not register SnapTrade users, store `userSecret` values, sign API requests, or embed the Connection Portal just to access accounts the user already connected.
- **Reusable connections:** A user can share the same SnapTrade-managed brokerage connection with multiple apps instead of creating a separate upstream connection for every app.
- **User-controlled access:** Users manage their brokerage connections in the [SnapTrade Dashboard](https://dashboard.snaptrade.com) and explicitly approve access for each app.
- **A path to distribution:** Eligible OAuth apps may be featured to SnapTrade Personal users as SnapTrade expands app discovery and distribution.
- **Free while you build:** During the limited-time preview, you can develop, test, and launch an OAuth integration without per-user OAuth fees.

Because OAuth apps can reuse connections that users already maintain with SnapTrade, future OAuth pricing can be lower than traditional per-user Commercial pricing. Pricing after the preview has not been finalized.

## OAuth or a Commercial Integration?

| Choose OAuth when | Choose a Commercial integration when |
| --- | --- |
| Users have or can create a SnapTrade Personal account | Your app must create and own the SnapTrade user lifecycle |
| Users can manage their brokerage connections in SnapTrade | Your app must fully own the brokerage connection experience |
| Your app needs the currently available `read` scope | Your app needs trading or another capability not available to OAuth apps |
| You want users to grant access to existing connections | Each connection must belong exclusively to your app's integration |

OAuth currently supports account data and connection-management workflows under the `read` scope. It does not currently support placing, modifying, or cancelling trades. Personal API keys can support trading for an individual user's own accounts where enabled; Commercial credentials support apps that manage SnapTrade users and connections themselves.

## Before You Start

You need:

- An eligible Commercial Pay-as-you-go SnapTrade account with OAuth app registration enabled.
- An app backend that can keep a client secret and refresh tokens confidential.
- At least one redirect URI. Production redirects must use HTTPS; local testing can use `http://localhost`, `http://127.0.0.1`, or `http://[::1]`.
- A SnapTrade Personal test account with Personal OAuth enabled and at least one brokerage connection. During early access, contact [support@snaptrade.com](mailto:support@snaptrade.com) to enable a test account.

The self-serve OAuth app created in the SnapTrade Dashboard is a **confidential client**. Do not embed its client secret in browser JavaScript, a mobile app, a desktop app, or a distributed CLI. Those clients should send the authorization result to a backend that performs the token exchange and stores tokens securely.

## 1. Register Your App

In the [SnapTrade Dashboard](https://dashboard.snaptrade.com), open **Settings**, select **OAuth App**, and add your callback URLs. During early access, each eligible developer account can register one OAuth app. The app name shown during consent comes from the name of your SnapTrade customer account.

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

The metadata includes the authorization, token, revocation, and registration endpoints, supported grant types, and supported token authentication methods.

```ts
const metadata = await fetch(
  'https://api.snaptrade.com/.well-known/oauth-authorization-server',
).then((response) => response.json());

const authorizationEndpoint = metadata.authorization_endpoint;
const tokenEndpoint = metadata.token_endpoint;
const revocationEndpoint = metadata.revocation_endpoint;
```

## 3. Start Authorization With PKCE

Generate a new high-entropy `state` and PKCE `code_verifier` for every authorization attempt. Store them in the user's server-side login session. Derive the `code_challenge` using SHA-256 and base64url encoding without padding.

```ts
import crypto from 'node:crypto';

const base64url = (value: Buffer) => value.toString('base64url');

const state = base64url(crypto.randomBytes(32));
const codeVerifier = base64url(crypto.randomBytes(64));
const codeChallenge = base64url(
  crypto.createHash('sha256').update(codeVerifier).digest(),
);

const authorizationUrl = new URL(authorizationEndpoint);
authorizationUrl.searchParams.set('response_type', 'code');
authorizationUrl.searchParams.set('client_id', process.env.SNAPTRADE_OAUTH_CLIENT_ID!);
authorizationUrl.searchParams.set(
  'redirect_uri',
  'https://app.example.com/oauth/snaptrade/callback',
);
authorizationUrl.searchParams.set('scope', 'read');
authorizationUrl.searchParams.set('state', state);
authorizationUrl.searchParams.set('code_challenge', codeChallenge);
authorizationUrl.searchParams.set('code_challenge_method', 'S256');
```

Redirect the user's browser to `authorizationUrl`. The user signs in to SnapTrade and approves or denies your app's request.

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

```ts
const clientId = process.env.SNAPTRADE_OAUTH_CLIENT_ID!;
const clientSecret = process.env.SNAPTRADE_OAUTH_CLIENT_SECRET!;

const response = await fetch(tokenEndpoint, {
  method: 'POST',
  headers: {
    Accept: 'application/json',
    Authorization: `Basic ${Buffer.from(`${clientId}:${clientSecret}`).toString('base64')}`,
    'Content-Type': 'application/x-www-form-urlencoded',
  },
  body: new URLSearchParams({
    grant_type: 'authorization_code',
    code,
    code_verifier: codeVerifier,
    redirect_uri: 'https://app.example.com/oauth/snaptrade/callback',
  }),
});

if (!response.ok) {
  throw new Error(`Token exchange failed: ${response.status} ${await response.text()}`);
}

const tokens = await response.json();
```

Store the following encrypted and associated with the signed-in user in your app:

- `access_token`
- `refresh_token`
- an expiry timestamp computed from `expires_in`
- `scope`
- useful subject fields returned in `sub`, such as the SnapTrade user ID

Never log authorization codes, access tokens, refresh tokens, or the client secret.

## 6. Call the SnapTrade API

Send the access token as a Bearer token. Do not include `clientId`, `consumerKey`, `userId`, `userSecret`, `timestamp`, or `Signature` on an OAuth request. The token identifies the SnapTrade Personal user.

```http
GET https://api.snaptrade.com/api/v1/accounts
Authorization: Bearer ACCESS_TOKEN
Accept: application/json
```

You can then use the supported read and connection endpoints to list the user's connections, accounts, positions, balances, orders, and activities.

The API reference may still show Commercial authentication fields as required. Omit those fields when making a Bearer-token request.

## 7. Refresh Tokens

Refresh shortly before the access token expires. Use the same client authentication as the initial token exchange:

```ts
const response = await fetch(tokenEndpoint, {
  method: 'POST',
  headers: {
    Accept: 'application/json',
    Authorization: `Basic ${Buffer.from(`${clientId}:${clientSecret}`).toString('base64')}`,
    'Content-Type': 'application/x-www-form-urlencoded',
  },
  body: new URLSearchParams({
    grant_type: 'refresh_token',
    refresh_token: storedRefreshToken,
  }),
});

const refreshedTokens = await response.json();
```

SnapTrade rotates refresh tokens. Replace the stored refresh token atomically whenever a refresh succeeds; do not keep using the previous value. If an API request returns `401`, refresh once and retry once. If that fails, clear the stored tokens and ask the user to authorize again.

## 8. Revoke Access

Let users disconnect SnapTrade from inside your app. Revoke the refresh token from your backend, then delete all locally stored SnapTrade tokens:

```ts
await fetch(revocationEndpoint, {
  method: 'POST',
  headers: {
    Accept: 'application/json',
    Authorization: `Basic ${Buffer.from(`${clientId}:${clientSecret}`).toString('base64')}`,
    'Content-Type': 'application/x-www-form-urlencoded',
  },
  body: new URLSearchParams({
    token: storedRefreshToken,
    token_type_hint: 'refresh_token',
  }),
});
```

## Test Locally

1. Register a loopback callback such as `http://127.0.0.1:3000/oauth/snaptrade/callback` alongside your production callback.
2. Use a separate SnapTrade Personal test account instead of the developer account that owns the OAuth app.
3. Connect the SnapTrade Sandbox brokerage or a test brokerage connection from the SnapTrade Dashboard.
4. Run the authorization flow and confirm the consent page shows the expected app name and `read` access.
5. Exchange the code from your backend and call `GET /api/v1/accounts` with only the Bearer token.
6. Verify the same account is still visible in the SnapTrade Dashboard and can be granted to another test app without creating another brokerage connection.
7. Test refresh-token rotation, a forced `401`, denial at the consent screen, a mismatched `state`, an expired code, and an unregistered redirect URI.
8. Revoke access and confirm the refresh token can no longer obtain an access token.

## Production Checklist

- Use HTTPS for every production redirect URI.
- Keep the client secret and tokens on your backend.
- Use authorization code + PKCE with `S256`.
- Generate and verify a fresh `state` for every attempt.
- Require an exact redirect URI match.
- Encrypt refresh tokens at rest and never log them.
- Replace rotated refresh tokens atomically.
- Retry at most once after refreshing a failed API request.
- Provide an in-app disconnect action that revokes access.
- Link users to the SnapTrade Dashboard to add, repair, or remove brokerage connections.
- Explain what brokerage data your app uses and link to a privacy policy.
- Do not describe OAuth as supporting trading until a trading scope is available to your app.

The OAuth preview is the best time to start building: access is free, the integration is smaller than a traditional Commercial implementation, and early apps can give direct feedback on the platform. When your integration is ready, contact SnapTrade to discuss production access and app discovery eligibility.
