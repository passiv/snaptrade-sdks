# SnapTrade.Net.Model.ManualTradeReplaceForm
Inputs for replacing an order with the brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 
**_Action** | **ActionStrict** |  | 
**OrderType** | **OrderTypeStrict** |  | 
**TimeInForce** | **TimeInForceStrict** |  | 
**Price** | **double?** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Symbol** | **string** | The security&#39;s trading ticker symbol | [optional] 
**Stop** | **double?** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Units** | **double?** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

