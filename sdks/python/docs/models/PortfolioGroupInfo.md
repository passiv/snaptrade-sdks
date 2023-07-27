# snaptrade_client.model.portfolio_group_info.PortfolioGroupInfo

Summary of all relevant information about a portfolio group.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Summary of all relevant information about a portfolio group. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbols** | [**PortfolioGroupInfoSymbols**](PortfolioGroupInfoSymbols.md) | [**PortfolioGroupInfoSymbols**](PortfolioGroupInfoSymbols.md) |  | [optional] 
**quotable_symbols** | [**PortfolioGroupInfoQuotableSymbols**](PortfolioGroupInfoQuotableSymbols.md) | [**PortfolioGroupInfoQuotableSymbols**](PortfolioGroupInfoQuotableSymbols.md) |  | [optional] 
**balances** | [**PortfolioGroupInfoBalances**](PortfolioGroupInfoBalances.md) | [**PortfolioGroupInfoBalances**](PortfolioGroupInfoBalances.md) |  | [optional] 
**positions** | [**PortfolioGroupInfoPositions**](PortfolioGroupInfoPositions.md) | [**PortfolioGroupInfoPositions**](PortfolioGroupInfoPositions.md) |  | [optional] 
**target_positions** | [**PortfolioGroupInfoTargetPositions**](PortfolioGroupInfoTargetPositions.md) | [**PortfolioGroupInfoTargetPositions**](PortfolioGroupInfoTargetPositions.md) |  | [optional] 
**ideal_positions** | [**PortfolioGroupInfoIdealPositions**](PortfolioGroupInfoIdealPositions.md) | [**PortfolioGroupInfoIdealPositions**](PortfolioGroupInfoIdealPositions.md) |  | [optional] 
**excluded_positions** | [**PortfolioGroupInfoExcludedPositions**](PortfolioGroupInfoExcludedPositions.md) | [**PortfolioGroupInfoExcludedPositions**](PortfolioGroupInfoExcludedPositions.md) |  | [optional] 
**calculated_trades** | [**PortfolioGroupInfoCalculatedTrades**](PortfolioGroupInfoCalculatedTrades.md) | [**PortfolioGroupInfoCalculatedTrades**](PortfolioGroupInfoCalculatedTrades.md) |  | [optional] 
**brokerage_authorizations** | [**PortfolioGroupInfoBrokerageAuthorizations**](PortfolioGroupInfoBrokerageAuthorizations.md) | [**PortfolioGroupInfoBrokerageAuthorizations**](PortfolioGroupInfoBrokerageAuthorizations.md) |  | [optional] 
**accuracy** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] 
**settings** | [**PortfolioGroupSettings**](PortfolioGroupSettings.md) | [**PortfolioGroupSettings**](PortfolioGroupSettings.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

