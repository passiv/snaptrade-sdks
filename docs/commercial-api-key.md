# Build With a Commercial API Key

Your backend creates a SnapTrade user for each end user and sends them through the Connection Portal. You own onboarding, user mapping, connection support, and credential storage. For apps using users’ existing SnapTrade Personal connections, consider [OAuth](https://docs.snaptrade.com/docs/oauth-apps).

## Get Your Credentials

1. Create a Commercial account in the [SnapTrade Dashboard](https://dashboard.snaptrade.com/home).
2. Verify your email.
3. Enable two-factor authentication.
4. Create a test API key from the [API Key page](https://dashboard.snaptrade.com/api-key).
5. When you are ready for production, complete the required approval and billing steps in the Dashboard and create a production key.
6. Store the `clientId` and `consumerKey` on a secure backend.

For plan limits and production requirements, see [Billing](https://docs.snaptrade.com/docs/billing).

## Connect and Read Account Data

Open the portal URL in a browser, complete the connection, then resume the account-data calls. Keep API credentials on your backend. Use a stable, immutable user ID from your app; avoid email addresses.

Use Commercial API Key authentication when your backend manages brokerage connections for your own end users.

The Commercial workflow is:

1. Initialize the SDK with Commercial `clientId` and `consumerKey`.
2. Register one SnapTrade user per end user with :api[Authentication_registerSnapTradeUser].
3. Store the returned `userId` and `userSecret` for that SnapTrade user.
4. Generate a Connection Portal URL with :api[Authentication_loginSnapTradeUser] and have the user connect a brokerage account.
5. After the account is connected, fetch that user's account data by passing `userId` and `userSecret` to user-scoped operations.

## TypeScript

```typescript
import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Your app manages each end user’s SnapTrade identity.
  auth: SnaptradeAuth.commercialApiKey({
    clientId: process.env.SNAPTRADE_CLIENT_ID!,
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  }),
});

// Register once during onboarding; securely persist the returned credentials.
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

if (!("redirectURI" in login.data)) throw new Error("Expected a Connection Portal URL");
console.log("Send this Connection Portal URL to your user:", login.data.redirectURI);
```

After the user completes the Connection Portal, run the following code. Reuse your initialized SDK client and the user's stored credentials.

```typescript
const accounts = await snaptrade.accountInformation.listUserAccounts({
  // Commercial account-data calls include the user's credentials.
  userId,
  userSecret,
});

if (!accounts.data.length) throw new Error("No connected accounts yet");

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

## Python

```python
import os
from snaptrade_client import SnapTrade, SnapTradeAuth

snaptrade = SnapTrade(
    # Your app manages each end user’s SnapTrade identity.
    auth=SnapTradeAuth.commercial_api_key(
        client_id=os.environ["SNAPTRADE_CLIENT_ID"],
        consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
    )
)

# Register once during onboarding; securely persist the returned credentials.
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
```

After the user completes the Connection Portal, run the following code. Reuse your initialized SDK client and the user's stored credentials.

```python
accounts = snaptrade.account_information.list_user_accounts(
    # Commercial account-data calls include the user's credentials.
    user_id=user_id,
    user_secret=user_secret,
)

if not accounts.body:
    raise RuntimeError("No connected accounts yet")

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

## Credential Rules

- Use `SnaptradeAuth.commercialApiKey` in TypeScript or `SnapTradeAuth.commercial_api_key` in Python.
- Register or otherwise obtain a SnapTrade user's `userId` and `userSecret` before fetching that user's account data.
- Pass `userId` and `userSecret` on user-scoped operations such as listing accounts, balances, positions, orders, holdings, activities, and connections.
- Keep the `consumerKey` and each user's `userSecret` on a secure backend. Do not expose them in browser or mobile clients.

## Accounts and Trading

After connection, list accounts, choose an account ID, and retrieve positions with :api[AccountInformation_getAllAccountPositions]. The examples also show retrieving account activities. Balances and orders are available through :api[AccountInformation_getUserAccountBalance] and :api[AccountInformation_getUserAccountOrders].

For trading, create the connection with `connectionType` / `connection_type` set to `trade-if-available`. The default `read` connection type only supports data access. Trading also depends on the key, brokerage, connection, and account capabilities. Build the order with the account ID and brokerage ticker, show the user its details and impact, obtain confirmation, then use :api[Trading_placeForceOrder]. See [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade) for order types and supported assets.

## Requests and Next Steps

The SDK signs API-key requests for you. For direct HTTP, follow [Request Signatures](https://docs.snaptrade.com/docs/request-signatures). See [General Errors](https://docs.snaptrade.com/docs/requests) for authentication and other request failures.

- Configure the [Connection Portal](https://docs.snaptrade.com/docs/implement-connection-portal).
- Read [Account Data](https://docs.snaptrade.com/docs/account-data) and manage [Connections](https://docs.snaptrade.com/docs/connections).
- Configure [Webhooks](https://docs.snaptrade.com/docs/webhooks).
- Prepare for production with [Launching Your Application](https://docs.snaptrade.com/docs/launching-your-application) and the [Broker Access Guide](https://docs.snaptrade.com/docs/broker-access-guide).
