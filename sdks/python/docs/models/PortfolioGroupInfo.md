# snaptrade_client.model.portfolio_group_info.PortfolioGroupInfo

Summary of all relevant information about a portfolio group.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Summary of all relevant information about a portfolio group. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**[symbols](#symbols)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[quotable_symbols](#quotable_symbols)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[balances](#balances)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[positions](#positions)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[target_positions](#target_positions)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[ideal_positions](#ideal_positions)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[excluded_positions](#excluded_positions)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[calculated_trades](#calculated_trades)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[brokerage_authorizations](#brokerage_authorizations)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**accuracy** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**settings** | [**PortfolioGroupSettings**](PortfolioGroupSettings.md) | [**PortfolioGroupSettings**](PortfolioGroupSettings.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# symbols

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) |  | 

# quotable_symbols

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) |  | 

# balances

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Balance**](Balance.md) | [**Balance**](Balance.md) | [**Balance**](Balance.md) |  | 

# positions

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Position**](Position.md) | [**Position**](Position.md) | [**Position**](Position.md) |  | 

# target_positions

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**TargetAsset**](TargetAsset.md) | [**TargetAsset**](TargetAsset.md) | [**TargetAsset**](TargetAsset.md) |  | 

# ideal_positions

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Position**](Position.md) | [**Position**](Position.md) | [**Position**](Position.md) |  | 

# excluded_positions

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ExcludedAsset**](ExcludedAsset.md) | [**ExcludedAsset**](ExcludedAsset.md) | [**ExcludedAsset**](ExcludedAsset.md) |  | 

# calculated_trades

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CalculatedTrade**](CalculatedTrade.md) | [**CalculatedTrade**](CalculatedTrade.md) | [**CalculatedTrade**](CalculatedTrade.md) |  | 

# brokerage_authorizations

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**BrokerageAuthorization**](BrokerageAuthorization.md) | [**BrokerageAuthorization**](BrokerageAuthorization.md) | [**BrokerageAuthorization**](BrokerageAuthorization.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

