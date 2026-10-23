

# TrailingStopOrderType

A trailing stop order. The stop price trails the market price by `trail`.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**trail** | [**TrailingStop**](TrailingStop.md) |  |  |
|**stopPrice** | **BigDecimal** | The current trigger price, when the brokerage reports it. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TRAILING_STOP | &quot;trailing_stop&quot; |



