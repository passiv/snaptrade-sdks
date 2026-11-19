# SnapTrade.Net.Model.MlegTradeForm
Inputs for placing a multi-leg order with the brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ClientOrderId** | **string** | Canonical 36-character UUID required when placing a Wealthsimple order with two or more legs. Not required for an impact preview or single-leg request. Reuse it when retrying the same attempt. SnapTrade retains the ID after success or failure; reuse by the same user across accounts or placement endpoints returns 409 without submitting again. A 409 does not establish whether the original attempt was accepted; reconcile it before using a new ID for a genuinely new order. This protection does not depend on Wealthsimple deduplicating its external order ID. | [optional] 
**OrderType** | **MlegOrderTypeStrict** |  | 
**TimeInForce** | **TimeInForceStrict** |  | 
**LimitPrice** | **decimal?** | The limit price. Required if the order type is &#x60;LIMIT&#x60;, &#x60;STOP_LOSS_LIMIT&#x60;, unless &#x60;price_effect&#x60; is &#x60;EVEN&#x60; - a net-even order is implicitly priced at 0, so the field may be omitted and must be &#x60;0&#x60; if sent. | [optional] 
**StopPrice** | **decimal?** | The stop price. Required if the order type is &#x60;STOP_LOSS_MARKET&#x60;, &#x60;STOP_LOSS_LIMIT&#x60;. | [optional] 
**PriceEffect** | **MlegPriceEffectStrictNullable** |  | [optional] 
**Legs** | [**List&lt;MlegLeg&gt;**](MlegLeg.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

