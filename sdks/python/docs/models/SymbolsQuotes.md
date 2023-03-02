# snaptrade_client.model.symbols_quotes.SymbolsQuotes

Symbols and Tickers Quotes object

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Symbols and Tickers Quotes object | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbol** | [**UniversalSymbol**](UniversalSymbol.md) | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**bid_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**ask_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**last_trade_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**bid_size** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**ask_size** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

