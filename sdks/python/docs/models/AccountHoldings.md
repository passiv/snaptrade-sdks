# snaptrade_client.model.account_holdings.AccountHoldings

Account Holdings

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Account Holdings | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**account** | [**SnapTradeHoldingsAccount**](SnapTradeHoldingsAccount.md) | [**SnapTradeHoldingsAccount**](SnapTradeHoldingsAccount.md) |  | [optional] 
**[balances](#balances)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[positions](#positions)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**total_value** | [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) | [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

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

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

