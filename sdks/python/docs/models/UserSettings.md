# snaptrade_client.model.user_settings.UserSettings

Passiv user account settings

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Passiv user account settings | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**email** | [**Email**](Email.md) | [**Email**](Email.md) |  | [optional] 
**name** | None, str,  | NoneClass, str,  |  | [optional] 
**receive_cash_notification** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**receive_drift_notification** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**user_trial_activated** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**activated_trial_date** | None, str,  | NoneClass, str,  |  | [optional] 
**demo** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**api_enabled** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**drift_threshold** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**preferred_currency** | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

