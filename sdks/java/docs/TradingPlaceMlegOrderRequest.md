

# TradingPlaceMlegOrderRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) | The type of order to place. |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
|**limitPrice** | **BigDecimal** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT. |  [optional] |
|**stopPrice** | **BigDecimal** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT. |  [optional] |
|**legs** | [**List&lt;MlegLeg&gt;**](MlegLeg.md) |  |  |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| MARKET | &quot;MARKET&quot; |
| LIMIT | &quot;LIMIT&quot; |
| STOP_LOSS_MARKET | &quot;STOP_LOSS_MARKET&quot; |
| STOP_LOSS_LIMIT | &quot;STOP_LOSS_LIMIT&quot; |



