

# StopLimitOrderType

A stop-limit order. Becomes a limit order at `limit_price` once `stop_price` is reached.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**stopPrice** | **BigDecimal** | The price at which the order is triggered. |  |
|**limitPrice** | **BigDecimal** | The limit price that applies once triggered. |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| STOP_LIMIT | &quot;stop_limit&quot; |



