# Trading with SnapTrade

> 🚧 **Soft Rate Limit**
>
> We recommend limiting trade requests to **1 trade per second per account** to maximize execution success.

## Setup

### Create a Trading Connection

By default, connections are created with read-only permissions. To create a trading-enabled connection, set the `connectionType` body parameter to `trade` when calling :api[Authentication_loginSnapTradeUser].

### Enable Trading for Existing Connections

To enable trading for an existing read-only connection, you'll need to ask the user to re-authorize access:

1. Set the `reconnect` body parameter to the ID of the existing connection
2. Set `connectionType=trade` when calling :api[Authentication_loginSnapTradeUser]
3. Direct the user to the generated re-authorization URL

## Trading Workflow

### 1. Find the Security Symbol

Use :api[ReferenceData_symbolSearchUserAccount] to find the `universal_symbol_id` of the security you want to trade. This looks up tradeable securities based on the specific account where you want to place the trade.

### 2. Place the Trade

Choose one of two options:

**Option A: With Impact Validation** 
1. Use :api[Trading_getOrderImpact] to present trade information and validate the order
2. After reviewing the impact, use :api[Trading_placeOrder] with the `trade_id` to execute

**Option B: Without Impact Validation**
- Use :api[Trading_placeForceOrder] to place the trade directly without an impact check
- Pass either a `universal_symbol_id` (from the symbol search) or the security's ticker `symbol`

## Advanced Order Types

### Bracket Orders
Use :api[Trading_placeBracketOrder] to open a position with an accompanying OCO (one-cancels-other) pair for stop-loss and take-profit exits.

**Note:** This endpoint is disabled by default. Contact support to enable it and confirm the target brokerage supports bracket orders.

### Options Strategies
Use :api[Trading_placeOptionsOrder] for multi-leg option strategies. Supports multiple legs under a single trade submission.

## Extended-Hours Trading

Extended-hours trading is brokerage-specific and only available when the underlying account and instrument support it.

**To place an extended-hours order:**
- Set `trading_session="EXTENDED"` in the order payload to request execution in pre/post-market sessions
- Use a `LIMIT` order type with an appropriate time-in-force
- Most brokerages restrict extended-hours orders to `DAY` with post-market expiry, though some allow `GTC`

---

**Important:** Not every brokerage supports bracket orders, complex option strategies, or extended-hours sessions. Review the [SnapTrade Brokerage Support Matrix](__https://www.notion.so/snaptrade/66793431ad0b416489eaabaf248d0afb?v=e7bbcbf9f272441593f93decde660687__) for broker-specific coverage details.