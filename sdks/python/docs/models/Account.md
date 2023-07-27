# snaptrade_client.model.account.Account

SnapTradeUser Investment Account

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | SnapTradeUser Investment Account | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**brokerage_authorization** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**portfolio_group** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**name** | str,  | str,  |  | [optional] 
**number** | str,  | str,  |  | [optional] 
**institution_name** | str,  | str,  |  | [optional] 
**created_date** | str,  | str,  |  | [optional] 
**meta** | [**AccountMeta**](AccountMeta.md) | [**AccountMeta**](AccountMeta.md) |  | [optional] 
**cash_restrictions** | [**AccountCashRestrictions**](AccountCashRestrictions.md) | [**AccountCashRestrictions**](AccountCashRestrictions.md) |  | [optional] 
**sync_status** | [**AccountSyncStatus**](AccountSyncStatus.md) | [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

