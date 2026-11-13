# Trading with SnapTrade

SnapTrade supports trading workflows for stocks, ETFs, other equities, options, futures, futures options, and crypto. The exact feature set depends on the connected brokerage or exchange, so you should always [verify support](https://support.snaptrade.com/brokerages) for the account you are about to trade with.

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
6. Monitor execution status, and cancel the order if needed.

The sections below explain how that flow differs for equities, options, futures, and crypto. [Monitor and Manage Orders](#monitor-and-manage-orders) covers the last step, which is the same for every asset class.

## Confirm Order Details and Impact

Before submitting an order, show the account owner the order instructions, all available impact and fee information, the source of any estimates, and a clear confirmation action. A brokerage preview is not available for every supported trading workflow and is not a universal prerequisite for placing an order.

See [Order impact and confirmation](/docs/order-impact-and-confirmation) for confirmation requirements, recommended source labels and disclaimers, and guidance for orders without a reliable preview.

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

Because brokerages often report each leg separately, downstream order history can appear as multiple records for a single multi-leg submission. The [newer order endpoints](#monitor-and-manage-orders) return a multi-leg order as a single order with a `legs` list.

## Futures and Futures Options (Beta)

> 🚧 **Beta**
>
> Futures and futures options trading is in beta. The endpoint and its request format may change. If you use an SDK, update to the latest version before you start.

Futures and futures options are placed with :api[Trading_placeSimpleOrder]. It takes one request format for equities, equity options, futures, and futures options, but it is the only endpoint that supports futures and futures options.

### Supported Brokerages

Futures and futures options trading is rolling out one brokerage at a time, and futures options are not available everywhere futures are. See the [SnapTrade Institution Support guide](https://support.snaptrade.com/brokerages) for the brokerages that currently support each one.

### Typical Futures Workflow

1. Identify the account that will place the order. It must be on a trading-enabled connection to a [supported brokerage](https://support.snaptrade.com/brokerages), and the account must be approved for futures at the brokerage.
2. Find the contract. Call :api[ReferenceData_listAllBrokerageInstruments] with the brokerage slug to pull the futures and futures options available at that brokerage, and take the `symbol` of the contract you want to trade.
3. Build the order details:
   - `order_type`: `market`, `limit`, `stop`, or `stop_limit`
   - `time_in_force`: for example `day` or `gtc`
   - `limit_price` and `stop_price`, as required by the order type
   - `legs`: one entry per leg, each with an `instrument`, an `action`, and `units`
4. Validate the order details in your application before submission.
5. Submit the order with :api[Trading_placeSimpleOrder].
6. Store the `brokerage_order_id` from the response. It is the only field returned, so use it to [check the order's status](#monitor-and-manage-orders).

All string values in the request are lower snake_case and case-sensitive, and prices and quantities are sent as decimal strings.

```json
{
  "order_type": "stop_limit",
  "time_in_force": "day",
  "stop_price": "6000.00",
  "limit_price": "6000.25",
  "legs": [
    {
      "instrument": {
        "kind": "future",
        "symbol": "/ESZ6"
      },
      "action": "buy",
      "units": "1"
    }
  ]
}
```

This example buys one E-mini S&P 500 December 2026 contract on tastytrade once the price reaches `6000.00`, with a limit of `6000.25`.

### Legs, Actions, and Quantities

Each leg sets `instrument.kind` to `future` or `future_option`:

- **Futures** use the `buy` and `sell` actions.
- **Futures options** use `buy_to_open`, `buy_to_close`, `sell_to_open`, and `sell_to_close`.
- `units` is a positive whole number of contracts. Fractional quantities are not supported.

A single order cannot mix futures or futures options legs with equity or equity option legs.

### Futures Symbols

Futures symbols are not normalized between brokerages. Pass the symbol in the brokerage's own format, exactly as written, including any prefix and spaces:

| Brokerage | Futures | Futures options |
| --- | --- | --- |
| tastytrade | Begins with `/`, for example `/ESZ6` | Begins with `./`. Use the exact symbol returned by :api[ReferenceData_listAllBrokerageInstruments], including its spaces. |
| TradeStation | Two-digit year, with an optional `@` prefix, for example `ESZ26` or `@ESZ26` | For example `ESZ26 C6000`, keeping the space |
| Webull US | No prefix and no spaces, for example `ESZ6` | Not supported |

Always name a specific contract. Root-only and continuous symbols such as `@ES` are not accepted on TradeStation or Webull, and neither are slash-prefixed aliases. Universal symbol IDs are not accepted for futures on any brokerage.

### Brokerage-Specific Limits

- **tastytrade**: single-leg futures orders, and futures options orders with up to four legs. Multi-leg orders cannot be market orders, and multi-leg `limit` and `stop_limit` orders must set `price_effect` to `credit` or `debit`.
- **TradeStation**: single-leg futures and futures options orders only. `time_in_force` can be `day`, `gtc`, `ioc`, or `fok`, depending on the contract and route.
- **Webull US**: single-leg futures orders only. `time_in_force` can be `day` or `gtc`.

These limits apply on every supported brokerage:

- `gtd` orders and `trading_session="extended"` are not available for futures or futures options.
- Trailing stop orders are not supported.
- SnapTrade forwards prices without rounding. The brokerage decides contract availability, permissions, margin requirements, and valid price increments, and rejects orders that do not meet them.

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

## Monitor and Manage Orders

A successful submission does not mean the order has filled. After placing an order, use the brokerage order ID returned by the submission to follow it.

> 🚧 **Beta**
>
> The order endpoints in this section are in beta, and their response schema may change. They replace the earlier order endpoints, such as :api[AccountInformation_getUserAccountOrderDetailV2], and are the ones we recommend for new integrations.

| Goal | Endpoint | Notes |
| --- | --- | --- |
| Check one order | :api[AccountInformation_getAccountOrder] | Always realtime. Only returns orders placed through SnapTrade. |
| List the last 24 hours of orders | :api[AccountInformation_getAllAccountRecentOrders] | Lightweight and always realtime. Returns executed orders only unless you set `only_executed=false`. Each call incurs an additional charge. |
| List up to 90 days of orders | :api[AccountInformation_getAllAccountOrders] | Defaults to the last 30 days. Filter with `state` and `days`. |
| Cancel a pending order | :api[Trading_cancelOrder] | Accepts order IDs for all asset types. |

All three order endpoints return the same order format, for every asset class:

- Every order has a `legs` list with at least one leg. A multi-leg order is a single order with several legs, not one record per leg.
- Each leg's `instrument` is discriminated by `kind`, for example `future` or `future_option`. Check `instrument.kind` to know which fields are present.
- `order_type` is an object discriminated by `kind`, and each kind carries only the price fields that apply to it.
- `status` reports where the order stands, for example `PENDING`, `PARTIALLY_EXECUTED`, `EXECUTED`, `CANCELED`, or `REJECTED`.
- `price_effect` is `null` for orders that contain a futures leg, because a futures price is a contract quote and not an upfront cash flow. Futures options keep their price effect.

## Brokerage Support

Not every brokerage supports every trading workflow. Extended-hours sessions, multi-leg options, futures, futures options, and crypto trading are all institution-specific. Review the [SnapTrade Institution Support guide](https://support.snaptrade.com/brokerages) before enabling a feature in production.
