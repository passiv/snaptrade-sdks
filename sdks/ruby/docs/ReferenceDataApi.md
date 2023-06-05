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

Return the exchange rate of a currency pair

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

currency_pair = "currencyPair_example"

begin
  # Return the exchange rate of a currency pair
  result = SnapTrade::ReferenceData.get_currency_exchange_rate_pair(
    currency_pair: currency_pair,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_currency_exchange_rate_pair: #{e}"
end
```

#### Using the get_currency_exchange_rate_pair_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
currency_pair = "currencyPair_example"

begin
  # Return the exchange rate of a currency pair
  data, status_code, headers, response = SnapTrade::ReferenceData.get_currency_exchange_rate_pair_with_http_info(
    currency_pair: currency_pair,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => ExchangeRatePairs
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_currency_exchange_rate_pair: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_pair** | **String** | A currency pair based on currency code for example, {CAD-USD} |  |

### Return type

[**ExchangeRatePairs**](ExchangeRatePairs.md)

## get_partner_info

Get metadata related to Snaptrade partner

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"


begin
  # Get metadata related to Snaptrade partner
  result = SnapTrade::ReferenceData.get_partner_info
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_partner_info: #{e}"
end
```

#### Using the get_partner_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # Get metadata related to Snaptrade partner
  data, status_code, headers, response = SnapTrade::ReferenceData.get_partner_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => PartnerData
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_partner_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PartnerData**](PartnerData.md)

## get_security_types

List of all security types.

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"


begin
  # List of all security types.
  result = SnapTrade::ReferenceData.get_security_types
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_security_types: #{e}"
end
```

#### Using the get_security_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # List of all security types.
  data, status_code, headers, response = SnapTrade::ReferenceData.get_security_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<SecurityType>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_security_types: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SecurityType&gt;**](SecurityType.md)

## get_stock_exchanges

Return list of stock exchanges on Passiv and their suffixes

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"


begin
  # Return list of stock exchanges on Passiv and their suffixes
  result = SnapTrade::ReferenceData.get_stock_exchanges
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_stock_exchanges: #{e}"
end
```

#### Using the get_stock_exchanges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # Return list of stock exchanges on Passiv and their suffixes
  data, status_code, headers, response = SnapTrade::ReferenceData.get_stock_exchanges_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Exchange>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_stock_exchanges: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Exchange&gt;**](Exchange.md)

## get_symbols

Search for symbols

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

substring = "apple"

begin
  # Search for symbols
  result = SnapTrade::ReferenceData.get_symbols(
    substring: substring,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_symbols: #{e}"
end
```

#### Using the get_symbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
substring = "apple"

begin
  # Search for symbols
  data, status_code, headers, response = SnapTrade::ReferenceData.get_symbols_with_http_info(
    substring: substring,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<UniversalSymbol>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_symbols: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol_query** | [**SymbolQuery**](SymbolQuery.md) |  | [optional] |

### Return type

[**Array&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

## get_symbols_by_ticker

Get details of a symbol by the ticker

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

ticker = "ticker_example"
symbol_id = "046b6c7f-0b8a-43b9-b35d-6489e6daee91"

begin
  # Get details of a symbol by the ticker
  result = SnapTrade::ReferenceData.get_symbols_by_ticker(
    ticker: ticker,
    symbol_id: symbol_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_symbols_by_ticker: #{e}"
end
```

#### Using the get_symbols_by_ticker_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
ticker = "ticker_example"
symbol_id = "046b6c7f-0b8a-43b9-b35d-6489e6daee91"

begin
  # Get details of a symbol by the ticker
  data, status_code, headers, response = SnapTrade::ReferenceData.get_symbols_by_ticker_with_http_info(
    ticker: ticker,
    symbol_id: symbol_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => UniversalSymbol
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.get_symbols_by_ticker: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ticker** | **String** | The ticker of the UniversalSymbol to get. |  |
| **symbol_id** | **String** | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. | [optional] |

### Return type

[**UniversalSymbol**](UniversalSymbol.md)

## list_all_brokerage_authorization_type

List of all brokerage authorization types

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

brokerage = "QUESTRADE,ALPACA"

begin
  # List of all brokerage authorization types
  result = SnapTrade::ReferenceData.list_all_brokerage_authorization_type(
    brokerage: brokerage,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_brokerage_authorization_type: #{e}"
end
```

#### Using the list_all_brokerage_authorization_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
brokerage = "QUESTRADE,ALPACA"

begin
  # List of all brokerage authorization types
  data, status_code, headers, response = SnapTrade::ReferenceData.list_all_brokerage_authorization_type_with_http_info(
    brokerage: brokerage,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<BrokerageAuthorizationTypeReadOnly>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_brokerage_authorization_type: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brokerage** | **String** | Comma separated value of brokerage slugs | [optional] |

### Return type

[**Array&lt;BrokerageAuthorizationTypeReadOnly&gt;**](BrokerageAuthorizationTypeReadOnly.md)

## list_all_brokerages

List of all brokerages.

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"


begin
  # List of all brokerages.
  result = SnapTrade::ReferenceData.list_all_brokerages
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_brokerages: #{e}"
end
```

#### Using the list_all_brokerages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # List of all brokerages.
  data, status_code, headers, response = SnapTrade::ReferenceData.list_all_brokerages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Brokerage>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_brokerages: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Brokerage&gt;**](Brokerage.md)

## list_all_currencies

List of all supported currencies

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"


begin
  # List of all supported currencies
  result = SnapTrade::ReferenceData.list_all_currencies
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_currencies: #{e}"
end
```

#### Using the list_all_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # List of all supported currencies
  data, status_code, headers, response = SnapTrade::ReferenceData.list_all_currencies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Currency>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_currencies: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Currency&gt;**](Currency.md)

## list_all_currencies_rates

Return the exchange rates of all supported currencies

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"


begin
  # Return the exchange rates of all supported currencies
  result = SnapTrade::ReferenceData.list_all_currencies_rates
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_currencies_rates: #{e}"
end
```

#### Using the list_all_currencies_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby

begin
  # Return the exchange rates of all supported currencies
  data, status_code, headers, response = SnapTrade::ReferenceData.list_all_currencies_rates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<ExchangeRatePairs>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.list_all_currencies_rates: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;ExchangeRatePairs&gt;**](ExchangeRatePairs.md)

## symbol_search_user_account

Search for symbols that are supported by a brokerage account using a substring

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"
substring = "apple"

begin
  # Search for symbols that are supported by a brokerage account using a substring
  result = SnapTrade::ReferenceData.symbol_search_user_account(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    substring: substring,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.symbol_search_user_account: #{e}"
end
```

#### Using the symbol_search_user_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"
substring = "apple"

begin
  # Search for symbols that are supported by a brokerage account using a substring
  data, status_code, headers, response = SnapTrade::ReferenceData.symbol_search_user_account_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    substring: substring,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<UniversalSymbol>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::ReferenceData.symbol_search_user_account: #{e}"
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
