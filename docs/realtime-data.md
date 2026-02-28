## Showing users up to date data

### Realtime Plan (Pay as you go)

The best practice for showing users accurate data on the realtime plan is to update your users state when they log in to your app by making API calls to the resources you use, commonly /positions, /option_positions, /balances or /activities. Refresh the users state every 5 minutes they are still logged in

### Cached Plan

On the cached plan, SnapTrade will update your data once a day, to get realtime data we recommend calling the manual refresh endpoint to update the cached data. SnapTrade will begin a sync and notify you via webhooks when each account has finished syncing. If you expect your users to want intraday updates, it is a good idea to give the option of a refresh button that lets the user refresh their data. Note that calls to the Refresh endpoint will incur additional charges according to your plan.

[https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization)

# Near real time trade detection

If you need to know when a trade has been placed by a specific user, the recommended approach is to poll the [Recent Orders endpoint](https://www.notion.so/SnapTrade-Support-81de21c087d14bd393cc9c698955c421?pvs=21), only during market hours. This endpoint defaults to returning the last day of executed orders. Keep a copy of this list on your end, and check if a new order is present in the polling calls. To avoid SnapTrade and Brokerage rate limits, we recommend polling that endpoint once per 10 seconds per account.