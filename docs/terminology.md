# Terminology

## API Key
The app-level credential pair used to authenticate your integration and sign requests to the SnapTrade API.
Aliases: client credentials, app credentials

Learn more: [Getting Started: API Keys](https://docs.snaptrade.com/docs/getting-started#getting-started-api-keys), [FAQ: API Keys](https://docs.snaptrade.com/docs/faq#faq-api-keys)

## SnapTrade User 
A user record under your API key that represents one of your end users and authorizes access to that user's SnapTrade data.
Aliases: connected user record, SnapTrade profile

Learn more: [Getting Started: Users](https://docs.snaptrade.com/docs/getting-started#getting-started-users), [FAQ: Users](https://docs.snaptrade.com/docs/faq#faq-users)

## Institution
The financial provider a user connects through SnapTrade, such as a broker or exchange.
Aliases: broker, brokerage, provider, integration

Learn more: [Brokerage Integrations](https://docs.snaptrade.com/docs/integrations)

## Connection
An authorized link between a SnapTrade user and one brokerage login that grants data access and optionally trading access.
Aliases: brokerage authorization, linked brokerage, authorization

Learn more: [Connections](https://docs.snaptrade.com/docs/connections), [Getting Started: Connections](https://docs.snaptrade.com/docs/getting-started#getting-started-connections)

## Connection Portal
The hosted SnapTrade UI flow your user completes to create, repair, or upgrade a connection.
Aliases: connect flow, linking flow, auth portal

Learn more: [Connection Portal](https://docs.snaptrade.com/docs/implement-connection-portal)

## Disabled Connection
A connection state where brokerage authorization is invalid so fresh data and trading actions are blocked until repaired.
Aliases: broken connection, disconnected connection

Learn more: [Fix Disabled Connections](https://docs.snaptrade.com/docs/fix-broken-connections) 

## Reconnect
A re-authorization flow that repairs an existing disabled connection by sending the user through the Connection Portal again.
Aliases: repair flow, re-authorize connection

Learn more: [Fix Disabled Connections](https://docs.snaptrade.com/docs/fix-broken-connections)

## Account
A specific brokerage account under a connection that SnapTrade exposes for balances, holdings, activity, and trading.
Aliases: portfolio account, trading account, brokerage account

Learn more: [Getting Started: Accounts](https://docs.snaptrade.com/docs/getting-started#getting-started-accounts), [Account Data](https://docs.snaptrade.com/docs/account-data)

## Balance
Cash and buying-power values reported for an account.
Aliases: cash balance, account cash

Learn more: [Account Data: Balances](https://docs.snaptrade.com/docs/account-data#account-data-balances)

## Position
A holding of a specific asset in an account, typically represented by quantity and market value.
Aliases: holding, asset position

Learn more: [Account Data: Positions](https://docs.snaptrade.com/docs/account-data#account-data-positions)

## Order
A brokerage instruction to buy or sell an instrument, including open, filled, canceled, and rejected states.
Aliases: trade order, instruction

Learn more: [Account Data: Orders](https://docs.snaptrade.com/docs/account-data#account-data-orders)

## Transaction
A brokerage-reported account event that records cash or position movement, such as buys, sells, dividends, fees, deposits, or withdrawals.
Aliases: activity, account activity, ledger entry

Learn more: [Account Data: Activities](https://docs.snaptrade.com/docs/account-data#account-data-activities)

## Periodic Sync
The process where SnapTrade updates account data from the connected brokerage.
Aliases: data refresh, update cycle, sync

Learn more: [Syncing and Data Freshness](https://docs.snaptrade.com/docs/syncing)

## Manual Refresh
An explicit API-triggered sync request for a connection outside the periodic sync schedule.
Aliases: forced sync, on-demand refresh

Learn more: [Syncing and Data Freshness](https://docs.snaptrade.com/docs/syncing)

## MCP Server
SnapTrade's hosted Model Context Protocol server that lets AI assistants securely read a user's connected brokerage data.
Aliases: AI connector, Claude connector, ChatGPT app

Learn more: [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
