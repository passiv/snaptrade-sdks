# snaptrade_client.model.trade.Trade

A trade object

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | A trade object | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**account** | [**Account**](Account.md) | [**Account**](Account.md) |  | [optional] 
**symbol** | [**BrokerageSymbol**](BrokerageSymbol.md) | [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] 
**universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**action** | str,  | str,  |  | [optional] must be one of ["BUY", "SELL", ] 
**units** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**sequence** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

