

# MlegTradeForm

Inputs for placing a multi-leg order with the brokerage.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**orderType** | **MlegOrderTypeStrict** |  |  |
|**timeInForce** | **TimeInForceStrict** |  |  |
|**limitPrice** | **BigDecimal** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT. |  [optional] |
|**stopPrice** | **BigDecimal** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT. |  [optional] |
|**legs** | [**List&lt;MlegLeg&gt;**](MlegLeg.md) |  |  |



