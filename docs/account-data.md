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

## Syncing and data freshness

It's first important to understand whether you are on the realtime or cached data plan which you can find in [the dahsboard](https://dashboard.snaptrade.com/settings/billing). Note that [if the connection is disabled](https://docs.snaptrade.com/docs/fix-broken-connections), fresh data cannot be fetched on either plan until the connection is fixed.
SnapTrade syncs account data at least once per connection per day, these syncs are spread over 24 hours and update transactions as well as holdings data.

Real Time Plan: holdings (positions, balances, orders) are fetched with every API request.

Cached Plan: holdings are updated once per day with the daily sync.

For both plans, transactions are cached, updated once per day with the daily sync, and delayed by one day (no intraday transactions, [compare orders to transactions here](https://docs.snaptrade.com/docs/account-data#account-data-orders) if you need realtime trades).

If you need to know when transactions (and holdings data on cached plans) are synced, there are two methods:

Webhooks:
- [ACCOUNT_TRANSACTIONS_UPDATED](https://docs.snaptrade.com/docs/webhooks#webhooks-account_transactions_updated) webhook will be sent when we create a new transaction for an account. Note that no webhook will be sent if we sync transactions and no new data is found.
- [ACCOUNT_HOLDINGS_UPDATED](https://docs.snaptrade.com/docs/webhooks#webhooks-account_holdings_updated) will be sent once per day when holdings are updated (regardless of if data changes or not). This is only really helpful for cached plans since realtime plans will update brokerage data with each request.

API Account Status:
- [List accounts endpoint](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_listUserAccounts) will return a `sync_status` object which will tell you when the daily sync last ran for holdings, as well as the last day that transactions **have been fully synced** (transactions have been pulled from 00:00 to 23:59)
  ```
  "sync_status": {
      "transactions": {
        "initial_sync_completed": true,
        "last_successful_sync": "2022-01-24",
        "first_transaction_date": "2022-01-24"
      },
      "holdings": {
        "initial_sync_completed": true,
        "last_successful_sync": "2024-06-28 18:42:46.561408+00:00"
      }
    },
  ```

If on the cached plan and a holdings update is needed, you can call [the Refresh connection endpoint](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization). Please note that additional charges may apply to each of these calls, you can find pricing information in [the dashboard](https://dashboard.snaptrade.com/settings/billing).

If looking to control at what time of day transactions are updated, please reach out to the team about [a custom plan](https://snaptrade.com/pricing).


---

See also:
- [Webhooks](https://docs.snaptrade.com/docs/webhooks)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
