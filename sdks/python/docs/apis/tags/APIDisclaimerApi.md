<a name="__pageTop"></a>
# snaptrade_client.apis.tags.api_disclaimer_api.APIDisclaimerApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accept**](#accept) | **post** /snapTrade/acceptDisclaimer | Accept or Reject SnapTrade disclaimer agreement

# **accept**
<a name="accept"></a>
> SnapTradeAPIDisclaimerAcceptStatus accept(user_iduser_secretany_type)

Accept or Reject SnapTrade disclaimer agreement

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

# Accept or Reject SnapTrade disclaimer agreement
response = snaptrade.api_disclaimer.accept(
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = 
    ,
)
pprint(response)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**accepted** | bool,  | BoolClass,  | A boolean that indicates whether this user has accepted the disclaimer or not. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

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
200 | [ApiResponseFor200](#accept.ApiResponseFor200) | Returns timestamp for when user accepted SnapTrade disclaimer
500 | [ApiResponseFor500](#accept.ApiResponseFor500) | Unexpected Error. Please contact support

#### accept.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**SnapTradeAPIDisclaimerAcceptStatus**](../../models/SnapTradeAPIDisclaimerAcceptStatus.md) |  | 


#### accept.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)
