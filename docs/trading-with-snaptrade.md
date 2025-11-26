# Trading with SnapTrade

> 🚧 **Soft Rate Limit**
>
> We recommend limiting trade requests to **1 trade per second per account** to maximize execution success.

## Setup

### Create a Trading Connection

By default, connections are created with read-only permissions. To create a trading-enabled connection, set the `connectionType` body parameter to `trade` when calling :api[Authentication_loginSnapTradeUser].

> **Note:** When you build a login link with `connectionType=trade`, the Connection Portal only lists brokerages that support trading. To let users connect with trading permissions when available and fall back to read-only access elsewhere, use `connectionType=trade-if-available` instead.

### Enable Trading for Existing Connections

To enable trading for an existing read-only connection, you'll need to ask the user to re-authorize access:

1. Set the `reconnect` body parameter to the ID of the existing connection.
2. Set `connectionType=trade` when calling :api[Authentication_loginSnapTradeUser].
3. Direct the user to the generated re-authorization URL.

## Trading Workflow

### Equity Orders

- Submit your order via :api[Trading_placeForceOrder].

### Bracket Orders

- Use :api[Trading_placeBracketOrder] to open a position together with an OCO (one-cancels-other) stop-loss and take-profit pair.
- The endpoint is disabled by default. Contact support to enable it and confirm the target brokerage supports bracket orders.


### Options Strategies

- Use :api[Trading_placeOptionsOrder] for multi-leg option strategies (for example, spreads or condors).
- The payload accepts multiple legs under a single submission.

## Extended-Hours Trading

Extended-hours trading is brokerage-specific and only available when the underlying account and instrument support it.

**To place an extended-hours order:**
- Set `trading_session="EXTENDED"` in the order payload to request execution in pre/post-market sessions.
- Use a `LIMIT` order type with an appropriate time-in-force.
- Most brokerages restrict extended-hours orders to `DAY` with post-market expiry, though some allow `GTC`.

---

**Important:** Not every brokerage supports bracket orders, complex option strategies, or extended-hours sessions. Review the [SnapTrade Brokerage Support Matrix](https://www.notion.so/snaptrade/66793431ad0b416489eaabaf248d0afb?v=e7bbcbf9f272441593f93decde660687) for broker-specific coverage details.