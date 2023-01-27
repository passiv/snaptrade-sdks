# snaptrade_client.TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_activities**](TransactionsAndReportingApi.md#get_activities) | **GET** /activities | Get transaction history for a user
[**get_reporting_custom_range**](TransactionsAndReportingApi.md#get_reporting_custom_range) | **GET** /performance/custom | Get performance information for a specific timeframe


# **get_activities**
> [UniversalActivity] get_activities(user_id, user_secret)

Get transaction history for a user

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import transactions_and_reporting_api
from snaptrade_client.model.universal_activity import UniversalActivity
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = transactions_and_reporting_api.TransactionsAndReportingApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    start_date = "2022-01-24T00:00:00.000Z" # str |  (optional)
    end_date = "2022-01-24T00:00:00.000Z" # str |  (optional)
    accounts = "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2" # str | Optional comma seperated list of account IDs used to filter the request on specific accounts (optional)

    # example passing only required values which don't have defaults set
    try:
        # Get transaction history for a user
        api_response = api_instance.get_activities(user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TransactionsAndReportingApi->get_activities: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get transaction history for a user
        api_response = api_instance.get_activities(user_id, user_secret, start_date=start_date, end_date=end_date, accounts=accounts)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TransactionsAndReportingApi->get_activities: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **start_date** | **str**|  | [optional]
 **end_date** | **str**|  | [optional]
 **accounts** | **str**| Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional]

### Return type

[**[UniversalActivity]**](UniversalActivity.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved transaction history |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_reporting_custom_range**
> PerformanceCustom get_reporting_custom_range(start_date, end_date, user_id, user_secret)

Get performance information for a specific timeframe

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import transactions_and_reporting_api
from snaptrade_client.model.performance_custom import PerformanceCustom
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = transactions_and_reporting_api.TransactionsAndReportingApi(api_client)
    start_date = "2022-01-24T00:00:00.000Z" # str | 
    end_date = "2022-01-24T00:00:00.000Z" # str | 
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    accounts = "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2" # str | Optional comma seperated list of account IDs used to filter the request on specific accounts (optional)
    detailed = True # bool | Optional, increases frequency of data points for the total value and contribution charts if set to true (optional)
    frequency = "monthly" # str | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. (optional)

    # example passing only required values which don't have defaults set
    try:
        # Get performance information for a specific timeframe
        api_response = api_instance.get_reporting_custom_range(start_date, end_date, user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TransactionsAndReportingApi->get_reporting_custom_range: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get performance information for a specific timeframe
        api_response = api_instance.get_reporting_custom_range(start_date, end_date, user_id, user_secret, accounts=accounts, detailed=detailed, frequency=frequency)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TransactionsAndReportingApi->get_reporting_custom_range: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **str**|  |
 **end_date** | **str**|  |
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **accounts** | **str**| Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional]
 **detailed** | **bool**| Optional, increases frequency of data points for the total value and contribution charts if set to true | [optional]
 **frequency** | **str**| Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. | [optional]

### Return type

[**PerformanceCustom**](PerformanceCustom.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved performance data |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

