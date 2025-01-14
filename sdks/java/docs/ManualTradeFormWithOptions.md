

# ManualTradeFormWithOptions

Inputs for placing an order with the brokerage.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**accountId** | **UUID** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. |  |
|**action** | **ActionStrictWithOptions** |  |  |
|**universalSymbolId** | **UUID** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. |  [optional] |
|**symbol** | **String** | The security&#39;s trading ticker symbol. This currently only support Options symbols in the 21 character OCC format. For example \&quot;AAPL  131124C00240000\&quot; represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If &#39;symbol&#39; is provided, then &#39;universal_symbol_id&#39; must be &#39;null&#39;. |  [optional] |
|**orderType** | **OrderTypeStrict** |  |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
|**price** | **Double** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**stop** | **Double** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**units** | [**Double**](Double.md) | For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract &#x3D; 100 shares). |  [optional] |
|**notionalValue** | **Object** |  |  [optional] |
|**orderClass** | [**OrderClassEnum**](#OrderClassEnum) | The class of order intended to be placed. Defaults to SIMPLE for regular, one legged trades. Set to BRACKET if looking to place a bracket (One-triggers-a-one-cancels-the-other) order, then specify take profit and stop loss conditions. Bracket orders currently only supported on Alpaca, Tradier, and Tradestation, contact us for more details |  [optional] |
|**stopLoss** | [**StopLossNullable**](StopLossNullable.md) |  |  [optional] |
|**takeProfit** | [**TakeProfitNullable**](TakeProfitNullable.md) |  |  [optional] |



## Enum: OrderClassEnum

| Name | Value |
|---- | -----|
| SIMPLE | &quot;SIMPLE&quot; |
| BRACKET | &quot;BRACKET&quot; |



