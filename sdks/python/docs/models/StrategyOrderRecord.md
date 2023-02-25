# snaptrade_client.model.strategy_order_record.StrategyOrderRecord

Strategy order record

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Strategy order record | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**strategy** | [**OptionStrategy**](OptionStrategy.md) | [**OptionStrategy**](OptionStrategy.md) |  | [optional] 
**status** | str,  | str,  |  | [optional] must be one of ["PENDING", "ACCEPTED", "FAILED", "REJECTED", "CANCELED", "PARTIAL_CANCELED", "CANCEL_PENDING", "EXECUTED", "PARTIAL", "REPLACE_PENDING", "REPLACED", "STOPPED", "SUSPENDED", "EXPIRED", "QUEUED", "TRIGGERED", "ACTIVATED", "PENDING_RISK_REVIEW", "CONTINGENT_ORDER", ] 
**filled_quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**open_quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**closed_quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**order_type** | str,  | str,  |  | [optional] must be one of ["Limit", "Market", "NetDebit", "NetCredit", ] 
**time_in_force** | str,  | str,  |  | [optional] must be one of ["DAY", "GTC", ] 
**limit_price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Price if limit or stop limit order | [optional] 
**execution_price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Price if limit or stop limit order | [optional] 
**time_placed** | str,  | str,  | Time | [optional] 
**time_updated** | str,  | str,  | Time | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

