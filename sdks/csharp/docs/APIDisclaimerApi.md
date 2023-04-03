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
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new APIDisclaimerApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var aPIDisclaimerAcceptRequest = new APIDisclaimerAcceptRequest(); // APIDisclaimerAcceptRequest | 

            try
            {
                // Accept or Reject SnapTrade disclaimer agreement
                SnapTradeAPIDisclaimerAcceptStatus result = apiInstance.Accept(userId, userSecret, aPIDisclaimerAcceptRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling APIDisclaimerApi.Accept: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
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

