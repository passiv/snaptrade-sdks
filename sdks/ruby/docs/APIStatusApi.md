# SnapTrade::APIStatusApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check**](APIStatusApi.md#check) | **GET** / | Get API Status |


## check

> <Status> check

Get API Status

Check whether the API is operational and verify timestamps.

### Examples

```ruby
require 'time'
require 'snap_trade'

api_instance = SnapTrade::APIStatusApi.new

begin
  # Get API Status
  result = api_instance.check
  p result
rescue SnapTrade::ApiError => e
  puts "Error when calling APIStatusApi->check: #{e}"
end
```

#### Using the check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Status>, Integer, Hash)> check_with_http_info

```ruby
begin
  # Get API Status
  data, status_code, headers = api_instance.check_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Status>
rescue SnapTrade::ApiError => e
  puts "Error when calling APIStatusApi->check_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Status**](Status.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

