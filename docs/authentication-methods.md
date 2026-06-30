# Authentication Methods

SnapTrade supports two SDK authentication modes for API key integrations: Commercial API key and Personal API key. The selected SDK auth mode controls whether `userId` and `userSecret` are valid operation parameters.

Commercial apps own many SnapTrade users. They register or authenticate a SnapTrade user, then fetch account data by passing that user's `userId` and `userSecret`.

Personal API keys identify the Personal account owner directly. Account data is fetched without `userId` or `userSecret`.

## Quick Comparison

| Method | Best for | SDK auth setup | Account-data operation credentials |
| --- | --- | --- | --- |
| Commercial API key | Apps managing many end users | `SnaptradeAuth.commercialApiKey(...)` / `SnapTradeAuth.commercial_api_key(...)` | Pass `userId` and `userSecret` |
| Personal API key | Personal users calling SnapTrade with their own API key | `SnaptradeAuth.personalApiKey(...)` / `SnapTradeAuth.personal_api_key(...)` | Omit `userId` and `userSecret` |

For a broader product-model comparison, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial).

## Commercial API Key Authentication

Use Commercial API key authentication when your backend manages brokerage connections for your own end users.

The Commercial workflow is:

1. Initialize the SDK with Commercial `clientId` and `consumerKey`.
2. Register one SnapTrade user per end user with :api[Authentication_registerSnapTradeUser].
3. Store the returned `userId` and `userSecret` for that SnapTrade user.
4. Send the user through the Connection Portal with :api[Authentication_loginSnapTradeUser].
5. Fetch that user's account data by passing `userId` and `userSecret` to user-scoped operations.

### TypeScript

```typescript
import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  auth: SnaptradeAuth.commercialApiKey({
    clientId: process.env.SNAPTRADE_CLIENT_ID!,
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  }),
});

const userId = "snaptrade-user-123";

const registeredUser = await snaptrade.authentication.registerSnapTradeUser({
  userId,
});

const userSecret = registeredUser.data.userSecret!;

const login = await snaptrade.authentication.loginSnapTradeUser({
  userId,
  userSecret,
});

console.log("Send this Connection Portal URL to your user:", login.data.redirectURI);

const accounts = await snaptrade.accountInformation.listUserAccounts({
  userId,
  userSecret,
});

const firstAccount = accounts.data[0];

const activities = await snaptrade.accountInformation.getAccountActivities({
  accountId: firstAccount.id!,
  userId,
  userSecret,
  startDate: "2026-01-01",
  endDate: "2026-01-31",
  limit: 100,
});

console.log(activities.data);
```

### Python

```python
import os
from snaptrade_client import SnapTrade, SnapTradeAuth

snaptrade = SnapTrade(
    auth=SnapTradeAuth.commercial_api_key(
        client_id=os.environ["SNAPTRADE_CLIENT_ID"],
        consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
    )
)

user_id = "snaptrade-user-123"

registered_user = snaptrade.authentication.register_snap_trade_user(
    user_id=user_id,
)

user_secret = registered_user.body["userSecret"]

login = snaptrade.authentication.login_snap_trade_user(
    user_id=user_id,
    user_secret=user_secret,
)

print("Send this Connection Portal URL to your user:", login.body["redirectURI"])

accounts = snaptrade.account_information.list_user_accounts(
    user_id=user_id,
    user_secret=user_secret,
)

first_account = accounts.body[0]

activities = snaptrade.account_information.get_account_activities(
    account_id=first_account["id"],
    user_id=user_id,
    user_secret=user_secret,
    start_date="2026-01-01",
    end_date="2026-01-31",
    limit=100,
)

print(activities.body)
```

Rules:

- Use `SnaptradeAuth.commercialApiKey` in TypeScript or `SnapTradeAuth.commercial_api_key` in Python.
- Register or otherwise obtain a SnapTrade user's `userId` and `userSecret` before fetching that user's account data.
- Pass `userId` and `userSecret` on user-scoped operations such as listing accounts, balances, positions, orders, holdings, activities, and connections.
- Keep the `consumerKey` and each user's `userSecret` on a secure backend. Do not expose them in browser or mobile clients.

## Personal API Key Authentication

Use Personal API key authentication when a SnapTrade Personal user calls SnapTrade with their own Personal API key.

The Personal `clientId` and `consumerKey` identify the account owner. There is no separate SnapTrade end-user record to register, authenticate, or pass on account-data calls.

### TypeScript

```typescript
import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  auth: SnaptradeAuth.personalApiKey({
    clientId: process.env.SNAPTRADE_CLIENT_ID!,
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  }),
});

const accounts = await snaptrade.accountInformation.listUserAccounts();

const firstAccount = accounts.data[0];

const activities = await snaptrade.accountInformation.getAccountActivities({
  accountId: firstAccount.id!,
  startDate: "2026-01-01",
  endDate: "2026-01-31",
  limit: 100,
});

console.log(activities.data);
```

### Python

```python
import os
from snaptrade_client import SnapTrade, SnapTradeAuth

snaptrade = SnapTrade(
    auth=SnapTradeAuth.personal_api_key(
        client_id=os.environ["SNAPTRADE_CLIENT_ID"],
        consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
    )
)

accounts = snaptrade.account_information.list_user_accounts()

first_account = accounts.body[0]

activities = snaptrade.account_information.get_account_activities(
    account_id=first_account["id"],
    start_date="2026-01-01",
    end_date="2026-01-31",
    limit=100,
)

print(activities.body)
```

Rules:

- Use `SnaptradeAuth.personalApiKey` in TypeScript or `SnapTradeAuth.personal_api_key` in Python.
- Fetch account data directly. The Personal API key identifies the Personal account owner.
- Omit `userId` and `userSecret` on account-data operations.
- Do not call :api[Authentication_registerSnapTradeUser] or :api[Authentication_loginSnapTradeUser]. Those operations are for Commercial apps managing SnapTrade users for their own end users.

## Credential Rules

Commercial API key:

- SDK initialization uses Commercial `clientId` and `consumerKey` through the Commercial API key auth helper.
- User-management operations register and authenticate individual SnapTrade users.
- User-scoped account-data calls include `userId` and `userSecret`.
- Direct HTTP requests are signed with the Commercial `consumerKey`.

Personal API key:

- SDK initialization uses Personal `clientId` and `consumerKey` through the Personal API key auth helper.
- The Personal API key identifies the account owner.
- Account-data calls omit `userId` and `userSecret`.
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

- Initializing the upcoming SDKs with old constructor fields such as `new Snaptrade({ clientId, consumerKey })` or `SnapTrade(client_id=..., consumer_key=...)`. Use the `auth` helpers instead.
- Passing `userId` or `userSecret` with Personal API key auth. The Personal API key already identifies the Personal account owner.
- Omitting `userId` or `userSecret` with Commercial API key auth on user-scoped account-data calls.
- Calling :api[Authentication_registerSnapTradeUser] or :api[Authentication_loginSnapTradeUser] for Personal API key integrations. User registration and user login are Commercial workflows.
- Listing SnapTrade users from a Personal integration. Personal API key calls already resolve to the authenticated Personal user.
- Exposing `consumerKey` or `userSecret` in browser or mobile clients. Keep signed-request credentials on a secure backend.
- Treating `userId` as the brokerage account ID. `userId` identifies a SnapTrade user under a Commercial app; account-data methods return brokerage account IDs separately.

## Related

- [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
- [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
