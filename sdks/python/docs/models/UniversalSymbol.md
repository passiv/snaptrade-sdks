# snaptrade_client.model.universal_symbol.UniversalSymbol

Universal symbol

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Universal symbol | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbol** | str,  | str,  |  | 
**raw_symbol** | str,  | str,  |  | 
**currency** | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | 
**id** | str, uuid.UUID,  | str,  |  | value must be a uuid
**type** | [**SecurityType**](SecurityType.md) | [**SecurityType**](SecurityType.md) |  | 
**[currencies](#currencies)** | list, tuple,  | tuple,  |  | 
**description** | None, str,  | NoneClass, str,  |  | [optional] 
**exchange** | [**Exchange**](Exchange.md) | [**Exchange**](Exchange.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# currencies

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Currency**](Currency.md) | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

