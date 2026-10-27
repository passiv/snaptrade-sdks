# SnapTrade MCP Server

SnapTrade offers a hosted [Model Context Protocol](https://modelcontextprotocol.io) (MCP) server that lets AI assistants like Claude, ChatGPT, and Codex securely read a user's connected brokerage data through natural-language prompts. Once a user adds SnapTrade as a connector, they can ask their assistant about balances, positions, orders, account activity, portfolio allocation, and investment income in plain language.

The MCP server is available at `https://mcp.snaptrade.com/mcp`.

:::info
The MCP server reads account data and can generate a one-time link to connect a new brokerage. Generating a link creates a short-lived link, but it does not connect an account on the user's behalf. The server cannot place trades, move money, or change account settings. For programmatic access to the full SnapTrade API, including trading, see [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started).
:::

## Before you begin

The SnapTrade MCP server is for **SnapTrade Personal** users — individuals who connect and manage their own brokerage accounts with SnapTrade. It is not used with SnapTrade developer (partner) API keys.

To use the connector, you'll need a free SnapTrade Personal account. If you don't have one yet, sign up at the [SnapTrade Dashboard](https://dashboard.snaptrade.com/signup) and link at least one brokerage account before adding the connector to your AI assistant.

For a broader comparison of Personal and Commercial customer experiences, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial).

## What you can do with it

With the SnapTrade connector enabled, an AI assistant can:

- List the brokerages a user is connected to and the accounts under each connection
- Retrieve account details, balances, and buying power
- Retrieve positions and holdings across accounts
- Summarize portfolio value, allocation, and holdings across connected accounts
- Summarize dividends, interest, fees, and cash flows for a chosen period
- Show Wealth Rank, when a monthly placement is available
- Review orders, recent orders, and order details
- Review historical account activity such as deposits, dividends, and fees
- Look up SnapTrade's stock-exchange and partner reference data
- Discover compatible apps and tools in the SnapTrade app directory, when available for the account
- Generate a one-time link the user can open to connect a new brokerage

## How it works

The MCP server is a protocol layer in front of SnapTrade's API. It forwards allowlisted account and reference-data requests, builds cross-account portfolio and income summaries, and exposes SnapTrade's Wealth Rank and app directory where available.

```
AI assistant  →  SnapTrade MCP server  →  SnapTrade Partner API  →  User's brokerages
```

The connector exposes a curated set of account reads plus derived summaries and discovery tools. Portfolio and income summaries use current exchange rates for currency conversion, so converted historical amounts may be approximate. Availability and freshness of account data depend on each brokerage.

## Authentication and security

The connector uses the OAuth 2.0 authorization code grant with PKCE. When a user adds the connector, their AI assistant registers itself automatically using [Dynamic Client Registration (RFC 7591)](https://www.rfc-editor.org/rfc/rfc7591). The user is then redirected to SnapTrade to log in and approve access. Tokens issued to the assistant are scoped to `read`, and the MCP server validates every request using [token introspection (RFC 7662)](https://www.rfc-editor.org/rfc/rfc7662) against SnapTrade's authorization server.

:::info
The AI assistant never sees a user's SnapTrade `userId` or `userSecret`, and never sees brokerage login credentials. It only receives a short-lived, read-scoped access token. SnapTrade resolves the user from that token.
:::

Clients can discover the connector's OAuth configuration at these endpoints:

- `https://mcp.snaptrade.com/.well-known/oauth-protected-resource/mcp`
- `https://api.snaptrade.com/.well-known/oauth-authorization-server/mcp`

For details on what data the connector accesses and how it is handled, see the [SnapTrade Connector Privacy Notice](https://docs.snaptrade.com/docs/connector-privacy). For SnapTrade's overall security posture, see [snaptrade.com/security](https://snaptrade.com/security).

## Set up the SnapTrade connector in Claude

1. In Claude, go to **Settings → Connectors**.
2. Click **Add**, then **Add custom connector**.
3. Enter a name (for example, `SnapTrade`) and the MCP server URL: `https://mcp.snaptrade.com/mcp`.
4. Click **Add**, then **Connect**.
5. Complete the SnapTrade login flow if prompted and approve **read** access.
6. After you approve, the SnapTrade tools become available in Claude.

## Set up the SnapTrade app in ChatGPT

1. Go to [chatgpt.com/plugins](https://chatgpt.com/plugins), click **+**, then **Add custom MCP server**.
2. Enter a name (for example, `SnapTrade`), a short description, and the MCP server URL: `https://mcp.snaptrade.com/mcp`.
3. Set authentication to **OAuth**, review the warning and select **I understand and want to continue**.
4. Select **Create as a plugin**, then sign in to SnapTrade and approve **read** access when prompted.
5. In a new chat, type **@** and pick **SnapTrade** to use your portfolio data.

## Example prompts

Once the connector is enabled, a user can ask their assistant questions like:

- *"What brokerages am I connected to through SnapTrade?"*
- *"Show me my current balances and positions across all my accounts."*
- *"What were my last 10 orders across all my accounts?"*
- *"How is my portfolio allocated across my connected accounts?"*
- *"How much dividend and interest income did I receive this year?"*
- *"What is my SnapTrade Wealth Rank?"*
- *"What apps can I use with my SnapTrade accounts?"*
- *"I'd like to connect my Alpaca account."* — the assistant calls `request_connection_link` and hands the user a one-time URL to open in their browser.

## Available tools

The connector exposes 19 tools. Eighteen read data; `request_connection_link` creates a one-time connection URL for the user to open. It does not complete the brokerage connection.

**Connections**

- `Connections_listBrokerageAuthorizations` — list the user's brokerage connections
- `Connections_listBrokerageAuthorizationAccounts` — list the accounts under a connection

**Account information**

- `AccountInformation_listUserAccounts` — list the user's accounts
- `AccountInformation_getUserAccountDetails` — account details, including institution name and total value
- `AccountInformation_getUserAccountBalance` — cash balances and buying power
- `AccountInformation_getAllAccountPositions` — positions and holdings for an account
- `AccountInformation_getAccountBalanceHistory` — historical account balances
- `AccountInformation_getUserAccountOrdersV2` — orders for an account
- `AccountInformation_getUserAccountRecentOrdersV2` — recent orders for an account
- `AccountInformation_getUserAccountOrderDetailV2` — details for a single order
- `AccountInformation_getAccountActivities` — historical account activity such as deposits, dividends, and fees

**Reference data**

- `ReferenceData_getStockExchanges` — supported stock exchanges
- `ReferenceData_getPartnerInfo` — brokerages and data access available to the connector

**Portfolio insights**

- `get_portfolio_summary` — cross-account value, allocation, and top holdings in a reporting currency
- `get_income_summary` — dividends, interest, fees, and cash flows across accounts for a date range
- `get_wealth_rank` — monthly placement by holdings value among SnapTrade Personal members, when available; this is not a measure of investment performance

**Discovery and connection helpers**

- `list_snaptrade_apps` — compatible apps and tools in the SnapTrade app directory; may be unavailable for some accounts
- `list_supported_brokerages` — brokerages the user can connect
- `request_connection_link` — generate a single-use URL that expires after 5 minutes. The user opens it in their browser and completes the connection there.

All tools declare explicit read-only, destructive, and open-world hints. `request_connection_link` is the only tool marked non-read-only because it creates a link; it is non-destructive. Catalog and snapshot reads are marked closed-world, while tools that access external brokerage account data are marked open-world.

## Optional account events

When account events are enabled for a user and supported by the AI client, the connector can offer subscriptions to `connection.created`, `connection.disabled`, and `sync.daily_summary`. These can notify the assistant of a new connection, a connection needing attention, or whether connections synced in the last 24 hours. Event payloads can include connection identifiers and brokerage names. The daily sync summary also includes each connection's sync status and last-sync time, plus summary counts. Events do not include account numbers or account names. This feature is separate from the 19 tools above and may not be available for every account.

## Manage and revoke access

A user can revoke a connector's access at any time from the SnapTrade dashboard under **Settings → Connected apps**. Revoking access immediately invalidates the assistant's token.

This is separate from disconnecting a brokerage — revoking connector access removes the AI assistant's access to SnapTrade, but leaves the user's brokerage connections intact.

## Support

For connector setup, sign-in, connection, or data questions, see [SnapTrade MCP connector support](https://docs.snaptrade.com/docs/mcp-support) or email `support@snaptrade.com`. Send security vulnerability reports to `security@snaptrade.com`.

---

## Related

- [SnapTrade Connector Privacy Notice](https://docs.snaptrade.com/docs/connector-privacy)
- [SnapTrade MCP Connector Support](https://docs.snaptrade.com/docs/mcp-support)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Brokerage Integrations](https://docs.snaptrade.com/docs/integrations)
- [Terminology](https://docs.snaptrade.com/docs/terminology)
