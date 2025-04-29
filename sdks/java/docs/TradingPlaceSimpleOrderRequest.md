

# TradingPlaceSimpleOrderRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**instrument** | [**TradingInstrument**](TradingInstrument.md) |  |  |
|**side** | **ActionStrict** |  |  |
|**type** | [**TypeEnum**](#TypeEnum) | The type of order to place. |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
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



