# SnapTrade.Net.Api.OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetOptionsChain**](OptionsApi.md#getoptionschain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain for a symbol |
| [**ListOptionHoldings**](OptionsApi.md#listoptionholdings) | **GET** /accounts/{accountId}/options | List account option positions |


# **GetOptionsChain**



Returns the option chain for the specified symbol in the specified account.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetOptionsChainExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var accountId = "accountId_example"; // The ID of the account to get the options chain from.
            var symbol = "symbol_example"; // Universal symbol ID if symbol
            
            try
            {
                // Get the options chain for a symbol
                List<OptionChainInner> result = client.Options.GetOptionsChain(userId, userSecret, accountId, symbol);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling OptionsApi.GetOptionsChain: " + e.Message);
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

#### Using the GetOptionsChainWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get the options chain for a symbol
    ApiResponse<List<OptionChainInner>> response = apiInstance.GetOptionsChainWithHttpInfo(userId, userSecret, accountId, symbol);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OptionsApi.GetOptionsChainWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **string** | The ID of the account to get the options chain from. |  |
| **symbol** | **string** | Universal symbol ID if symbol |  |

### Return type

[**List&lt;OptionChainInner&gt;**](OptionChainInner.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of all Options available for the brokerage symbol |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ListOptionHoldings**



Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for \"Cache Expiry Time\" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListOptionHoldingsExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var accountId = "accountId_example";
            
            try
            {
                // List account option positions
                List<OptionsPosition> result = client.Options.ListOptionHoldings(userId, userSecret, accountId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling OptionsApi.ListOptionHoldings: " + e.Message);
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

#### Using the ListOptionHoldingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List account option positions
    ApiResponse<List<OptionsPosition>> response = apiInstance.ListOptionHoldingsWithHttpInfo(userId, userSecret, accountId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OptionsApi.ListOptionHoldingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **string** |  |  |

### Return type

[**List&lt;OptionsPosition&gt;**](OptionsPosition.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

