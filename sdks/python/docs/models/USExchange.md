# snaptrade_client.model.us_exchange.USExchange

US Stock Exchange

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | US Stock Exchange | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**code** | str,  | str,  |  | [optional] 
**mic_code** | str,  | str,  |  | [optional] 
**name** | str,  | str,  |  | [optional] 
**timezone** | str,  | str,  |  | [optional] 
**start_time** | str,  | str,  |  | [optional] 
**close_time** | str,  | str,  |  | [optional] 
**suffix** | None, str,  | NoneClass, str,  |  | [optional] 
**allows_cryptocurrency_symbols** | bool,  | BoolClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

