# SnapTrade::PortfolioManagementApi

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

Adds an asset to exclude to a portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
symbol = "VAB.TO"
raw_symbol = "VAB"
description = "VANGUARD CDN AGGREGATE BOND INDEX ETF"
currency = {
        "id" => "87b24961-b51e-4db8-9226-f198f6518a89",
        "code" => "USD",
        "name" => "US Dollar",
    }
exchange = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "code" => "TSX",
        "mic_code" => "XTSE",
        "name" => "Toronto Stock Exchange",
        "timezone" => "America/New_York",
        "start_time" => "09:30:00",
        "close_time" => "57600",
        "suffix" => ".TO",
    }
type = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "code" => "cs",
        "description" => "Common Stock",
        "is_supported" => True,
    }
currencies = [
        {
            "id" => "87b24961-b51e-4db8-9226-f198f6518a89",
            "code" => "USD",
            "name" => "US Dollar",
        }
    ]

begin
  # Adds an asset to exclude to a portfolio group
  result = SnapTrade::PortfolioManagement.add_portfolio_excluded_asset(
    portfolio_group_id: portfolio_group_id,
    id: id,
    symbol: symbol,
    raw_symbol: raw_symbol,
    description: description,
    currency: currency,
    exchange: exchange,
    type: type,
    currencies: currencies,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.add_portfolio_excluded_asset: #{e}"
end
```

#### Using the add_portfolio_excluded_asset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
symbol = "VAB.TO"
raw_symbol = "VAB"
description = "VANGUARD CDN AGGREGATE BOND INDEX ETF"
currency = {
        "id" => "87b24961-b51e-4db8-9226-f198f6518a89",
        "code" => "USD",
        "name" => "US Dollar",
    }
exchange = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "code" => "TSX",
        "mic_code" => "XTSE",
        "name" => "Toronto Stock Exchange",
        "timezone" => "America/New_York",
        "start_time" => "09:30:00",
        "close_time" => "57600",
        "suffix" => ".TO",
    }
type = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "code" => "cs",
        "description" => "Common Stock",
        "is_supported" => True,
    }
currencies = [
        {
            "id" => "87b24961-b51e-4db8-9226-f198f6518a89",
            "code" => "USD",
            "name" => "US Dollar",
        }
    ]

begin
  # Adds an asset to exclude to a portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.add_portfolio_excluded_asset_with_http_info(
    portfolio_group_id: portfolio_group_id,
    id: id,
    symbol: symbol,
    raw_symbol: raw_symbol,
    description: description,
    currency: currency,
    exchange: exchange,
    type: type,
    currencies: currencies,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => ExcludedAsset
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.add_portfolio_excluded_asset: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to exclude an asset. |  |
| **universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] |

### Return type

[**ExcludedAsset**](ExcludedAsset.md)

## create

Create new portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
name = "Combined Retirement Portfolio"

begin
  # Create new portfolio group
  result = SnapTrade::PortfolioManagement.create(
    user_id: user_id,
    user_secret: user_secret,
    id: id,
    name: name,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.create: #{e}"
end
```

#### Using the create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
name = "Combined Retirement Portfolio"

begin
  # Create new portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.create_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    id: id,
    name: name,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<PortfolioGroup>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.create: #{e}"
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

## create_asset_class

Create a new model asset class

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'


begin
  # Create a new model asset class
  result = SnapTrade::PortfolioManagement.create_asset_class
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.create_asset_class: #{e}"
end
```

#### Using the create_asset_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # Create a new model asset class
  data, status_code, headers, response = SnapTrade::PortfolioManagement.create_asset_class_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => ModelAssetClassDetails
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.create_asset_class: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

## create_model_portfolio

Creates a new model portfolio

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'


begin
  # Creates a new model portfolio
  result = SnapTrade::PortfolioManagement.create_model_portfolio
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.create_model_portfolio: #{e}"
end
```

#### Using the create_model_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # Creates a new model portfolio
  data, status_code, headers, response = SnapTrade::PortfolioManagement.create_model_portfolio_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => ModelPortfolioDetails
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.create_model_portfolio: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

## delete_asset_class

Deletes a model asset class

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Deletes a model asset class
  SnapTrade::PortfolioManagement.delete_asset_class(
    model_asset_class_id: model_asset_class_id,
  )
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_asset_class: #{e}"
end
```

#### Using the delete_asset_class_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

```ruby
model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Deletes a model asset class
  data, status_code, headers, response = SnapTrade::PortfolioManagement.delete_asset_class_with_http_info(
    model_asset_class_id: model_asset_class_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_asset_class: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_asset_class_id** | **String** | The ID of the model asset class to delete. |  |

### Return type

nil (empty response body)

## delete_excluded_asset

Unexclude an asset from a portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
symbol_id = "symbolId_example"

begin
  # Unexclude an asset from a portfolio group
  SnapTrade::PortfolioManagement.delete_excluded_asset(
    portfolio_group_id: portfolio_group_id,
    symbol_id: symbol_id,
  )
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_excluded_asset: #{e}"
end
```

#### Using the delete_excluded_asset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
symbol_id = "symbolId_example"

begin
  # Unexclude an asset from a portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.delete_excluded_asset_with_http_info(
    portfolio_group_id: portfolio_group_id,
    symbol_id: symbol_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_excluded_asset: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to unexclude an asset. |  |
| **symbol_id** | **String** | The ID of the excluded asset Symbol to delete. |  |

### Return type

nil (empty response body)

## delete_model_portfolio_by_id

Deletes a model portfolio

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Deletes a model portfolio
  SnapTrade::PortfolioManagement.delete_model_portfolio_by_id(
    model_portfolio_id: model_portfolio_id,
  )
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_model_portfolio_by_id: #{e}"
end
```

#### Using the delete_model_portfolio_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

```ruby
model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Deletes a model portfolio
  data, status_code, headers, response = SnapTrade::PortfolioManagement.delete_model_portfolio_by_id_with_http_info(
    model_portfolio_id: model_portfolio_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_model_portfolio_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_portfolio_id** | **String** | The ID of the model portfolio to delete. |  |

### Return type

nil (empty response body)

## delete_portfoli

Remove a target portfolio.

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Remove a target portfolio.
  result = SnapTrade::PortfolioManagement.delete_portfoli(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_portfoli: #{e}"
end
```

#### Using the delete_portfoli_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Remove a target portfolio.
  data, status_code, headers, response = SnapTrade::PortfolioManagement.delete_portfoli_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => PortfolioGroup
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_portfoli: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to delete. |  |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

## delete_portfolio_target_by_id

Remove a TargetAsset.

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
target_asset_id = "targetAssetId_example"

begin
  # Remove a TargetAsset.
  result = SnapTrade::PortfolioManagement.delete_portfolio_target_by_id(
    portfolio_group_id: portfolio_group_id,
    target_asset_id: target_asset_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_portfolio_target_by_id: #{e}"
end
```

#### Using the delete_portfolio_target_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
target_asset_id = "targetAssetId_example"

begin
  # Remove a TargetAsset.
  data, status_code, headers, response = SnapTrade::PortfolioManagement.delete_portfolio_target_by_id_with_http_info(
    portfolio_group_id: portfolio_group_id,
    target_asset_id: target_asset_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => TargetAsset
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.delete_portfolio_target_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to remove the target asset. |  |
| **target_asset_id** | **String** | The ID of the TargetAsset to delete. |  |

### Return type

[**TargetAsset**](TargetAsset.md)

## detail_asset_class

Get details of a model asset class

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Get details of a model asset class
  result = SnapTrade::PortfolioManagement.detail_asset_class(
    model_asset_class_id: model_asset_class_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.detail_asset_class: #{e}"
end
```

#### Using the detail_asset_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Get details of a model asset class
  data, status_code, headers, response = SnapTrade::PortfolioManagement.detail_asset_class_with_http_info(
    model_asset_class_id: model_asset_class_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => ModelAssetClassDetails
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.detail_asset_class: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_asset_class_id** | **String** | The ID of the model asset class to get. |  |

### Return type

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

## get_calculated_trade_by_id

Return an individual trade

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"
trade_id = "TradeId_example"

begin
  # Return an individual trade
  result = SnapTrade::PortfolioManagement.get_calculated_trade_by_id(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
    trade_id: trade_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_calculated_trade_by_id: #{e}"
end
```

#### Using the get_calculated_trade_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
calculated_trade_id = "calculatedTradeId_example"
trade_id = "TradeId_example"

begin
  # Return an individual trade
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_calculated_trade_by_id_with_http_info(
    portfolio_group_id: portfolio_group_id,
    calculated_trade_id: calculated_trade_id,
    trade_id: trade_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Trade>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_calculated_trade_by_id: #{e}"
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

## get_model_details_by_id

Get details of a model portfolio

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Get details of a model portfolio
  result = SnapTrade::PortfolioManagement.get_model_details_by_id(
    model_portfolio_id: model_portfolio_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_model_details_by_id: #{e}"
end
```

#### Using the get_model_details_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"

begin
  # Get details of a model portfolio
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_model_details_by_id_with_http_info(
    model_portfolio_id: model_portfolio_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => ModelPortfolioDetails
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_model_details_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_portfolio_id** | **String** | The ID of the model portfolio to get. |  |

### Return type

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

## get_portfolio_balances

Get sum of cash balances in portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Get sum of cash balances in portfolio group
  result = SnapTrade::PortfolioManagement.get_portfolio_balances(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_balances: #{e}"
end
```

#### Using the get_portfolio_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Get sum of cash balances in portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_portfolio_balances_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Balance>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_balances: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**Array&lt;Balance&gt;**](Balance.md)

## get_portfolio_details_by_id

Get details of a target portfolio

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Get details of a target portfolio
  result = SnapTrade::PortfolioManagement.get_portfolio_details_by_id(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_details_by_id: #{e}"
end
```

#### Using the get_portfolio_details_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Get details of a target portfolio
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_portfolio_details_by_id_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => PortfolioGroup
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_details_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to get. |  |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

## get_portfolio_info

Return a whole bunch of relevant information relating to a portfolio group.

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Return a whole bunch of relevant information relating to a portfolio group.
  result = SnapTrade::PortfolioManagement.get_portfolio_info(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_info: #{e}"
end
```

#### Using the get_portfolio_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Return a whole bunch of relevant information relating to a portfolio group.
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_portfolio_info_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => PortfolioGroupInfo
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**PortfolioGroupInfo**](PortfolioGroupInfo.md)

## get_portfolio_settings

Get portfolio group settings

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Get portfolio group settings
  result = SnapTrade::PortfolioManagement.get_portfolio_settings(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_settings: #{e}"
end
```

#### Using the get_portfolio_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Get portfolio group settings
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_portfolio_settings_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => PortfolioGroupSettings
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_settings: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to get the settings. |  |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

## get_portfolio_target_by_id

Get a specific target from a portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
target_asset_id = "targetAssetId_example"

begin
  # Get a specific target from a portfolio group
  result = SnapTrade::PortfolioManagement.get_portfolio_target_by_id(
    portfolio_group_id: portfolio_group_id,
    target_asset_id: target_asset_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_target_by_id: #{e}"
end
```

#### Using the get_portfolio_target_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
target_asset_id = "targetAssetId_example"

begin
  # Get a specific target from a portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_portfolio_target_by_id_with_http_info(
    portfolio_group_id: portfolio_group_id,
    target_asset_id: target_asset_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => TargetAsset
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_target_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to get the target asset. |  |
| **target_asset_id** | **String** | The ID of the TargetAsset to get. |  |

### Return type

[**TargetAsset**](TargetAsset.md)

## get_portfolio_targets

Get all target assets under the specified PortfolioGroup.

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Get all target assets under the specified PortfolioGroup.
  result = SnapTrade::PortfolioManagement.get_portfolio_targets(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_targets: #{e}"
end
```

#### Using the get_portfolio_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Get all target assets under the specified PortfolioGroup.
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_portfolio_targets_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<TargetAsset>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portfolio_targets: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**Array&lt;TargetAsset&gt;**](TargetAsset.md)

## get_portoflio_excluded_assets

Get an array of excluded assets associated with a portfolio group\\

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Get an array of excluded assets associated with a portfolio group\\
  result = SnapTrade::PortfolioManagement.get_portoflio_excluded_assets(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portoflio_excluded_assets: #{e}"
end
```

#### Using the get_portoflio_excluded_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Get an array of excluded assets associated with a portfolio group\\
  data, status_code, headers, response = SnapTrade::PortfolioManagement.get_portoflio_excluded_assets_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<ExcludedAsset>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.get_portoflio_excluded_assets: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which the excluded assets are linked. |  |

### Return type

[**Array&lt;ExcludedAsset&gt;**](ExcludedAsset.md)

## import_model_portfolio

Import target allocation based on portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Import target allocation based on portfolio group
  result = SnapTrade::PortfolioManagement.import_model_portfolio(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.import_model_portfolio: #{e}"
end
```

#### Using the import_model_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Import target allocation based on portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.import_model_portfolio_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<TargetAsset>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.import_model_portfolio: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |

### Return type

[**Array&lt;TargetAsset&gt;**](TargetAsset.md)

## list

List all portfolio groups

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # List all portfolio groups
  result = SnapTrade::PortfolioManagement.list(
    user_id: user_id,
    user_secret: user_secret,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list: #{e}"
end
```

#### Using the list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # List all portfolio groups
  data, status_code, headers, response = SnapTrade::PortfolioManagement.list_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<PortfolioGroup>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**Array&lt;PortfolioGroup&gt;**](PortfolioGroup.md)

## list_asset_classes

List of model asset class

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'


begin
  # List of model asset class
  result = SnapTrade::PortfolioManagement.list_asset_classes
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_asset_classes: #{e}"
end
```

#### Using the list_asset_classes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # List of model asset class
  data, status_code, headers, response = SnapTrade::PortfolioManagement.list_asset_classes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<ModelAssetClassDetails>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_asset_classes: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ModelAssetClassDetails&gt;**](ModelAssetClassDetails.md)

## list_calculated_trades

List of trades to make to rebalance portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # List of trades to make to rebalance portfolio group
  result = SnapTrade::PortfolioManagement.list_calculated_trades(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_calculated_trades: #{e}"
end
```

#### Using the list_calculated_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # List of trades to make to rebalance portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.list_calculated_trades_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => CalculatedTrade
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_calculated_trades: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |

### Return type

[**CalculatedTrade**](CalculatedTrade.md)

## list_model_portfolio

List of model portfolio

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'


begin
  # List of model portfolio
  result = SnapTrade::PortfolioManagement.list_model_portfolio
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_model_portfolio: #{e}"
end
```

#### Using the list_model_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # List of model portfolio
  data, status_code, headers, response = SnapTrade::PortfolioManagement.list_model_portfolio_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<ModelPortfolioDetails>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_model_portfolio: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ModelPortfolioDetails&gt;**](ModelPortfolioDetails.md)

## list_portfolio_accounts

Get all accounts associated with a portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Get all accounts associated with a portfolio group
  result = SnapTrade::PortfolioManagement.list_portfolio_accounts(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_portfolio_accounts: #{e}"
end
```

#### Using the list_portfolio_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Get all accounts associated with a portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.list_portfolio_accounts_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Account>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.list_portfolio_accounts: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which the accounts are linked. |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

## modify_model_portfolio_by_id

Updates model portfolio object

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
model_portfolio = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "name" => "Passiv 5x Aggressive Growth Fund",
        "model_type" => -1,
    }
model_portfolio_security = [
        {
            "percent" => 100,
        }
    ]
model_portfolio_asset_class = [
        {
            "percent" => 100,
        }
    ]

begin
  # Updates model portfolio object
  SnapTrade::PortfolioManagement.modify_model_portfolio_by_id(
    model_portfolio_id: model_portfolio_id,
    model_portfolio: model_portfolio,
    model_portfolio_security: model_portfolio_security,
    model_portfolio_asset_class: model_portfolio_asset_class,
  )
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.modify_model_portfolio_by_id: #{e}"
end
```

#### Using the modify_model_portfolio_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

```ruby
model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
model_portfolio = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "name" => "Passiv 5x Aggressive Growth Fund",
        "model_type" => -1,
    }
model_portfolio_security = [
        {
            "percent" => 100,
        }
    ]
model_portfolio_asset_class = [
        {
            "percent" => 100,
        }
    ]

begin
  # Updates model portfolio object
  data, status_code, headers, response = SnapTrade::PortfolioManagement.modify_model_portfolio_by_id_with_http_info(
    model_portfolio_id: model_portfolio_id,
    model_portfolio: model_portfolio,
    model_portfolio_security: model_portfolio_security,
    model_portfolio_asset_class: model_portfolio_asset_class,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.modify_model_portfolio_by_id: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_portfolio_id** | **String** | The ID of the model portfolio to update. |  |
| **model_portfolio_details** | [**ModelPortfolioDetails**](ModelPortfolioDetails.md) | Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array |  |

### Return type

nil (empty response body)

## save_portfolio

Update an existing target portfolio.

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
name = "Combined Retirement Portfolio"

begin
  # Update an existing target portfolio.
  result = SnapTrade::PortfolioManagement.save_portfolio(
    portfolio_group_id: portfolio_group_id,
    id: id,
    name: name,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.save_portfolio: #{e}"
end
```

#### Using the save_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
name = "Combined Retirement Portfolio"

begin
  # Update an existing target portfolio.
  data, status_code, headers, response = SnapTrade::PortfolioManagement.save_portfolio_with_http_info(
    portfolio_group_id: portfolio_group_id,
    id: id,
    name: name,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => PortfolioGroup
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.save_portfolio: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to update. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

## search_portfolio_symbols

Search for symbols limited to brokerages under the specified portfolio group

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
substring = "apple"

begin
  # Search for symbols limited to brokerages under the specified portfolio group
  result = SnapTrade::PortfolioManagement.search_portfolio_symbols(
    portfolio_group_id: portfolio_group_id,
    substring: substring,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.search_portfolio_symbols: #{e}"
end
```

#### Using the search_portfolio_symbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
substring = "apple"

begin
  # Search for symbols limited to brokerages under the specified portfolio group
  data, status_code, headers, response = SnapTrade::PortfolioManagement.search_portfolio_symbols_with_http_info(
    portfolio_group_id: portfolio_group_id,
    substring: substring,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<UniversalSymbol>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.search_portfolio_symbols: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to search under |  |
| **symbol_query** | [**SymbolQuery**](SymbolQuery.md) |  | [optional] |

### Return type

[**Array&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

## set_portfolio_targets

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
body = [
        {
            "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
            "percent" => 90,
            "is_supported" => True,
            "is_excluded" => True,
        }
    ]

begin
  # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
  result = SnapTrade::PortfolioManagement.set_portfolio_targets(
    portfolio_group_id: portfolio_group_id,
    body: body,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.set_portfolio_targets: #{e}"
end
```

#### Using the set_portfolio_targets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
body = [
        {
            "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
            "percent" => 90,
            "is_supported" => True,
            "is_excluded" => True,
        }
    ]

begin
  # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
  data, status_code, headers, response = SnapTrade::PortfolioManagement.set_portfolio_targets_with_http_info(
    portfolio_group_id: portfolio_group_id,
    body: body,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<TargetAsset>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.set_portfolio_targets: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to create the target asset. |  |
| **target_asset** | [**Array&lt;TargetAsset&gt;**](TargetAsset.md) |  | [optional] |

### Return type

[**Array&lt;TargetAsset&gt;**](TargetAsset.md)

## update_asset_class

Updates model asset class objects

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
model_asset_class = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "name" => "Bonds",
    }
model_asset_class_target = [
        {
        }
    ]

begin
  # Updates model asset class objects
  SnapTrade::PortfolioManagement.update_asset_class(
    model_asset_class_id: model_asset_class_id,
    model_asset_class: model_asset_class,
    model_asset_class_target: model_asset_class_target,
  )
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.update_asset_class: #{e}"
end
```

#### Using the update_asset_class_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

```ruby
model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
model_asset_class = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "name" => "Bonds",
    }
model_asset_class_target = [
        {
        }
    ]

begin
  # Updates model asset class objects
  data, status_code, headers, response = SnapTrade::PortfolioManagement.update_asset_class_with_http_info(
    model_asset_class_id: model_asset_class_id,
    model_asset_class: model_asset_class,
    model_asset_class_target: model_asset_class_target,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.update_asset_class: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_asset_class_id** | **String** | The ID of the model asset class to update. |  |
| **model_asset_class_details** | [**ModelAssetClassDetails**](ModelAssetClassDetails.md) | Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array |  |

### Return type

nil (empty response body)

## update_portfolio_settings

Updates portfolio group settings

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"

begin
  # Updates portfolio group settings
  result = SnapTrade::PortfolioManagement.update_portfolio_settings(
    portfolio_group_id: portfolio_group_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.update_portfolio_settings: #{e}"
end
```

#### Using the update_portfolio_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"

begin
  # Updates portfolio group settings
  data, status_code, headers, response = SnapTrade::PortfolioManagement.update_portfolio_settings_with_http_info(
    portfolio_group_id: portfolio_group_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => PortfolioGroupSettings
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.update_portfolio_settings: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup under which to patch the settings. |  |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

## update_portfolio_target_by_id

Update a TargetAsset under the specified PortfolioGroup.

### Example

```ruby
require 'snap_trade'

SnapTrade.client_id = 'YOUR API KEY'
SnapTrade.signature = 'YOUR API KEY'
SnapTrade.timestamp = 'YOUR API KEY'

portfolio_group_id = "portfolioGroupId_example"
target_asset_id = "targetAssetId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
symbol = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "symbol" => "VAB.TO",
        "raw_symbol" => "VAB",
        "description" => "VANGUARD CDN AGGREGATE BOND INDEX ETF",
    }
percent = 90
is_supported = True
is_excluded = True

begin
  # Update a TargetAsset under the specified PortfolioGroup.
  result = SnapTrade::PortfolioManagement.update_portfolio_target_by_id(
    portfolio_group_id: portfolio_group_id,
    target_asset_id: target_asset_id,
    id: id,
    symbol: symbol,
    percent: percent,
    is_supported: is_supported,
    is_excluded: is_excluded,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.update_portfolio_target_by_id: #{e}"
end
```

#### Using the update_portfolio_target_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
portfolio_group_id = "portfolioGroupId_example"
target_asset_id = "targetAssetId_example"
id = "2bcd7cc3-e922-4976-bce1-9858296801c3"
symbol = {
        "id" => "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "symbol" => "VAB.TO",
        "raw_symbol" => "VAB",
        "description" => "VANGUARD CDN AGGREGATE BOND INDEX ETF",
    }
percent = 90
is_supported = True
is_excluded = True

begin
  # Update a TargetAsset under the specified PortfolioGroup.
  data, status_code, headers, response = SnapTrade::PortfolioManagement.update_portfolio_target_by_id_with_http_info(
    portfolio_group_id: portfolio_group_id,
    target_asset_id: target_asset_id,
    id: id,
    symbol: symbol,
    percent: percent,
    is_supported: is_supported,
    is_excluded: is_excluded,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => TargetAsset
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::PortfolioManagement.update_portfolio_target_by_id: #{e}"
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

