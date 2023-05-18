# SnapTrade::AccountInformationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_user_holdings**](AccountInformationApi.md#get_all_user_holdings) | **GET** /holdings | List all accounts for the user, plus balances and positions for each account. |
| [**get_user_account_balance**](AccountInformationApi.md#get_user_account_balance) | **GET** /accounts/{accountId}/balances | Get all cash balances of an investment account |
| [**get_user_account_details**](AccountInformationApi.md#get_user_account_details) | **GET** /accounts/{accountId} | Return details of a specific investment account |
| [**get_user_account_orders**](AccountInformationApi.md#get_user_account_orders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account |
| [**get_user_account_positions**](AccountInformationApi.md#get_user_account_positions) | **GET** /accounts/{accountId}/positions | Get all positions of an investment account |
| [**get_user_holdings**](AccountInformationApi.md#get_user_holdings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account. |
| [**list_user_accounts**](AccountInformationApi.md#list_user_accounts) | **GET** /accounts | List all investment accounts for the user |
| [**update_user_account**](AccountInformationApi.md#update_user_account) | **PUT** /accounts/{accountId} | Update details of an investment account |


## get_all_user_holdings

> <Array<AccountHoldings>> get_all_user_holdings(user_id, user_secret, opts)

List all accounts for the user, plus balances and positions for each account.

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

api_instance = SnapTrade::AccountInformationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
opts = {
  brokerage_authorizations: '917c8734-8470-4a3e-a18f-57c3f2ee6631' # String | Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations).
}

begin
  # List all accounts for the user, plus balances and positions for each account.
  result = api_instance.get_all_user_holdings(user_id, user_secret, opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_all_user_holdings: #{e}"
end
```

#### Using the get_all_user_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AccountHoldings>>, Integer, Hash)> get_all_user_holdings_with_http_info(user_id, user_secret, opts)

```ruby
begin
  # List all accounts for the user, plus balances and positions for each account.
  data, status_code, headers = api_instance.get_all_user_holdings_with_http_info(user_id, user_secret, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AccountHoldings>>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_all_user_holdings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **brokerage_authorizations** | **String** | Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations). | [optional] |

### Return type

[**Array&lt;AccountHoldings&gt;**](AccountHoldings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_account_balance

> <Array<Balance>> get_user_account_balance(user_id, user_secret, account_id)

Get all cash balances of an investment account

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

api_instance = SnapTrade::AccountInformationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.

begin
  # Get all cash balances of an investment account
  result = api_instance.get_user_account_balance(user_id, user_secret, account_id)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_balance: #{e}"
end
```

#### Using the get_user_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Balance>>, Integer, Hash)> get_user_account_balance_with_http_info(user_id, user_secret, account_id)

```ruby
begin
  # Get all cash balances of an investment account
  data, status_code, headers = api_instance.get_user_account_balance_with_http_info(user_id, user_secret, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Balance>>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |

### Return type

[**Array&lt;Balance&gt;**](Balance.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_user_account_details

> <Array<Account>> get_user_account_details(user_id, user_secret, account_id)

Return details of a specific investment account

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

api_instance = SnapTrade::AccountInformationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account to get detail of.

begin
  # Return details of a specific investment account
  result = api_instance.get_user_account_details(user_id, user_secret, account_id)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_details: #{e}"
end
```

#### Using the get_user_account_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> get_user_account_details_with_http_info(user_id, user_secret, account_id)

```ruby
begin
  # Return details of a specific investment account
  data, status_code, headers = api_instance.get_user_account_details_with_http_info(user_id, user_secret, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account to get detail of. |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_account_orders

> <Array<AccountOrderRecord>> get_user_account_orders(user_id, user_secret, account_id, opts)

Get all history of orders placed in account

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

api_instance = SnapTrade::AccountInformationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.
opts = {
  state: 'all' # String | defaults value is set to \"all\"
}

begin
  # Get all history of orders placed in account
  result = api_instance.get_user_account_orders(user_id, user_secret, account_id, opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_orders: #{e}"
end
```

#### Using the get_user_account_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AccountOrderRecord>>, Integer, Hash)> get_user_account_orders_with_http_info(user_id, user_secret, account_id, opts)

```ruby
begin
  # Get all history of orders placed in account
  data, status_code, headers = api_instance.get_user_account_orders_with_http_info(user_id, user_secret, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AccountOrderRecord>>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |
| **state** | **String** | defaults value is set to \&quot;all\&quot; | [optional] |

### Return type

[**Array&lt;AccountOrderRecord&gt;**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_account_positions

> <Array<Position>> get_user_account_positions(user_id, user_secret, account_id)

Get all positions of an investment account

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

api_instance = SnapTrade::AccountInformationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account get positions.

begin
  # Get all positions of an investment account
  result = api_instance.get_user_account_positions(user_id, user_secret, account_id)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_positions: #{e}"
end
```

#### Using the get_user_account_positions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Position>>, Integer, Hash)> get_user_account_positions_with_http_info(user_id, user_secret, account_id)

```ruby
begin
  # Get all positions of an investment account
  data, status_code, headers = api_instance.get_user_account_positions_with_http_info(user_id, user_secret, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Position>>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_account_positions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account get positions. |  |

### Return type

[**Array&lt;Position&gt;**](Position.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_user_holdings

> <AccountHoldingsAccount> get_user_holdings(account_id, user_id, user_secret)

List balances, positions and orders for the specified account.

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

api_instance = SnapTrade::AccountInformationApi.new
account_id = '917c8734-8470-4a3e-a18f-57c3f2ee6631' # String | The ID of the account to fetch holdings for.
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # List balances, positions and orders for the specified account.
  result = api_instance.get_user_holdings(account_id, user_id, user_secret)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_holdings: #{e}"
end
```

#### Using the get_user_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountHoldingsAccount>, Integer, Hash)> get_user_holdings_with_http_info(account_id, user_id, user_secret)

```ruby
begin
  # List balances, positions and orders for the specified account.
  data, status_code, headers = api_instance.get_user_holdings_with_http_info(account_id, user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountHoldingsAccount>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->get_user_holdings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the account to fetch holdings for. |  |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**AccountHoldingsAccount**](AccountHoldingsAccount.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_accounts

> <Array<Account>> list_user_accounts(user_id, user_secret)

List all investment accounts for the user

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

api_instance = SnapTrade::AccountInformationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # List all investment accounts for the user
  result = api_instance.list_user_accounts(user_id, user_secret)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->list_user_accounts: #{e}"
end
```

#### Using the list_user_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> list_user_accounts_with_http_info(user_id, user_secret)

```ruby
begin
  # List all investment accounts for the user
  data, status_code, headers = api_instance.list_user_accounts_with_http_info(user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->list_user_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_account

> <Array<Account>> update_user_account(user_id, user_secret, account_id)

Update details of an investment account

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

api_instance = SnapTrade::AccountInformationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the account to update.

begin
  # Update details of an investment account
  result = api_instance.update_user_account(user_id, user_secret, account_id)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->update_user_account: #{e}"
end
```

#### Using the update_user_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Account>>, Integer, Hash)> update_user_account_with_http_info(user_id, user_secret, account_id)

```ruby
begin
  # Update details of an investment account
  data, status_code, headers = api_instance.update_user_account_with_http_info(user_id, user_secret, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Account>>
rescue SnapTrade::ApiError => e
  puts "Error when calling AccountInformationApi->update_user_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **account_id** | **String** | The ID of the account to update. |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

