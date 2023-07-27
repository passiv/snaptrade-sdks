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
**balances** | [**AccountHoldingsAccountBalances**](AccountHoldingsAccountBalances.md) | [**AccountHoldingsAccountBalances**](AccountHoldingsAccountBalances.md) |  | [optional] 
**positions** | [**AccountHoldingsAccountPositions**](AccountHoldingsAccountPositions.md) | [**AccountHoldingsAccountPositions**](AccountHoldingsAccountPositions.md) |  | [optional] 
**orders** | [**AccountHoldingsAccountOrders**](AccountHoldingsAccountOrders.md) | [**AccountHoldingsAccountOrders**](AccountHoldingsAccountOrders.md) |  | [optional] 
**total_value** | [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) | [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

