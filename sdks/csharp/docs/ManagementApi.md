# SnapTrade.Net.Api.ManagementApi

All URIs are relative to *https://api.snaptrade.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetStats**](ManagementApi.md#getstats) | **GET** /snapTrade/stats | Get usage stats |


# **GetStats**



Returns user, connection, and connected asset totals for your SnapTrade Client ID. These are the same numbers shown on the Users & Connections page of the SnapTrade Dashboard.  User and connection counts are cached for up to 5 minutes. Connected asset values come from a snapshot calculated once a day; `assets_under_management_calculated_at` indicates when it was last calculated. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetStatsExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var currency = "USD"; // ISO 4217 currency code to express connected asset values in. Defaults to `USD`. (optional) 
            
            try
            {
                // Get usage stats
                PartnerStats result = client.Management.GetStats(currency);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ManagementApi.GetStats: " + e.Message);
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

#### Using the GetStatsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get usage stats
    ApiResponse<PartnerStats> response = apiInstance.GetStatsWithHttpInfo(currency);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ManagementApi.GetStatsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **currency** | **string** | ISO 4217 currency code to express connected asset values in. Defaults to &#x60;USD&#x60;. | [optional]  |

### Return type

[**PartnerStats**](PartnerStats.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Unsupported currency |  -  |
| **401** | Unauthorized |  -  |
| **429** | Rate limit exceeded |  -  |
| **500** | Unexpected Error |  -  |
| **503** | Exchange rates for the requested currency are temporarily unavailable |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

