# SnapTrade Connector Privacy Notice

This notice explains how the SnapTrade MCP server (the "connector") handles data when you connect SnapTrade to an AI assistant such as Claude or ChatGPT. It supplements the [SnapTrade Privacy Policy](https://snaptrade.com/privacy-policy), which governs SnapTrade's services overall and applies in full. SnapTrade is operated by Passiv Inc.

The connector is **read-only**: it can retrieve your account data and generate a link to connect a new brokerage, but it cannot place trades, move money, or change account settings.

## What data the connector accesses

When your AI assistant calls a connector tool in response to your prompt, the connector retrieves the following categories of data from SnapTrade and returns them to your assistant:

- **Connections** — the list of brokerages you have connected through SnapTrade and connection metadata such as institution name and connection status.
- **Account details** — account type, institution name, total account value, and sync status.
- **Balances** — cash balances and buying power, including per-currency balances.
- **Positions and holdings** — the securities held in your accounts, with quantities and market values.
- **Orders** — open, filled, cancelled, and pending orders, including order history and individual order details.
- **Account activity** — historical transactions such as deposits, withdrawals, dividends, fees, buys, and sells.
- **Reference data** — currencies, exchange rates, stock exchanges, and security types. This data is not specific to you.

The connector accesses this data **on demand**, only in direct response to a prompt you make through your AI assistant. It does not collect or retrieve data proactively.

## What the connector does not access

- The connector never exposes your SnapTrade `userId` or `userSecret` to the AI assistant. These partner-level identifiers are stripped from every request before it reaches the assistant.
- The connector never accesses your brokerage login credentials or passwords.
- The connector cannot place trades, transfer funds, or change account settings. Access is limited to read-only scope.

## How the connector uses data

The connector is a thin protocol adapter. It uses the data it retrieves solely to fulfill the request you made through your AI assistant, passing the response back to the assistant that asked for it.

SnapTrade does not use connector data for advertising or profiling, and does not use it to train AI models.

## Data storage and retention

The connector is stateless. It does not maintain its own long-term store of your account data — each tool call retrieves data from the SnapTrade Partner API and returns it to your assistant.

Retention of the underlying account data that SnapTrade holds is governed by the [SnapTrade Privacy Policy](https://snaptrade.com/privacy-policy). OAuth access tokens issued to your AI assistant are short-lived and scoped to `read`. Operational logs may be retained for security, reliability, and troubleshooting in line with SnapTrade's standard practices.

## Third-party sharing

When a connector tool returns data, that data is delivered to the AI provider you chose to use — Anthropic for Claude, or OpenAI for ChatGPT. How those providers handle the data is governed by their own privacy policies:

- [Anthropic Privacy Policy](https://www.anthropic.com/legal/privacy)
- [OpenAI Privacy Policy](https://openai.com/policies/privacy-policy/)

SnapTrade does not sell your personal data. For information on SnapTrade's service providers and other data sharing, see the [SnapTrade Privacy Policy](https://snaptrade.com/privacy-policy).

## Data minimization

The connector is designed to access the minimum data needed to answer your prompts:

- It requests only `read` scope — it cannot write to your accounts.
- It exposes only a curated set of read-only endpoints, not the full SnapTrade API.
- It returns data only in direct response to a prompt. Nothing is collected "just in case."
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
