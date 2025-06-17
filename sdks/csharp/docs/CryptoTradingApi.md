# SnapTrade.Net.Api.CryptoTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetCryptocurrencyPairQuote**](CryptoTradingApi.md#getcryptocurrencypairquote) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get cryptocurrency pair quote |
| [**PlaceSimpleOrder**](CryptoTradingApi.md#placesimpleorder) | **POST** /accounts/{accountId}/trading/simple | Place order |
| [**SearchCryptocurrencyPairInstruments**](CryptoTradingApi.md#searchcryptocurrencypairinstruments) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Search cryptocurrency pairs instruments |


# **GetCryptocurrencyPairQuote**



Gets a quote for the specified account. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetCryptocurrencyPairQuoteExample
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
            var instrumentSymbol = "instrumentSymbol_example";
            
            try
            {
                // Get cryptocurrency pair quote
                CryptocurrencyPairQuote result = client.CryptoTrading.GetCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoTradingApi.GetCryptocurrencyPairQuote: " + e.Message);
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

#### Using the GetCryptocurrencyPairQuoteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get cryptocurrency pair quote
    ApiResponse<CryptocurrencyPairQuote> response = apiInstance.GetCryptocurrencyPairQuoteWithHttpInfo(userId, userSecret, accountId, instrumentSymbol);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoTradingApi.GetCryptocurrencyPairQuoteWithHttpInfo: " + e.Message);
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
| **instrumentSymbol** | **string** |  |  |

### Return type

[**CryptocurrencyPairQuote**](CryptocurrencyPairQuote.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceSimpleOrder**



Places an order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class PlaceSimpleOrderExample
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
            var instrument = new TradingInstrument();
            var side = ActionStrict.BUY;
            var type = SimpleOrderForm.TypeEnum.MARKET; // The type of order to place.
            var timeInForce = SimpleOrderForm.TimeInForceEnum.GTC; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
            var amount = "123.45"; // The amount of the base currency to buy or sell.
            var limitPrice = "123.45"; // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
            var stopPrice = "123.45"; // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
            var postOnly = false; // Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
            var expirationDate = DateTime.Now; // The expiration date of the order. Required if the time_in_force is GTD.
            
            var simpleOrderForm = new SimpleOrderForm(
                instrument,
                side,
                type,
                timeInForce,
                amount,
                limitPrice,
                stopPrice,
                postOnly,
                expirationDate
            );
            
            try
            {
                // Place order
                OrderUpdatedResponse result = client.CryptoTrading.PlaceSimpleOrder(userId, userSecret, accountId, simpleOrderForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoTradingApi.PlaceSimpleOrder: " + e.Message);
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

#### Using the PlaceSimpleOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place order
    ApiResponse<OrderUpdatedResponse> response = apiInstance.PlaceSimpleOrderWithHttpInfo(userId, userSecret, accountId, simpleOrderForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoTradingApi.PlaceSimpleOrderWithHttpInfo: " + e.Message);
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
| **simpleOrderForm** | [**SimpleOrderForm**](SimpleOrderForm.md) |  |  |

### Return type

[**OrderUpdatedResponse**](OrderUpdatedResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


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

