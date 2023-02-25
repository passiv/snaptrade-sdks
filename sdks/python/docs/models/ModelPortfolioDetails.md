# snaptrade_client.model.model_portfolio_details.ModelPortfolioDetails

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**model_portfolio** | [**ModelPortfolio**](ModelPortfolio.md) | [**ModelPortfolio**](ModelPortfolio.md) |  | [optional] 
**[model_portfolio_security](#model_portfolio_security)** | list, tuple,  | tuple,  |  | [optional] 
**[model_portfolio_asset_class](#model_portfolio_asset_class)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# model_portfolio_security

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ModelPortfolioSecurity**](ModelPortfolioSecurity.md) | [**ModelPortfolioSecurity**](ModelPortfolioSecurity.md) | [**ModelPortfolioSecurity**](ModelPortfolioSecurity.md) |  | 

# model_portfolio_asset_class

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ModelPortfolioAssetClass**](ModelPortfolioAssetClass.md) | [**ModelPortfolioAssetClass**](ModelPortfolioAssetClass.md) | [**ModelPortfolioAssetClass**](ModelPortfolioAssetClass.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

