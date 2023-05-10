<a name="__pageTop"></a>
# snaptrade_client.apis.tags.api_status_api.APIStatusApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](#check) | **get** / | Get API Status

# **check**

Get API Status

Check whether the API is operational and verify timestamps.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get API Status
    check_response = snaptrade.api_status.check()
    pprint(check_response.body)
    pprint(check_response.body["version"])
    pprint(check_response.body["timestamp"])
    pprint(check_response.body["online"])
    pprint(check_response.headers)
    pprint(check_response.status)
    pprint(check_response.round_trip_time)
except ApiException as e:
    print("Exception when calling APIStatusApi.check: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#check.ApiResponseFor200) | API is alive and kicking in some fashion
default | [ApiResponseForDefault](#check.ApiResponseForDefault) | Unexpected error.

#### check.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Status**](../../models/Status.md) |  | 


#### check.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

