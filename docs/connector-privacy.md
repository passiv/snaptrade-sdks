# SnapTrade Connector Privacy Notice

This notice explains how the SnapTrade MCP server (the "connector") handles data when you connect SnapTrade to an AI assistant such as Claude or ChatGPT. It supplements the [SnapTrade Privacy Policy](https://snaptrade.com/privacy-policy), which governs SnapTrade's services overall and applies in full. SnapTrade is operated by Passiv Inc.

The connector reads your account data and can create a one-time link for you to connect a new brokerage. Creating that link does not connect an account on your behalf. The connector cannot place trades, move money, or change account settings.

## What data the connector accesses

When your AI assistant calls a connector tool in response to your prompt, the connector retrieves the following categories of data from SnapTrade and returns them to your assistant:

- **Connections** — the list of brokerages you have connected through SnapTrade and connection metadata such as institution name and connection status.
- **Account details** — account type, institution name, total account value, and sync status.
- **Balances** — cash balances and buying power, including per-currency balances.
- **Positions and holdings** — the securities held in your accounts, with quantities and market values.
- **Orders** — open, filled, cancelled, and pending orders, including order history and individual order details.
- **Account activity** — historical transactions such as deposits, withdrawals, dividends, fees, buys, and sells.
- **Portfolio and income summaries** — totals, allocation, holdings, dividends, interest, fees, and cash flows derived from the account data above. Currency conversion uses current rates and may be approximate for historical amounts.
- **Wealth Rank** — a monthly placement based on the value of your connected holdings compared with other SnapTrade Personal members, when available. It does not measure investment performance.
- **Reference and app directory data** — stock exchanges, partner information, and compatible apps and tools. Directory results may be unavailable for some accounts.

Account-data tools retrieve data in response to prompts you make through your AI assistant. If account events are enabled for your account and your AI client subscribes, the connector can also deliver connection-created, connection-disabled, and daily sync-summary events. Those event payloads contain connection identifiers and brokerage names, not account numbers or account names. Event subscriptions may not be available for every account.

## What the connector does not access

- The connector never exposes your SnapTrade `userId` or `userSecret` to the AI assistant. These partner-level identifiers are stripped from every request before it reaches the assistant.
- The connector never accesses your brokerage login credentials or passwords.
- The connector cannot place trades, transfer funds, or change account settings. Access tokens are scoped to `read`; the connection-link helper can create a short-lived link for you to use in your browser.

## How the connector uses data

The connector forwards selected SnapTrade data to your assistant, creates summaries from that data, and can deliver subscribed account events when enabled. Its connection-link helper creates a one-time URL for you to open in your browser.

SnapTrade does not use connector data for advertising or profiling, and does not use it to train AI models.

## Data storage and retention

The MCP server does not maintain its own long-term store of your account data. Tool calls retrieve data from SnapTrade and return it to your assistant. SnapTrade's backend manages any enabled event subscriptions and their delivery.

Retention of the underlying account data that SnapTrade holds is governed by the [SnapTrade Privacy Policy](https://snaptrade.com/privacy-policy). OAuth access tokens issued to your AI assistant are short-lived and scoped to `read`. Operational logs may be retained for security, reliability, and troubleshooting in line with SnapTrade's standard practices.

## Third-party sharing

When a connector tool returns data, or a subscribed event is delivered, that information goes to the AI provider you chose to use — Anthropic for Claude, or OpenAI for ChatGPT. How those providers handle the data is governed by their own privacy policies:

- [Anthropic Privacy Policy](https://www.anthropic.com/legal/privacy)
- [OpenAI Privacy Policy](https://openai.com/policies/privacy-policy/)

SnapTrade does not sell your personal data. For information on SnapTrade's service providers and other data sharing, see the [SnapTrade Privacy Policy](https://snaptrade.com/privacy-policy).

## Data minimization

The connector is designed to access the minimum data needed to answer your prompts:

- It requests only `read` scope — it cannot write to your accounts.
- It exposes a curated set of account reads and summaries, not the full SnapTrade API.
- Account-data tool results respond to your prompts. If enabled and subscribed, account events can be delivered when the specified event occurs.
- Partner-level identifiers and credentials are removed from every request before the AI assistant sees it.

## Revoking access

You can revoke a connector's access at any time from the SnapTrade dashboard under **Settings → Connected apps**. Revoking access immediately invalidates the AI assistant's token. Revoking connector access does not disconnect your brokerages — your SnapTrade connections remain intact. See [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server) for more on managing access.

## Contact

For privacy or data questions, contact `support@snaptrade.com`. For security vulnerability reports, contact `security@snaptrade.com`. SnapTrade is operated by Passiv Inc.

---

## Related

- [SnapTrade Privacy Policy](https://snaptrade.com/privacy-policy)
- [SnapTrade Terms and Conditions](https://snaptrade.com/terms-and-conditions)
- [SnapTrade Security](https://snaptrade.com/security)
- [SnapTrade Application Compliance Policy](https://snaptrade.com/compliance-policy)
- [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
