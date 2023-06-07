# snaptrade_client.model.account_order_record.AccountOrderRecord

Record of order in brokerageaccount

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Record of order in brokerageaccount | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**brokerage_order_id** | str,  | str,  | Order id returned by brokerage | [optional] 
**status** | [**AccountOrderRecordStatus**](AccountOrderRecordStatus.md) | [**AccountOrderRecordStatus**](AccountOrderRecordStatus.md) |  | [optional] 
**symbol** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**option_symbol** | [**OptionsSymbol**](OptionsSymbol.md) | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**action** | [**Action**](Action.md) | [**Action**](Action.md) |  | [optional] 
**total_quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Units | [optional] 
**open_quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Units | [optional] 
**canceled_quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Units | [optional] 
**filled_quantity** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Units | [optional] 
**execution_price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**limit_price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**stop_price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**order_type** | [**OrderType**](OrderType.md) | [**OrderType**](OrderType.md) |  | [optional] 
**time_in_force** | [**TimeInForce**](TimeInForce.md) | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**time_placed** | str,  | str,  | Time | [optional] 
**time_updated** | str,  | str,  | Time | [optional] 
**expiry_date** | str,  | str,  | Time | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

