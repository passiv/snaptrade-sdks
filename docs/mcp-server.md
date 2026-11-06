# SnapTrade MCP Server

SnapTrade offers a hosted [Model Context Protocol](https://modelcontextprotocol.io) (MCP) server that lets AI assistants like Claude and ChatGPT securely read a user's connected brokerage data through natural-language prompts. Once a user adds SnapTrade as a connector, they can ask their assistant about their balances, positions, orders, and account activity in plain language, and, on the trading server, preview, place, and cancel orders.

SnapTrade hosts two MCP servers:

| Server | URL | Access |
| --- | --- | --- |
| Portfolio | `https://agent.snaptrade.com/mcp/portfolio` | Read-only account data, plus a link to connect a new brokerage |
| Trading | `https://agent.snaptrade.com/mcp/trading` | The same account data, plus order preview, placement, and cancellation |

`https://mcp.snaptrade.com/mcp` remains available as an alias of the portfolio server for existing connectors.

:::info
The portfolio server is **read-only**: it can retrieve account data and generate a link to connect a new brokerage, but it cannot place trades. The trading server can place and cancel orders in accounts the user has approved for trading. Neither server can move money or change account settings. For programmatic access to the full SnapTrade API, see [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started).
:::

## Before you begin

The SnapTrade MCP server is for **SnapTrade Personal** users — individuals who connect and manage their own brokerage accounts with SnapTrade. It is not used with SnapTrade developer (partner) API keys.

To use the connector, you'll need a free SnapTrade Personal account. If you don't have one yet, sign up at the [SnapTrade Dashboard](https://dashboard.snaptrade.com/signup) and link at least one brokerage account before adding the connector to your AI assistant.

The trading server also requires trading access to be enabled for your SnapTrade account and a brokerage connection with trade access. Trading access is not yet available for every account; when it is not enabled, the consent screen grants read access only and the trading tools are not available.

For a broader comparison of Personal and Commercial customer experiences, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial).

## What you can do with it

With the SnapTrade connector enabled, an AI assistant can:

- List the brokerages a user is connected to and the accounts under each connection
- Retrieve account details, balances, and buying power
- Retrieve positions and holdings across accounts
- Review orders, recent orders, and order details
- Review historical account activity such as deposits, dividends, and fees
- Summarize portfolio value, allocation, and unrealized gains and losses across accounts
- Summarize dividends, interest, fees, and contributions for a period
- Show the user's Wealth Rank, when a placement is available
- List apps and tools from the SnapTrade app directory that work with the user's accounts
- Look up reference data such as stock exchanges and the brokerages available to the user
- Generate a one-time link the user can open to connect a new brokerage

On the trading server, an AI assistant can also:

- Preview an order, with a cost estimate and warnings, before anything is placed
- Place an order the user has previewed and confirmed
- Check the status of placed orders and cancel open orders

## How it works

The MCP server is a thin protocol adapter in front of the SnapTrade Partner API. AI assistants speak MCP; SnapTrade exposes a REST API. The MCP server translates between the two and forwards each request to the same endpoints SnapTrade partners already use.

```
AI assistant  →  SnapTrade MCP server  →  SnapTrade Partner API  →  User's brokerages
```

No new data surface is introduced — the connector exposes a curated subset of existing SnapTrade endpoints. The portfolio server is read-only; the trading server adds order preview, placement, and cancellation.

## Authentication and security

The connector uses the OAuth 2.0 authorization code grant with PKCE. When a user adds the connector, their AI assistant registers itself automatically using [Dynamic Client Registration (RFC 7591)](https://www.rfc-editor.org/rfc/rfc7591). The user is then redirected to SnapTrade to log in and approve access. Tokens issued to the assistant are scoped to `read` on the portfolio server, and to `read` and `trade` on the trading server when the user approves trading. The MCP server validates every request using [token introspection (RFC 7662)](https://www.rfc-editor.org/rfc/rfc7662) against SnapTrade's authorization server.

:::info
The AI assistant never sees a user's SnapTrade `userId` or `userSecret`, and never sees brokerage login credentials. It only receives a short-lived access token limited to the scopes the user approved. SnapTrade resolves the user from that token.
:::

Clients can discover the connector's OAuth configuration at these endpoints:

| Server | Protected resource metadata | Authorization server metadata |
| --- | --- | --- |
| Portfolio | `https://agent.snaptrade.com/.well-known/oauth-protected-resource/mcp/portfolio` | `https://api.snaptrade.com/.well-known/oauth-authorization-server/mcp/portfolio` |
| Trading | `https://agent.snaptrade.com/.well-known/oauth-protected-resource/mcp/trading` | `https://api.snaptrade.com/.well-known/oauth-authorization-server/mcp/trading` |

For details on what data the connector accesses and how it is handled, see the [SnapTrade Connector Privacy Notice](https://docs.snaptrade.com/docs/connector-privacy). For SnapTrade's overall security posture, see [snaptrade.com/security](https://snaptrade.com/security).

## Set up the SnapTrade connector in Claude

1. In Claude, go to **Settings → Connectors**.
2. Click **Add**, then **Add custom connector**.
3. Enter a name (for example, `SnapTrade`) and the MCP server URL: `https://agent.snaptrade.com/mcp/portfolio` for read-only access, or `https://agent.snaptrade.com/mcp/trading` for trading.
4. Click **Add**, then **Connect**.
5. Complete the SnapTrade login flow if prompted and approve access: **read** for the portfolio server, or **read** and **Place trades in your accounts** for the trading server.
6. After you approve, the SnapTrade tools become available in Claude.

## Set up the SnapTrade app in ChatGPT

1. Go to [chatgpt.com/plugins](https://chatgpt.com/plugins), click **+**, then **Add custom MCP server**.
2. Enter a name (for example, `SnapTrade`), a short description, and the MCP server URL: `https://agent.snaptrade.com/mcp/portfolio` for read-only access, or `https://agent.snaptrade.com/mcp/trading` for trading.
3. Set authentication to **OAuth**, review the warning and select **I understand and want to continue**.
4. Select **Create as a plugin**, then sign in to SnapTrade and approve access when prompted: **read** for the portfolio server, or **read** and **Place trades in your accounts** for the trading server.
5. In a new chat, type **@** and pick **SnapTrade** to use your portfolio data.

## Example prompts

Once the connector is enabled, a user can ask their assistant questions like:

- *"What brokerages am I connected to through SnapTrade?"*
- *"Show me my current balances and positions across all my accounts."*
- *"What were my last 10 orders across all my accounts?"*
- *"I'd like to connect my Alpaca account."* — the assistant calls `request_connection_link` and hands the user a one-time URL to open in their browser.

On the trading server:

- *"Buy 5 shares of AAPL in my Alpaca account at market."* — the assistant previews the order, shows the estimate and any warnings, and asks the user to confirm before placing it.
- *"Cancel my open limit order for VTI."*

## Available tools

### Portfolio server

The portfolio server is read-only and exposes 19 tools. All read data except `request_connection_link`, which generates a connection link for the user to open.

**Connections**

- `Connections_listBrokerageAuthorizations` — list the user's brokerage connections
- `Connections_listBrokerageAuthorizationAccounts` — list the accounts under a connection

**Account information**

- `AccountInformation_listUserAccounts` — list all of the user's accounts
- `AccountInformation_getUserAccountDetails` — account details, including institution name and total value
- `AccountInformation_getUserAccountBalance` — cash balances and buying power
- `AccountInformation_getAllAccountPositions` — positions and holdings for an account
- `AccountInformation_getAccountBalanceHistory` — historical account balances
- `AccountInformation_getUserAccountOrdersV2` — orders for an account
- `AccountInformation_getUserAccountRecentOrdersV2` — recent orders for an account
- `AccountInformation_getUserAccountOrderDetailV2` — details for a single order
- `AccountInformation_getAccountActivities` — historical account activity such as deposits, dividends, and fees

**Portfolio summaries**

- `get_portfolio_summary` — total value, asset-type and currency allocation, concentration, and unrealized gains and losses across all accounts, in one reporting currency
- `get_income_summary` — dividends, interest, fees, and contributions across all accounts for a period, in one reporting currency
- `get_wealth_rank` — where the user's total holdings place them among SnapTrade members, when a placement is available

**Reference data**

- `ReferenceData_getStockExchanges` — supported stock exchanges
- `ReferenceData_getPartnerInfo` — brokerages and data access available to the connector

**Apps and connections**

- `list_snaptrade_apps` — apps and tools from the SnapTrade app directory that work with the user's accounts
- `list_supported_brokerages` — list the brokerages the user can connect
- `request_connection_link` — generate a one-time URL the user opens to connect a new brokerage. The link is single-use and expires after 5 minutes. The assistant cannot complete the connection itself; only the user's browser session can.

### Trading server

The trading server exposes 21 tools: the same connection, account, reference-data, portfolio-summary, and app and connection tools, except that `AccountInformation_getUserAccountOrdersV2` and `AccountInformation_getUserAccountRecentOrdersV2` are replaced by `AccountInformation_getAllAccountOrders`. It adds:

- `AccountInformation_getAllAccountOrders` — orders for an account, in the same format used to place orders
- `Trading_previewSimpleOrder` — validate an order and estimate its cost against the account's quote and cash balance, without placing it. Returns a `preview_token` valid for 5 minutes.
- `Trading_placeSimpleOrder` — submit an order. Requires the `preview_token` from a preview of the same order, so an order cannot be placed without a matching preview. The token does not prove the user saw or confirmed the preview; the tool instructions tell the assistant to show it and wait for confirmation, and that depends on the client following them.
- `Trading_cancelOrder` — cancel an open order

Supported securities are stocks and ETFs (fractional shares at eligible brokerages), single-leg and multi-leg options, and futures and futures options on tastytrade, subject to what each brokerage and account allows. Crypto orders are not available. Previews estimate cost for single-equity orders only; other orders are previewed with a "no quote" warning. A placed order is submitted to the brokerage, not necessarily filled.

Every tool is annotated so AI clients and users can tell read operations from write operations. Read tools, including `Trading_previewSimpleOrder`, are marked `readOnlyHint: true` and `destructiveHint: false`. `request_connection_link` is marked `readOnlyHint: false` and `destructiveHint: false`: it creates a link but changes no existing data. `Trading_placeSimpleOrder` and `Trading_cancelOrder` are marked `destructiveHint: true`; of the two, only `Trading_cancelOrder` is marked idempotent. Tools that read the user's brokerage data are marked `openWorldHint: true`; reference data, the app directory, `list_supported_brokerages`, and `get_wealth_rank` are marked `openWorldHint: false`.

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
