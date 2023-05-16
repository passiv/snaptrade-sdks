# OpenapiClient::TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_user_account_order**](TradingApi.md#cancel_user_account_order) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account |
| [**get_calculated_trade_impact_by_id**](TradingApi.md#get_calculated_trade_impact_by_id) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed |
| [**get_calculated_trades_impact**](TradingApi.md#get_calculated_trades_impact) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio |
| [**get_order_impact**](TradingApi.md#get_order_impact) | **POST** /trade/impact | Check impact of trades on account. |
| [**get_user_account_quotes**](TradingApi.md#get_user_account_quotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**modify_calculated_trade_by_id**](TradingApi.md#modify_calculated_trade_by_id) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed |
| [**place_calculated_trades**](TradingApi.md#place_calculated_trades) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series |
| [**place_force_order**](TradingApi.md#place_force_order) | **POST** /trade/place | Place a trade with NO validation. |
| [**place_oco_order**](TradingApi.md#place_oco_order) | **POST** /trade/oco | Place a OCO (One Cancels Other) order |
| [**place_order**](TradingApi.md#place_order) | **POST** /trade/{tradeId} | Place order |


## cancel_user_account_order

> <AccountOrderRecord> cancel_user_account_order(user_id, user_secret, account_id, trading_cancel_user_account_order_request)

Cancel open order in account

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

api_instance = OpenapiClient::TradingApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.
trading_cancel_user_account_order_request = OpenapiClient::TradingCancelUserAccountOrderRequest.new # TradingCancelUserAccountOrderRequest | The Order ID to be canceled

begin
  # Cancel open order in account
  result = api_instance.cancel_user_account_order(user_id, user_secret, account_id, trading_cancel_user_account_order_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->cancel_user_account_order: #{e}"
end
```

#### Using the cancel_user_account_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountOrderRecord>, Integer, Hash)> cancel_user_account_order_with_http_info(user_id, user_secret, account_id, trading_cancel_user_account_order_request)

```ruby
begin
  # Cancel open order in account
  data, status_code, headers = api_instance.cancel_user_account_order_with_http_info(user_id, user_secret, account_id, trading_cancel_user_account_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountOrderRecord>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->cancel_user_account_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **trading_cancel_user_account_order_request** | [**TradingCancelUserAccountOrderRequest**](TradingCancelUserAccountOrderRequest.md) | The Order ID to be canceled |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_calculated_trade_impact_by_id

> <Trade> get_calculated_trade_impact_by_id(portfolio_group_id, calculated_trade_id, trade_id)

Return details of a specific trade before it's placed

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

api_instance = OpenapiClient::TradingApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to perform rebalancing calculations
calculated_trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of calculated trade to get account impact
trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of trade object

begin
  # Return details of a specific trade before it's placed
  result = api_instance.get_calculated_trade_impact_by_id(portfolio_group_id, calculated_trade_id, trade_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_calculated_trade_impact_by_id: #{e}"
end
```

#### Using the get_calculated_trade_impact_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Trade>, Integer, Hash)> get_calculated_trade_impact_by_id_with_http_info(portfolio_group_id, calculated_trade_id, trade_id)

```ruby
begin
  # Return details of a specific trade before it's placed
  data, status_code, headers = api_instance.get_calculated_trade_impact_by_id_with_http_info(portfolio_group_id, calculated_trade_id, trade_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Trade>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_calculated_trade_impact_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |
| **trade_id** | **String** | The ID of trade object |  |

### Return type

[**Trade**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_calculated_trades_impact

> <Array<TradeImpact>> get_calculated_trades_impact(portfolio_group_id, calculated_trade_id)

Return the impact of placing a series of trades on the portfolio

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

api_instance = OpenapiClient::TradingApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to perform rebalancing calculations
calculated_trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of calculated trade to get account impact

begin
  # Return the impact of placing a series of trades on the portfolio
  result = api_instance.get_calculated_trades_impact(portfolio_group_id, calculated_trade_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_calculated_trades_impact: #{e}"
end
```

#### Using the get_calculated_trades_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TradeImpact>>, Integer, Hash)> get_calculated_trades_impact_with_http_info(portfolio_group_id, calculated_trade_id)

```ruby
begin
  # Return the impact of placing a series of trades on the portfolio
  data, status_code, headers = api_instance.get_calculated_trades_impact_with_http_info(portfolio_group_id, calculated_trade_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TradeImpact>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_calculated_trades_impact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |

### Return type

[**Array&lt;TradeImpact&gt;**](TradeImpact.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_impact

> <ManualTradeAndImpact> get_order_impact(user_id, user_secret, manual_trade_form)

Check impact of trades on account.

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

api_instance = OpenapiClient::TradingApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
manual_trade_form = OpenapiClient::ManualTradeForm.new # ManualTradeForm | 

begin
  # Check impact of trades on account.
  result = api_instance.get_order_impact(user_id, user_secret, manual_trade_form)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_order_impact: #{e}"
end
```

#### Using the get_order_impact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManualTradeAndImpact>, Integer, Hash)> get_order_impact_with_http_info(user_id, user_secret, manual_trade_form)

```ruby
begin
  # Check impact of trades on account.
  data, status_code, headers = api_instance.get_order_impact_with_http_info(user_id, user_secret, manual_trade_form)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManualTradeAndImpact>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_order_impact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **manual_trade_form** | [**ManualTradeForm**](ManualTradeForm.md) |  |  |

### Return type

[**ManualTradeAndImpact**](ManualTradeAndImpact.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user_account_quotes

> <SymbolsQuotes> get_user_account_quotes(user_id, user_secret, symbols, account_id, opts)

Get symbol quotes

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

api_instance = OpenapiClient::TradingApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
symbols = 'symbols_example' # String | List of universal_symbol_id or tickers to get quotes for.
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account to get quotes.
opts = {
  use_ticker: true # Boolean | Should be set to True if providing tickers.
}

begin
  # Get symbol quotes
  result = api_instance.get_user_account_quotes(user_id, user_secret, symbols, account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_user_account_quotes: #{e}"
end
```

#### Using the get_user_account_quotes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SymbolsQuotes>, Integer, Hash)> get_user_account_quotes_with_http_info(user_id, user_secret, symbols, account_id, opts)

```ruby
begin
  # Get symbol quotes
  data, status_code, headers = api_instance.get_user_account_quotes_with_http_info(user_id, user_secret, symbols, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SymbolsQuotes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->get_user_account_quotes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **symbols** | **String** | List of universal_symbol_id or tickers to get quotes for. |  |
| **account_id** | **String** | The ID of the account to get quotes. |  |
| **use_ticker** | **Boolean** | Should be set to True if providing tickers. | [optional] |

### Return type

[**SymbolsQuotes**](SymbolsQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_calculated_trade_by_id

> <Trade> modify_calculated_trade_by_id(portfolio_group_id, calculated_trade_id, trade_id, opts)

Modify units of a trade before it is placed

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

api_instance = OpenapiClient::TradingApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to perform rebalancing calculations
calculated_trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of calculated trade to get account impact
trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of trade object
opts = {
  trade: OpenapiClient::Trade.new # Trade | 
}

begin
  # Modify units of a trade before it is placed
  result = api_instance.modify_calculated_trade_by_id(portfolio_group_id, calculated_trade_id, trade_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->modify_calculated_trade_by_id: #{e}"
end
```

#### Using the modify_calculated_trade_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Trade>, Integer, Hash)> modify_calculated_trade_by_id_with_http_info(portfolio_group_id, calculated_trade_id, trade_id, opts)

```ruby
begin
  # Modify units of a trade before it is placed
  data, status_code, headers = api_instance.modify_calculated_trade_by_id_with_http_info(portfolio_group_id, calculated_trade_id, trade_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Trade>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->modify_calculated_trade_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |
| **trade_id** | **String** | The ID of trade object |  |
| **trade** | [**Trade**](Trade.md) |  | [optional] |

### Return type

[**Trade**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## place_calculated_trades

> <Array<TradeExecutionStatus>> place_calculated_trades(portfolio_group_id, calculated_trade_id)

Place orders for the CalculatedTrades in series

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

api_instance = OpenapiClient::TradingApi.new
portfolio_group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the PortfolioGroup to perform rebalancing calculations
calculated_trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of calculated trade to get account impact

begin
  # Place orders for the CalculatedTrades in series
  result = api_instance.place_calculated_trades(portfolio_group_id, calculated_trade_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_calculated_trades: #{e}"
end
```

#### Using the place_calculated_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TradeExecutionStatus>>, Integer, Hash)> place_calculated_trades_with_http_info(portfolio_group_id, calculated_trade_id)

```ruby
begin
  # Place orders for the CalculatedTrades in series
  data, status_code, headers = api_instance.place_calculated_trades_with_http_info(portfolio_group_id, calculated_trade_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TradeExecutionStatus>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_calculated_trades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio_group_id** | **String** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculated_trade_id** | **String** | The ID of calculated trade to get account impact |  |

### Return type

[**Array&lt;TradeExecutionStatus&gt;**](TradeExecutionStatus.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## place_force_order

> <AccountOrderRecord> place_force_order(user_id, user_secret, manual_trade_form)

Place a trade with NO validation.

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

api_instance = OpenapiClient::TradingApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
manual_trade_form = OpenapiClient::ManualTradeForm.new # ManualTradeForm | 

begin
  # Place a trade with NO validation.
  result = api_instance.place_force_order(user_id, user_secret, manual_trade_form)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_force_order: #{e}"
end
```

#### Using the place_force_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountOrderRecord>, Integer, Hash)> place_force_order_with_http_info(user_id, user_secret, manual_trade_form)

```ruby
begin
  # Place a trade with NO validation.
  data, status_code, headers = api_instance.place_force_order_with_http_info(user_id, user_secret, manual_trade_form)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountOrderRecord>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_force_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **manual_trade_form** | [**ManualTradeForm**](ManualTradeForm.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## place_oco_order

> <AccountOrderRecord> place_oco_order(user_id, user_secret, trading_place_oco_order_request)

Place a OCO (One Cancels Other) order

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

api_instance = OpenapiClient::TradingApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
trading_place_oco_order_request = OpenapiClient::TradingPlaceOCOOrderRequest.new # TradingPlaceOCOOrderRequest | 

begin
  # Place a OCO (One Cancels Other) order
  result = api_instance.place_oco_order(user_id, user_secret, trading_place_oco_order_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_oco_order: #{e}"
end
```

#### Using the place_oco_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountOrderRecord>, Integer, Hash)> place_oco_order_with_http_info(user_id, user_secret, trading_place_oco_order_request)

```ruby
begin
  # Place a OCO (One Cancels Other) order
  data, status_code, headers = api_instance.place_oco_order_with_http_info(user_id, user_secret, trading_place_oco_order_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountOrderRecord>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_oco_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **trading_place_oco_order_request** | [**TradingPlaceOCOOrderRequest**](TradingPlaceOCOOrderRequest.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## place_order

> <AccountOrderRecord> place_order(trade_id, user_id, user_secret)

Place order

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

api_instance = OpenapiClient::TradingApi.new
trade_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of trade object obtained from trade/impact endpoint
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # Place order
  result = api_instance.place_order(trade_id, user_id, user_secret)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_order: #{e}"
end
```

#### Using the place_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountOrderRecord>, Integer, Hash)> place_order_with_http_info(trade_id, user_id, user_secret)

```ruby
begin
  # Place order
  data, status_code, headers = api_instance.place_order_with_http_info(trade_id, user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountOrderRecord>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TradingApi->place_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade_id** | **String** | The ID of trade object obtained from trade/impact endpoint |  |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

