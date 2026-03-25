# Best practices to serve real-time data

SnapTrade offers the ability to get real-time data on both real-time (including Pay as you go) and cached plans. Real-time requests are enabled by default on all non-custom plans. See [our pricing page](https://snaptrade.com/pricing) for more information on plans

### Real-time Plan (Pay as you go)

The best practice for showing users accurate data on a real-time plan is to update your user's state when they log in to your app. You can do this by making API calls to the resources you need, commonly [/positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountPositions), [/options](https://docs.snaptrade.com/reference/Options/Options_listOptionHoldings), [/balances](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountBalance). Repeat this process every 10 minutes while the user remains active in your application

### Cached Plan

On the cached plan, SnapTrade will update your data once a day. To get real-time data we recommend calling [the manual refresh endpoint](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization) to update the data. SnapTrade will begin a sync and notify you via [ACCOUNT_HOLDINGS_UPDATED](https://docs.snaptrade.com/docs/webhooks#webhooks-account_holdings_updated) webhooks when each account has finished syncing, at which point you can call [/positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountPositions), [/options](https://docs.snaptrade.com/reference/Options/Options_listOptionHoldings), [/balances](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountBalance) for each account. If you expect your users to want intraday updates, it is a good idea to give the option of a refresh button that lets the user refresh their data in the same way. Note that calls to the Refresh endpoint will incur additional charges according to your plan


## Get notified when users place trades at their broker

If you need to know when a trade has been placed by a specific user, the recommendation is to poll the [Recent Orders endpoint](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountRecentOrders), only during market hours. This endpoint defaults to returning the last day of executed orders. Keep a copy of this list on your end, and check if a new order is present in the polling responses. To avoid SnapTrade and institution rate limits, we recommend polling at most once every 5 minutes per account


## Transactions
Please see [our guide on Syncing and Data Freshness](https://docs.snaptrade.com/docs/syncing) for more information about transactions

## Relevant Endpoints 

[List account positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountPositions)

[List account option positions](https://docs.snaptrade.com/reference/Options/Options_listOptionHoldings)

[List account balances](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountBalance)

[List account orders (all)](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrders)

[List account recent orders (for polling)](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountRecentOrders)

[Get account detail (total account value)](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountDetails)
