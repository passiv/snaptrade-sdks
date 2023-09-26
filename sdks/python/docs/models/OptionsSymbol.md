# snaptrade_client.model.options_symbol.OptionsSymbol

Options Symbol

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Options Symbol | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**ticker** | str,  | str,  |  | 
**option_type** | str,  | str,  |  | must be one of ["CALL", "PUT", ] 
**underlying_symbol** | [**UnderlyingSymbol**](UnderlyingSymbol.md) | [**UnderlyingSymbol**](UnderlyingSymbol.md) |  | 
**id** | str, uuid.UUID,  | str,  |  | value must be a uuid
**expiration_date** | str,  | str,  |  | 
**strike_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | 
**is_mini_option** | bool,  | BoolClass,  |  | [optional] 
**local_id** | str,  | str,  |  | [optional] 
**exchange_id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

