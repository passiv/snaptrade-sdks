# Syncing and Data Freshness

First, confirm whether your API key uses the **Real-time** or **Daily** data freshness option on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing). See [Real-time vs Daily plans](https://docs.snaptrade.com/docs/realtime-data) for a comparison and recommended application flows.

If a [connection is disabled](https://docs.snaptrade.com/docs/fix-broken-connections), fresh data cannot be fetched on either plan until the connection is fixed.

For both plans, transactions are cached, updated once per day with the daily sync, and delayed by one day. Intraday transactions are not available. If you need intraday trade activity, [compare orders with transactions](https://docs.snaptrade.com/docs/account-data#account-data-orders).

If you need to know when transactions—or holdings data on Daily plans—have synced, use webhooks or the account sync status.

## Webhooks

- [ACCOUNT_TRANSACTIONS_UPDATED](https://docs.snaptrade.com/docs/webhooks#webhooks-account_transactions_updated) is sent when SnapTrade creates a new transaction for an account. No webhook is sent if a transaction sync finds no new data.
- [ACCOUNT_HOLDINGS_UPDATED](https://docs.snaptrade.com/docs/webhooks#webhooks-account_holdings_updated) is sent once per day when holdings are updated, whether or not the data changed. This is primarily useful for Daily plans because Real-time plans refresh supported holdings data when it is requested.

## API account status

[List accounts for a connection](https://docs.snaptrade.com/reference/Connections/Connections_listBrokerageAuthorizationAccounts) returns a `sync_status` object for each account. It reports when the daily holdings sync last ran and the last day for which transactions **have been fully synced** from 00:00 through 23:59.

If a user has multiple connections, first call :api[Connections_listBrokerageAuthorizations], then call :api[Connections_listBrokerageAuthorizationAccounts] for each connection.

```json
{
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
  }
}
```

## Request an intraday holdings update

On a Daily plan, call the [Refresh connection endpoint](https://docs.snaptrade.com/reference/Connections/Connections_refreshBrokerageAuthorization) when an intraday holdings update is needed. Additional charges may apply to each call; see the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) for pricing.

If you need to control the time of day when transactions are updated, contact the SnapTrade team about [a custom plan](https://snaptrade.com/pricing).
