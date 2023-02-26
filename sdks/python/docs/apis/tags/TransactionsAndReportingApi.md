<a name="__pageTop"></a>
# snaptrade_client.apis.tags.transactions_and_reporting_api.TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_activities**](#get_activities) | **get** /activities | Get transaction history for a user
[**get_reporting_custom_range**](#get_reporting_custom_range) | **get** /performance/custom | Get performance information for a specific timeframe

# **get_activities**
<a name="get_activities"></a>
> [UniversalActivity] get_activities(user_iduser_secret)

Get transaction history for a user

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
        # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
        # See configuration.py for a list of all supported configuration parameters.
        host = "https://api.snaptrade.com/api/v1",
    
        # Configure API key authorization: PartnerClientId
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerClientId': 'Bearer'}
    
        # Configure API key authorization: PartnerSignature
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerSignature': 'Bearer'}
    
        # Configure API key authorization: PartnerTimestamp
        api_key = 'YOUR_API_KEY'
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerTimestamp': 'Bearer'}
)

# Get transaction history for a user
response = snaptrade.transactions_and_reporting.get_activities(
    query_params = {
        'startDate': "2022-01-24T00:00:00.000Z",
        'endDate': "2022-01-24T00:00:00.000Z",
        'accounts': "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
)
pprint(response)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startDate | StartDateSchema | | optional
endDate | EndDateSchema | | optional
accounts | AccountsSchema | | optional
userId | UserIdSchema | | 
userSecret | UserSecretSchema | | 


# StartDateSchema

Date used to specify timeframe for a reporting call (in YYYY-MM-DD format)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | 

# EndDateSchema

Date used to specify timeframe for a reporting call (in YYYY-MM-DD format)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | 

# AccountsSchema

Comma seperated list of account IDs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Comma seperated list of account IDs | 

# UserIdSchema

SnapTrade User ID

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User ID | 

# UserSecretSchema

SnapTrade User Secret (generated when registering user)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User Secret (generated when registering user) | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_activities.ApiResponseFor200) | Successfully retrieved transaction history
default | [ApiResponseForDefault](#get_activities.ApiResponseForDefault) | Unexpected error

#### get_activities.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UniversalActivity**]({{complexTypePrefix}}UniversalActivity.md) | [**UniversalActivity**]({{complexTypePrefix}}UniversalActivity.md) | [**UniversalActivity**]({{complexTypePrefix}}UniversalActivity.md) |  | 

#### get_activities.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_reporting_custom_range**
<a name="get_reporting_custom_range"></a>
> PerformanceCustom get_reporting_custom_range(start_dateend_dateuser_iduser_secret)

Get performance information for a specific timeframe

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
        # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
        # See configuration.py for a list of all supported configuration parameters.
        host = "https://api.snaptrade.com/api/v1",
    
        # Configure API key authorization: PartnerClientId
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerClientId': 'Bearer'}
    
        # Configure API key authorization: PartnerSignature
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerSignature': 'Bearer'}
    
        # Configure API key authorization: PartnerTimestamp
        api_key = 'YOUR_API_KEY'
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerTimestamp': 'Bearer'}
)

# Get performance information for a specific timeframe
response = snaptrade.transactions_and_reporting.get_reporting_custom_range(
    query_params = {
        'startDate': "2022-01-24T00:00:00.000Z",
        'endDate': "2022-01-24T00:00:00.000Z",
        'accounts': "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
        'detailed': True,
        'frequency': "monthly",
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
)
pprint(response)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
startDate | StartDateSchema | | 
endDate | EndDateSchema | | 
accounts | AccountsSchema | | optional
detailed | DetailedSchema | | optional
frequency | FrequencySchema | | optional
userId | UserIdSchema | | 
userSecret | UserSecretSchema | | 


# StartDateSchema

Date used to specify timeframe for a reporting call (in YYYY-MM-DD format)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | 

# EndDateSchema

Date used to specify timeframe for a reporting call (in YYYY-MM-DD format)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | 

# AccountsSchema

Comma seperated list of account IDs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Comma seperated list of account IDs | 

# DetailedSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | 

# FrequencySchema

Optional frequency for the rate of return chart (defaults to monthly). Possible values are weekly, monthly, quarterly, yearly.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Optional frequency for the rate of return chart (defaults to monthly). Possible values are weekly, monthly, quarterly, yearly. | 

# UserIdSchema

SnapTrade User ID

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User ID | 

# UserSecretSchema

SnapTrade User Secret (generated when registering user)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User Secret (generated when registering user) | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_reporting_custom_range.ApiResponseFor200) | Successfully retrieved performance data
default | [ApiResponseForDefault](#get_reporting_custom_range.ApiResponseForDefault) | Unexpected error

#### get_reporting_custom_range.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**PerformanceCustom**](../../models/PerformanceCustom.md) |  | 


#### get_reporting_custom_range.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

