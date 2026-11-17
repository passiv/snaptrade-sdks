# Authentication Methods

SnapTrade supports three authentication modes: Commercial API Key, Personal API Key, and Commercial OAuth. The selected mode controls how requests authenticate and whether `userId` and `userSecret` are valid operation parameters.

Commercial API-key integrations manage SnapTrade users for their end users. They register or authenticate a SnapTrade user, then fetch account data by passing that user's `userId` and `userSecret`.

Your Personal API Key identifies your SnapTrade account directly. Account data is fetched without `userId` or `userSecret`.

For both API key modes, generate a Connection Portal URL and connect a brokerage account before calling account-data APIs.

With Commercial OAuth, your app requests permission to access accounts a user already manages in SnapTrade Personal. The resulting access token identifies the user. Your app does not register another SnapTrade user or pass API key credentials on OAuth requests.

## Quick Comparison

| Method | Best for | SDK auth setup | Account-data operation credentials |
| --- | --- | --- | --- |
| Commercial API Key | Apps managing many end users | `SnaptradeAuth.commercialApiKey(...)` / `SnapTradeAuth.commercial_api_key(...)` | Pass `userId` and `userSecret` |
| Personal API Key | You, when calling SnapTrade with your own API key | `SnaptradeAuth.personalApiKey(...)` / `SnapTradeAuth.personal_api_key(...)` | Omit `userId` and `userSecret` |
| Commercial OAuth | Apps accessing accounts with a Personal user’s consent | `SnaptradeAuth.oauth(...)` / `SnapTradeAuth.oauth(...)` | Bearer access token; omit `userId` and `userSecret` |

For a broader product-model comparison, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial).

## Commercial API Key Authentication

Use Commercial API Key authentication when your backend manages brokerage connections for your own end users.

The Commercial workflow is:

1. Initialize the SDK with Commercial `clientId` and `consumerKey`.
2. Register one SnapTrade user per end user with :api[Authentication_registerSnapTradeUser].
3. Store the returned `userId` and `userSecret` for that SnapTrade user.
4. Generate a Connection Portal URL with :api[Authentication_loginSnapTradeUser] and have the user connect a brokerage account.
5. After the account is connected, fetch that user's account data by passing `userId` and `userSecret` to user-scoped operations.

### TypeScript

```typescript
import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Commercial auth is for apps managing many SnapTrade users.
  auth: SnaptradeAuth.commercialApiKey({
    clientId: process.env.SNAPTRADE_CLIENT_ID!,
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  }),
});

// This user is one of your app's end users.
const userId = "snaptrade-user-123";

const registeredUser = await snaptrade.authentication.registerSnapTradeUser({
  userId,
});

const userSecret = registeredUser.data.userSecret!;

// Generate connection URL.
const login = await snaptrade.authentication.loginSnapTradeUser({
  userId,
  userSecret,
});

console.log("Send this Connection Portal URL to your user:", login.data.redirectURI);

// After the user connects an account, you can fetch their account data.
const accounts = await snaptrade.accountInformation.listUserAccounts({
  // Commercial account-data calls include the user's credentials.
  userId,
  userSecret,
});

const activities = await snaptrade.accountInformation.getAccountActivities({
  accountId: accounts.data[0].id!,
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
    # Commercial auth is for apps managing many SnapTrade users.
    auth=SnapTradeAuth.commercial_api_key(
        client_id=os.environ["SNAPTRADE_CLIENT_ID"],
        consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
    )
)

# This user is one of your app's end users.
user_id = "snaptrade-user-123"

registered_user = snaptrade.authentication.register_snap_trade_user(
    user_id=user_id,
)

user_secret = registered_user.body["userSecret"]

# Generate connection URL.
login = snaptrade.authentication.login_snap_trade_user(
    user_id=user_id,
    user_secret=user_secret,
)

print("Send this Connection Portal URL to your user:", login.body["redirectURI"])

# After the user connects an account, you can fetch their account data.
accounts = snaptrade.account_information.list_user_accounts(
    # Commercial account-data calls include the user's credentials.
    user_id=user_id,
    user_secret=user_secret,
)

activities = snaptrade.account_information.get_account_activities(
    account_id=accounts.body[0]["id"],
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

Use Personal API Key authentication when you call SnapTrade with your own Personal API Key.

Your Personal `clientId` and `consumerKey` identify your SnapTrade account. There is no separate SnapTrade end-user record to register or pass on account-data calls. Generate a Connection Portal URL, connect your brokerage account, then fetch account data directly.

### TypeScript

```typescript
import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Personal auth means your API key is the user context.
  auth: SnaptradeAuth.personalApiKey({
    clientId: process.env.SNAPTRADE_CLIENT_ID!,
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  }),
});

// Generate connection URL.
const login = await snaptrade.authentication.loginSnapTradeUser();

console.log("Open this Connection Portal URL:", login.data.redirectURI);

// After you connect your account, fetch data directly.
const accounts = await snaptrade.accountInformation.listUserAccounts();

const activities = await snaptrade.accountInformation.getAccountActivities({
  // No userId or userSecret for Personal account-data calls.
  accountId: accounts.data[0].id!,
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
    # Personal auth means your API key is the user context.
    auth=SnapTradeAuth.personal_api_key(
        client_id=os.environ["SNAPTRADE_CLIENT_ID"],
        consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
    )
)

# Generate connection URL.
login = snaptrade.authentication.login_snap_trade_user()

print("Open this Connection Portal URL:", login.body["redirectURI"])

# After you connect your account, fetch data directly.
accounts = snaptrade.account_information.list_user_accounts()

activities = snaptrade.account_information.get_account_activities(
    # No user_id or user_secret for Personal account-data calls.
    account_id=accounts.body[0]["id"],
    start_date="2026-01-01",
    end_date="2026-01-31",
    limit=100,
)

print(activities.body)
```

Rules:

- Use `SnaptradeAuth.personalApiKey` in TypeScript or `SnapTradeAuth.personal_api_key` in Python.
- Generate a Connection Portal URL and connect your brokerage account before fetching account data.
- Fetch account data directly after connection. Your Personal API Key identifies your SnapTrade account.
- Omit `userId` and `userSecret` on account-data operations.
- Do not call :api[Authentication_registerSnapTradeUser]. User registration is for Commercial API-key integrations managing SnapTrade users for their own end users.

## Commercial OAuth Authentication

Use TypeScript `snaptrade-typescript-sdk` **13.3.0 or later**, or Python `snaptrade-python-sdk` **13.3.0 or later**, for the explicit authorization-code and refresh helpers.

Register your own OAuth app in the Dashboard, then use `SnaptradeOAuth` (TypeScript) or `SnapTradeOAuth` (Python) to create an authorization URL with fresh state and S256 PKCE, exchange the callback code, and explicitly refresh tokens. Your application owns callback validation, token storage, expiry tracking, and refresh scheduling. See [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps#use-the-sdk-helpers) for the complete flow.

After the callback exchanges the code and stores the tokens, load the current token for your signed-in user. `loadTokens` / `load_tokens` below is your application-owned encrypted storage helper, not an SDK export; see the [storage contract and phased SDK examples](https://docs.snaptrade.com/docs/oauth-apps#application-responsibilities).

### TypeScript

```typescript
import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";
import { loadTokens } from "./app-oauth-store";

async function listAccounts(userId: string) {
  const tokens = await loadTokens(userId);
  const snaptrade = new Snaptrade({
    auth: SnaptradeAuth.oauth({ accessToken: tokens.accessToken }),
  });
  return snaptrade.accountInformation.listUserAccounts();
}
```

### Python

```python
from snaptrade_client import SnapTrade, SnapTradeAuth
from app_oauth_store import load_tokens

def list_accounts(user_id: str):
    tokens = load_tokens(user_id)
    snaptrade = SnapTrade(auth=SnapTradeAuth.oauth(access_token=tokens.access_token))
    return snaptrade.account_information.list_user_accounts()
```

Use OAuth only on endpoints that support it. Available operations also depend on granted scopes and the connected brokerage's capabilities. Trading requires `trade` permission and any applicable app approval; requesting a scope does not guarantee access. User registration and Commercial user management use Commercial API Key authentication.

## Credential Rules

Commercial API Key:

- SDK initialization uses Commercial `clientId` and `consumerKey` through the Commercial API Key auth helper.
- User-management operations register and authenticate individual SnapTrade users.
- User-scoped account-data calls include `userId` and `userSecret`.
- Direct HTTP requests are signed with the Commercial `consumerKey`.

Personal API Key:

- SDK initialization uses Personal `clientId` and `consumerKey` through the Personal API Key auth helper.
- Your Personal API Key identifies your SnapTrade account.
- Connection Portal login uses the Personal API Key context and does not require `userId` or `userSecret`.
- Account-data calls omit `userId` and `userSecret`.
- Direct HTTP requests are signed with the Personal `consumerKey`.

Commercial OAuth:

- SDK initialization uses an access token through the OAuth auth factory.
- OAuth requests send `Authorization: Bearer <access_token>` without signing.
- Omit `clientId`, `consumerKey`, `userId`, `userSecret`, `timestamp`, and `Signature`.
- Refresh explicitly and replace the stored token pair after rotation. The API client does not refresh automatically.

## Direct HTTP Reference

Prefer the SDKs unless you need to debug a raw request.

Commercial API Key requests include `clientId`, `timestamp`, a `Signature` header, and user credentials for user-scoped endpoints:

```http
# Commercial signed requests include the SnapTrade user's credentials.
GET /accounts/<account_id>/activities?clientId=<client_id>&timestamp=<unix_timestamp>&userId=<user_id>&userSecret=<user_secret>
Signature: <signature>
```

Personal API Key requests include `clientId`, `timestamp`, and a `Signature` header, but omit user credentials:

```http
# Personal signed requests omit user credentials.
GET /accounts/<account_id>/activities?clientId=<client_id>&timestamp=<unix_timestamp>
Signature: <signature>
```

SnapTrade implements standards-based [OAuth 2.0](https://www.rfc-editor.org/rfc/rfc6749) with PKCE. Discover its endpoints and supported capabilities from the [OAuth authorization server metadata](https://api.snaptrade.com/.well-known/oauth-authorization-server); see the [OAuth guide](https://docs.snaptrade.com/docs/oauth-apps#2-discover-the-oauth-endpoints) for protocol details. OAuth API requests include only the Bearer credential:

```http
GET /accounts
Authorization: Bearer <access_token>
Accept: application/json
```

For signature details, see [Request Signatures](https://docs.snaptrade.com/docs/request-signatures).

## Related

- [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps)
- [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
