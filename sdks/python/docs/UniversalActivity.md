# UniversalActivity

A transaction or activity from an institution

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**account** | [**AccountSimple**](AccountSimple.md) |  | [optional] 
**amount** | **float, none_type** |  | [optional] 
**currency** | [**Currency**](Currency.md) |  | [optional] 
**description** | **str** |  | [optional] 
**fee** | **float** |  | [optional] 
**institution** | **str** |  | [optional] 
**option_type** | **str** | If an option transaction, then it&#39;s type (BUY_TO_OPEN, SELL_TO_CLOSE, etc), otherwise empty string | [optional] 
**price** | **float** |  | [optional] 
**settlement_date** | **str** |  | [optional] 
**symbol** | [**Symbol**](Symbol.md) |  | [optional] 
**option_symbol** | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**trade_date** | **str, none_type** |  | [optional] 
**type** | **str** |  | [optional] 
**units** | **float** | Usually but not necessarily an integer | [optional] 
**any string name** | **bool, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


