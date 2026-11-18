# Use a Personal API Key

Use this guide for scripts and tools that access your own brokerage accounts. A Personal API key represents your SnapTrade account directly. If you are building for other users, start with [Choose Your Integration](https://docs.snaptrade.com/docs/authentication-methods).

## Get Your Credentials

1. Create a Personal account in the [SnapTrade Dashboard](https://dashboard.snaptrade.com/home) and verify your email.
2. Enable two-factor authentication.
3. Create a Personal API key on the [API Key page](https://dashboard.snaptrade.com/api-key).
4. Store your `clientId` and `consumerKey` securely. They grant access to your own account; do not distribute them to other apps.

If your brokerage is already connected in the Dashboard, skip generating a portal URL and go directly to listing accounts. Otherwise open the returned Connection Portal URL and complete the brokerage connection before continuing.

## Connect and Read Account Data

Open the portal URL in a browser, complete the connection, then resume the account-data calls. Keep API credentials on a trusted backend or, for your own Personal tools, in secure local storage.

Your Personal `clientId` and `consumerKey` identify your SnapTrade account. There is no separate SnapTrade end-user record to register or pass on account-data calls. Generate a Connection Portal URL, connect your brokerage account, then fetch account data directly.

## TypeScript

```typescript
import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Personal auth means your API key is the user context.
  auth: SnaptradeAuth.personalApiKey({
    clientId: process.env.SNAPTRADE_CLIENT_ID!,
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  }),
});
```

If your brokerage is already connected in the Dashboard, skip this block. Otherwise, generate a portal URL and complete the connection in your browser.

```typescript
// Generate connection URL.
const login = await snaptrade.authentication.loginSnapTradeUser();

if (!("redirectURI" in login.data)) throw new Error("Expected a Connection Portal URL");
console.log("Open this Connection Portal URL:", login.data.redirectURI);
```

Once your brokerage is connected through the Dashboard or Connection Portal, run the following code. Reuse your initialized SDK client.

```typescript
const accounts = await snaptrade.accountInformation.listUserAccounts();

if (!accounts.data.length) throw new Error("No connected accounts yet");

const positions = await snaptrade.accountInformation.getAllAccountPositions({
  // No userId or userSecret for Personal account-data calls.
  accountId: accounts.data[0].id!,
});

console.log(positions.data);
```

## Python

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
```

If your brokerage is already connected in the Dashboard, skip this block. Otherwise, generate a portal URL and complete the connection in your browser.

```python
# Generate connection URL.
login = snaptrade.authentication.login_snap_trade_user()

print("Open this Connection Portal URL:", login.body["redirectURI"])
```

Once your brokerage is connected through the Dashboard or Connection Portal, run the following code. Reuse your initialized SDK client.

```python
accounts = snaptrade.account_information.list_user_accounts()

if not accounts.body:
    raise RuntimeError("No connected accounts yet")

positions = snaptrade.account_information.get_all_account_positions(
    # No user_id or user_secret for Personal account-data calls.
    account_id=accounts.body[0]["id"],
)

print(positions.body)
```

## Credential Rules

- Use `SnaptradeAuth.personalApiKey` in TypeScript or `SnapTradeAuth.personal_api_key` in Python.
- Generate a Connection Portal URL and connect your brokerage account before fetching account data.
- Fetch account data directly after connection. Your Personal API Key identifies your SnapTrade account.
- Omit `userId` and `userSecret` on account-data operations.
- Do not call :api[Authentication_registerSnapTradeUser]. User registration is for Commercial API-key integrations managing SnapTrade users for their own end users.

## Accounts and Trading

After connection, list accounts, choose an account ID, and retrieve positions with :api[AccountInformation_getAllAccountPositions]. Balances and orders are available through :api[AccountInformation_getUserAccountBalance] and :api[AccountInformation_getUserAccountOrders].

For trading, create the connection with `connectionType` / `connection_type` set to `trade-if-available`. The default `read` connection type only supports data access. Trading also depends on the key, brokerage, connection, and account capabilities. Build the order with the account ID and brokerage ticker, show the user its details and impact, obtain confirmation, then use :api[Trading_placeForceOrder]. See [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade) for order types and supported assets.

## Requests and Next Steps

The SDK signs API-key requests for you. For direct HTTP, follow [Request Signatures](https://docs.snaptrade.com/docs/request-signatures). See [General Errors](https://docs.snaptrade.com/docs/requests) for authentication and other request failures.

- Configure the [Connection Portal](https://docs.snaptrade.com/docs/implement-connection-portal).
- Read [Account Data](https://docs.snaptrade.com/docs/account-data) and manage [Connections](https://docs.snaptrade.com/docs/connections).
- Configure [Webhooks](https://docs.snaptrade.com/docs/webhooks).
- To share your data with an AI assistant, see the [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server).
