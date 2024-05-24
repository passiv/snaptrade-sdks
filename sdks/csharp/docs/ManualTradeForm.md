# SnapTrade.Net.Model.ManualTradeForm
Manual Trade Form

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** |  | [optional] 
**_Action** | **ActionStrict** |  | [optional] 
**OrderType** | **OrderTypeStrict** |  | [optional] 
**Price** | **double?** | Trade Price if limit or stop limit order | [optional] 
**Stop** | **double?** | Stop Price. If stop loss or stop limit order, the price to trigger the stop | [optional] 
**TimeInForce** | **TimeInForceStrict** |  | [optional] 
**Units** | **double?** | Trade Units. Cannot work with notional value. | [optional] 
**UniversalSymbolId** | **string** |  | [optional] 
**NotionalValue** | [**NotionalValueNullable**](NotionalValueNullable.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

