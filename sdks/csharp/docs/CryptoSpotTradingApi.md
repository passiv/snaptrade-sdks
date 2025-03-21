# SnapTrade.Net.Api.CryptoSpotTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CryptoSpotCancelOrder**](CryptoSpotTradingApi.md#cryptospotcancelorder) | **POST** /accounts/{accountId}/trading/crypto/spot/cancelOrder | Cancel a crypto spot order. |
| [**CryptoSpotPlaceOrder**](CryptoSpotTradingApi.md#cryptospotplaceorder) | **POST** /accounts/{accountId}/trading/crypto/spot/placeOrder | Place a spot order on a crypto exchange |
| [**CryptoSpotPreviewOrder**](CryptoSpotTradingApi.md#cryptospotprevieworder) | **POST** /accounts/{accountId}/trading/crypto/spot/previewOrder | Place a spot order on a crypto exchange |
| [**CryptoSpotQuote**](CryptoSpotTradingApi.md#cryptospotquote) | **GET** /accounts/{accountId}/trading/crypto/spot/quote | Get a quote for a cyrptocurrency market |
| [**CryptoSpotSymbols**](CryptoSpotTradingApi.md#cryptospotsymbols) | **GET** /accounts/{accountId}/trading/crypto/spot/symbols | Search crypto spot symbols |


# **CryptoSpotCancelOrder**



Cancels a cryptocurrency spot order in the specified account. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CryptoSpotCancelOrderExample
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
            var brokerageOrderId = "66a033fa-da74-4fcf-b527-feefdec9257e"; // Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
            
            var tradingCryptoSpotCancelOrderRequest = new TradingCryptoSpotCancelOrderRequest(
                brokerageOrderId
            );
            
            try
            {
                // Cancel a crypto spot order.
                AccountOrderRecord result = client.CryptoSpotTrading.CryptoSpotCancelOrder(userId, userSecret, accountId, tradingCryptoSpotCancelOrderRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoSpotTradingApi.CryptoSpotCancelOrder: " + e.Message);
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

#### Using the CryptoSpotCancelOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Cancel a crypto spot order.
    ApiResponse<AccountOrderRecord> response = apiInstance.CryptoSpotCancelOrderWithHttpInfo(userId, userSecret, accountId, tradingCryptoSpotCancelOrderRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoSpotTradingApi.CryptoSpotCancelOrderWithHttpInfo: " + e.Message);
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
| **tradingCryptoSpotCancelOrderRequest** | [**TradingCryptoSpotCancelOrderRequest**](TradingCryptoSpotCancelOrderRequest.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **CryptoSpotPlaceOrder**



Places a spot cryptocurrency order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CryptoSpotPlaceOrderExample
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
            var symbol = new CryptocurrencyPair();
            var side = ActionStrict.BUY;
            var type = TradingCryptoSpotPlaceOrderRequest.TypeEnum.MARKET; // The type of order to place.
            var timeInForce = TradingCryptoSpotPlaceOrderRequest.TimeInForceEnum.GTC; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
            var amount = "123.45"; // The amount of the base currency to buy or sell.
            var limitPrice = "123.45"; // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
            var stopPrice = "123.45"; // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
            var postOnly = false; // Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
            var expirationDate = DateTime.Now; // The expiration date of the order. Required if the time_in_force is GTD.
            
            var tradingCryptoSpotPlaceOrderRequest = new TradingCryptoSpotPlaceOrderRequest(
                symbol,
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
                // Place a spot order on a crypto exchange
                AccountOrderRecord result = client.CryptoSpotTrading.CryptoSpotPlaceOrder(userId, userSecret, accountId, tradingCryptoSpotPlaceOrderRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoSpotTradingApi.CryptoSpotPlaceOrder: " + e.Message);
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

#### Using the CryptoSpotPlaceOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place a spot order on a crypto exchange
    ApiResponse<AccountOrderRecord> response = apiInstance.CryptoSpotPlaceOrderWithHttpInfo(userId, userSecret, accountId, tradingCryptoSpotPlaceOrderRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoSpotTradingApi.CryptoSpotPlaceOrderWithHttpInfo: " + e.Message);
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
| **tradingCryptoSpotPlaceOrderRequest** | [**TradingCryptoSpotPlaceOrderRequest**](TradingCryptoSpotPlaceOrderRequest.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **CryptoSpotPreviewOrder**



Previews a cryptocurrency spot order using the specified account. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CryptoSpotPreviewOrderExample
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
            var symbol = new CryptocurrencyPair();
            var side = ActionStrict.BUY;
            var type = TradingCryptoSpotPlaceOrderRequest.TypeEnum.MARKET; // The type of order to place.
            var timeInForce = TradingCryptoSpotPlaceOrderRequest.TimeInForceEnum.GTC; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
            var amount = "123.45"; // The amount of the base currency to buy or sell.
            var limitPrice = "123.45"; // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
            var stopPrice = "123.45"; // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
            var postOnly = false; // Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
            var expirationDate = DateTime.Now; // The expiration date of the order. Required if the time_in_force is GTD.
            
            var tradingCryptoSpotPlaceOrderRequest = new TradingCryptoSpotPlaceOrderRequest(
                symbol,
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
                // Place a spot order on a crypto exchange
                CryptoSpotOrderPreview result = client.CryptoSpotTrading.CryptoSpotPreviewOrder(userId, userSecret, accountId, tradingCryptoSpotPlaceOrderRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoSpotTradingApi.CryptoSpotPreviewOrder: " + e.Message);
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

#### Using the CryptoSpotPreviewOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place a spot order on a crypto exchange
    ApiResponse<CryptoSpotOrderPreview> response = apiInstance.CryptoSpotPreviewOrderWithHttpInfo(userId, userSecret, accountId, tradingCryptoSpotPlaceOrderRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoSpotTradingApi.CryptoSpotPreviewOrderWithHttpInfo: " + e.Message);
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
| **tradingCryptoSpotPlaceOrderRequest** | [**TradingCryptoSpotPlaceOrderRequest**](TradingCryptoSpotPlaceOrderRequest.md) |  |  |

### Return type

[**CryptoSpotOrderPreview**](CryptoSpotOrderPreview.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **CryptoSpotQuote**



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
    public class CryptoSpotQuoteExample
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
                // Get a quote for a cyrptocurrency market
                CryptoSpotQuote result = client.CryptoSpotTrading.CryptoSpotQuote(userId, userSecret, accountId, _base, quote);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoSpotTradingApi.CryptoSpotQuote: " + e.Message);
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

#### Using the CryptoSpotQuoteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get a quote for a cyrptocurrency market
    ApiResponse<CryptoSpotQuote> response = apiInstance.CryptoSpotQuoteWithHttpInfo(userId, userSecret, accountId, _base, quote);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoSpotTradingApi.CryptoSpotQuoteWithHttpInfo: " + e.Message);
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
| **_base** | **string** |  |  |
| **quote** | **string** |  |  |

### Return type

[**CryptoSpotQuote**](CryptoSpotQuote.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **CryptoSpotSymbols**



Searches cryptocurrency spot symbols accessible to the specified account. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CryptoSpotSymbolsExample
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
                // Search crypto spot symbols
                TradingCryptoSpotSymbols200Response result = client.CryptoSpotTrading.CryptoSpotSymbols(userId, userSecret, accountId, _base, quote);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CryptoSpotTradingApi.CryptoSpotSymbols: " + e.Message);
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

#### Using the CryptoSpotSymbolsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search crypto spot symbols
    ApiResponse<TradingCryptoSpotSymbols200Response> response = apiInstance.CryptoSpotSymbolsWithHttpInfo(userId, userSecret, accountId, _base, quote);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CryptoSpotTradingApi.CryptoSpotSymbolsWithHttpInfo: " + e.Message);
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

[**TradingCryptoSpotSymbols200Response**](TradingCryptoSpotSymbols200Response.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

