# SnapTrade::ErrorLogsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_user_errors**](ErrorLogsApi.md#list_user_errors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users |


## list_user_errors

> <Array<UserErrorLog>> list_user_errors(user_id, user_secret)

Retrieve error logs on behalf of your SnapTrade users

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

api_instance = SnapTrade::ErrorLogsApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 

begin
  # Retrieve error logs on behalf of your SnapTrade users
  result = api_instance.list_user_errors(user_id, user_secret)
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling ErrorLogsApi->list_user_errors: #{e}"
end
```

#### Using the list_user_errors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserErrorLog>>, Integer, Hash)> list_user_errors_with_http_info(user_id, user_secret)

```ruby
begin
  # Retrieve error logs on behalf of your SnapTrade users
  data, status_code, headers = api_instance.list_user_errors_with_http_info(user_id, user_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserErrorLog>>
rescue SnapTrade::ApiError => e
  puts "Error when calling ErrorLogsApi->list_user_errors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |

### Return type

[**Array&lt;UserErrorLog&gt;**](UserErrorLog.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

