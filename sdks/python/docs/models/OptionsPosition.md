# snaptrade_client.model.options_position.OptionsPosition

Option Holdings

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Option Holdings | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbol** | [**BrokerageSymbol**](BrokerageSymbol.md) | [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] 
**price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**units** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**[currency](#currency)** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | [optional] 
**average_purchase_price** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Average purchase price for this position | [optional] 
**open_pnl** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**fractional_units** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Deprecated, use the units field for both fractional and integer units going forward | [optional] 
**book_price** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | The book price of the asset | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# currency

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Currency](Currency.md) | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

