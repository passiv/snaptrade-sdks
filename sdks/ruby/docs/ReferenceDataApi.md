# SnapTrade::ReferenceDataApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_currency_exchange_rate_pair**](ReferenceDataApi.md#get_currency_exchange_rate_pair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair |
| [**get_partner_info**](ReferenceDataApi.md#get_partner_info) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner |
| [**get_security_types**](ReferenceDataApi.md#get_security_types) | **GET** /securityTypes | List of all security types. |
| [**get_stock_exchanges**](ReferenceDataApi.md#get_stock_exchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes |
| [**get_symbols**](ReferenceDataApi.md#get_symbols) | **POST** /symbols | Search for symbols |
| [**get_symbols_by_ticker**](ReferenceDataApi.md#get_symbols_by_ticker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker |
| [**list_all_brokerage_authorization_type**](ReferenceDataApi.md#list_all_brokerage_authorization_type) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types |
| [**list_all_brokerages**](ReferenceDataApi.md#list_all_brokerages) | **GET** /brokerages | List of all brokerages. |
| [**list_all_currencies**](ReferenceDataApi.md#list_all_currencies) | **GET** /currencies | List of all supported currencies |
| [**list_all_currencies_rates**](ReferenceDataApi.md#list_all_currencies_rates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies |
| [**symbol_search_user_account**](ReferenceDataApi.md#symbol_search_user_account) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring |


## get_currency_exchange_rate_pair

> <ExchangeRatePairs> get_currency_exchange_rate_pair(currency_pair)

Return the exchange rate of a currency pair

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

api_instance = SnapTrade::ReferenceDataApi.new
currency_pair = 'currency_pair_example' # String | A currency pair based on currency code for example, {CAD-USD}

begin
  # Return the exchange rate of a currency pair
  result = api_instance.get_currency_exchange_rate_pair(currency_pair)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_currency_exchange_rate_pair: #{e}"
end
```

#### Using the get_currency_exchange_rate_pair_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeRatePairs>, Integer, Hash)> get_currency_exchange_rate_pair_with_http_info(currency_pair)

```ruby
begin
  # Return the exchange rate of a currency pair
  data, status_code, headers = api_instance.get_currency_exchange_rate_pair_with_http_info(currency_pair)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeRatePairs>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_currency_exchange_rate_pair_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_pair** | **String** | A currency pair based on currency code for example, {CAD-USD} |  |

### Return type

[**ExchangeRatePairs**](ExchangeRatePairs.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_partner_info

> <PartnerData> get_partner_info

Get metadata related to Snaptrade partner

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

api_instance = SnapTrade::ReferenceDataApi.new

begin
  # Get metadata related to Snaptrade partner
  result = api_instance.get_partner_info
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_partner_info: #{e}"
end
```

#### Using the get_partner_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartnerData>, Integer, Hash)> get_partner_info_with_http_info

```ruby
begin
  # Get metadata related to Snaptrade partner
  data, status_code, headers = api_instance.get_partner_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartnerData>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_partner_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PartnerData**](PartnerData.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_types

> <Array<SecurityType>> get_security_types

List of all security types.

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

api_instance = SnapTrade::ReferenceDataApi.new

begin
  # List of all security types.
  result = api_instance.get_security_types
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_security_types: #{e}"
end
```

#### Using the get_security_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SecurityType>>, Integer, Hash)> get_security_types_with_http_info

```ruby
begin
  # List of all security types.
  data, status_code, headers = api_instance.get_security_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SecurityType>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_security_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SecurityType&gt;**](SecurityType.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stock_exchanges

> <Array<Exchange>> get_stock_exchanges

Return list of stock exchanges on Passiv and their suffixes

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

api_instance = SnapTrade::ReferenceDataApi.new

begin
  # Return list of stock exchanges on Passiv and their suffixes
  result = api_instance.get_stock_exchanges
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_stock_exchanges: #{e}"
end
```

#### Using the get_stock_exchanges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Exchange>>, Integer, Hash)> get_stock_exchanges_with_http_info

```ruby
begin
  # Return list of stock exchanges on Passiv and their suffixes
  data, status_code, headers = api_instance.get_stock_exchanges_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Exchange>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_stock_exchanges_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Exchange&gt;**](Exchange.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_symbols

> <Array<UniversalSymbol>> get_symbols(opts)

Search for symbols

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

api_instance = SnapTrade::ReferenceDataApi.new
opts = {
  symbol_query: SnapTrade::SymbolQuery.new # SymbolQuery | 
}

begin
  # Search for symbols
  result = api_instance.get_symbols(opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_symbols: #{e}"
end
```

#### Using the get_symbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniversalSymbol>>, Integer, Hash)> get_symbols_with_http_info(opts)

```ruby
begin
  # Search for symbols
  data, status_code, headers = api_instance.get_symbols_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniversalSymbol>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_symbols_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_query** | [**SymbolQuery**](SymbolQuery.md) |  | [optional] |

### Return type

[**Array&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_symbols_by_ticker

> <UniversalSymbol> get_symbols_by_ticker(ticker, opts)

Get details of a symbol by the ticker

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

api_instance = SnapTrade::ReferenceDataApi.new
ticker = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ticker of the UniversalSymbol to get.
opts = {
  symbol_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get.
}

begin
  # Get details of a symbol by the ticker
  result = api_instance.get_symbols_by_ticker(ticker, opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_symbols_by_ticker: #{e}"
end
```

#### Using the get_symbols_by_ticker_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UniversalSymbol>, Integer, Hash)> get_symbols_by_ticker_with_http_info(ticker, opts)

```ruby
begin
  # Get details of a symbol by the ticker
  data, status_code, headers = api_instance.get_symbols_by_ticker_with_http_info(ticker, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UniversalSymbol>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->get_symbols_by_ticker_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | The ticker of the UniversalSymbol to get. |  |
| **symbol_id** | **String** | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. | [optional] |

### Return type

[**UniversalSymbol**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## list_all_brokerage_authorization_type

> <Array<BrokerageAuthorizationTypeReadOnly>> list_all_brokerage_authorization_type(opts)

List of all brokerage authorization types

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

api_instance = SnapTrade::ReferenceDataApi.new
opts = {
  brokerage: 'QUESTRADE,ALPACA' # String | Comma separated value of brokerage slugs
}

begin
  # List of all brokerage authorization types
  result = api_instance.list_all_brokerage_authorization_type(opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_brokerage_authorization_type: #{e}"
end
```

#### Using the list_all_brokerage_authorization_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BrokerageAuthorizationTypeReadOnly>>, Integer, Hash)> list_all_brokerage_authorization_type_with_http_info(opts)

```ruby
begin
  # List of all brokerage authorization types
  data, status_code, headers = api_instance.list_all_brokerage_authorization_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BrokerageAuthorizationTypeReadOnly>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_brokerage_authorization_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brokerage** | **String** | Comma separated value of brokerage slugs | [optional] |

### Return type

[**Array&lt;BrokerageAuthorizationTypeReadOnly&gt;**](BrokerageAuthorizationTypeReadOnly.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_brokerages

> <Array<Brokerage>> list_all_brokerages

List of all brokerages.

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

api_instance = SnapTrade::ReferenceDataApi.new

begin
  # List of all brokerages.
  result = api_instance.list_all_brokerages
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_brokerages: #{e}"
end
```

#### Using the list_all_brokerages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Brokerage>>, Integer, Hash)> list_all_brokerages_with_http_info

```ruby
begin
  # List of all brokerages.
  data, status_code, headers = api_instance.list_all_brokerages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Brokerage>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_brokerages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Brokerage&gt;**](Brokerage.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_currencies

> <Array<Currency>> list_all_currencies

List of all supported currencies

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

api_instance = SnapTrade::ReferenceDataApi.new

begin
  # List of all supported currencies
  result = api_instance.list_all_currencies
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_currencies: #{e}"
end
```

#### Using the list_all_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Currency>>, Integer, Hash)> list_all_currencies_with_http_info

```ruby
begin
  # List of all supported currencies
  data, status_code, headers = api_instance.list_all_currencies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Currency>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_currencies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Currency&gt;**](Currency.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_currencies_rates

> <Array<ExchangeRatePairs>> list_all_currencies_rates

Return the exchange rates of all supported currencies

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

api_instance = SnapTrade::ReferenceDataApi.new

begin
  # Return the exchange rates of all supported currencies
  result = api_instance.list_all_currencies_rates
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_currencies_rates: #{e}"
end
```

#### Using the list_all_currencies_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ExchangeRatePairs>>, Integer, Hash)> list_all_currencies_rates_with_http_info

```ruby
begin
  # Return the exchange rates of all supported currencies
  data, status_code, headers = api_instance.list_all_currencies_rates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ExchangeRatePairs>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->list_all_currencies_rates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ExchangeRatePairs&gt;**](ExchangeRatePairs.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## symbol_search_user_account

> <Array<UniversalSymbol>> symbol_search_user_account(user_id, user_secret, account_id, opts)

Search for symbols that are supported by a brokerage account using a substring

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

api_instance = SnapTrade::ReferenceDataApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.
opts = {
  symbol_query: SnapTrade::SymbolQuery.new # SymbolQuery | 
}

begin
  # Search for symbols that are supported by a brokerage account using a substring
  result = api_instance.symbol_search_user_account(user_id, user_secret, account_id, opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->symbol_search_user_account: #{e}"
end
```

#### Using the symbol_search_user_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniversalSymbol>>, Integer, Hash)> symbol_search_user_account_with_http_info(user_id, user_secret, account_id, opts)

```ruby
begin
  # Search for symbols that are supported by a brokerage account using a substring
  data, status_code, headers = api_instance.symbol_search_user_account_with_http_info(user_id, user_secret, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniversalSymbol>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ReferenceDataApi->symbol_search_user_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **symbol_query** | [**SymbolQuery**](SymbolQuery.md) |  | [optional] |

### Return type

[**Array&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

