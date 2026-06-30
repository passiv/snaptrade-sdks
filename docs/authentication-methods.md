# Authentication Methods

SnapTrade supports two SDK authentication modes. Choose the mode based on who owns the SnapTrade account context for each request.

## Quick Comparison

| Method | Best for | SDK client credentials | User-scoped operation credentials |
| --- | --- | --- | --- |
| Commercial API key | Commercial apps managing many end users | `clientId`, `consumerKey` | Pass `userId` and `userSecret` on user-scoped calls |
| Personal API key | Personal users calling SnapTrade with their own API key | Personal `clientId`, Personal `consumerKey` | Omit `userId` and `userSecret` |

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

## Credential Rules

Commercial API key:

- SDK initialization uses Commercial `clientId` and `consumerKey`.
- User-scoped calls include `userId` and `userSecret`.
- Direct HTTP requests are signed with the Commercial `consumerKey`.

Personal API key:

- SDK initialization uses Personal `clientId` and `consumerKey`.
- User-scoped calls omit `userId` and `userSecret`.
- Direct HTTP requests are signed with the Personal `consumerKey`.

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

For signature details, see [Request Signatures](https://docs.snaptrade.com/docs/request-signatures).

## Common Mistakes

- Passing `userId` or `userSecret` with a Personal API key. Personal API keys already identify the Personal account owner.
- Calling :api[Authentication_registerSnapTradeUser] for Personal API key integrations. User registration is Commercial-only.
- Listing SnapTrade users from a Personal integration. Personal API key calls already resolve to the authenticated Personal user.
- Exposing `consumerKey` or `userSecret` in browser or mobile clients. Keep signed-request credentials on a secure backend.
- Treating `userId` as the brokerage account ID. `userId` identifies a SnapTrade user under a Commercial app; account-data methods return brokerage account IDs separately.

## Related

- [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
- [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
