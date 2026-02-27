# Real-Time vs Cached Data

Choosing between real-time and cached data is one of the most common SnapTrade questions. If you're unsure which one fits your app, that is completely normal.

This guide gives you a practical way to decide without getting deep into implementation details.

## Quick summary

- **Real-time plan**: holdings data is fetched from the brokerage each time you request it.
- **Cached plan**: holdings data is refreshed once per day during SnapTrade's daily sync.
- **Both plans**: transactions are updated once per day and are delayed by one day.

If your product needs "right now" portfolio values, buying power, or open order status, real-time is usually the better fit. If daily portfolio updates are enough, cached can be a great option.

## What changes between plans

### Holdings data (positions, balances, orders)

This is where the plans differ most:

- **Real-time plan**: fresh brokerage fetch on each request.
- **Cached plan**: daily refresh from SnapTrade sync.

### Transactions/activity data

This behaves the same on both plans:

- Updated once daily.
- Delayed by one day.
- Not intraday.

If your UX needs intraday trading activity, use **orders** rather than transactions where possible.

## How to choose for your app

Use this rule of thumb:

- Pick **real-time** when users expect live account state (trading workflows, "current buying power", frequent portfolio refresh).
- Pick **cached** when users expect periodic snapshots (daily summaries, performance digests, less time-sensitive dashboards).

Many teams start with cached to launch quickly, then move selected users or workflows to real-time when they need fresher holdings.

## Setting expectations in your product

No matter which plan you use, clear messaging helps reduce support tickets.

Recommended copy patterns:

- "Portfolio values update in real time" (real-time holdings UX).
- "Transactions update daily" (all plans).
- "Last updated: <timestamp/date>" using account `sync_status` where relevant.

Also note that if a connection is disabled, fresh data cannot be fetched until the connection is fixed.

## Need fresher data on cached?

If you are on cached and need an immediate holdings refresh for a specific connection, use the refresh connection endpoint. Additional charges may apply, so it is best to use this intentionally.

## Related guides

- [Syncing and Data Freshness](https://docs.snaptrade.com/docs/syncing)
- [Account Data](https://docs.snaptrade.com/docs/account-data)
- [Webhooks](https://docs.snaptrade.com/docs/webhooks)
- [Fix Broken Connections](https://docs.snaptrade.com/docs/fix-broken-connections)
