# snaptrade_client.model.brokerage_authorization_type_read_only.BrokerageAuthorizationTypeReadOnly

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**type** | str,  | str,  |  | [optional] must be one of ["read", "trade", ] 
**auth_type** | str,  | str,  |  | [optional] must be one of ["OAUTH", "SCRAPE", "UNOFFICIAL_API", "TOKEN", ] 
**brokerage** | [**BrokerageAuthorizationTypeReadOnlyBrokerage**](BrokerageAuthorizationTypeReadOnlyBrokerage.md) | [**BrokerageAuthorizationTypeReadOnlyBrokerage**](BrokerageAuthorizationTypeReadOnlyBrokerage.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

