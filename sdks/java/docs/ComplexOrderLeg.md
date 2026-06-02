

# ComplexOrderLeg

A single leg within a complex order.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**orderRole** | [**OrderRoleEnum**](#OrderRoleEnum) | The role of this leg within the complex order. |  |
|**action** | **ActionStrict** |  |  |
|**instrument** | [**TradingInstrument**](TradingInstrument.md) |  |  |
|**orderType** | **OrderTypeStrict** |  |  |
|**units** | **Double** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
|**price** | **Double** | The limit price. Required when &#x60;order_type&#x60; is &#x60;Limit&#x60; or &#x60;StopLimit&#x60;. |  [optional] |
|**stop** | **Double** | The stop trigger price. Required when &#x60;order_type&#x60; is &#x60;Stop&#x60; or &#x60;StopLimit&#x60;. |  [optional] |



## Enum: OrderRoleEnum

| Name | Value |
|---- | -----|
| TRIGGER | &quot;TRIGGER&quot; |
| CONDITIONAL | &quot;CONDITIONAL&quot; |
| PEER | &quot;PEER&quot; |



