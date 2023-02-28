# snaptrade_client.model.cash_restriction.CashRestriction

Cash restriction rules that apply to this account when undergoing portfolio rebalance calculations.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Cash restriction rules that apply to this account when undergoing portfolio rebalance calculations. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**account** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**currency** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**type** | None, str,  | NoneClass, str,  |  | [optional] must be one of ["ALLOCATE_MAX", "RETAIN_MIN", ] 
**amount** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

