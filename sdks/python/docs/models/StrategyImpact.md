# snaptrade_client.model.strategy_impact.StrategyImpact

The strategy impact

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The strategy impact | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**estimatedCommissions** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**buyingPowerEffect** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**buyingPowerResult** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**maintExcessEffect** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**maintExcessResult** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**tradeValueCalculation** | str,  | str,  |  | [optional] 
**[legs](#legs)** | list, tuple,  | tuple,  |  | [optional] 
**side** | str,  | str,  |  | [optional] 
**effect** | str,  | str,  |  | [optional] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**strategy** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# legs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**legId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**symbol** | str,  | str,  |  | [optional] 
**symbolId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**legRatioQuantity** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**side** | str,  | str,  |  | [optional] 
**avgExecPrice** | str,  | str,  |  | [optional] 
**lastExecPrice** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)
