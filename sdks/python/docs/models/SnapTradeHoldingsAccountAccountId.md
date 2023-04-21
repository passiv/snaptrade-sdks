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
**[meta](#meta)** | dict, frozendict.frozendict,  | frozendict.frozendict,  |  | [optional] 
**[cash_restrictions](#cash_restrictions)** | list, tuple,  | tuple,  |  | [optional] 
**created_date** | str,  | str,  | Time | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# meta

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# cash_restrictions

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**CashRestriction**](CashRestriction.md) | [**CashRestriction**](CashRestriction.md) | [**CashRestriction**](CashRestriction.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

