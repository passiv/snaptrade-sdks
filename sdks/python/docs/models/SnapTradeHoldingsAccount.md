# snaptrade_client.model.snap_trade_holdings_account.SnapTradeHoldingsAccount

SnapTradeUser Investment Account

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | SnapTradeUser Investment Account | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**brokerage_authorization** | [**BrokerageAuthorization**](BrokerageAuthorization.md) | [**BrokerageAuthorization**](BrokerageAuthorization.md) |  | [optional] 
**portfolio_group** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**name** | None, str,  | NoneClass, str,  |  | [optional] 
**number** | str,  | str,  |  | [optional] 
**institution_name** | str,  | str,  |  | [optional] 
**sync_status** | [**AccountSyncStatus**](AccountSyncStatus.md) | [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 
**meta** | [**SnapTradeHoldingsAccountMeta**](SnapTradeHoldingsAccountMeta.md) | [**SnapTradeHoldingsAccountMeta**](SnapTradeHoldingsAccountMeta.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

