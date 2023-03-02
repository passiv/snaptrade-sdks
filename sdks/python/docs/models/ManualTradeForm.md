# snaptrade_client.model.manual_trade_form.ManualTradeForm

Manual Trade Form

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Manual Trade Form | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**account_id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**action** | [**Action**](Action.md) | [**Action**](Action.md) |  | [optional] 
**order_type** | [**OrderType**](OrderType.md) | [**OrderType**](OrderType.md) |  | [optional] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Price if limit or stop limit order | [optional] 
**stop** | [**StopPrice**](StopPrice.md) | [**StopPrice**](StopPrice.md) |  | [optional] 
**time_in_force** | [**TimeInForce**](TimeInForce.md) | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**units** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Units | [optional] 
**universal_symbol_id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

