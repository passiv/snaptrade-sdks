# OpenapiClient::APIDisclaimerApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept**](APIDisclaimerApi.md#accept) | **POST** /snapTrade/acceptDisclaimer | Accept or Reject SnapTrade disclaimer agreement |


## accept

> <SnapTradeAPIDisclaimerAcceptStatus> accept(user_id, user_secret, api_disclaimer_accept_request)

Accept or Reject SnapTrade disclaimer agreement

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

api_instance = OpenapiClient::APIDisclaimerApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
api_disclaimer_accept_request = OpenapiClient::APIDisclaimerAcceptRequest.new # APIDisclaimerAcceptRequest | 

begin
  # Accept or Reject SnapTrade disclaimer agreement
  result = api_instance.accept(user_id, user_secret, api_disclaimer_accept_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIDisclaimerApi->accept: #{e}"
end
```

#### Using the accept_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapTradeAPIDisclaimerAcceptStatus>, Integer, Hash)> accept_with_http_info(user_id, user_secret, api_disclaimer_accept_request)

```ruby
begin
  # Accept or Reject SnapTrade disclaimer agreement
  data, status_code, headers = api_instance.accept_with_http_info(user_id, user_secret, api_disclaimer_accept_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapTradeAPIDisclaimerAcceptStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIDisclaimerApi->accept_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **api_disclaimer_accept_request** | [**APIDisclaimerAcceptRequest**](APIDisclaimerAcceptRequest.md) |  |  |

### Return type

[**SnapTradeAPIDisclaimerAcceptStatus**](SnapTradeAPIDisclaimerAcceptStatus.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

