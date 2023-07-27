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
**legs** | [**StrategyImpactLegs**](StrategyImpactLegs.md) | [**StrategyImpactLegs**](StrategyImpactLegs.md) |  | [optional] 
**side** | str,  | str,  |  | [optional] 
**effect** | str,  | str,  |  | [optional] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**strategy** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

