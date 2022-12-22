# TradeExecutionStatus

Execution status of a trade

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] 
**universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**trade** | [**Trade**](Trade.md) |  | [optional] 
**state** | **str** | Execution state of a trade | [optional] 
**filled_units** | **int** | Number of filled units | [optional] 
**action** | **str** | Action of executed trade | [optional] 
**price** | **float** | Price of execution | [optional] 
**commissions** | **float** | Fees paid from executing trade | [optional] 
**meta** | **{str: (bool, date, datetime, dict, float, int, list, str, none_type)}** | Other misc. data | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


