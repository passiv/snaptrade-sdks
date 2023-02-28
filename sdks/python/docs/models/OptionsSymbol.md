# snaptrade_client.model.options_symbol.OptionsSymbol

Options Symbol

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Options Symbol | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**ticker** | None, str,  | NoneClass, str,  |  | [optional] 
**strike_price** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] 
**expiration_date** | None, str,  | NoneClass, str,  |  | [optional] 
**is_mini_option** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**underlying_symbol** | [**UnderlyingSymbol**](UnderlyingSymbol.md) | [**UnderlyingSymbol**](UnderlyingSymbol.md) |  | [optional] 
**local_id** | None, str,  | NoneClass, str,  |  | [optional] 
**security_type** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | [optional] 
**listing_exchange** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | [optional] 
**is_quotable** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**is_tradable** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

