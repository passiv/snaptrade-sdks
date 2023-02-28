# snaptrade_client.model.manual_trade.ManualTrade

A manual trade object

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | A manual trade object | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**account** | [**Account**](Account.md) | [**Account**](Account.md) |  | [optional] 
**order_type** | [**OrderType**](OrderType.md) | [**OrderType**](OrderType.md) |  | [optional] 
**time_in_force** | [**TimeInForce**](TimeInForce.md) | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**symbol** | [**ManualTradeSymbol**](ManualTradeSymbol.md) | [**ManualTradeSymbol**](ManualTradeSymbol.md) |  | [optional] 
**action** | [**Action**](Action.md) | [**Action**](Action.md) |  | [optional] 
**units** | [**Units**](Units.md) | [**Units**](Units.md) |  | [optional] 
**price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

