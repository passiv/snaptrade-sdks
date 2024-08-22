# SnapTrade.Net.Model.ManualTrade
Contains the details of a submitted order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the submitted order through SnapTrade. | [optional] 
**Account** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | [optional] 
**OrderType** | **OrderTypeStrict** |  | [optional] 
**TimeInForce** | **TimeInForceStrict** |  | [optional] 
**Symbol** | [**ManualTradeSymbol**](ManualTradeSymbol.md) |  | [optional] 
**_Action** | **ActionStrict** |  | [optional] 
**Units** | **double?** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. | [optional] 
**Price** | **double?** | Trade Price if limit or stop limit order | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

