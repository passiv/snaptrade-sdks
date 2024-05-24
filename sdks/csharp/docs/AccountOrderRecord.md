# SnapTrade.Net.Model.AccountOrderRecord
Record of order in brokerageaccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order id returned by brokerage | [optional] 
**Status** | **AccountOrderRecordStatus** |  | [optional] 
**Symbol** | **string** |  | [optional] 
**UniversalSymbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**OptionSymbol** | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**_Action** | **string** | Trade Action potential values include (but are not limited to) - BUY - SELL - BUY_COVER - SELL_SHORT - BUY_OPEN - BUY_CLOSE - SELL_OPEN - SELL_CLOSE | [optional] 
**TotalQuantity** | **double?** | Trade Units. Cannot work with notional value. | [optional] 
**OpenQuantity** | **double?** | Trade Units | [optional] 
**CanceledQuantity** | **double?** | Trade Units | [optional] 
**FilledQuantity** | **double?** | Trade Units | [optional] 
**ExecutionPrice** | **double?** | Trade Price if limit or stop limit order | [optional] 
**LimitPrice** | **double?** | Trade Price if limit or stop limit order | [optional] 
**StopPrice** | **double?** | Stop Price. If stop loss or stop limit order, the price to trigger the stop | [optional] 
**OrderType** | **string** | Order Type potential values include (but are not limited to) - Limit - Market - StopLimit - StopLoss | [optional] 
**TimeInForce** | **string** | Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled   * GTD - Good Til Date  | [optional] 
**TimePlaced** | **string** | Time | [optional] 
**TimeUpdated** | **string** | Time | [optional] 
**TimeExecuted** | **string** | Time | [optional] 
**ExpiryDate** | **string** | Time | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

