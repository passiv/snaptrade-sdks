# snaptrade_client.model.session_event.SessionEvent

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**session_event_type** | str,  | str,  |  | [optional] must be one of ["CONNECTION_FAILED", "DISCLAIMER_ACCEPTED", "BROKERAGE_CONNECTION_INITIATED", "BROKERAGE_AUTHENTICATION", "MFA_AUTHORIZATION", "CONNECTION_SUCCESSFUL", "PARTNER_REDIRECT", ] 
**session_id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**user_id** | str,  | str,  | SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#x27;s unique to a user | [optional] 
**created_date** | str,  | str,  | Time | [optional] 
**brokerage_status_code** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

