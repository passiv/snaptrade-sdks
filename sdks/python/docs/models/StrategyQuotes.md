# snaptrade_client.model.strategy_quotes.StrategyQuotes

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**strategy** | [**OptionStrategy**](OptionStrategy.md) | [**OptionStrategy**](OptionStrategy.md) |  | [optional] 
**open_price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**bid_price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**ask_price** | [**Price**](Price.md) | [**Price**](Price.md) |  | [optional] 
**volatility** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**greek** | [**StrategyQuotesGreek**](StrategyQuotesGreek.md) | [**StrategyQuotesGreek**](StrategyQuotesGreek.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

