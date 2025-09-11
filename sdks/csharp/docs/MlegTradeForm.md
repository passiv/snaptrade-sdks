# SnapTrade.Net.Model.MlegTradeForm
Inputs for placing a multi-leg order with the brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderType** | **MlegOrderTypeStrict** |  | 
**TimeInForce** | **TimeInForceStrict** |  | 
**LimitPrice** | **decimal?** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT. | [optional] 
**StopPrice** | **decimal?** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT. | [optional] 
**PriceEffect** | **MlegPriceEffectStrictNullable** |  | [optional] 
**Legs** | [**List&lt;MlegLeg&gt;**](MlegLeg.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

