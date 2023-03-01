# ErrorLogsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listUserErrors**](ErrorLogsApi.md#listUserErrors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users


# **listUserErrors**
> Array<UserErrorLog> listUserErrors()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.errorLogs.listUserErrors({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**Array<UserErrorLog>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all user errors for a particular user in the last 90 days. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


