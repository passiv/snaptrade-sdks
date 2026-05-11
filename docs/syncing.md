# Syncing and Data Freshness

It's first important to understand whether you are on Pay as you Go / Real-time or Pay as you Go / Daily, which you can find in [the dashboard](https://dashboard.snaptrade.com/settings/billing). Note that [if the connection is disabled](https://docs.snaptrade.com/docs/fix-broken-connections), fresh data cannot be fetched on either plan until the connection is fixed.
Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage.

Pay as you Go / Real-time: holdings (positions, balances, orders) are fetched with every API request.

Pay as you Go / Daily: holdings are updated once per day with the daily sync.

For both plans, transactions are cached, updated once per day with the daily sync, and delayed by one day (no intraday transactions, [compare orders to transactions here](https://docs.snaptrade.com/docs/account-data#account-data-orders) if you need real-time trades).

If you need to know when transactions (and holdings data on Daily data plans) are synced, there are two methods:

Webhooks:
- [ACCOUNT_TRANSACTIONS_UPDATED](https://docs.snaptrade.com/docs/webhooks#webhooks-account_transactions_updated) webhook will be sent when we create a new transaction for an account. Note that no webhook will be sent if we sync transactions and no new data is found.
- [ACCOUNT_HOLDINGS_UPDATED](https://docs.snaptrade.com/docs/webhooks#webhooks-account_holdings_updated) will be sent once per day when holdings are updated (regardless of if data changes or not). This is only really helpful for Daily data since Pay as you Go / Real-time plans will update brokerage data with each request.

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

If on Pay as you Go / Daily and a holdings update is needed, you can call [the Refresh connection endpoint](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization). Please note that additional charges may apply to each of these calls, you can find pricing information in [the dashboard](https://dashboard.snaptrade.com/settings/billing).

If looking to control at what time of day transactions are updated, please reach out to the team about [a custom plan](https://snaptrade.com/pricing).
