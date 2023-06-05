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

List all accounts for the user, plus balances and positions for each account.

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
brokerage_authorizations = "917c8734-8470-4a3e-a18f-57c3f2ee6631"

begin
  # List all accounts for the user, plus balances and positions for each account.
  result = SnapTrade::AccountInformation.get_all_user_holdings(
    user_id: user_id,
    user_secret: user_secret,
    brokerage_authorizations: brokerage_authorizations,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_all_user_holdings: #{e}"
end
```

#### Using the get_all_user_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
brokerage_authorizations = "917c8734-8470-4a3e-a18f-57c3f2ee6631"

begin
  # List all accounts for the user, plus balances and positions for each account.
  data, status_code, headers, response = SnapTrade::AccountInformation.get_all_user_holdings_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    brokerage_authorizations: brokerage_authorizations,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<AccountHoldings>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_all_user_holdings: #{e}"
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

## get_user_account_balance

Get all cash balances of an investment account

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Get all cash balances of an investment account
  result = SnapTrade::AccountInformation.get_user_account_balance(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_balance: #{e}"
end
```

#### Using the get_user_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Get all cash balances of an investment account
  data, status_code, headers, response = SnapTrade::AccountInformation.get_user_account_balance_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Balance>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_balance: #{e}"
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

## get_user_account_details

Return details of a specific investment account

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Return details of a specific investment account
  result = SnapTrade::AccountInformation.get_user_account_details(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_details: #{e}"
end
```

#### Using the get_user_account_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Return details of a specific investment account
  data, status_code, headers, response = SnapTrade::AccountInformation.get_user_account_details_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Account>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_details: #{e}"
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

## get_user_account_orders

Get all history of orders placed in account

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"
state = "all"

begin
  # Get all history of orders placed in account
  result = SnapTrade::AccountInformation.get_user_account_orders(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    state: state,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_orders: #{e}"
end
```

#### Using the get_user_account_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"
state = "all"

begin
  # Get all history of orders placed in account
  data, status_code, headers, response = SnapTrade::AccountInformation.get_user_account_orders_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
    state: state,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<AccountOrderRecord>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_orders: #{e}"
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

## get_user_account_positions

Get all positions of an investment account

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Get all positions of an investment account
  result = SnapTrade::AccountInformation.get_user_account_positions(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_positions: #{e}"
end
```

#### Using the get_user_account_positions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Get all positions of an investment account
  data, status_code, headers, response = SnapTrade::AccountInformation.get_user_account_positions_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Position>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_account_positions: #{e}"
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

## get_user_holdings

List balances, positions and orders for the specified account.

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

account_id = "917c8734-8470-4a3e-a18f-57c3f2ee6631"
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # List balances, positions and orders for the specified account.
  result = SnapTrade::AccountInformation.get_user_holdings(
    account_id: account_id,
    user_id: user_id,
    user_secret: user_secret,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_holdings: #{e}"
end
```

#### Using the get_user_holdings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
account_id = "917c8734-8470-4a3e-a18f-57c3f2ee6631"
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # List balances, positions and orders for the specified account.
  data, status_code, headers, response = SnapTrade::AccountInformation.get_user_holdings_with_http_info(
    account_id: account_id,
    user_id: user_id,
    user_secret: user_secret,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => AccountHoldingsAccount
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_user_holdings: #{e}"
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

## list_user_accounts

List all investment accounts for the user

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # List all investment accounts for the user
  result = SnapTrade::AccountInformation.list_user_accounts(
    user_id: user_id,
    user_secret: user_secret,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.list_user_accounts: #{e}"
end
```

#### Using the list_user_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"

begin
  # List all investment accounts for the user
  data, status_code, headers, response = SnapTrade::AccountInformation.list_user_accounts_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Account>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.list_user_accounts: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**Array&lt;Account&gt;**](Account.md)

## update_user_account

Update details of an investment account

### Example

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Update details of an investment account
  result = SnapTrade::AccountInformation.update_user_account(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.update_user_account: #{e}"
end
```

#### Using the update_user_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

```ruby
user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
account_id = "accountId_example"

begin
  # Update details of an investment account
  data, status_code, headers, response = SnapTrade::AccountInformation.update_user_account_with_http_info(
    user_id: user_id,
    user_secret: user_secret,
    account_id: account_id,
  )
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array<Account>
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.update_user_account: #{e}"
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
