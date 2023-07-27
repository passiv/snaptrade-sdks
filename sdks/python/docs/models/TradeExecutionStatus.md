# snaptrade_client.model.trade_execution_status.TradeExecutionStatus

Execution status of a trade

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Execution status of a trade | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbol** | [**BrokerageSymbol**](BrokerageSymbol.md) | [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] 
**universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**trade** | [**Trade**](Trade.md) | [**Trade**](Trade.md) |  | [optional] 
**state** | str,  | str,  | Execution state of a trade | [optional] must be one of ["Executed", "Canceled", "Rejected", "Failed", "Not Executed", ] 
**filled_units** | decimal.Decimal, int,  | decimal.Decimal,  | Number of filled units | [optional] 
**action** | str,  | str,  | Action of executed trade | [optional] must be one of ["BUY", "SELL", ] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Price of execution | [optional] 
**commissions** | decimal.Decimal, int, float,  | decimal.Decimal,  | Fees paid from executing trade | [optional] 
**meta** | [**TradeExecutionStatusMeta**](TradeExecutionStatusMeta.md) | [**TradeExecutionStatusMeta**](TradeExecutionStatusMeta.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

