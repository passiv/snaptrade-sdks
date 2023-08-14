# SnapTrade.Net.Model.OptionsPosition
Option Holdings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] 
**Price** | **decimal?** | Trade Price if limit or stop limit order | [optional] 
**Units** | **decimal** |  | [optional] 
**Currency** | [**OptionsPositionCurrency**](OptionsPositionCurrency.md) |  | [optional] 
**AveragePurchasePrice** | **decimal?** | Average purchase price for this position | [optional] 
**OpenPnl** | **decimal?** |  | [optional] 
**FractionalUnits** | **decimal?** | Deprecated, use the units field for both fractional and integer units going forward | [optional] 
**BookPrice** | **decimal?** | The book price of the asset | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

