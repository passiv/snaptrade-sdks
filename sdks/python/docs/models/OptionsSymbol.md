# snaptrade_client.model.options_symbol.OptionsSymbol

Options Symbol

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Options Symbol | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**ticker** | str,  | str,  |  | [optional] 
**strike_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**expiration_date** | str,  | str,  |  | [optional] 
**is_mini_option** | bool,  | BoolClass,  |  | [optional] 
**underlying_symbol** | [**UnderlyingSymbol**](UnderlyingSymbol.md) | [**UnderlyingSymbol**](UnderlyingSymbol.md) |  | [optional] 
**local_id** | str,  | str,  |  | [optional] 
**security_type** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | [optional] 
**listing_exchange** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | [optional] 
**is_quotable** | bool,  | BoolClass,  |  | [optional] 
**is_tradable** | bool,  | BoolClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

