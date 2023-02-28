# snaptrade_client.model.model_portfolio.ModelPortfolio

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**name** | None, str,  | NoneClass, str,  |  | [optional] 
**model_type** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  | Enum definitions -&gt; [-1: Unassigned, 0: Security Model Portfolio, 1: Asset Class Portfolio] | [optional] must be one of [-1, 0, 1, ] if omitted the server will use the default value of -1
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

