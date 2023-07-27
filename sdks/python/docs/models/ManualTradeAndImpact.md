# snaptrade_client.model.manual_trade_and_impact.ManualTradeAndImpact

Manual Trade and Impact object

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Manual Trade and Impact object | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**trade** | [**ManualTrade**](ManualTrade.md) | [**ManualTrade**](ManualTrade.md) |  | [optional] 
**trade_impacts** | [**ManualTradeAndImpactTradeImpacts**](ManualTradeAndImpactTradeImpacts.md) | [**ManualTradeAndImpactTradeImpacts**](ManualTradeAndImpactTradeImpacts.md) |  | [optional] 
**combined_remaining_balance** | [**ManualTradeBalance**](ManualTradeBalance.md) | [**ManualTradeBalance**](ManualTradeBalance.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

