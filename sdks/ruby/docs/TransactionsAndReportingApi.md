# OpenapiClient::TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_activities**](TransactionsAndReportingApi.md#get_activities) | **GET** /activities | Get transaction history for a user |
| [**get_reporting_custom_range**](TransactionsAndReportingApi.md#get_reporting_custom_range) | **GET** /performance/custom | Get performance information for a specific timeframe |


## get_activities

> <Array<UniversalActivity>> get_activities(user_id, user_secret, opts)

Get transaction history for a user

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

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

api_instance = OpenapiClient::TransactionsAndReportingApi.new
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
opts = {
  start_date: Date.parse('2013-10-20'), # Date | 
  end_date: Date.parse('2013-10-20'), # Date | 
  accounts: 'accounts_example', # String | Optional comma seperated list of account IDs used to filter the request on specific accounts
  brokerage_authorizations: 'brokerage_authorizations_example' # String | Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations
}

begin
  # Get transaction history for a user
  result = api_instance.get_activities(user_id, user_secret, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsAndReportingApi->get_activities: #{e}"
end
```

#### Using the get_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UniversalActivity>>, Integer, Hash)> get_activities_with_http_info(user_id, user_secret, opts)

```ruby
begin
  # Get transaction history for a user
  data, status_code, headers = api_instance.get_activities_with_http_info(user_id, user_secret, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UniversalActivity>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsAndReportingApi->get_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **start_date** | **Date** |  | [optional] |
| **end_date** | **Date** |  | [optional] |
| **accounts** | **String** | Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional] |
| **brokerage_authorizations** | **String** | Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations | [optional] |

### Return type

[**Array&lt;UniversalActivity&gt;**](UniversalActivity.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reporting_custom_range

> <PerformanceCustom> get_reporting_custom_range(start_date, end_date, user_id, user_secret, opts)

Get performance information for a specific timeframe

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

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

api_instance = OpenapiClient::TransactionsAndReportingApi.new
start_date = Date.parse('2013-10-20') # Date | 
end_date = Date.parse('2013-10-20') # Date | 
user_id = 'user_id_example' # String | 
user_secret = 'user_secret_example' # String | 
opts = {
  accounts: 'accounts_example', # String | Optional comma seperated list of account IDs used to filter the request on specific accounts
  detailed: true, # Boolean | Optional, increases frequency of data points for the total value and contribution charts if set to true
  frequency: 'frequency_example' # String | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
}

begin
  # Get performance information for a specific timeframe
  result = api_instance.get_reporting_custom_range(start_date, end_date, user_id, user_secret, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsAndReportingApi->get_reporting_custom_range: #{e}"
end
```

#### Using the get_reporting_custom_range_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PerformanceCustom>, Integer, Hash)> get_reporting_custom_range_with_http_info(start_date, end_date, user_id, user_secret, opts)

```ruby
begin
  # Get performance information for a specific timeframe
  data, status_code, headers = api_instance.get_reporting_custom_range_with_http_info(start_date, end_date, user_id, user_secret, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PerformanceCustom>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsAndReportingApi->get_reporting_custom_range_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** |  |  |
| **end_date** | **Date** |  |  |
| **user_id** | **String** |  |  |
| **user_secret** | **String** |  |  |
| **accounts** | **String** | Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional] |
| **detailed** | **Boolean** | Optional, increases frequency of data points for the total value and contribution charts if set to true | [optional] |
| **frequency** | **String** | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. | [optional] |

### Return type

[**PerformanceCustom**](PerformanceCustom.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

