# SnapTrade.Net.Api.CryptoTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SearchCryptocurrencyPairInstruments**](CryptoTradingApi.md#searchcryptocurrencypairinstruments) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Search cryptocurrency pairs instruments |


# **SearchCryptocurrencyPairInstruments**



Searches cryptocurrency pairs instruments accessible to the specified account. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class SearchCryptocurrencyPairInstrumentsExample
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
            var _base = "_base_example";
            var quote = "quote_example";
            
            try
            {
                // Search cryptocurrency pairs instruments
                TradingSearchCryptocurrencyPairInstruments200Response result = client.CryptoTrading.SearchCryptocurrencyPairInstruments(userId, userSecret, accountId, _base, quote);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoTradingApi.SearchCryptocurrencyPairInstruments: " + e.Message);
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

#### Using the SearchCryptocurrencyPairInstrumentsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search cryptocurrency pairs instruments
    ApiResponse<TradingSearchCryptocurrencyPairInstruments200Response> response = apiInstance.SearchCryptocurrencyPairInstrumentsWithHttpInfo(userId, userSecret, accountId, _base, quote);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoTradingApi.SearchCryptocurrencyPairInstrumentsWithHttpInfo: " + e.Message);
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
| **_base** | **string** |  | [optional]  |
| **quote** | **string** |  | [optional]  |

### Return type

[**TradingSearchCryptocurrencyPairInstruments200Response**](TradingSearchCryptocurrencyPairInstruments200Response.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

