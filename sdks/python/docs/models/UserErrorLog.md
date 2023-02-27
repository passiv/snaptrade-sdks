# snaptrade_client.model.user_error_log.UserErrorLog

An API error log for a specific SnapTrade user.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | An API error log for a specific SnapTrade user. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**requestedAt** | str,  | str,  |  | [optional] 
**response** | str,  | str,  |  | [optional] 
**statusCode** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**queryParams** | str,  | str,  |  | [optional] 
**httpMethod** | str,  | str,  |  | [optional] 
**endpoint** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)
