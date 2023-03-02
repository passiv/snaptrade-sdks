# snaptrade_client.model.snap_trade_register_user_request_body.SnapTradeRegisterUserRequestBody

Data required to register a user via SnapTrade Partner

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Data required to register a user via SnapTrade Partner | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**userId** | str,  | str,  | SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#x27;s unique to a user | [optional] 
**rsaPublicKey** | str,  | str,  | Open SSH RSA public key | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

