# snaptrade_client.model.universal_activity.UniversalActivity

A transaction or activity from an institution

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | A transaction or activity from an institution | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | None, str,  | NoneClass, str,  |  | [optional] 
**account** | [**AccountSimple**](AccountSimple.md) | [**AccountSimple**](AccountSimple.md) |  | [optional] 
**amount** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**currency** | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | [optional] 
**description** | None, str,  | NoneClass, str,  |  | [optional] 
**fee** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**institution** | None, str,  | NoneClass, str,  |  | [optional] 
**option_type** | None, str,  | NoneClass, str,  | If an option transaction, then it&#x27;s type (BUY_TO_OPEN, SELL_TO_CLOSE, etc), otherwise empty string | [optional] 
**price** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  |  | [optional] 
**settlement_date** | None, str,  | NoneClass, str,  |  | [optional] 
**symbol** | [**Symbol**](Symbol.md) | [**Symbol**](Symbol.md) |  | [optional] 
**option_symbol** | [**OptionsSymbol**](OptionsSymbol.md) | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**trade_date** | None, str,  | NoneClass, str,  |  | [optional] 
**type** | None, str,  | NoneClass, str,  |  | [optional] must be one of ["DIVIDEND", "BUY", "SELL", "CONTRIBUTION", "WITHDRAWAL", "EXTERNAL_ASSET_TRANSFER_IN", "EXTERNAL_ASSET_TRANSFER_OUT", "INTERNAL_CASH_TRANSFER_IN", "INTERNAL_CASH_TRANSFER_OUT", "INTERNAL_ASSET_TRANSFER_IN", "INTERNAL_ASSET_TRANSFER_OUT", "INTEREST", "REBATE", "GOV_GRANT", "TAX", "FEE", "REI", "FXT", ] 
**units** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Usually but not necessarily an integer | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

