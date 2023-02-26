<a name="__pageTop"></a>
# snaptrade_client.apis.tags.error_logs_api.ErrorLogsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_user_errors**](#list_user_errors) | **get** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users

# **list_user_errors**
<a name="list_user_errors"></a>
> [UserErrorLog] list_user_errors(user_iduser_secret)

Retrieve error logs on behalf of your SnapTrade users

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

# Retrieve error logs on behalf of your SnapTrade users
response = snaptrade.error_logs.list_user_errors(
    query_params = {
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
userId | UserIdSchema | | 
userSecret | UserSecretSchema | | 


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
200 | [ApiResponseFor200](#list_user_errors.ApiResponseFor200) | A list of all user errors for a particular user in the last 90 days.

#### list_user_errors.ApiResponseFor200
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
[**UserErrorLog**]({{complexTypePrefix}}UserErrorLog.md) | [**UserErrorLog**]({{complexTypePrefix}}UserErrorLog.md) | [**UserErrorLog**]({{complexTypePrefix}}UserErrorLog.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

