# SnapTrade::OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_option_strategy**](OptionsApi.md#get_option_strategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order |
| [**get_options_chain**](OptionsApi.md#get_options_chain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain |
| [**get_options_strategy_quote**](OptionsApi.md#get_options_strategy_quote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy |
| [**list_option_holdings**](OptionsApi.md#list_option_holdings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account |
| [**place_option_strategy**](OptionsApi.md#place_option_strategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage |


## get_option_strategy

> <StrategyQuotes> get_option_strategy(user_id, user_secret, account_id, options_get_option_strategy_request)

Creates an option strategy object that will be used to place an option strategy order

### Examples

```ruby
require 'time'
require 'snap_trade'
# setup authorization
SnapTrade.configure do |config|
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

api_instance = SnapTrade::OptionsApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.
options_get_option_strategy_request = SnapTrade::OptionsGetOptionStrategyRequest.new({underlying_symbol_id: '2bcd7cc3-e922-4976-bce1-9858296801c3', legs: [SnapTrade::OptionLeg.new], strategy_type: SnapTrade::StrategyType::CUSTOM}) # OptionsGetOptionStrategyRequest | 

begin
  # Creates an option strategy object that will be used to place an option strategy order
  result = api_instance.get_option_strategy(user_id, user_secret, account_id, options_get_option_strategy_request)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->get_option_strategy: #{e}"
end
```

#### Using the get_option_strategy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StrategyQuotes>, Integer, Hash)> get_option_strategy_with_http_info(user_id, user_secret, account_id, options_get_option_strategy_request)

```ruby
begin
  # Creates an option strategy object that will be used to place an option strategy order
  data, status_code, headers = api_instance.get_option_strategy_with_http_info(user_id, user_secret, account_id, options_get_option_strategy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StrategyQuotes>
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->get_option_strategy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **options_get_option_strategy_request** | [**OptionsGetOptionStrategyRequest**](OptionsGetOptionStrategyRequest.md) |  |  |

### Return type

[**StrategyQuotes**](StrategyQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_options_chain

> <Array<OptionChainInner>> get_options_chain(user_id, user_secret, account_id, symbol)

Get the options chain

### Examples

```ruby
require 'time'
require 'snap_trade'
# setup authorization
SnapTrade.configure do |config|
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

api_instance = SnapTrade::OptionsApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.
symbol = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Universal symbol ID if symbol

begin
  # Get the options chain
  result = api_instance.get_options_chain(user_id, user_secret, account_id, symbol)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->get_options_chain: #{e}"
end
```

#### Using the get_options_chain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OptionChainInner>>, Integer, Hash)> get_options_chain_with_http_info(user_id, user_secret, account_id, symbol)

```ruby
begin
  # Get the options chain
  data, status_code, headers = api_instance.get_options_chain_with_http_info(user_id, user_secret, account_id, symbol)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OptionChainInner>>
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->get_options_chain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **symbol** | **String** | Universal symbol ID if symbol |  |

### Return type

[**Array&lt;OptionChainInner&gt;**](OptionChainInner.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_options_strategy_quote

> <StrategyQuotes> get_options_strategy_quote(user_id, user_secret, account_id, option_strategy_id)

Get latest market data of option strategy

### Examples

```ruby
require 'time'
require 'snap_trade'
# setup authorization
SnapTrade.configure do |config|
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

api_instance = SnapTrade::OptionsApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.
option_strategy_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Option strategy id obtained from response when creating option strategy object

begin
  # Get latest market data of option strategy
  result = api_instance.get_options_strategy_quote(user_id, user_secret, account_id, option_strategy_id)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->get_options_strategy_quote: #{e}"
end
```

#### Using the get_options_strategy_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StrategyQuotes>, Integer, Hash)> get_options_strategy_quote_with_http_info(user_id, user_secret, account_id, option_strategy_id)

```ruby
begin
  # Get latest market data of option strategy
  data, status_code, headers = api_instance.get_options_strategy_quote_with_http_info(user_id, user_secret, account_id, option_strategy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StrategyQuotes>
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->get_options_strategy_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **option_strategy_id** | **String** | Option strategy id obtained from response when creating option strategy object |  |

### Return type

[**StrategyQuotes**](StrategyQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_option_holdings

> <OptionsHoldings> list_option_holdings(user_id, user_secret, account_id)

Get the options holdings in the account

### Examples

```ruby
require 'time'
require 'snap_trade'
# setup authorization
SnapTrade.configure do |config|
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

api_instance = SnapTrade::OptionsApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.

begin
  # Get the options holdings in the account
  result = api_instance.list_option_holdings(user_id, user_secret, account_id)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->list_option_holdings: #{e}"
end
```

#### Using the list_option_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OptionsHoldings>, Integer, Hash)> list_option_holdings_with_http_info(user_id, user_secret, account_id)

```ruby
begin
  # Get the options holdings in the account
  data, status_code, headers = api_instance.list_option_holdings_with_http_info(user_id, user_secret, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OptionsHoldings>
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->list_option_holdings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |

### Return type

[**OptionsHoldings**](OptionsHoldings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## place_option_strategy

> <StrategyOrderRecord> place_option_strategy(user_id, user_secret, account_id, option_strategy_id, options_place_option_strategy_request)

Place an option strategy order on the brokerage

### Examples

```ruby
require 'time'
require 'snap_trade'
# setup authorization
SnapTrade.configure do |config|
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

api_instance = SnapTrade::OptionsApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.
option_strategy_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Option strategy id obtained from response when creating option strategy object
options_place_option_strategy_request = SnapTrade::OptionsPlaceOptionStrategyRequest.new({order_type: SnapTrade::OrderStrategyExecuteBodyOrderType::LIMIT, time_in_force: SnapTrade::OrderStrategyExecuteBodyTimeInForce::DAY, price: 31.33}) # OptionsPlaceOptionStrategyRequest | 

begin
  # Place an option strategy order on the brokerage
  result = api_instance.place_option_strategy(user_id, user_secret, account_id, option_strategy_id, options_place_option_strategy_request)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->place_option_strategy: #{e}"
end
```

#### Using the place_option_strategy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StrategyOrderRecord>, Integer, Hash)> place_option_strategy_with_http_info(user_id, user_secret, account_id, option_strategy_id, options_place_option_strategy_request)

```ruby
begin
  # Place an option strategy order on the brokerage
  data, status_code, headers = api_instance.place_option_strategy_with_http_info(user_id, user_secret, account_id, option_strategy_id, options_place_option_strategy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StrategyOrderRecord>
rescue SnapTrade::ApiError => e
  puts "Error when calling OptionsApi->place_option_strategy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **option_strategy_id** | **String** | Option strategy id obtained from response when creating option strategy object |  |
| **options_place_option_strategy_request** | [**OptionsPlaceOptionStrategyRequest**](OptionsPlaceOptionStrategyRequest.md) |  |  |

### Return type

[**StrategyOrderRecord**](StrategyOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

