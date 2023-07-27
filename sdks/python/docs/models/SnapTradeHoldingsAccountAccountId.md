# snaptrade_client.model.snap_trade_holdings_account_account_id.SnapTradeHoldingsAccountAccountId

Holdings with account ID

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Holdings with account ID | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**brokerage_authorization** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**portfolio_group** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**name** | None, str,  | NoneClass, str,  |  | [optional] 
**number** | str,  | str,  |  | [optional] 
**institution_name** | str,  | str,  |  | [optional] 
**meta** | [**SnapTradeHoldingsAccountAccountIdMeta**](SnapTradeHoldingsAccountAccountIdMeta.md) | [**SnapTradeHoldingsAccountAccountIdMeta**](SnapTradeHoldingsAccountAccountIdMeta.md) |  | [optional] 
**cash_restrictions** | [**SnapTradeHoldingsAccountAccountIdCashRestrictions**](SnapTradeHoldingsAccountAccountIdCashRestrictions.md) | [**SnapTradeHoldingsAccountAccountIdCashRestrictions**](SnapTradeHoldingsAccountAccountIdCashRestrictions.md) |  | [optional] 
**created_date** | str,  | str,  | Time | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

