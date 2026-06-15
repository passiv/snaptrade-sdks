# Account Data

An account represents a unique account at a brokerage, like an individual account, or a 401k retirement account. A connection can have multiple accounts. The same brokerage account can also belong to multiple connections. For example a joint account between two individual account holders are visible under each account holder’s connection. With a connected account, you can call any SnapTrade account data API to get information about the account, its holdings, and its history.

## Account Details

:api[AccountInformation_getUserAccountDetails]

The account object contains information such as the institution name, the sync status of the account and the total market value of the account.

## Positions

:api[AccountInformation_getUserAccountPositions]
:api[Options_listOptionHoldings]

Positions are the current holdings of the account excluding cash. This includes many asset classes such as stocks, ETFs, and fixed income.

## Balances

:api[AccountInformation_getUserAccountBalance]

Balances are the current cash holdings and buying power of the account. In some cases, brokerages will allow holding many currencies in an account and these will be returned as separate balances.

## Orders

:api[AccountInformation_getUserAccountOrders]
:api[AccountInformation_getUserAccountRecentOrders]

Orders are how a broker keeps track of trading activity in an account. This differs from account activities in the following ways:

- Is updated intraday
- Contains all orders placed at the broker regardless if they resulted in a change in position, including cancelled orders and pending orders
- Often has more granular timestamps than account activities
- Only looks back a few months at most

## Activities

:api[AccountInformation_getAccountActivities]

Activities record the transaction history for the account. Each activity documents a change in position for the account, including deposits, withdrawals, fees, dividends, buys and sells. This differs from Orders in the following ways:

- Activities are updated once daily
- Activities may not have timestamps of when the transaction occurred (only the date)
- Activities only contain transactions that resulted in a change of position to the account, no pending or cancelled orders
- Often has years of history for the account, sometimes the entire account history since inception

SnapTrade classifies common transactions under the predefined types, with extra focus on what we consider the most important types (buys, sells, contributions, dividends, withdrawals, etc). When we encounter a transaction with a type that doesn't fit into one of our common types, we will return the type that the brokerage uses to identify it. 
We usually recommend you try not to individually handle every type beyond the most common ones, and instead rely on the other fields: amount, units, price, symbol, option_symbol, etc.
If amount is positive it represents gaining cash, if amount is negative it represents spending cash. Same with units, so a BUY for instance would have positive units and negative amount, a sell would be negative units positive amount.

### Transaction types

The normalized types SnapTrade maps transactions to are listed below. This set is **not exhaustive** — when a brokerage transaction doesn't map to one of these, SnapTrade returns the raw type the brokerage uses. Treat `type` as open-ended and, where you can, drive your logic off `amount`, `units`, `price`, and `symbol` rather than the type string alone.

<!-- TODO(review): descriptions for the newer types (REBATE, RETURN_OF_CAPITAL, DISTRIBUTION, REVERSE_SPLIT, SPINOFF, STOCK_MERGER, and the INTERNAL_* transfers) are inferred from naming and the Sandbox dataset — confirm against the backend type-mapping enum before publishing. -->

| Category | Type | Description |
| --- | --- | --- |
| Trades | `BUY` | Asset bought. |
| Trades | `SELL` | Asset sold. |
| Cash & fees | `CONTRIBUTION` | Cash contribution (deposit) into the account. |
| Cash & fees | `WITHDRAWAL` | Cash withdrawal from the account. |
| Cash & fees | `INTEREST` | Interest deposited into the account. |
| Cash & fees | `FEE` | Fee withdrawn from the account. |
| Cash & fees | `TAX` | A tax-related fee. |
| Cash & fees | `REBATE` | A rebate credited to the account. |
| Dividends & income | `DIVIDEND` | Dividend payout. |
| Dividends & income | `REI` | Dividend reinvestment. |
| Dividends & income | `STOCK_DIVIDEND` | Dividend distributed as shares instead of cash. |
| Dividends & income | `RETURN_OF_CAPITAL` | Return of capital distribution. |
| Dividends & income | `DISTRIBUTION` | A distribution paid into the account. |
| Options | `OPTIONEXPIRATION` | Option expiration event. |
| Options | `OPTIONASSIGNMENT` | Option assignment event. |
| Options | `OPTIONEXERCISE` | Option exercise event. |
| Corporate actions | `SPLIT` | A stock share split. |
| Corporate actions | `REVERSE_SPLIT` | A reverse stock share split. |
| Corporate actions | `SPINOFF` | Shares received from a corporate spinoff. |
| Corporate actions | `STOCK_MERGER` | Shares resulting from a merger. |
| Corporate actions | `ADJUSTMENT` | A one-time adjustment of the account's cash balance or shares of an asset. |
| Transfers | `TRANSFER` | Transfer of asset(s) from one account to another. |
| Transfers | `EXTERNAL_ASSET_TRANSFER_IN` | Incoming transfer of an asset from an external account. |
| Transfers | `EXTERNAL_ASSET_TRANSFER_OUT` | Outgoing transfer of an asset to an external account. |
| Transfers | `INTERNAL_CASH_TRANSFER_IN` | Incoming cash transfer between your own accounts. |
| Transfers | `INTERNAL_CASH_TRANSFER_OUT` | Outgoing cash transfer between your own accounts. |
| Transfers | `INTERNAL_ASSET_TRANSFER_IN` | Incoming asset transfer between your own accounts. |
| Transfers | `INTERNAL_ASSET_TRANSFER_OUT` | Outgoing asset transfer between your own accounts. |

These types are also described in [our API Spec](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAccountActivities).

---

See also:
- [Webhooks](https://docs.snaptrade.com/docs/webhooks)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
