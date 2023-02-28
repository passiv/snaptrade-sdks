# snaptrade_client.model.position.Position

Account Position

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Account Position | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbol** | [**PositionSymbol**](PositionSymbol.md) | [**PositionSymbol**](PositionSymbol.md) |  | [optional] 
**units** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**price** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Last known market price for the symbol | [optional] 
**open_pnl** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**fractional_units** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Deprecated, use the units field for both fractional and integer units going forward | [optional] 
**average_purchase_price** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Average purchase price for this position. Either returned by the underlying broker or calculated using historical transactions. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

