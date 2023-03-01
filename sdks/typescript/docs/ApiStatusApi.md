# ApiStatusApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](ApiStatusApi.md#check) | **GET** / | Get API Status


# **check**
> Status check()

Check whether the API is operational and verify timestamps.

### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.apiStatus.check()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Status**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


