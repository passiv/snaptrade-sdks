# snaptrade_client.model.brokerage_authorization.BrokerageAuthorization

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**created_date** | [**Time**](Time.md) | [**Time**](Time.md) |  | [optional] 
**updated_date** | [**Time**](Time.md) | [**Time**](Time.md) |  | [optional] 
**brokerage** | [**Brokerage**](Brokerage.md) | [**Brokerage**](Brokerage.md) |  | [optional] 
**name** | None, str,  | NoneClass, str,  | Connection Name | [optional] 
**type** | None, str,  | NoneClass, str,  |  | [optional] 
**disabled** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**disabled_date** | None, str,  | NoneClass, str,  | Disabled date | [optional] 
**[meta](#meta)** | dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Additional data about brokerage authorization | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# meta

Additional data about brokerage authorization

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Additional data about brokerage authorization | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

