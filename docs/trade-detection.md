# Trade Detection Subscriptions

> **Summary**: Important behavior and integration details for SnapTrade `TRADE_DETECTION` webhook subscriptions.
> **Related docs**: [Real-time vs Daily plans](./realtime-data), [TRADE_DETECTION webhook](./webhooks#webhooks-trade_detection)

`TRADE_DETECTION` notifies partners when SnapTrade detects an executed order in a subscribed account. This feature is only supported for accounts where the brokerage supports realtime order updates. You can manage your subscriptions when logged in to the SnapTrade Dashboard at https://dashboard.snaptrade.com/webhooks

## Eligibility

Trade detection runs only when all of the following are true:

- The account has an active `TRADE_DETECTION` subscription for a supported brokerage.
- The customer has a paid SnapTrade key and is in good standing in terms of billing.
- The underlying brokerage connection is enabled and can return realtime order data.

Because disabled or broken connections cannot return new data, partners should also listen for `CONNECTION_BROKEN` webhooks. When a connection breaks, prompt the user to fix it as soon as possible using the public reconnection guidance: [Fix Broken Connections](https://docs.snaptrade.com/docs/fix-broken-connections).

## Supported Brokerages

The following brokerages support `TRADE_DETECTION` at every available detection frequency:

- Webull
- tastytrade
- Alpaca
- Moomoo
- Webull Canada

The following brokerages support `TRADE_DETECTION` only at intervals of five minutes or longer:

- Schwab
- Robinhood
- Wealthsimple
- E*Trade

Brokerage availability can change as brokerage capabilities change. Do not assume every brokerage supports `TRADE_DETECTION`, and feel free to ask about specific brokerage support.

## Scheduling

Trade detection is currently scheduled only near regular market hours: weekdays from about `9:00 AM` to `4:30 PM America/New_York`.

This is the current scheduler behavior, not a contractual delivery SLA. Orders outside this window may not produce immediate `TRADE_DETECTION` notifications.

## How To Interpret The Webhook

Use the order payload, not webhook delivery metadata, to determine when a trade executed.

- `details.orders[]` contains the detected order records.
- `details.orders[].time_executed` is the source of truth for when the order was executed.
- `eventTimestamp` is when SnapTrade created the webhook event.

For order execution timing, prefer `details.orders[].time_executed` over `eventTimestamp`
Brokerages usually make orders available over their API only a few seconds after execution, but can occasionally have a longer delay of a minute or two. SnapTrade has no control over these intermittent brokerage delays.

Connection health is a separate signal. A `TRADE_DETECTION` subscription on an account does not mean the connection is currently healthy, so partners should use connection webhooks such as `CONNECTION_BROKEN` and `CONNECTION_FIXED` to keep users' brokerage connections usable.

## Billing

Trade detection billing is seat-based. One seat is one subscribed account for one month.

For example, if a partner subscribes three accounts for trade detection in a billing month, that counts as three seats for that month.

The monthly cost for each subscribed account depends on the selected detection frequency:

| Detection frequency | Cost per account per month |
| --- | ---: |
| 5 seconds | $100.00 |
| 25 seconds | $25.00 |
| 100 seconds | $7.50 |
| 300 seconds (5 minutes) | $2.50 |
| 900 seconds (15 minutes) | $0.83 |
| 1500 seconds (25 minutes) | $0.50 |

For Schwab, Robinhood, Wealthsimple, and E*Trade, select the 300-, 900-, or 1500-second plan; faster frequencies are not supported.
