

# LimitOrderType

A limit order. For multi-leg orders `limit_price` is the net price per spread; see `price_effect` for its direction.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**limitPrice** | **BigDecimal** | The maximum price to pay for a buy, or the minimum price to accept for a sell. |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| LIMIT | &quot;limit&quot; |



