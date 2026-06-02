# SnapTrade.Net.Model.ComplexOrderLeg
A single leg within a complex order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderRole** | **string** | The role of this leg within the complex order. | 
**_Action** | **ActionStrict** |  | 
**Instrument** | [**TradingInstrument**](TradingInstrument.md) |  | 
**OrderType** | **OrderTypeStrict** |  | 
**Units** | **double** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. | 
**TimeInForce** | **TimeInForceStrict** |  | 
**Price** | **double?** | The limit price. Required when &#x60;order_type&#x60; is &#x60;Limit&#x60; or &#x60;StopLimit&#x60;. | [optional] 
**Stop** | **double?** | The stop trigger price. Required when &#x60;order_type&#x60; is &#x60;Stop&#x60; or &#x60;StopLimit&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

