# SnapTrade MCP Server

SnapTrade offers a hosted [Model Context Protocol](https://modelcontextprotocol.io) (MCP) server that lets AI assistants like Claude and ChatGPT securely read a user's connected brokerage data through natural-language prompts. Once a user adds SnapTrade as a connector, they can ask their assistant about their balances, positions, orders, and account activity in plain language.

The MCP server is available at `https://mcp.snaptrade.com/mcp`.

:::info
The MCP server is **read-only**. It can retrieve account data and generate a link to connect a new brokerage, but it cannot place trades, move money, or change account settings. For programmatic access to the full SnapTrade API, including trading, see [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started).
:::

## Before you begin

The SnapTrade MCP server is for **SnapTrade Personal** users — individuals who connect and manage their own brokerage accounts with SnapTrade. It is not used with SnapTrade developer (partner) API keys.

To use the connector, you'll need a free SnapTrade Personal account. If you don't have one yet, sign up at [SnapTrade Personal](https://www.mysnaptrade.com) and link at least one brokerage account before adding the connector to your AI assistant.

## What you can do with it

With the SnapTrade connector enabled, an AI assistant can:

- List the brokerages a user is connected to and the accounts under each connection
- Retrieve account details, balances, and buying power
- Retrieve positions and holdings across accounts
- Review orders, recent orders, and order details
- Review historical account activity such as deposits, dividends, and fees
- Look up reference data such as currencies, exchange rates, stock exchanges, and security types
- Generate a one-time link the user can open to connect a new brokerage

## How it works

The MCP server is a thin protocol adapter in front of the SnapTrade Partner API. AI assistants speak MCP; SnapTrade exposes a REST API. The MCP server translates between the two and forwards each request to the same endpoints SnapTrade partners already use.

```
AI assistant  →  SnapTrade MCP server  →  SnapTrade Partner API  →  User's brokerages
```

No new data surface is introduced — the connector exposes a curated, read-only subset of existing SnapTrade endpoints.

## Authentication and security

The connector uses the OAuth 2.0 authorization code grant with PKCE. When a user adds the connector, their AI assistant registers itself automatically using [Dynamic Client Registration (RFC 7591)](https://www.rfc-editor.org/rfc/rfc7591). The user is then redirected to SnapTrade to log in and approve access. Tokens issued to the assistant are scoped to `read`, and the MCP server validates every request using [token introspection (RFC 7662)](https://www.rfc-editor.org/rfc/rfc7662) against SnapTrade's authorization server.

:::info
The AI assistant never sees a user's SnapTrade `userId` or `userSecret`, and never sees brokerage login credentials. It only receives a short-lived, read-scoped access token. SnapTrade resolves the user from that token.
:::

Clients can discover the connector's OAuth configuration at these endpoints:

- `https://mcp.snaptrade.com/.well-known/oauth-protected-resource/mcp`
- `https://api.snaptrade.com/.well-known/oauth-authorization-server/mcp`

For details on what data the connector accesses and how it is handled, see the [SnapTrade Connector Privacy Notice](https://docs.snaptrade.com/docs/connector-privacy). For SnapTrade's overall security posture, see [snaptrade.com/security](https://snaptrade.com/security).

## Set up the connector in Claude

1. In Claude, go to **Settings → Connectors**.
2. Click **Add custom connector**.
3. Enter the MCP server URL: `https://mcp.snaptrade.com/mcp`.
4. Claude redirects you to SnapTrade. Log in and approve **read** access to your account data.
5. Review the consent screen, which lists the read-only scope being granted.
6. After you approve, you are returned to Claude and the SnapTrade tools become available.

## Set up the connector in ChatGPT

1. In ChatGPT, go to **Settings → Apps & Connectors → Advanced settings** and turn on **Developer mode**.
2. Go to **Settings → Connectors** and click **Create**.
3. Enter a name (for example, `SnapTrade`) and the MCP server URL: `https://mcp.snaptrade.com/mcp`.
4. Set the authentication method to **OAuth** and confirm you trust the application.
5. Click **Create**, then complete the OAuth login flow with SnapTrade and approve **read** access.
6. After you approve, the SnapTrade tools become available in your chats.

> Note: ChatGPT Developer mode and custom connectors are available on ChatGPT for web, not the desktop app — complete this setup at [chatgpt.com](https://chatgpt.com).

> Note: Once the SnapTrade app is approved in the ChatGPT app directory, users can add it directly from the directory without enabling Developer mode.

## Example prompts

Once the connector is enabled, a user can ask their assistant questions like:

- *"What brokerages am I connected to through SnapTrade?"*
- *"Show me my current balances and positions across all my accounts."*
- *"What were my last 10 orders across all my accounts?"*
- *"I'd like to connect my Alpaca account."* — the assistant calls `request_connection_link` and hands the user a one-time URL to open in their browser.

## Available tools

The connector exposes 18 tools. All are read-only except `request_connection_link`, which generates a connection link for the user to open.

**Connections**

- `Connections_listBrokerageAuthorizations` — list the user's brokerage connections
- `Connections_listBrokerageAuthorizationAccounts` — list the accounts under a connection

**Account information**

- `AccountInformation_getUserAccountDetails` — account details, including institution name and total value
- `AccountInformation_getUserAccountBalance` — cash balances and buying power
- `AccountInformation_getAllAccountPositions` — positions and holdings for an account
- `AccountInformation_getAccountBalanceHistory` — historical account balances
- `AccountInformation_getUserAccountOrdersV2` — orders for an account
- `AccountInformation_getUserAccountRecentOrdersV2` — recent orders for an account
- `AccountInformation_getUserAccountOrderDetailV2` — details for a single order
- `AccountInformation_getAccountActivities` — historical account activity such as deposits, dividends, and fees

**Reference data**

- `ReferenceData_listAllCurrencies` — supported currencies
- `ReferenceData_listAllCurrenciesRates` — exchange rates for all supported currencies
- `ReferenceData_getCurrencyExchangeRatePair` — exchange rate for a specific currency pair
- `ReferenceData_getSecurityTypes` — supported security types
- `ReferenceData_getStockExchanges` — supported stock exchanges
- `ReferenceData_getPartnerInfo` — brokerages and data access available to the connector

**Connection helpers**

- `list_supported_brokerages` — list the brokerages the user can connect
- `request_connection_link` — generate a one-time URL the user opens to connect a new brokerage. The link is single-use and expires after 5 minutes. The assistant cannot complete the connection itself; only the user's browser session can.

Every tool is annotated so AI clients and users can tell read operations from write operations. Read tools are marked `readOnlyHint: true` and `destructiveHint: false`; `request_connection_link` is marked `readOnlyHint: false` and `destructiveHint: true`. All tools are marked `openWorldHint: true`.

## Manage and revoke access

A user can revoke a connector's access at any time from the SnapTrade dashboard under **Settings → Connected apps**. Revoking access immediately invalidates the assistant's token.

This is separate from disconnecting a brokerage — revoking connector access removes the AI assistant's access to SnapTrade, but leaves the user's brokerage connections intact.

## Support

- General support: `support@snaptrade.com`
- Security vulnerability reports: `security@snaptrade.com`

---

## Related

- [SnapTrade Connector Privacy Notice](https://docs.snaptrade.com/docs/connector-privacy)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Brokerage Integrations](https://docs.snaptrade.com/docs/integrations)
- [Terminology](https://docs.snaptrade.com/docs/terminology)
