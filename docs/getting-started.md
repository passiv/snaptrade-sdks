# Getting Started with SnapTrade

This guide will help you connect a brokerage account, retrieve account data, and, where enabled, place a trade. Start by choosing the customer model that matches who will use the integration.

For definitions used throughout this guide, see [Terminology](https://docs.snaptrade.com/docs/terminology). For more detail about the two customer models, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial) and [Authentication Methods](https://docs.snaptrade.com/docs/authentication-methods).

The [interactive Getting Started Demo](https://docs.snaptrade.com/demo/getting-started) currently demonstrates the Commercial flow.

---

<a id="getting-started-api-keys"></a>

## Choose a Customer Model

Personal users can share their connected brokerage data with OAuth-enabled apps or access it directly with a Personal API key. Commercial integrations use an API key to manage brokerage accounts for their end users.

| | Personal | Commercial |
| --- | --- | --- |
| Use when | You are accessing your own brokerage accounts | Your application manages brokerage accounts for its end users |
| Access methods | OAuth for sharing data, or a Personal API key for direct access | A Commercial API key |
| User identity | Your signed-in SnapTrade account identifies you | Each app user has a SnapTrade `userId` and `userSecret` |
| User registration | Not required | Required before connecting a brokerage |
| Trading | Available through Personal API keys where enabled; OAuth is currently read-only | Available for app users where enabled |
| Webhooks | Available for Personal API keys | Available |

- [Follow the Personal quickstart](#personal-quickstart)
- [Follow the Commercial quickstart](#commercial-quickstart)

### SnapTrade SDKs

We recommend using a SnapTrade SDK. If you call the API directly, follow [Request Signatures](https://docs.snaptrade.com/docs/request-signatures) to sign each request.

| **Language** | **SDK Link** |
| --- | --- |
| Python | [**https://pypi.org/project/snaptrade-python-sdk**](https://pypi.org/project/snaptrade-python-sdk) |
| TypeScript | [**https://www.npmjs.com/package/snaptrade-typescript-sdk**](https://www.npmjs.com/package/snaptrade-typescript-sdk) |
| Java | [**https://central.sonatype.com/artifact/com.snaptrade/snaptrade-java-sdk**](https://central.sonatype.com/artifact/com.snaptrade/snaptrade-java-sdk) |
| Ruby | [**https://rubygems.org/gems/snaptrade**](https://rubygems.org/gems/snaptrade) |
| C# | [**https://nuget.org/packages/SnapTrade.Net**](https://nuget.org/packages/SnapTrade.Net) |
| PHP | [**https://packagist.org/packages/konfig/snaptrade-php-sdk**](https://packagist.org/packages/konfig/snaptrade-php-sdk) |
| Go | [**https://pkg.go.dev/github.com/passiv/snaptrade-sdks/sdks/go**](https://pkg.go.dev/github.com/passiv/snaptrade-sdks/sdks/go) |

---

<a id="personal-quickstart"></a>

## Personal Quickstart

Use this path when you are connecting and managing your own brokerage accounts.

<!-- Add the Personal account -> brokerage connections -> OAuth apps or Personal API key diagram here. -->

### 1. Create a Personal Account

1. Create a Personal account in the [SnapTrade Dashboard](https://dashboard.snaptrade.com/home).
2. Verify your email.

### 2. Choose How to Access Your Data

Most Personal users connect their brokerage accounts in the SnapTrade Dashboard and share that data with apps through OAuth. You can also create a Personal API key when you want to access your data programmatically.

#### Share Your Data Through OAuth

1. Connect and manage your brokerage accounts in the [SnapTrade Dashboard](https://dashboard.snaptrade.com/home).
2. In an OAuth-enabled app or AI assistant, choose SnapTrade as a data source.
3. Sign in to SnapTrade and approve the app's requested read access.

The app receives a scoped OAuth token instead of your Personal API credentials. Do not give an app your `consumerKey`. OAuth currently supports reading account data and managing connections, but it does not support trading.

To share data with an AI assistant, see the [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server). Developers building an app that receives shared data should see [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps).

#### Access Your Data With a Personal API Key

1. Enable two-factor authentication in the SnapTrade Dashboard.
2. Create your Personal API key from the [API Key page](https://dashboard.snaptrade.com/api-key).
3. Store the `clientId` and `consumerKey` securely.

Your Personal API key represents you. Do not register a separate SnapTrade user, and do not send a `userId` or `userSecret` in Personal API requests.

<a id="getting-started-connections"></a>

### 3. Connect a Brokerage With Your API Key

If you already connected your brokerage account in the Dashboard, you can skip this step. To add another connection programmatically:

1. Open :api[Authentication_loginSnapTradeUser] and select **Personal API Key** authentication.
2. Enter your Personal `clientId` and `consumerKey`. Leave `userId` and `userSecret` unset.
3. If you intend to trade, set `connectionType` to `trade-if-available`. The default `read` connection type supports data access only.
4. Send the request and open the returned Connection Portal URL.
5. Complete the Connection Portal flow for your brokerage.

A `connection` represents a linked set of brokerage credentials. Completing the portal flow makes the brokerage accounts under that connection available through SnapTrade.

For more ways to open and configure the portal, see [Methods to Integrate the Connection Portal into Your Application](https://docs.snaptrade.com/docs/implement-connection-portal).

<a id="getting-started-accounts"></a>

### 4. Retrieve Accounts and Positions

1. Call :api[AccountInformation_listUserAccounts] using **Personal API Key** authentication to list your accounts.
2. Choose the `accountId` for the account you want to inspect.
3. Call :api[AccountInformation_getAllAccountPositions] with that `accountId`.

You can also retrieve balances with :api[AccountInformation_getUserAccountBalance] and orders with :api[AccountInformation_getUserAccountOrders].

### 5. Place a Checked Trade

Personal users can trade their own accounts when trading is enabled for the API key, brokerage, connection, and account.

1. Call :api[ReferenceData_symbolSearchUserAccount] with the account ID and a ticker or instrument name to find the `universalSymbolId`.
2. Call :api[Trading_getOrderImpact] to validate the order and save the returned `tradeId`.
3. Confirm the order details, then call :api[Trading_placeOrder] with the `tradeId` before it expires.

Use **Personal API Key** authentication throughout and continue to omit `userId` and `userSecret`.

### Personal Next Steps

- Learn more about retrieving [Account Data](https://docs.snaptrade.com/docs/account-data).
- Learn how to manage and repair [Connections](https://docs.snaptrade.com/docs/connections).
- Configure [Webhooks](https://docs.snaptrade.com/docs/webhooks).
- Access your data through AI assistants with the [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server).

[Back to customer models](#getting-started-api-keys)

---

<a id="commercial-quickstart"></a>

## Commercial Quickstart

Use this path when you are building an application that manages brokerage connections for its own end users.

<!-- Add the Commercial API key -> users -> connections -> accounts diagram here. -->

### 1. Create a Commercial API Key

1. Create a Commercial account in the [SnapTrade Dashboard](https://dashboard.snaptrade.com/home).
2. Verify your email.
3. Enable two-factor authentication.
4. Create a test API key from the [API Key page](https://dashboard.snaptrade.com/api-key).
5. When you are ready for production, complete the required approval and billing steps in the Dashboard and create a production key.
6. Store the `clientId` and `consumerKey` on a secure backend.

For plan limits and production requirements, see [Billing](https://docs.snaptrade.com/docs/billing).

<a id="getting-started-users"></a>

### 2. Register a SnapTrade User

A Commercial integration creates one SnapTrade `user` for each end user in the application.

1. Call :api[Authentication_registerSnapTradeUser] with a stable, immutable `userId` from your system. Avoid using an email address.
2. Store the returned `userSecret` securely. SnapTrade returns it only when the user is registered.

The `userId` and `userSecret` identify this app user in subsequent user-scoped requests.

### 3. Connect a Brokerage

1. Call :api[Authentication_loginSnapTradeUser] using **Commercial API Key** authentication.
2. Provide the app user's `userId` and `userSecret`.
3. If the user intends to trade, set `connectionType` to `trade-if-available`. The default `read` connection type supports data access only.
4. Open the returned Connection Portal URL and send the end user through the portal flow.

After the user completes the flow, the connection and its brokerage accounts are available through SnapTrade.

For more ways to open and configure the portal, see [Methods to Integrate the Connection Portal into Your Application](https://docs.snaptrade.com/docs/implement-connection-portal).

### 4. Retrieve Accounts and Positions

1. Call :api[AccountInformation_listUserAccounts] with the user's `userId` and `userSecret`.
2. Choose the `accountId` for the account you want to inspect.
3. Call :api[AccountInformation_getAllAccountPositions] with the `accountId`, `userId`, and `userSecret`.

You can also retrieve balances with :api[AccountInformation_getUserAccountBalance] and orders with :api[AccountInformation_getUserAccountOrders].

### 5. Place a Checked Trade

Commercial integrations can trade when trading is enabled for the API key, brokerage, connection, and account.

1. Call :api[ReferenceData_symbolSearchUserAccount] with the account ID and a ticker or instrument name to find the `universalSymbolId`.
2. Call :api[Trading_getOrderImpact] to validate the order and save the returned `tradeId`.
3. Have the end user confirm the order details, then call :api[Trading_placeOrder] with the `tradeId` before it expires.

Include the user's `userId` and `userSecret` in each user-scoped request.

### Commercial Next Steps

- Configure [Webhooks](https://docs.snaptrade.com/docs/webhooks).
- Finish integrating the [Connection Portal](https://docs.snaptrade.com/docs/implement-connection-portal).
- Prepare your integration for production with [Launching Your Application](https://docs.snaptrade.com/docs/launching-your-application).
- Review Commercial pricing and limits in [Billing](https://docs.snaptrade.com/docs/billing).

[Back to customer models](#getting-started-api-keys)

---

For troubleshooting, see the [FAQ](https://docs.snaptrade.com/docs/faq). If you still need help, contact us through [Discord](https://discord.gg/rkYWBxb8Qu).
