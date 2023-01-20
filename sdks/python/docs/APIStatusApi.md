# snaptrade_client.APIStatusApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](APIStatusApi.md#check) | **GET** / | Get API Status


# **check**
> Status check()

Get API Status

Check whether the API is operational and verify timestamps.

### Example


```python
import time
import snaptrade_client
from snaptrade_client.api import api_status_api
from snaptrade_client.model.status import Status
from pprint import pprint

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = api_status_api.APIStatusApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get API Status
        api_response = api_instance.check()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling APIStatusApi->check: %s\n" % e)
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


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | API is alive and kicking in some fashion |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

