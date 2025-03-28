

# TradingPlaceSimpleOrderRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**instrument** | [**TradingInstrument**](TradingInstrument.md) |  |  |
|**side** | **ActionStrict** |  |  |
|**type** | [**TypeEnum**](#TypeEnum) | The type of order to place. |  |
|**timeInForce** | [**TimeInForceEnum**](#TimeInForceEnum) | The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.  |  |
|**amount** | **BigDecimal** | The amount of the base currency to buy or sell. |  |
|**limitPrice** | **BigDecimal** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT. |  [optional] |
|**stopPrice** | **BigDecimal** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT. |  [optional] |
|**postOnly** | **Boolean** | Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.  |  [optional] |
|**expirationDate** | **OffsetDateTime** | The expiration date of the order. Required if the time_in_force is GTD. |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| MARKET | &quot;MARKET&quot; |
| LIMIT | &quot;LIMIT&quot; |
| STOP_LOSS_MARKET | &quot;STOP_LOSS_MARKET&quot; |
| STOP_LOSS_LIMIT | &quot;STOP_LOSS_LIMIT&quot; |
| TAKE_PROFIT_MARKET | &quot;TAKE_PROFIT_MARKET&quot; |
| TAKE_PROFIT_LIMIT | &quot;TAKE_PROFIT_LIMIT&quot; |



## Enum: TimeInForceEnum

| Name | Value |
|---- | -----|
| GTC | &quot;GTC&quot; |
| FOK | &quot;FOK&quot; |
| IOC | &quot;IOC&quot; |
| GTD | &quot;GTD&quot; |



