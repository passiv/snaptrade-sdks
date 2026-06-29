# Authentication Methods

SnapTrade supports three SDK authentication modes. Choose the mode based on who owns the SnapTrade account context for each request.

## Quick Comparison

| Method | Best for | SDK client credentials | User-scoped operation credentials |
| --- | --- | --- | --- |
| Commercial API key | Commercial apps managing many end users | `clientId`, `consumerKey` | Pass `userId` and `userSecret` on user-scoped calls |
| Personal API key | Personal users calling SnapTrade with their own API key | Personal `clientId`, Personal `consumerKey` | Omit `userId` and `userSecret` |
| Personal OAuth | Apps where the Personal user grants access through OAuth | OAuth access token | Omit `clientId`, `consumerKey`, `userId`, and `userSecret` |

For a broader product-model comparison, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial).

## Commercial API Key Authentication

Use Commercial API key authentication when your backend manages brokerage connections for your own end users.

Your backend stores the Commercial `clientId` and `consumerKey`, creates one SnapTrade user per end user with :api[Authentication_registerSnapTradeUser], and stores the returned `userId` and `userSecret` for that SnapTrade user.

### TypeScript

```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  clientId: process.env.SNAPTRADE_CLIENT_ID!,
  consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
});

const activities = await snaptrade.accountInformation.getAccountActivities({
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  startDate: "2026-01-01",
  endDate: "2026-01-31",
  limit: 100,
});

console.log(activities.data);
```

### Python

```python
import os
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    client_id=os.environ["SNAPTRADE_CLIENT_ID"],
    consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
)

activities = snaptrade.account_information.get_account_activities(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    start_date="2026-01-01",
    end_date="2026-01-31",
    limit=100,
)

print(activities.body)
```

Rules:

- Use Commercial `clientId` and `consumerKey` when initializing the SDK.
- Pass `userId` and `userSecret` on user-scoped operations such as balances, positions, orders, holdings, activities, and connections.
- Keep the `consumerKey` and each user's `userSecret` on a secure backend. Do not expose them in browser or mobile clients.

## Personal API Key Authentication

Use Personal API key authentication when a SnapTrade Personal user calls SnapTrade with their own Personal API key.

The Personal `clientId` and `consumerKey` identify the account owner. There is no separate SnapTrade end-user record to pass on each account-data call.

### TypeScript

```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  clientId: process.env.SNAPTRADE_CLIENT_ID!,
  consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
});

const activities = await snaptrade.accountInformation.getAccountActivities({
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  startDate: "2026-01-01",
  endDate: "2026-01-31",
  limit: 100,
});

console.log(activities.data);
```

### Python

```python
import os
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    client_id=os.environ["SNAPTRADE_CLIENT_ID"],
    consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
)

activities = snaptrade.account_information.get_account_activities(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    start_date="2026-01-01",
    end_date="2026-01-31",
    limit=100,
)

print(activities.body)
```

Rules:

- Initialize the SDK with the Personal `clientId` and Personal `consumerKey`.
- Omit `userId` and `userSecret` on user-scoped account-data operations.
- Do not call :api[Authentication_registerSnapTradeUser]. That endpoint is for Commercial apps creating SnapTrade users for their own end users.

## Personal OAuth Authentication

Use Personal OAuth when the account owner signs in with their SnapTrade Personal account and grants your app access with an OAuth access token.

The Bearer token identifies the Personal user and scopes what your app can do. Do not initialize the SDK with API key credentials for OAuth calls.

Personal OAuth follows the OAuth 2.0 authorization code flow with PKCE:

1. Discover the authorization server metadata from `https://api.snaptrade.com/.well-known/oauth-authorization-server`.
2. Create a PKCE `code_verifier`, derive a `code_challenge`, and store the verifier with a CSRF `state`.
3. Redirect the user to the discovered authorization endpoint with `response_type=code`, your OAuth `client_id`, `redirect_uri`, requested scopes such as `read`, `state`, `code_challenge`, and `code_challenge_method=S256`.
4. On your callback URL, validate `state`, then exchange the returned `code` at the discovered token endpoint with the original `code_verifier`.
5. Initialize the SDK with the returned `access_token`.

### TypeScript

```typescript
import crypto from "node:crypto";
import { Snaptrade } from "snaptrade-typescript-sdk";

const metadata = await fetch(
  "https://api.snaptrade.com/.well-known/oauth-authorization-server"
).then((response) => response.json());

const codeVerifier = crypto.randomBytes(32).toString("base64url");
const codeChallenge = crypto
  .createHash("sha256")
  .update(codeVerifier)
  .digest("base64url");
const state = crypto.randomUUID();

const authorizationUrl = new URL(metadata.authorization_endpoint);
authorizationUrl.search = new URLSearchParams({
  response_type: "code",
  client_id: process.env.SNAPTRADE_OAUTH_CLIENT_ID!,
  redirect_uri: "https://example.com/oauth/snaptrade/callback",
  scope: "read",
  state,
  code_challenge: codeChallenge,
  code_challenge_method: "S256",
}).toString();

// Redirect the user to authorizationUrl.toString(), then handle your callback.
const code = "code-from-callback-query";

const tokenResponse = await fetch(metadata.token_endpoint, {
  method: "POST",
  headers: { "Content-Type": "application/x-www-form-urlencoded" },
  body: new URLSearchParams({
    grant_type: "authorization_code",
    client_id: process.env.SNAPTRADE_OAUTH_CLIENT_ID!,
    redirect_uri: "https://example.com/oauth/snaptrade/callback",
    code,
    code_verifier: codeVerifier,
  }),
}).then((response) => response.json());

const snaptrade = new Snaptrade({
  accessToken: tokenResponse.access_token,
});

const activities = await snaptrade.accountInformation.getAccountActivities({
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  startDate: "2026-01-01",
  endDate: "2026-01-31",
  limit: 100,
});

console.log(activities.data);
```

### Python

```python
import base64
import hashlib
import os
import secrets
import urllib.parse

import requests
from snaptrade_client import SnapTrade

metadata = requests.get(
    "https://api.snaptrade.com/.well-known/oauth-authorization-server"
).json()

code_verifier = secrets.token_urlsafe(32)
code_challenge = (
    base64.urlsafe_b64encode(hashlib.sha256(code_verifier.encode()).digest())
    .rstrip(b"=")
    .decode()
)
state = secrets.token_urlsafe(16)

authorization_url = metadata["authorization_endpoint"] + "?" + urllib.parse.urlencode(
    {
        "response_type": "code",
        "client_id": os.environ["SNAPTRADE_OAUTH_CLIENT_ID"],
        "redirect_uri": "https://example.com/oauth/snaptrade/callback",
        "scope": "read",
        "state": state,
        "code_challenge": code_challenge,
        "code_challenge_method": "S256",
    }
)

# Redirect the user to authorization_url, then handle your callback.
code = "code-from-callback-query"

token_response = requests.post(
    metadata["token_endpoint"],
    data={
        "grant_type": "authorization_code",
        "client_id": os.environ["SNAPTRADE_OAUTH_CLIENT_ID"],
        "redirect_uri": "https://example.com/oauth/snaptrade/callback",
        "code": code,
        "code_verifier": code_verifier,
    },
).json()

snaptrade = SnapTrade(
    access_token=token_response["access_token"],
)

activities = snaptrade.account_information.get_account_activities(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    start_date="2026-01-01",
    end_date="2026-01-31",
    limit=100,
)

print(activities.body)
```

Rules:

- Initialize the SDK with the OAuth access token only.
- Omit `clientId`, `consumerKey`, `userId`, and `userSecret`.
- Use OAuth only with OAuth-supported operations, such as read/account-data calls for the authenticated Personal user.
- API-key-only and Commercial-only operations are not valid for OAuth. For example, do not use OAuth for Commercial user registration, listing SnapTrade users, user-secret rotation, Commercial user deletion, or API-key-gated trading/write workflows.

## Credential Rules

Commercial API key:

- SDK initialization uses Commercial `clientId` and `consumerKey`.
- User-scoped calls include `userId` and `userSecret`.
- Direct HTTP requests are signed with the Commercial `consumerKey`.

Personal API key:

- SDK initialization uses Personal `clientId` and `consumerKey`.
- User-scoped calls omit `userId` and `userSecret`.
- Direct HTTP requests are signed with the Personal `consumerKey`.

Personal OAuth:

- SDK initialization uses an OAuth access token.
- Calls omit `clientId`, `consumerKey`, `userId`, and `userSecret`.
- Direct HTTP requests send `Authorization: Bearer <access_token>` and do not send a SnapTrade request signature.

## Direct HTTP Reference

Prefer the SDKs unless you need to debug a raw request.

Commercial API key requests include `clientId`, `timestamp`, a `Signature` header, and user credentials for user-scoped endpoints:

```http
GET /api/v1/accounts/<account_id>/activities?clientId=<client_id>&timestamp=<unix_timestamp>&userId=<user_id>&userSecret=<user_secret>
Signature: <signature>
```

Personal API key requests include `clientId`, `timestamp`, and a `Signature` header, but omit user credentials:

```http
GET /api/v1/accounts/<account_id>/activities?clientId=<client_id>&timestamp=<unix_timestamp>
Signature: <signature>
```

Personal OAuth requests use only the Bearer token:

```http
GET /api/v1/accounts/<account_id>/activities
Authorization: Bearer <access_token>
```

For signature details, see [Request Signatures](https://docs.snaptrade.com/docs/request-signatures).

## Common Mistakes

- Passing `userId` or `userSecret` with a Personal API key. Personal API keys already identify the Personal account owner.
- Calling :api[Authentication_registerSnapTradeUser] for Personal API key or Personal OAuth integrations. User registration is Commercial-only.
- Listing SnapTrade users from a Personal integration. Personal API key and Personal OAuth calls already resolve to the authenticated Personal user.
- Combining OAuth with API key fields. OAuth calls use the Bearer token, not `clientId`, `consumerKey`, `Signature`, `userId`, or `userSecret`.
- Using OAuth for API-key-only or Commercial-only operations. OAuth is for supported Personal-user workflows, primarily read/account-data access.
- Exposing `consumerKey` or `userSecret` in browser or mobile clients. Keep signed-request credentials on a secure backend.
- Treating `userId` as the brokerage account ID. `userId` identifies a SnapTrade user under a Commercial app; account-data methods return brokerage account IDs separately.

## Related

- [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
- [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
