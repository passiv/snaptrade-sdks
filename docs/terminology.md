# Terminology

## API Key (`clientId`, `consumerKey`)
The app-level credential pair used to authenticate your integration and sign requests to the SnapTrade API.
Aliases: client credentials, app credentials

## SnapTrade User (`userId`, `userSecret`)
A user record under your API key that represents one of your end users and authorizes access to that user's SnapTrade data.
Aliases: connected user record, SnapTrade profile

## Brokerage / Institution
The financial provider a user connects through SnapTrade, such as a broker or exchange.
Aliases: broker, institution, provider, integration

## Connection
An authorized link between a SnapTrade user and one brokerage login that grants data access and optionally trading access.
Aliases: brokerage authorization, linked brokerage, authorization

## Connection Portal
The hosted SnapTrade UI flow your user completes to create, repair, or upgrade a connection.
Aliases: connect flow, linking flow, auth portal

## Disabled Connection
A connection state where brokerage authorization is invalid so fresh data and trading actions are blocked until repaired.
Aliases: broken connection, disconnected connection

## Reconnect
A re-authorization flow that repairs an existing disabled connection by sending the user through the Connection Portal again.
Aliases: repair flow, re-authorize connection

## Account
A specific brokerage account under a connection that SnapTrade exposes for balances, holdings, activity, and trading.
Aliases: portfolio account, trading account, brokerage account

## Balance
Cash and buying-power values reported for an account.
Aliases: cash balance, account cash

## Position
A holding of a specific asset in an account, typically represented by quantity and market value.
Aliases: holding, asset position

## Order
A brokerage instruction to buy or sell an instrument, including open, filled, canceled, and rejected states.
Aliases: trade order, instruction

<!-- TODO: -->
<!-- ## Activity -->
<!-- ## Transaction -->

## Periodic Sync
The process where SnapTrade updates account data from the connected brokerage.
Aliases: data refresh, update cycle, sync

## Manual Refresh
An explicit API-triggered sync request for a connection outside the periodic sync schedule. 
Aliases: forced sync, on-demand refresh
