# Position

Account Position

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**PositionSymbol**](PositionSymbol.md) |  | [optional] 
**units** | **float, none_type** |  | [optional] 
**price** | **float, none_type** | Last known market price for the symbol | [optional] 
**open_pnl** | **float, none_type** |  | [optional] 
**fractional_units** | **float, none_type** | Deprecated, use the units field for both fractional and integer units going forward | [optional] 
**average_purchase_price** | **float** | Average purchase price for this position. Either returned by the underlying broker or calculated using historical transactions. | [optional] 
**any string name** | **bool, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


