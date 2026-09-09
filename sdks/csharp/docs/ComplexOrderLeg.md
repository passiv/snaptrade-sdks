# SnapTrade.Net.Model.ComplexOrderLeg
A single order within a complex group. For option OCOs, each peer trades one option contract type.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderRole** | **string** | The role of this leg within the complex order. | 
**_Action** | **ActionStrictWithOptions** |  | 
**Instrument** | [**TradingInstrument**](TradingInstrument.md) |  | 
**OrderType** | **OrderTypeStrict** |  | 
**Units** | **int** | A positive whole number of shares or option contracts. Option OCO peers must use the same quantity. | 
**TimeInForce** | **TimeInForceStrict** |  | 
**Price** | **double?** | The limit price. Required when &#x60;order_type&#x60; is &#x60;Limit&#x60; or &#x60;StopLimit&#x60;. | [optional] 
**Stop** | **double?** | The stop trigger price. Required when &#x60;order_type&#x60; is &#x60;Stop&#x60; or &#x60;StopLimit&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

