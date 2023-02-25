# snaptrade_client.model.trade_impact.TradeImpact

Impact of a group of trade

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Impact of a group of trade | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**account** | [**Account**](Account.md) | [**Account**](Account.md) |  | [optional] 
**currency** | [**Currency**](Currency.md) | [**Currency**](Currency.md) |  | [optional] 
**remaining_cash** | decimal.Decimal, int, float,  | decimal.Decimal,  | Remaining balance after executing all trades | [optional] 
**estimated_commissions** | decimal.Decimal, int, float,  | decimal.Decimal,  | Total estimated commissions across all trades to make | [optional] 
**forex_fees** | decimal.Decimal, int, float,  | decimal.Decimal,  | Estimated forex fees to pay to excute trades | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

