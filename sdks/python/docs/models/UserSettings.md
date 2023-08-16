# snaptrade_client.model.user_settings.UserSettings

User account settings

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | User account settings | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**email** | str,  | str,  |  | [optional] 
**name** | str,  | str,  |  | [optional] 
**receive_cash_notification** | bool,  | BoolClass,  |  | [optional] 
**receive_drift_notification** | bool,  | BoolClass,  |  | [optional] 
**user_trial_activated** | bool,  | BoolClass,  |  | [optional] 
**activated_trial_date** | str,  | str,  |  | [optional] 
**demo** | bool,  | BoolClass,  |  | [optional] 
**api_enabled** | bool,  | BoolClass,  |  | [optional] 
**drift_threshold** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**preferred_currency** | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

