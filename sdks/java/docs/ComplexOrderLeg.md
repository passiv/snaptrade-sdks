

# ComplexOrderLeg

A single order within a complex group. For option OCOs, each peer trades one option contract type.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**orderRole** | [**OrderRoleEnum**](#OrderRoleEnum) | The role of this leg within the complex order. |  |
|**action** | **ActionStrictWithOptions** |  |  |
|**instrument** | [**TradingInstrument**](TradingInstrument.md) |  |  |
|**orderType** | **OrderTypeStrict** |  |  |
|**units** | **Integer** | A positive whole number of shares or option contracts. Option OCO peers must use the same quantity. |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
|**price** | **Double** | The limit price. Required when &#x60;order_type&#x60; is &#x60;Limit&#x60; or &#x60;StopLimit&#x60;. |  [optional] |
|**stop** | **Double** | The stop trigger price. Required when &#x60;order_type&#x60; is &#x60;Stop&#x60; or &#x60;StopLimit&#x60;. |  [optional] |



## Enum: OrderRoleEnum

| Name | Value |
|---- | -----|
| TRIGGER | &quot;TRIGGER&quot; |
| CONDITIONAL | &quot;CONDITIONAL&quot; |
| PEER | &quot;PEER&quot; |



