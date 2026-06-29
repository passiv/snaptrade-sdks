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

const accounts = await snaptrade.accountInformation.listUserAccounts({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
});

console.log(accounts.data);
```

### Python

```python
import os
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    client_id=os.environ["SNAPTRADE_CLIENT_ID"],
    consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
)

accounts = snaptrade.account_information.list_user_accounts(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
)

print(accounts.body)
```

Rules:

- Use Commercial `clientId` and `consumerKey` when initializing the SDK.
- Pass `userId` and `userSecret` on user-scoped operations such as listing accounts, balances, positions, orders, holdings, and connections.
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

const accounts = await snaptrade.accountInformation.listUserAccounts();

console.log(accounts.data);
```

### Python

```python
import os
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    client_id=os.environ["SNAPTRADE_CLIENT_ID"],
    consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
)

accounts = snaptrade.account_information.list_user_accounts()

print(accounts.body)
```

Rules:

- Initialize the SDK with the Personal `clientId` and Personal `consumerKey`.
- Omit `userId` and `userSecret` on user-scoped account-data operations.
- Do not call :api[Authentication_registerSnapTradeUser]. That endpoint is for Commercial apps creating SnapTrade users for their own end users.

## Personal OAuth Authentication

Use Personal OAuth when the account owner signs in with their SnapTrade Personal account and grants your app access with an OAuth access token.

The Bearer token identifies the Personal user and scopes what your app can do. Do not initialize the SDK with API key credentials for OAuth calls.

### TypeScript

```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  accessToken: process.env.SNAPTRADE_ACCESS_TOKEN!,
});

const accounts = await snaptrade.accountInformation.listUserAccounts();

console.log(accounts.data);
```

### Python

```python
import os
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    access_token=os.environ["SNAPTRADE_ACCESS_TOKEN"],
)

accounts = snaptrade.account_information.list_user_accounts()

print(accounts.body)
```

Rules:

- Initialize the SDK with the OAuth access token only.
- Omit `clientId`, `consumerKey`, `userId`, and `userSecret`.
- Use OAuth only with OAuth-supported operations, such as read/account-data calls for the authenticated Personal user.
- API-key-only and Commercial-only operations are not valid for OAuth. For example, do not use OAuth for Commercial user registration, user-secret rotation, Commercial user deletion, or API-key-gated trading/write workflows.

Personal OAuth follows the OAuth 2.0 authorization code flow with PKCE. OAuth clients can discover SnapTrade OAuth metadata at `https://api.snaptrade.com/.well-known/oauth-authorization-server`, including authorization, token, introspection, revocation, and client-registration endpoints.

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
GET /api/v1/accounts?clientId=<client_id>&timestamp=<unix_timestamp>&userId=<user_id>&userSecret=<user_secret>
Signature: <signature>
```

Personal API key requests include `clientId`, `timestamp`, and a `Signature` header, but omit user credentials:

```http
GET /api/v1/accounts?clientId=<client_id>&timestamp=<unix_timestamp>
Signature: <signature>
```

Personal OAuth requests use only the Bearer token:

```http
GET /api/v1/accounts
Authorization: Bearer <access_token>
```

For signature details, see [Request Signatures](https://docs.snaptrade.com/docs/request-signatures).

## Common Mistakes

- Passing `userId` or `userSecret` with a Personal API key. Personal API keys already identify the Personal account owner.
- Calling :api[Authentication_registerSnapTradeUser] for Personal API key or Personal OAuth integrations. User registration is Commercial-only.
- Combining OAuth with API key fields. OAuth calls use the Bearer token, not `clientId`, `consumerKey`, `Signature`, `userId`, or `userSecret`.
- Using OAuth for API-key-only or Commercial-only operations. OAuth is for supported Personal-user workflows, primarily read/account-data access.
- Exposing `consumerKey` or `userSecret` in browser or mobile clients. Keep signed-request credentials on a secure backend.
- Treating `userId` as the brokerage account ID. `userId` identifies a SnapTrade user under a Commercial app; account-data methods return brokerage account IDs separately.

## Related

- [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
- [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
