# SnapTrade.Net.Api.ErrorLogsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ListUserErrors**](ErrorLogsApi.md#listusererrors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users |

<a name="listusererrors"></a>
# **ListUserErrors**
> List&lt;UserErrorLog&gt; ListUserErrors (string userId, string userSecret)

Retrieve error logs on behalf of your SnapTrade users

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListUserErrorsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new ErrorLogsApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // Retrieve error logs on behalf of your SnapTrade users
                List<UserErrorLog> result = apiInstance.ListUserErrors(userId, userSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ErrorLogsApi.ListUserErrors: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the ListUserErrorsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve error logs on behalf of your SnapTrade users
    ApiResponse<List<UserErrorLog>> response = apiInstance.ListUserErrorsWithHttpInfo(userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ErrorLogsApi.ListUserErrorsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**List&lt;UserErrorLog&gt;**](UserErrorLog.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all user errors for a particular user in the last 90 days. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

