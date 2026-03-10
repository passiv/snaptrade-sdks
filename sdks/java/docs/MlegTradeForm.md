

# MlegTradeForm

Inputs for placing a multi-leg order with the brokerage.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**orderType** | **MlegOrderTypeStrict** |  |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
|**limitPrice** | **BigDecimal** | The limit price. Required if the order type is &#x60;LIMIT&#x60;, &#x60;STOP_LOSS_LIMIT&#x60;. |  [optional] |
|**stopPrice** | **BigDecimal** | The stop price. Required if the order type is &#x60;STOP_LOSS_MARKET&#x60;, &#x60;STOP_LOSS_LIMIT&#x60;. |  [optional] |
|**priceEffect** | **MlegPriceEffectStrictNullable** |  |  [optional] |
|**legs** | [**List&lt;MlegLeg&gt;**](MlegLeg.md) |  |  |



