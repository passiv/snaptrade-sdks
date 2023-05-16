# OpenapiClient::PortfolioManagementApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_portfolio_excluded_asset**](PortfolioManagementApi.md#add_portfolio_excluded_asset) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group |
| [**create**](PortfolioManagementApi.md#create) | **POST** /portfolioGroups | Create new portfolio group |
| [**create_asset_class**](PortfolioManagementApi.md#create_asset_class) | **POST** /modelAssetClass | Create a new model asset class |
| [**create_model_portfolio**](PortfolioManagementApi.md#create_model_portfolio) | **POST** /modelPortfolio | Creates a new model portfolio |
| [**delete_asset_class**](PortfolioManagementApi.md#delete_asset_class) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class |
| [**delete_excluded_asset**](PortfolioManagementApi.md#delete_excluded_asset) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group |
| [**delete_model_portfolio_by_id**](PortfolioManagementApi.md#delete_model_portfolio_by_id) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio |
| [**delete_portfoli**](PortfolioManagementApi.md#delete_portfoli) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio. |
| [**delete_portfolio_target_by_id**](PortfolioManagementApi.md#delete_portfolio_target_by_id) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset. |
| [**detail_asset_class**](PortfolioManagementApi.md#detail_asset_class) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class |
| [**get_calculated_trade_by_id**](PortfolioManagementApi.md#get_calculated_trade_by_id) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade |
| [**get_model_details_by_id**](PortfolioManagementApi.md#get_model_details_by_id) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio |
| [**get_portfolio_balances**](PortfolioManagementApi.md#get_portfolio_balances) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group |
| [**get_portfolio_details_by_id**](PortfolioManagementApi.md#get_portfolio_details_by_id) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio |
| [**get_portfolio_info**](PortfolioManagementApi.md#get_portfolio_info) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group. |
| [**get_portfolio_settings**](PortfolioManagementApi.md#get_portfolio_settings) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings |
| [**get_portfolio_target_by_id**](PortfolioManagementApi.md#get_portfolio_target_by_id) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group |
| [**get_portfolio_targets**](PortfolioManagementApi.md#get_portfolio_targets) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup. |
| [**get_portoflio_excluded_assets**](PortfolioManagementApi.md#get_portoflio_excluded_assets) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\ |
| [**import_model_portfolio**](PortfolioManagementApi.md#import_model_portfolio) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group |
| [**list**](PortfolioManagementApi.md#list) | **GET** /portfolioGroups | List all portfolio groups |
| [**list_asset_classes**](PortfolioManagementApi.md#list_asset_classes) | **GET** /modelAssetClass | List of model asset class |
| [**list_calculated_trades**](PortfolioManagementApi.md#list_calculated_trades) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group |
| [**list_model_portfolio**](PortfolioManagementApi.md#list_model_portfolio) | **GET** /modelPortfolio | List of model portfolio |
| [**list_portfolio_accounts**](PortfolioManagementApi.md#list_portfolio_accounts) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group |
| [**modify_model_portfolio_by_id**](PortfolioManagementApi.md#modify_model_portfolio_by_id) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object |
| [**save_portfolio**](PortfolioManagementApi.md#save_portfolio) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio. |
| [**search_portfolio_symbols**](PortfolioManagementApi.md#search_portfolio_symbols) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group |
| [**set_portfolio_targets**](PortfolioManagementApi.md#set_portfolio_targets) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list. |
| [**update_asset_class**](PortfolioManagementApi.md#update_asset_class) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects |
| [**update_portfolio_settings**](PortfolioManagementApi.md#update_portfolio_settings) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings |
| [**update_portfolio_target_by_id**](PortfolioManagementApi.md#update_portfolio_target_by_id) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup. |


## add_portfolio_excluded_asset

> <ExcludedAsset> add_portfolio_excluded_asset(portfolio_group_id, opts)

Adds an asset to exclude to a portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to exclude an asset.
opts = {
  universal_symbol: OpenapiClient::UniversalSymbol.new # UniversalSymbol | 
}

begin
  # Adds an asset to exclude to a portfolio group
  result = api_instance.add_portfolio_excluded_asset(portfolio_group_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->add_portfolio_excluded_asset: #{e}"
end
```

#### Using the add_portfolio_excluded_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExcludedAsset>, Integer, Hash)> add_portfolio_excluded_asset_with_http_info(portfolio_group_id, opts)

```ruby
begin
  # Adds an asset to exclude to a portfolio group
  data, status_code, headers = api_instance.add_portfolio_excluded_asset_with_http_info(portfolio_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExcludedAsset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->add_portfolio_excluded_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to exclude an asset. |  |
| **universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] |

### Return type

[**ExcludedAsset**](ExcludedAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create

> <Array<PortfolioGroup>> create(user_id, user_secret, request_body)

Create new portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Create new portfolio group
  result = api_instance.create(user_id, user_secret, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->create: #{e}"
end
```

#### Using the create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PortfolioGroup>>, Integer, Hash)> create_with_http_info(user_id, user_secret, request_body)

```ruby
begin
  # Create new portfolio group
  data, status_code, headers = api_instance.create_with_http_info(user_id, user_secret, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PortfolioGroup>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**Array&lt;PortfolioGroup&gt;**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_asset_class

> <ModelAssetClassDetails> create_asset_class

Create a new model asset class

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new

begin
  # Create a new model asset class
  result = api_instance.create_asset_class
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->create_asset_class: #{e}"
end
```

#### Using the create_asset_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelAssetClassDetails>, Integer, Hash)> create_asset_class_with_http_info

```ruby
begin
  # Create a new model asset class
  data, status_code, headers = api_instance.create_asset_class_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelAssetClassDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->create_asset_class_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_model_portfolio

> <ModelPortfolioDetails> create_model_portfolio

Creates a new model portfolio

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new

begin
  # Creates a new model portfolio
  result = api_instance.create_model_portfolio
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->create_model_portfolio: #{e}"
end
```

#### Using the create_model_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelPortfolioDetails>, Integer, Hash)> create_model_portfolio_with_http_info

```ruby
begin
  # Creates a new model portfolio
  data, status_code, headers = api_instance.create_model_portfolio_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelPortfolioDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->create_model_portfolio_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_asset_class

> delete_asset_class(model_asset_class_id)

Deletes a model asset class

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
model_asset_class_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the model asset class to delete.

begin
  # Deletes a model asset class
  api_instance.delete_asset_class(model_asset_class_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_asset_class: #{e}"
end
```

#### Using the delete_asset_class_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_asset_class_with_http_info(model_asset_class_id)

```ruby
begin
  # Deletes a model asset class
  data, status_code, headers = api_instance.delete_asset_class_with_http_info(model_asset_class_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_asset_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_asset_class_id** | **String** | The ID of the model asset class to delete. |  |

### Return type

nil (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_excluded_asset

> delete_excluded_asset(portfolio_group_id, symbol_id)

Unexclude an asset from a portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to unexclude an asset.
symbol_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the excluded asset Symbol to delete.

begin
  # Unexclude an asset from a portfolio group
  api_instance.delete_excluded_asset(portfolio_group_id, symbol_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_excluded_asset: #{e}"
end
```

#### Using the delete_excluded_asset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_excluded_asset_with_http_info(portfolio_group_id, symbol_id)

```ruby
begin
  # Unexclude an asset from a portfolio group
  data, status_code, headers = api_instance.delete_excluded_asset_with_http_info(portfolio_group_id, symbol_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_excluded_asset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to unexclude an asset. |  |
| **symbol_id** | **String** | The ID of the excluded asset Symbol to delete. |  |

### Return type

nil (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_model_portfolio_by_id

> delete_model_portfolio_by_id(model_portfolio_id)

Deletes a model portfolio

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
model_portfolio_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the model portfolio to delete.

begin
  # Deletes a model portfolio
  api_instance.delete_model_portfolio_by_id(model_portfolio_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_model_portfolio_by_id: #{e}"
end
```

#### Using the delete_model_portfolio_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_model_portfolio_by_id_with_http_info(model_portfolio_id)

```ruby
begin
  # Deletes a model portfolio
  data, status_code, headers = api_instance.delete_model_portfolio_by_id_with_http_info(model_portfolio_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_model_portfolio_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_portfolio_id** | **String** | The ID of the model portfolio to delete. |  |

### Return type

nil (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_portfoli

> <PortfolioGroup> delete_portfoli(portfolio_group_id)

Remove a target portfolio.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to delete.

begin
  # Remove a target portfolio.
  result = api_instance.delete_portfoli(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_portfoli: #{e}"
end
```

#### Using the delete_portfoli_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioGroup>, Integer, Hash)> delete_portfoli_with_http_info(portfolio_group_id)

```ruby
begin
  # Remove a target portfolio.
  data, status_code, headers = api_instance.delete_portfoli_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioGroup>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_portfoli_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to delete. |  |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_portfolio_target_by_id

> <TargetAsset> delete_portfolio_target_by_id(portfolio_group_id, target_asset_id)

Remove a TargetAsset.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to remove the target asset.
target_asset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the TargetAsset to delete.

begin
  # Remove a TargetAsset.
  result = api_instance.delete_portfolio_target_by_id(portfolio_group_id, target_asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_portfolio_target_by_id: #{e}"
end
```

#### Using the delete_portfolio_target_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetAsset>, Integer, Hash)> delete_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id)

```ruby
begin
  # Remove a TargetAsset.
  data, status_code, headers = api_instance.delete_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetAsset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->delete_portfolio_target_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to remove the target asset. |  |
| **target_asset_id** | **String** | The ID of the TargetAsset to delete. |  |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detail_asset_class

> <ModelAssetClassDetails> detail_asset_class(model_asset_class_id)

Get details of a model asset class

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
model_asset_class_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the model asset class to get.

begin
  # Get details of a model asset class
  result = api_instance.detail_asset_class(model_asset_class_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->detail_asset_class: #{e}"
end
```

#### Using the detail_asset_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelAssetClassDetails>, Integer, Hash)> detail_asset_class_with_http_info(model_asset_class_id)

```ruby
begin
  # Get details of a model asset class
  data, status_code, headers = api_instance.detail_asset_class_with_http_info(model_asset_class_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelAssetClassDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->detail_asset_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_asset_class_id** | **String** | The ID of the model asset class to get. |  |

### Return type

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_calculated_trade_by_id

> <Array<Trade>> get_calculated_trade_by_id(portfolio_group_id, calculated_trade_id, trade_id)

Return an individual trade

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to perform rebalancing calculations
calculated_trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of calculated trade to get account impact
trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of trade object

begin
  # Return an individual trade
  result = api_instance.get_calculated_trade_by_id(portfolio_group_id, calculated_trade_id, trade_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_calculated_trade_by_id: #{e}"
end
```

#### Using the get_calculated_trade_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Trade>>, Integer, Hash)> get_calculated_trade_by_id_with_http_info(portfolio_group_id, calculated_trade_id, trade_id)

```ruby
begin
  # Return an individual trade
  data, status_code, headers = api_instance.get_calculated_trade_by_id_with_http_info(portfolio_group_id, calculated_trade_id, trade_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Trade>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_calculated_trade_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |
| **trade_id** | **String** | The ID of trade object |  |

### Return type

[**Array&lt;Trade&gt;**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_model_details_by_id

> <ModelPortfolioDetails> get_model_details_by_id(model_portfolio_id)

Get details of a model portfolio

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
model_portfolio_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the model portfolio to get.

begin
  # Get details of a model portfolio
  result = api_instance.get_model_details_by_id(model_portfolio_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_model_details_by_id: #{e}"
end
```

#### Using the get_model_details_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelPortfolioDetails>, Integer, Hash)> get_model_details_by_id_with_http_info(model_portfolio_id)

```ruby
begin
  # Get details of a model portfolio
  data, status_code, headers = api_instance.get_model_details_by_id_with_http_info(model_portfolio_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelPortfolioDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_model_details_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_portfolio_id** | **String** | The ID of the model portfolio to get. |  |

### Return type

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_balances

> <Array<Balance>> get_portfolio_balances(portfolio_group_id)

Get sum of cash balances in portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to create the target asset.

begin
  # Get sum of cash balances in portfolio group
  result = api_instance.get_portfolio_balances(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_balances: #{e}"
end
```

#### Using the get_portfolio_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Balance>>, Integer, Hash)> get_portfolio_balances_with_http_info(portfolio_group_id)

```ruby
begin
  # Get sum of cash balances in portfolio group
  data, status_code, headers = api_instance.get_portfolio_balances_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Balance>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**Array&lt;Balance&gt;**](Balance.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_details_by_id

> <PortfolioGroup> get_portfolio_details_by_id(portfolio_group_id)

Get details of a target portfolio

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to get.

begin
  # Get details of a target portfolio
  result = api_instance.get_portfolio_details_by_id(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_details_by_id: #{e}"
end
```

#### Using the get_portfolio_details_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioGroup>, Integer, Hash)> get_portfolio_details_by_id_with_http_info(portfolio_group_id)

```ruby
begin
  # Get details of a target portfolio
  data, status_code, headers = api_instance.get_portfolio_details_by_id_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioGroup>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_details_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to get. |  |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_portfolio_info

> <PortfolioGroupInfo> get_portfolio_info(portfolio_group_id)

Return a whole bunch of relevant information relating to a portfolio group.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to create the target asset.

begin
  # Return a whole bunch of relevant information relating to a portfolio group.
  result = api_instance.get_portfolio_info(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_info: #{e}"
end
```

#### Using the get_portfolio_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioGroupInfo>, Integer, Hash)> get_portfolio_info_with_http_info(portfolio_group_id)

```ruby
begin
  # Return a whole bunch of relevant information relating to a portfolio group.
  data, status_code, headers = api_instance.get_portfolio_info_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioGroupInfo>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**PortfolioGroupInfo**](PortfolioGroupInfo.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_settings

> <PortfolioGroupSettings> get_portfolio_settings(portfolio_group_id)

Get portfolio group settings

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to get the settings.

begin
  # Get portfolio group settings
  result = api_instance.get_portfolio_settings(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_settings: #{e}"
end
```

#### Using the get_portfolio_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioGroupSettings>, Integer, Hash)> get_portfolio_settings_with_http_info(portfolio_group_id)

```ruby
begin
  # Get portfolio group settings
  data, status_code, headers = api_instance.get_portfolio_settings_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioGroupSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to get the settings. |  |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio_target_by_id

> <TargetAsset> get_portfolio_target_by_id(portfolio_group_id, target_asset_id)

Get a specific target from a portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to get the target asset.
target_asset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the TargetAsset to get.

begin
  # Get a specific target from a portfolio group
  result = api_instance.get_portfolio_target_by_id(portfolio_group_id, target_asset_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_target_by_id: #{e}"
end
```

#### Using the get_portfolio_target_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetAsset>, Integer, Hash)> get_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id)

```ruby
begin
  # Get a specific target from a portfolio group
  data, status_code, headers = api_instance.get_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetAsset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_target_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to get the target asset. |  |
| **target_asset_id** | **String** | The ID of the TargetAsset to get. |  |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_portfolio_targets

> <Array<TargetAsset>> get_portfolio_targets(portfolio_group_id)

Get all target assets under the specified PortfolioGroup.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to create the target asset.

begin
  # Get all target assets under the specified PortfolioGroup.
  result = api_instance.get_portfolio_targets(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_targets: #{e}"
end
```

#### Using the get_portfolio_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TargetAsset>>, Integer, Hash)> get_portfolio_targets_with_http_info(portfolio_group_id)

```ruby
begin
  # Get all target assets under the specified PortfolioGroup.
  data, status_code, headers = api_instance.get_portfolio_targets_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TargetAsset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portfolio_targets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**Array&lt;TargetAsset&gt;**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portoflio_excluded_assets

> <Array<ExcludedAsset>> get_portoflio_excluded_assets(portfolio_group_id)

Get an array of excluded assets associated with a portfolio group\\

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which the excluded assets are linked.

begin
  # Get an array of excluded assets associated with a portfolio group\\
  result = api_instance.get_portoflio_excluded_assets(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portoflio_excluded_assets: #{e}"
end
```

#### Using the get_portoflio_excluded_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ExcludedAsset>>, Integer, Hash)> get_portoflio_excluded_assets_with_http_info(portfolio_group_id)

```ruby
begin
  # Get an array of excluded assets associated with a portfolio group\\
  data, status_code, headers = api_instance.get_portoflio_excluded_assets_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ExcludedAsset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->get_portoflio_excluded_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which the excluded assets are linked. |  |

### Return type

[**Array&lt;ExcludedAsset&gt;**](ExcludedAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_model_portfolio

> <Array<TargetAsset>> import_model_portfolio(portfolio_group_id)

Import target allocation based on portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to create the target asset.

begin
  # Import target allocation based on portfolio group
  result = api_instance.import_model_portfolio(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->import_model_portfolio: #{e}"
end
```

#### Using the import_model_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TargetAsset>>, Integer, Hash)> import_model_portfolio_with_http_info(portfolio_group_id)

```ruby
begin
  # Import target allocation based on portfolio group
  data, status_code, headers = api_instance.import_model_portfolio_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TargetAsset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->import_model_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**Array&lt;TargetAsset&gt;**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list

> <Array<PortfolioGroup>> list(user_id, user_secret)

List all portfolio groups

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # List all portfolio groups
  result = api_instance.list(user_id, user_secret)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list: #{e}"
end
```

#### Using the list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PortfolioGroup>>, Integer, Hash)> list_with_http_info(user_id, user_secret)

```ruby
begin
  # List all portfolio groups
  data, status_code, headers = api_instance.list_with_http_info(user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PortfolioGroup>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**Array&lt;PortfolioGroup&gt;**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_asset_classes

> <Array<ModelAssetClassDetails>> list_asset_classes

List of model asset class

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new

begin
  # List of model asset class
  result = api_instance.list_asset_classes
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_asset_classes: #{e}"
end
```

#### Using the list_asset_classes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ModelAssetClassDetails>>, Integer, Hash)> list_asset_classes_with_http_info

```ruby
begin
  # List of model asset class
  data, status_code, headers = api_instance.list_asset_classes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ModelAssetClassDetails>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_asset_classes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ModelAssetClassDetails&gt;**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_calculated_trades

> <CalculatedTrade> list_calculated_trades(portfolio_group_id)

List of trades to make to rebalance portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to perform rebalancing calculations

begin
  # List of trades to make to rebalance portfolio group
  result = api_instance.list_calculated_trades(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_calculated_trades: #{e}"
end
```

#### Using the list_calculated_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculatedTrade>, Integer, Hash)> list_calculated_trades_with_http_info(portfolio_group_id)

```ruby
begin
  # List of trades to make to rebalance portfolio group
  data, status_code, headers = api_instance.list_calculated_trades_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculatedTrade>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_calculated_trades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |

### Return type

[**CalculatedTrade**](CalculatedTrade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_model_portfolio

> <Array<ModelPortfolioDetails>> list_model_portfolio

List of model portfolio

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new

begin
  # List of model portfolio
  result = api_instance.list_model_portfolio
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_model_portfolio: #{e}"
end
```

#### Using the list_model_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ModelPortfolioDetails>>, Integer, Hash)> list_model_portfolio_with_http_info

```ruby
begin
  # List of model portfolio
  data, status_code, headers = api_instance.list_model_portfolio_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ModelPortfolioDetails>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_model_portfolio_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ModelPortfolioDetails&gt;**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_portfolio_accounts

> <Array<Account>> list_portfolio_accounts(portfolio_group_id)

Get all accounts associated with a portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which the accounts are linked.

begin
  # Get all accounts associated with a portfolio group
  result = api_instance.list_portfolio_accounts(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_portfolio_accounts: #{e}"
end
```

#### Using the list_portfolio_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> list_portfolio_accounts_with_http_info(portfolio_group_id)

```ruby
begin
  # Get all accounts associated with a portfolio group
  data, status_code, headers = api_instance.list_portfolio_accounts_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->list_portfolio_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which the accounts are linked. |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_model_portfolio_by_id

> modify_model_portfolio_by_id(model_portfolio_id, model_portfolio_details)

Updates model portfolio object

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
model_portfolio_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the model portfolio to update.
model_portfolio_details = OpenapiClient::ModelPortfolioDetails.new # ModelPortfolioDetails | Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. <br /><br /> * The model portfolio name and model portfolio model type is required. <br /> * The model portfolio model type must be either 0 or 1. [0 -> Securities based, 1 -> Asset Class based] <br /><br /> * If the model portfolio type is 0, the model portfolio asset class must be an empty array. <br /> * If the model portfolio type is 1, the model portfolio security must be an empty array. <br /><br /> * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object <br /> * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object <br /><br /> * To remove all model portfolio securities or model portfolio asset class, set then to an empty array

begin
  # Updates model portfolio object
  api_instance.modify_model_portfolio_by_id(model_portfolio_id, model_portfolio_details)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->modify_model_portfolio_by_id: #{e}"
end
```

#### Using the modify_model_portfolio_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> modify_model_portfolio_by_id_with_http_info(model_portfolio_id, model_portfolio_details)

```ruby
begin
  # Updates model portfolio object
  data, status_code, headers = api_instance.modify_model_portfolio_by_id_with_http_info(model_portfolio_id, model_portfolio_details)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->modify_model_portfolio_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_portfolio_id** | **String** | The ID of the model portfolio to update. |  |
| **model_portfolio_details** | [**ModelPortfolioDetails**](ModelPortfolioDetails.md) | Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array |  |

### Return type

nil (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## save_portfolio

> <PortfolioGroup> save_portfolio(portfolio_group_id, request_body)

Update an existing target portfolio.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to update.
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Update an existing target portfolio.
  result = api_instance.save_portfolio(portfolio_group_id, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->save_portfolio: #{e}"
end
```

#### Using the save_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioGroup>, Integer, Hash)> save_portfolio_with_http_info(portfolio_group_id, request_body)

```ruby
begin
  # Update an existing target portfolio.
  data, status_code, headers = api_instance.save_portfolio_with_http_info(portfolio_group_id, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioGroup>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->save_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to update. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_portfolio_symbols

> <Array<UniversalSymbol>> search_portfolio_symbols(portfolio_group_id, opts)

Search for symbols limited to brokerages under the specified portfolio group

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to search under
opts = {
  symbol_query: OpenapiClient::SymbolQuery.new # SymbolQuery | 
}

begin
  # Search for symbols limited to brokerages under the specified portfolio group
  result = api_instance.search_portfolio_symbols(portfolio_group_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->search_portfolio_symbols: #{e}"
end
```

#### Using the search_portfolio_symbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniversalSymbol>>, Integer, Hash)> search_portfolio_symbols_with_http_info(portfolio_group_id, opts)

```ruby
begin
  # Search for symbols limited to brokerages under the specified portfolio group
  data, status_code, headers = api_instance.search_portfolio_symbols_with_http_info(portfolio_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniversalSymbol>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->search_portfolio_symbols_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to search under |  |
| **symbol_query** | [**SymbolQuery**](SymbolQuery.md) |  | [optional] |

### Return type

[**Array&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_portfolio_targets

> <Array<TargetAsset>> set_portfolio_targets(portfolio_group_id, opts)

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to create the target asset.
opts = {
  target_asset: [OpenapiClient::TargetAsset.new] # Array<TargetAsset> | 
}

begin
  # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
  result = api_instance.set_portfolio_targets(portfolio_group_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->set_portfolio_targets: #{e}"
end
```

#### Using the set_portfolio_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TargetAsset>>, Integer, Hash)> set_portfolio_targets_with_http_info(portfolio_group_id, opts)

```ruby
begin
  # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
  data, status_code, headers = api_instance.set_portfolio_targets_with_http_info(portfolio_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TargetAsset>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->set_portfolio_targets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |
| **target_asset** | [**Array&lt;TargetAsset&gt;**](TargetAsset.md) |  | [optional] |

### Return type

[**Array&lt;TargetAsset&gt;**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_asset_class

> update_asset_class(model_asset_class_id, model_asset_class_details)

Updates model asset class objects

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
model_asset_class_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the model asset class to update.
model_asset_class_details = OpenapiClient::ModelAssetClassDetails.new # ModelAssetClassDetails | Use this endpoint change model asset class name and to add or remove a model asset class target. <br /><br /> * Only the model asset class name is required for the model asset class object. <br /> * Only the symbol id is required for the symbol object in the model asset class target object. <br /> * To remove all model asset class targets, set the model asset class target as an empty array

begin
  # Updates model asset class objects
  api_instance.update_asset_class(model_asset_class_id, model_asset_class_details)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->update_asset_class: #{e}"
end
```

#### Using the update_asset_class_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_asset_class_with_http_info(model_asset_class_id, model_asset_class_details)

```ruby
begin
  # Updates model asset class objects
  data, status_code, headers = api_instance.update_asset_class_with_http_info(model_asset_class_id, model_asset_class_details)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->update_asset_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_asset_class_id** | **String** | The ID of the model asset class to update. |  |
| **model_asset_class_details** | [**ModelAssetClassDetails**](ModelAssetClassDetails.md) | Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array |  |

### Return type

nil (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_portfolio_settings

> <PortfolioGroupSettings> update_portfolio_settings(portfolio_group_id)

Updates portfolio group settings

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to patch the settings.

begin
  # Updates portfolio group settings
  result = api_instance.update_portfolio_settings(portfolio_group_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->update_portfolio_settings: #{e}"
end
```

#### Using the update_portfolio_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PortfolioGroupSettings>, Integer, Hash)> update_portfolio_settings_with_http_info(portfolio_group_id)

```ruby
begin
  # Updates portfolio group settings
  data, status_code, headers = api_instance.update_portfolio_settings_with_http_info(portfolio_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PortfolioGroupSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->update_portfolio_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to patch the settings. |  |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## update_portfolio_target_by_id

> <TargetAsset> update_portfolio_target_by_id(portfolio_group_id, target_asset_id, target_asset)

Update a TargetAsset under the specified PortfolioGroup.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: PartnerClientId
  config.api_key['PartnerClientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerClientId'] = 'Bearer'

  # Configure API key authorization: PartnerSignature
  config.api_key['PartnerSignature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerSignature'] = 'Bearer'

  # Configure API key authorization: PartnerTimestamp
  config.api_key['PartnerTimestamp'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['PartnerTimestamp'] = 'Bearer'
end

api_instance = OpenapiClient::PortfolioManagementApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup under which to patch the target asset.
target_asset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the TargetAsset to patch.
target_asset = OpenapiClient::TargetAsset.new # TargetAsset | 

begin
  # Update a TargetAsset under the specified PortfolioGroup.
  result = api_instance.update_portfolio_target_by_id(portfolio_group_id, target_asset_id, target_asset)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->update_portfolio_target_by_id: #{e}"
end
```

#### Using the update_portfolio_target_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetAsset>, Integer, Hash)> update_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id, target_asset)

```ruby
begin
  # Update a TargetAsset under the specified PortfolioGroup.
  data, status_code, headers = api_instance.update_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id, target_asset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetAsset>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PortfolioManagementApi->update_portfolio_target_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to patch the target asset. |  |
| **target_asset_id** | **String** | The ID of the TargetAsset to patch. |  |
| **target_asset** | [**TargetAsset**](TargetAsset.md) |  |  |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

