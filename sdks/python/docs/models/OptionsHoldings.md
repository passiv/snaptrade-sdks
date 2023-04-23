# snaptrade_client.model.options_holdings.OptionsHoldings

Option Holdings

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Option Holdings | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str,  | str,  | Options information | [optional] 
**symbol** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**option_symbol** | [**OptionsSymbol**](OptionsSymbol.md) | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Price if limit or stop limit order | [optional] 
**currency** | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | [optional] 
**average_purchase_price** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Average purchase price for this position | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

