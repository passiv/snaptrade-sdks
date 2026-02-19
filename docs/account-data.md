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

Check [our API Spec](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAccountActivities) for some of the most common transaction types.

---

See also:
- [Webhooks](https://docs.snaptrade.com/docs/webhooks)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
