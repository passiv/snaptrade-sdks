

# ManualTradeFormBracket

Inputs for placing an order with the brokerage.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**accountId** | **UUID** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. |  |
|**action** | **ActionStrictWithOptions** |  |  |
|**symbol** | **String** | The security&#39;s trading ticker symbol. |  |
|**orderType** | **OrderTypeStrict** |  |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
|**price** | **Double** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**stop** | **Double** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**units** | **Double** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. |  [optional] |
|**stopLoss** | [**StopLoss**](StopLoss.md) |  |  |
|**takeProfit** | [**TakeProfit**](TakeProfit.md) |  |  |



