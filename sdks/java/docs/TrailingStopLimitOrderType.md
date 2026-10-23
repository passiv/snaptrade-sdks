

# TrailingStopLimitOrderType

A trailing stop-limit order. The stop price trails the market price by `trail`; once triggered, a limit order at `limit_price` is placed.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**trail** | [**TrailingStop**](TrailingStop.md) |  |  |
|**limitPrice** | **BigDecimal** | The limit price that applies once triggered. |  |
|**stopPrice** | **BigDecimal** | The current trigger price, when the brokerage reports it. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TRAILING_STOP_LIMIT | &quot;trailing_stop_limit&quot; |



