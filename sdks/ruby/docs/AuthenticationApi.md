# SnapTrade::AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_snap_trade_user**](AuthenticationApi.md#delete_snap_trade_user) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user |
| [**get_user_jwt**](AuthenticationApi.md#get_user_jwt) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user&#39;s local device |
| [**list_snap_trade_users**](AuthenticationApi.md#list_snap_trade_users) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you&#39;ve registered on our platform |
| [**login_snap_trade_user**](AuthenticationApi.md#login_snap_trade_user) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal |
| [**register_snap_trade_user**](AuthenticationApi.md#register_snap_trade_user) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations |


## delete_snap_trade_user

> <DeleteUserResponse> delete_snap_trade_user(user_id)

Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user

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

api_instance = SnapTrade::AuthenticationApi.new
user_id = 'user_id_example' # String | 

begin
  # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
  result = api_instance.delete_snap_trade_user(user_id)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->delete_snap_trade_user: #{e}"
end
```

#### Using the delete_snap_trade_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteUserResponse>, Integer, Hash)> delete_snap_trade_user_with_http_info(user_id)

```ruby
begin
  # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
  data, status_code, headers = api_instance.delete_snap_trade_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteUserResponse>
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->delete_snap_trade_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |

### Return type

[**DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_jwt

> <EncryptedResponse> get_user_jwt(user_id, user_secret)

Obtains an encrypted JWT tokens that should be decrypted on a user's local device

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

api_instance = SnapTrade::AuthenticationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # Obtains an encrypted JWT tokens that should be decrypted on a user's local device
  result = api_instance.get_user_jwt(user_id, user_secret)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->get_user_jwt: #{e}"
end
```

#### Using the get_user_jwt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptedResponse>, Integer, Hash)> get_user_jwt_with_http_info(user_id, user_secret)

```ruby
begin
  # Obtains an encrypted JWT tokens that should be decrypted on a user's local device
  data, status_code, headers = api_instance.get_user_jwt_with_http_info(user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptedResponse>
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->get_user_jwt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**EncryptedResponse**](EncryptedResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_snap_trade_users

> Array&lt;String&gt; list_snap_trade_users

Get a list of all SnapTrade users you've registered on our platform

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

api_instance = SnapTrade::AuthenticationApi.new

begin
  # Get a list of all SnapTrade users you've registered on our platform
  result = api_instance.list_snap_trade_users
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->list_snap_trade_users: #{e}"
end
```

#### Using the list_snap_trade_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> list_snap_trade_users_with_http_info

```ruby
begin
  # Get a list of all SnapTrade users you've registered on our platform
  data, status_code, headers = api_instance.list_snap_trade_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->list_snap_trade_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login_snap_trade_user

> <AuthenticationLoginSnapTradeUser200Response> login_snap_trade_user(user_id, user_secret, opts)

Generate a redirect URI to securely login a user to the SnapTrade Connection Portal

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

api_instance = SnapTrade::AuthenticationApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
opts = {
  snap_trade_login_user_request_body: SnapTrade::SnapTradeLoginUserRequestBody.new # SnapTradeLoginUserRequestBody | 
}

begin
  # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
  result = api_instance.login_snap_trade_user(user_id, user_secret, opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->login_snap_trade_user: #{e}"
end
```

#### Using the login_snap_trade_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationLoginSnapTradeUser200Response>, Integer, Hash)> login_snap_trade_user_with_http_info(user_id, user_secret, opts)

```ruby
begin
  # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
  data, status_code, headers = api_instance.login_snap_trade_user_with_http_info(user_id, user_secret, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationLoginSnapTradeUser200Response>
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->login_snap_trade_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **snap_trade_login_user_request_body** | [**SnapTradeLoginUserRequestBody**](SnapTradeLoginUserRequestBody.md) |  | [optional] |

### Return type

[**AuthenticationLoginSnapTradeUser200Response**](AuthenticationLoginSnapTradeUser200Response.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## register_snap_trade_user

> <UserIDandSecret> register_snap_trade_user(snap_trade_register_user_request_body)

Register user with SnapTrade in order to create secure brokerage authorizations

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

api_instance = SnapTrade::AuthenticationApi.new
snap_trade_register_user_request_body = SnapTrade::SnapTradeRegisterUserRequestBody.new # SnapTradeRegisterUserRequestBody | 

begin
  # Register user with SnapTrade in order to create secure brokerage authorizations
  result = api_instance.register_snap_trade_user(snap_trade_register_user_request_body)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->register_snap_trade_user: #{e}"
end
```

#### Using the register_snap_trade_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserIDandSecret>, Integer, Hash)> register_snap_trade_user_with_http_info(snap_trade_register_user_request_body)

```ruby
begin
  # Register user with SnapTrade in order to create secure brokerage authorizations
  data, status_code, headers = api_instance.register_snap_trade_user_with_http_info(snap_trade_register_user_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserIDandSecret>
rescue SnapTrade::ApiError => e
  puts "Error when calling AuthenticationApi->register_snap_trade_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snap_trade_register_user_request_body** | [**SnapTradeRegisterUserRequestBody**](SnapTradeRegisterUserRequestBody.md) |  |  |

### Return type

[**UserIDandSecret**](UserIDandSecret.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

