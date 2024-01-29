# SnapTrade.Net.Model.ManualTrade
A manual trade object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | [optional] 
**Account** | **string** |  | [optional] 
**OrderType** | **OrderType** |  | [optional] 
**TimeInForce** | **string** | Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled   * GTD - Good Til Date  | [optional] 
**Symbol** | [**ManualTradeSymbol**](ManualTradeSymbol.md) |  | [optional] 
**_Action** | **ModelAction** |  | [optional] 
**Units** | **double** | Trade Units. Cannot work with notional value. | [optional] 
**Price** | **double?** | Trade Price if limit or stop limit order | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

