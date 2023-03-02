# snaptrade_client.model.brokerage_symbol.BrokerageSymbol

Brokerage symbol

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Brokerage symbol | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**symbol** | [**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**brokerage_authorization** | [**BrokerageAuthorization**](BrokerageAuthorization.md) | [**BrokerageAuthorization**](BrokerageAuthorization.md) |  | [optional] 
**description** | str,  | str,  |  | [optional] 
**allows_fractional_units** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

