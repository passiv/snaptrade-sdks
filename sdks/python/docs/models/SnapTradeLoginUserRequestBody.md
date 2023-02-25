# snaptrade_client.model.snap_trade_login_user_request_body.SnapTradeLoginUserRequestBody

Data to login a user via SnapTrade Partner

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Data to login a user via SnapTrade Partner | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**broker** | str,  | str,  |  | [optional] 
**immediateRedirect** | bool,  | BoolClass,  |  | [optional] 
**customRedirect** | str,  | str,  |  | [optional] 
**reconnect** | str,  | str,  |  | [optional] 
**connectionType** | str,  | str,  |  | [optional] must be one of ["read", "trade", ] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

