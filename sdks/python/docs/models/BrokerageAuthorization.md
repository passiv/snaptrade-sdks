# snaptrade_client.model.brokerage_authorization.BrokerageAuthorization

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**created_date** | str,  | str,  | Time | [optional] 
**updated_date** | str,  | str,  | Time | [optional] 
**brokerage** | [**Brokerage**](Brokerage.md) | [**Brokerage**](Brokerage.md) |  | [optional] 
**name** | str,  | str,  | Connection Name | [optional] 
**type** | str,  | str,  |  | [optional] 
**disabled** | bool,  | BoolClass,  |  | [optional] 
**disabled_date** | None, str,  | NoneClass, str,  | Disabled date | [optional] 
**[meta](#meta)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | Additional data about brokerage authorization | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# meta

Additional data about brokerage authorization

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Additional data about brokerage authorization | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

