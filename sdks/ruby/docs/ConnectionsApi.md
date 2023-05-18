# SnapTrade::ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**detail_brokerage_authorization**](ConnectionsApi.md#detail_brokerage_authorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user |
| [**list_brokerage_authorizations**](ConnectionsApi.md#list_brokerage_authorizations) | **GET** /authorizations | List all brokerage authorizations for the user |
| [**remove_brokerage_authorization**](ConnectionsApi.md#remove_brokerage_authorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization. |
| [**session_events**](ConnectionsApi.md#session_events) | **GET** /sessionEvents | List all session events for the partner |


## detail_brokerage_authorization

> <BrokerageAuthorization> detail_brokerage_authorization(authorization_id, user_id, user_secret)

Get detail of a specific brokerage authorizations for the user

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

api_instance = SnapTrade::ConnectionsApi.new
authorization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of a brokerage authorization object.
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # Get detail of a specific brokerage authorizations for the user
  result = api_instance.detail_brokerage_authorization(authorization_id, user_id, user_secret)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->detail_brokerage_authorization: #{e}"
end
```

#### Using the detail_brokerage_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrokerageAuthorization>, Integer, Hash)> detail_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret)

```ruby
begin
  # Get detail of a specific brokerage authorizations for the user
  data, status_code, headers = api_instance.detail_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrokerageAuthorization>
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->detail_brokerage_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_id** | **String** | The ID of a brokerage authorization object. |  |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**BrokerageAuthorization**](BrokerageAuthorization.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_brokerage_authorizations

> <Array<BrokerageAuthorization>> list_brokerage_authorizations(user_id, user_secret)

List all brokerage authorizations for the user

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

api_instance = SnapTrade::ConnectionsApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # List all brokerage authorizations for the user
  result = api_instance.list_brokerage_authorizations(user_id, user_secret)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->list_brokerage_authorizations: #{e}"
end
```

#### Using the list_brokerage_authorizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BrokerageAuthorization>>, Integer, Hash)> list_brokerage_authorizations_with_http_info(user_id, user_secret)

```ruby
begin
  # List all brokerage authorizations for the user
  data, status_code, headers = api_instance.list_brokerage_authorizations_with_http_info(user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BrokerageAuthorization>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->list_brokerage_authorizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**Array&lt;BrokerageAuthorization&gt;**](BrokerageAuthorization.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_brokerage_authorization

> remove_brokerage_authorization(authorization_id, user_id, user_secret)

Remove a brokerage authorization.

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

api_instance = SnapTrade::ConnectionsApi.new
authorization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the Authorization to delete.
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # Remove a brokerage authorization.
  api_instance.remove_brokerage_authorization(authorization_id, user_id, user_secret)
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->remove_brokerage_authorization: #{e}"
end
```

#### Using the remove_brokerage_authorization_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret)

```ruby
begin
  # Remove a brokerage authorization.
  data, status_code, headers = api_instance.remove_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->remove_brokerage_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_id** | **String** | The ID of the Authorization to delete. |  |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## session_events

> <Array<ConnectionsSessionEvents200ResponseInner>> session_events(partner_client_id, opts)

List all session events for the partner

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

api_instance = SnapTrade::ConnectionsApi.new
partner_client_id = 'partner_client_id_example' # String | 
opts = {
  user_id: 'user_id_example', # String | Optional comma seperated list of user IDs used to filter the request on specific users
  session_id: 'session_id_example' # String | Optional comma seperated list of session IDs used to filter the request on specific users
}

begin
  # List all session events for the partner
  result = api_instance.session_events(partner_client_id, opts)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->session_events: #{e}"
end
```

#### Using the session_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConnectionsSessionEvents200ResponseInner>>, Integer, Hash)> session_events_with_http_info(partner_client_id, opts)

```ruby
begin
  # List all session events for the partner
  data, status_code, headers = api_instance.session_events_with_http_info(partner_client_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConnectionsSessionEvents200ResponseInner>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ConnectionsApi->session_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner_client_id** | **String** |  |  |
| **user_id** | **String** | Optional comma seperated list of user IDs used to filter the request on specific users | [optional] |
| **session_id** | **String** | Optional comma seperated list of session IDs used to filter the request on specific users | [optional] |

### Return type

[**Array&lt;ConnectionsSessionEvents200ResponseInner&gt;**](ConnectionsSessionEvents200ResponseInner.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

