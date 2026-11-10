# Futures Trading (Beta)

> **Summary**: SnapTrade supports trading futures and options on futures through the Place a simple order (beta) endpoint. Availability depends on the brokerage, the account's trading permissions, and the contract being traded.

Futures trading is currently in beta. The endpoint and supported features may change during the beta period. If you use a SnapTrade SDK, update to the latest version before getting started.

## Brokerage support

The following brokerages support futures trading through SnapTrade:

| Brokerage | Brokerage slug | Futures | Options on futures |
| --- | --- | --- | --- |
| tastytrade | `TASTYTRADE` | Supported | Supported |
| Webull US | `WEBULL` | Supported | Not supported |
| TradeStation | `TRADESTATION` | Supported | Supported |

TradeStation also supports simulated trading through its SIM integration. Webull Canada futures trading is not supported.

Order types, durations, and strategies vary by brokerage. See :api[Trading_placeSimpleOrder] for current limitations.

## Getting started

Your application needs access to the beta endpoint and a trading-enabled connection. Contact the SnapTrade team if beta access has not been enabled for your application.

To create a trading-enabled connection, set `connectionType` to `trade` when generating a Connection Portal URL. Existing read-only connections require reauthorization to enable trading. See [Trading with SnapTrade](/docs/trading-with-snaptrade) for setup instructions.

The brokerage account must also be approved for the asset class you want to trade and meet the brokerage's margin requirements. For TradeStation, select a Futures account. A trading-enabled connection does not grant additional permissions at the brokerage.

## Finding contracts

Use :api[ReferenceData_listAllBrokerageInstruments] with `TASTYTRADE`, `WEBULL`, or `TRADESTATION` to retrieve the brokerage's instrument list. Select the contract you want to trade and pass its `symbol` to the order endpoint as `legs[].instrument.symbol`.

Preserve the symbol exactly as returned, including spaces and punctuation. Futures symbols differ between brokerages. For example, the December 2026 E-mini S&P 500 futures contract uses `/ESZ6` at tastytrade, `ESZ6` at Webull US, and `ESZ26` or `@ESZ26` at TradeStation. Use a specific dated contract rather than a root or continuous symbol.

The instrument list describes brokerage-level availability. A `tradeable` value of `true` does not guarantee that a particular account can trade the contract; `null` means availability is unknown.

## Placing an order

Submit the order with :api[Trading_placeSimpleOrder]:

```text
POST https://api.snaptrade.com/accounts/{accountId}/trading/simple
```

Use your normal SnapTrade authentication. For commercial API-key requests, include the account owner's `userId` and `userSecret` as query parameters.

Each leg identifies the contract, action, and quantity:

| Instrument | `instrument.kind` | Supported actions |
| --- | --- | --- |
| Futures | `future` | `buy`, `sell` |
| Options on futures | `future_option` | `buy_to_open`, `buy_to_close`, `sell_to_open`, `sell_to_close` |

Set `units` to a positive whole number of contracts, supplied as a decimal string such as `"1"`. Prices are also decimal strings. Enum values such as `limit` and `day` are lowercase and case-sensitive.

For example, this request body describes a single-contract futures limit order at tastytrade:

```json
{
  "order_type": "limit",
  "time_in_force": "day",
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

The symbol and price are illustrative. Replace them with the intended contract and order price, and confirm the order details with the account owner before submission. See [Order Impact and Confirmation](/docs/order-impact-and-confirmation).

Limit orders require `limit_price`; stop orders require `stop_price`; stop-limit orders require both. Market orders omit both fields. Choose a `time_in_force` supported by the brokerage and contract.

Webull US and TradeStation support single-leg futures and options-on-futures orders, where supported. tastytrade supports single-leg futures and up to four options-on-futures legs, but does not support multi-leg market orders. See the endpoint reference before building a multi-leg strategy.

## Monitoring and canceling orders

A successful submission returns `brokerage_order_id`. Save this value with the account ID. Submission does not mean the order has filled.

Use the following endpoints to retrieve futures and options-on-futures order details:

| Endpoint | When to use it |
| --- | --- |
| :api[AccountInformation_getAccountOrder] | Check an individual order using its brokerage order ID. This endpoint returns orders placed through SnapTrade. |
| :api[AccountInformation_getAllAccountRecentOrders] | Retrieve the latest page of orders from the last 24 hours in real time. Set `only_executed=false` to include pending and other non-executed orders. |
| :api[AccountInformation_getAllAccountOrders] | Retrieve order history for the last 30 days by default. Use `days` to adjust the lookback, up to 90 days. |

These endpoints are experimental and return instrument details for each order leg. The real-time recent-orders endpoint incurs an additional charge; see your [billing settings](https://dashboard.snaptrade.com/settings/billing).

Use :api[Trading_cancelOrder] with the account ID and `brokerage_order_id` to request cancellation of a pending order. Check the order's status afterward to confirm the outcome, including any fills that occurred before cancellation.

If an order submission times out, check order history before submitting it again. Duplicate prevention through `client_order_id` varies by brokerage.

## Contract details to check

Before submitting an order, confirm the contract's expiration, trading hours, minimum price increment, and margin requirements with the brokerage or exchange. Quantities represent contracts, and the quoted price is not the contract's full monetary exposure. Contract size and tick value vary by product; see CME Group's [guide to contract value and tick size](https://www.cmegroup.com/education/courses/introduction-to-equity-index-products/discover-equity-index-notional-value-and-price).

For options on futures, also confirm the underlying futures contract, option expiration, strike, and call or put designation. Review the contract's settlement terms and the brokerage's handling of expiring positions. CME Group's [expiration and contract roll guide](https://www.cmegroup.com/education/courses/introduction-to-futures/understanding-futures-expiration-contract-roll) explains the contract lifecycle.
