# SnapTrade.Net.Api.APIDisclaimerApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**Accept**](APIDisclaimerApi.md#accept) | **POST** /snapTrade/acceptDisclaimer | Accept or Reject SnapTrade disclaimer agreement |

<a name="accept"></a>
# **Accept**
> SnapTradeAPIDisclaimerAcceptStatus Accept (string userId, string userSecret, APIDisclaimerAcceptRequest aPIDisclaimerAcceptRequest)

Accept or Reject SnapTrade disclaimer agreement

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
    public class AcceptExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new APIDisclaimerApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var aPIDisclaimerAcceptRequest = new APIDisclaimerAcceptRequest(); // APIDisclaimerAcceptRequest | 

            try
            {
                // Accept or Reject SnapTrade disclaimer agreement
                SnapTradeAPIDisclaimerAcceptStatus result = apiInstance.Accept(userId, userSecret, aPIDisclaimerAcceptRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling APIDisclaimerApi.Accept: " + e.Message);
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

#### Using the AcceptWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Accept or Reject SnapTrade disclaimer agreement
    ApiResponse<SnapTradeAPIDisclaimerAcceptStatus> response = apiInstance.AcceptWithHttpInfo(userId, userSecret, aPIDisclaimerAcceptRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling APIDisclaimerApi.AcceptWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **aPIDisclaimerAcceptRequest** | [**APIDisclaimerAcceptRequest**](APIDisclaimerAcceptRequest.md) |  |  |

### Return type

[**SnapTradeAPIDisclaimerAcceptStatus**](SnapTradeAPIDisclaimerAcceptStatus.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns timestamp for when user accepted SnapTrade disclaimer |  -  |
| **500** | Unexpected Error. Please contact support |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

