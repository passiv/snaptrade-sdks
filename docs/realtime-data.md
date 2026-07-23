# Real-time vs Daily plans

SnapTrade offers two data freshness options for holdings data: **Real-time** and **Daily**. These names describe how data is refreshed; they are separate from your billing model. You can confirm which option your API key uses on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing).

| Behavior | Real-time | Daily |
| --- | --- | --- |
| Data returned | Supported holdings endpoints fetch the latest data from the brokerage when called. | Holdings data is cached and refreshed once per day. Exact refresh timing may vary by brokerage. |
| Intraday updates | Call the holdings endpoints again to fetch updated brokerage data. | Call the [Refresh connection endpoint](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization) to start an asynchronous update. Additional charges may apply. |
| Completion signal | The API response contains the refreshed data. | Wait for an [ACCOUNT_HOLDINGS_UPDATED webhook](https://docs.snaptrade.com/docs/webhooks#webhooks-account_holdings_updated) for each account before requesting the updated holdings. |

Holdings data includes positions, balances, orders, and account details. Data availability and freshness still depend on what each brokerage makes available.

## Recommended application flow

### Real-time

When a user logs in to your application, request the holdings data needed for their current view. Common endpoints include [List all account positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAllAccountPositions) and [List account balances](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountBalance).

While the user remains active, request the data again as needed. To avoid SnapTrade and brokerage rate limits, we recommend polling no more often than once every 10 minutes per account.

### Daily

Use the cached daily data for normal application loads. If users need an intraday update, consider providing a refresh button that calls the [Refresh connection endpoint](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization).

A refresh runs asynchronously. After starting it, wait for an [ACCOUNT_HOLDINGS_UPDATED webhook](https://docs.snaptrade.com/docs/webhooks#webhooks-account_holdings_updated) for each account, then request the updated positions, balances, and other holdings data. Each refresh call may incur an additional charge according to your plan.

## Transactions

Transactions are cached, updated once per day, and delayed by one day on both Real-time and Daily plans. If you need intraday trade activity, use orders instead. See [Syncing and Data Freshness](https://docs.snaptrade.com/docs/syncing) and [Orders compared with activities](https://docs.snaptrade.com/docs/account-data#account-data-orders) for details.

## Relevant endpoints

- [List all account positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAllAccountPositions)
- [List account balances](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountBalance)
- [List account orders](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrders)
- [List recent account orders](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountRecentOrders)
- [Get account details](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountDetails)
- [Refresh a connection](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization)
