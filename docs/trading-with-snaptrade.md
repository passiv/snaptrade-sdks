# Trading with SnapTrade

SnapTrade supports trading workflows for stocks, ETFs, other equities, options, and crypto. The exact feature set depends on the connected brokerage or exchange, so you should always [verify support](https://support.snaptrade.com/brokerages-table?v=e7bbcbf9f272441593f93decde660687) for the account you are about to trade with.

> 🚧 **Soft Rate Limit**
>
> We recommend limiting trade requests to **1 trade per second per account** to maximize execution success.

## Trading Overview

Most trading integrations with SnapTrade follow the same high-level flow:

1. Create or upgrade a trading-enabled connection.
2. Choose the brokerage account that will place the order.
3. Build the order payload for the asset class you want to trade.
4. Validate the order details in your application.
5. Submit the order to the brokerage or exchange.
6. Monitor execution status.

The sections below explain how that flow differs for equities, options, and crypto.

## Set Up Trading Access

### Create a Trading Connection

By default, connections are created with read-only permissions. To create a trading-enabled connection, set the `connectionType` body parameter to `trade` when calling :api[Authentication_loginSnapTradeUser].

If you want to request trading access when it is supported, but still allow the user to connect read-only accounts elsewhere, use `connectionType=trade-if-available` instead.

### Enable Trading for an Existing Connection

To enable trading for an existing read-only connection, ask the user to re-authorize access:

1. Set the `reconnect` body parameter to the ID of the existing connection.
2. Set `connectionType=trade` when calling :api[Authentication_loginSnapTradeUser].
3. Direct the user to the re-authorization URL that SnapTrade returns.

## Stocks, ETFs, and Other Equities

Use the standard trading endpoints for single-leg equity orders.

### Typical Equity Workflow

1. Identify the account that will place the order.
2. Identify the instrument using its brokerage `symbol`. This is the recommended identifier when placing orders.
3. Build the order details:
   - `action`: `BUY` or `SELL`
   - `order_type`: for example `Market`, `Limit`, `Stop`, or `StopLimit`
   - `time_in_force`: for example `Day` or `GTC`
   - `units` for share quantity, or `notional_value` when supported
4. Validate the order details in your application before submission.
5. Submit the order with :api[Trading_placeForceOrder].

For most use cases, it is better to validate the order in your own application and then place it directly with :api[Trading_placeForceOrder]. If you need SnapTrade to simulate the order impact before submission, you can use :api[Trading_getOrderImpact] and then submit the returned `tradeId` with :api[Trading_placeOrder], but this is usually not the primary workflow we recommend.

### Extended-Hours Equity Trading

Extended-hours trading is brokerage-specific and only available when both the account and the instrument support it.

To request extended-hours execution:

- Set `trading_session="EXTENDED"` in the order payload.
- Use a `LIMIT` order with an appropriate time-in-force.
- Expect brokerage-specific restrictions. Many brokerages only allow `DAY` orders for extended-hours trading, while some also allow `GTC`.

## Options

SnapTrade supports both single-leg option orders and multi-leg option strategies, but support is narrower than it is for equities.

### Single-Leg Option Orders

Single-leg option orders use the same endpoint as multi-leg option orders, but with a single leg.

1. Build the order for :api[Trading_placeMlegOrder], providing only a single leg.
2. Provide `instrument.symbol` with an [OCC format](https://en.wikipedia.org/wiki/Option_symbol#OCC_format).
3. Use an option action such as `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN`, or `SELL_TO_CLOSE`.
4. Set `units` to the number of option contracts.
5. Validate the order details in your application and submit the order with :api[Trading_placeMlegOrder].

This is the right workflow for straightforward option buys and sells where the order has only one leg.

### Multi-Leg Option Strategies

For spreads, condors, and other multi-leg strategies, use :api[Trading_placeMlegOrder].

The multi-leg payload lets you submit:

- an `order_type`
- a `time_in_force`
- a `price_effect` such as debit or credit
- a `legs` array containing the option instruments, actions, and contract quantities

Because brokerages often report each leg separately, downstream order history can appear as multiple records for a single multi-leg submission.

## Crypto

SnapTrade supports specialized crypto trading endpoints for some exchanges such as Kraken, Binance, and Coinbase.

Crypto trading uses tradable asset pairs represented as `BASE-QUOTE`. The action determines the direction of the trade:

- On a `BUY`, the base asset is what you are buying and the quote asset is what you are spending.
- On a `SELL`, the base asset is what you are selling and the quote asset is what you are receiving.

### Typical Crypto Workflow

1. Use :api[Trading_searchCryptocurrencyPairInstruments] to find the tradable pairs for the connected account.
2. If needed, filter by `base` or `quote` because exchanges can support different pairs and sometimes different tickers for the same asset.
3. Use :api[Trading_getCryptocurrencyPairQuote] to retrieve a quote for the pair. Quote values are returned in units of the quote asset.
4. Validate the order details in your application.
5. Submit the order with :api[Trading_placeCryptoOrder].

When placing a crypto order, set the `instrument.symbol` to the trading pair and the `instrument.type` to `CRYPTOCURRENCY_PAIR`. The `amount` is the quantity of the base asset to buy or sell.

For most crypto integrations, validating the request in your own application is simpler than relying on the preview endpoint. If you need an exchange-side preview, :api[Trading_previewCryptoOrder] is available.

```json
{
  "account_id": "{{accountId}}",
  "instrument": {
    "symbol": "ETH-EUR",
    "type": "CRYPTOCURRENCY_PAIR"
  },
  "side": "BUY",
  "type": "MARKET",
  "amount": "0.01",
  "time_in_force": "GTC",
  "post_only": false
}
```

In this example, the order buys `0.01` ETH with EUR.

## Brokerage Support and Reconciliation

Not every brokerage supports every trading workflow. Extended-hours sessions, multi-leg options, and crypto trading are all institution-specific. Review the [SnapTrade Brokerage Support Matrix](https://support.snaptrade.com/brokerages-table?v=e7bbcbf9f272441593f93decde660687) before enabling a feature in production.

After placing an order, we recommend you reconcile the latest state by pulling a list of recent orders with :api[AccountInformation_getUserAccountRecentOrders].
