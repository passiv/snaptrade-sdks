## Account Data

An account represents a unique account at a brokerage, like an individual account, or a 401k retirement account. A connection can have multiple accounts. The same brokerage account can also belong to multiple connections. For example a joint account between two individual account holders are visible under each account holder’s connection. With a connected account, you can call any SnapTrade account data API to get information about the account, its holdings, and its history.

### Account Metadata

[`https://api.snaptrade.com/api/v1/accounts/{accountId}`](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountDetails)

The account object contains information such as the institution name, the sync status of the account and the total market value of the account.

### Positions

[`https://api.snaptrade.com/api/v1/accounts/{accountId}/positions`](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountPositions)

[`https://docs.snaptrade.com/reference/Options/Options_listOptionHoldings`](https://docs.snaptrade.com/reference/Options/Options_listOptionHoldings)

Positions are the current holdings of the account excluding cash. This includes many asset classes such as stocks, ETFs, and fixed income.

### Balances

[`https://api.snaptrade.com/api/v1/accounts/{accountId}/balances`](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountBalance)

Balances are the current cash holdings and buying power of the account. In some cases, brokerages will allow holding many currencies in an account and these will be returned as separate balances.

### Orders

[`https://api.snaptrade.com/api/v1/accounts/{accountId}/orders`](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrders)

Orders are how a broker keeps track of trading activity in an account. This differs from account activities in the following ways:

- Is updated intraday
- Contains all orders placed at the broker regardless if they resulted in a change in position, including cancelled orders and pending orders
- Often has more granular timestamps than account activities
- Only looks back a few months at most

### Activities

[`https://api.snaptrade.com/api/v1/activities`](https://docs.snaptrade.com/reference/Transactions%20And%20Reporting/TransactionsAndReporting_getActivities)

Activities record the transaction history for the account. Each activity documents a change in position for the account, including deposits, withdrawals, fees, dividends, buys and sells. This differs from Orders in the following ways:

- Activities are updated once daily
- Activities may not have timestamps of when the transaction occurred (only the date)
- Activities only contain transactions that resulted in a change of position to the account, no pending or cancelled orders
- Often has years of history for the account, sometimes the entire account history since inception

### Caching

Responses to the Account Data APIs are always cached. We have a daily sync process that refreshes all account data for all connections at least once every 24 hours. You can listen to the [`ACCOUNT_HOLDING_UPDATED`](https://www.notion.so/Webhooks-298cb05cc76943ccbb94d21cfb8137b1?pvs=21) webhook if you want to react to SnapTrade having new account data. If you want to refresh accounts on demand, you can call the `manual refresh` endpoint: <https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization>. Note that this endpoint may incur a cost.
