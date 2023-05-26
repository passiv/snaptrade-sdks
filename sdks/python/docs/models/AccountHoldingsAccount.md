# snaptrade_client.model.account_holdings_account.AccountHoldingsAccount

Account Holdings with Account ID

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Account Holdings with Account ID | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**account** | [**SnapTradeHoldingsAccountAccountId**](SnapTradeHoldingsAccountAccountId.md) | [**SnapTradeHoldingsAccountAccountId**](SnapTradeHoldingsAccountAccountId.md) |  | [optional] 
**[balances](#balances)** | list, tuple,  | tuple,  |  | [optional] 
**[positions](#positions)** | list, tuple,  | tuple,  |  | [optional] 
**[orders](#orders)** | list, tuple,  | tuple,  |  | [optional] 
**total_value** | [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) | [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# balances

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Balance**](Balance.md) | [**Balance**](Balance.md) | [**Balance**](Balance.md) |  | 

# positions

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Position**](Position.md) | [**Position**](Position.md) | [**Position**](Position.md) |  | 

# orders

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**AccountOrderRecord**](AccountOrderRecord.md) | [**AccountOrderRecord**](AccountOrderRecord.md) | [**AccountOrderRecord**](AccountOrderRecord.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

