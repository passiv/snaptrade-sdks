# SnapTrade.Net.Model.StrategyOrderRecord
Strategy order record

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Strategy** | [**OptionStrategy**](OptionStrategy.md) |  | [optional] 
**Status** | **string** |  | [optional] 
**FilledQuantity** | **double** |  | [optional] 
**OpenQuantity** | **double** |  | [optional] 
**ClosedQuantity** | **double** |  | [optional] 
**OrderType** | **string** | Order Type potential values include (but are not limited to) - Limit - Market - StopLimit - Stop | [optional] 
**TimeInForce** | **string** | Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled   * GTD - Good Til Date  | [optional] 
**LimitPrice** | **double?** | Trade Price if limit or stop limit order | [optional] 
**ExecutionPrice** | **double?** | Trade Price if limit or stop limit order | [optional] 
**TimePlaced** | **string** | Time | [optional] 
**TimeUpdated** | **string** | Time | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

