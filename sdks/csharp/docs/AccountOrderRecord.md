# SnapTrade.Net.Model.AccountOrderRecord
Record of order in brokerageaccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order id returned by brokerage | [optional] 
**Status** | **AccountOrderRecordStatus** |  | [optional] 
**Symbol** | **Guid** |  | [optional] 
**UniversalSymbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**OptionSymbol** | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**Action** | **Action** |  | [optional] 
**TotalQuantity** | **decimal** | Trade Units | [optional] 
**OpenQuantity** | **decimal?** | Trade Units | [optional] 
**CanceledQuantity** | **decimal?** | Trade Units | [optional] 
**FilledQuantity** | **decimal?** | Trade Units | [optional] 
**ExecutionPrice** | **decimal?** | Trade Price if limit or stop limit order | [optional] 
**LimitPrice** | **decimal?** | Trade Price if limit or stop limit order | [optional] 
**StopPrice** | **decimal?** | Stop Price. If stop loss or stop limit order, the price to trigger the stop | [optional] 
**OrderType** | **OrderType** |  | [optional] 
**TimeInForce** | **TimeInForce** |  | [optional] 
**TimePlaced** | **string** | Time | [optional] 
**TimeUpdated** | **string** | Time | [optional] 
**ExpiryDate** | **string** | Time | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

