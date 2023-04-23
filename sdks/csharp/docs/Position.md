# SnapTrade.Net.Model.Position
Account Position

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | [**PositionSymbol**](PositionSymbol.md) |  | [optional] 
**Units** | **decimal?** |  | [optional] 
**Price** | **decimal?** | Last known market price for the symbol | [optional] 
**OpenPnl** | **decimal?** |  | [optional] 
**FractionalUnits** | **decimal?** | Deprecated, use the units field for both fractional and integer units going forward | [optional] 
**AveragePurchasePrice** | **decimal?** | Average purchase price for this position. Either returned by the underlying broker or calculated using historical transactions. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

