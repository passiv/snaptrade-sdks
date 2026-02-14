# SnapTrade.Net.Api.TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CancelOrder**](TradingApi.md#cancelorder) | **POST** /accounts/{accountId}/trading/cancel | Cancel order |
| [**CancelUserAccountOrder**](TradingApi.md#canceluseraccountorder) | **POST** /accounts/{accountId}/orders/cancel | Cancel equity order |
| [**GetCryptocurrencyPairQuote**](TradingApi.md#getcryptocurrencypairquote) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get crypto pair quote |
| [**GetOrderImpact**](TradingApi.md#getorderimpact) | **POST** /trade/impact | Check equity order impact |
| [**GetUserAccountQuotes**](TradingApi.md#getuseraccountquotes) | **GET** /accounts/{accountId}/quotes | Get equity symbol quotes |
| [**PlaceBracketOrder**](TradingApi.md#placebracketorder) | **POST** /accounts/{accountId}/trading/bracket | Place bracket order |
| [**PlaceCryptoOrder**](TradingApi.md#placecryptoorder) | **POST** /accounts/{accountId}/trading/crypto | Place crypto order |
| [**PlaceForceOrder**](TradingApi.md#placeforceorder) | **POST** /trade/place | Place equity order |
| [**PlaceMlegOrder**](TradingApi.md#placemlegorder) | **POST** /accounts/{accountId}/trading/options | Place option order |
| [**PlaceOrder**](TradingApi.md#placeorder) | **POST** /trade/{tradeId} | Place checked equity order |
| [**PreviewCryptoOrder**](TradingApi.md#previewcryptoorder) | **POST** /accounts/{accountId}/trading/crypto/preview | Preview crypto order |
| [**ReplaceOrder**](TradingApi.md#replaceorder) | **POST** /accounts/{accountId}/trading/replace | Replace order |
| [**SearchCryptocurrencyPairInstruments**](TradingApi.md#searchcryptocurrencypairinstruments) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Get crypto pairs |


# **CancelOrder**



Cancels an order in the specified account. Accepts order IDs for all asset types. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CancelOrderExample
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
            
            var accountInformationGetUserAccountOrderDetailRequest = new AccountInformationGetUserAccountOrderDetailRequest(
                brokerageOrderId
            );
            
            try
            {
                // Cancel order
                CancelOrderResponse result = client.Trading.CancelOrder(userId, userSecret, accountId, accountInformationGetUserAccountOrderDetailRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.CancelOrder: " + e.Message);
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

#### Using the CancelOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Cancel order
    ApiResponse<CancelOrderResponse> response = apiInstance.CancelOrderWithHttpInfo(userId, userSecret, accountId, accountInformationGetUserAccountOrderDetailRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.CancelOrderWithHttpInfo: " + e.Message);
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
| **accountInformationGetUserAccountOrderDetailRequest** | [**AccountInformationGetUserAccountOrderDetailRequest**](AccountInformationGetUserAccountOrderDetailRequest.md) |  |  |

### Return type

[**CancelOrderResponse**](CancelOrderResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **CancelUserAccountOrder**



**This endpoint is deprecated. Please switch to [the new cancel order endpoint](/reference/Trading/Trading_cancelOrder) ** Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CancelUserAccountOrderExample
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
            
            var accountInformationGetUserAccountOrderDetailRequest = new AccountInformationGetUserAccountOrderDetailRequest(
                brokerageOrderId
            );
            
            try
            {
                // Cancel equity order
                AccountOrderRecord result = client.Trading.CancelUserAccountOrder(userId, userSecret, accountId, accountInformationGetUserAccountOrderDetailRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.CancelUserAccountOrder: " + e.Message);
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

#### Using the CancelUserAccountOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Cancel equity order
    ApiResponse<AccountOrderRecord> response = apiInstance.CancelUserAccountOrderWithHttpInfo(userId, userSecret, accountId, accountInformationGetUserAccountOrderDetailRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.CancelUserAccountOrderWithHttpInfo: " + e.Message);
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
| **accountInformationGetUserAccountOrderDetailRequest** | [**AccountInformationGetUserAccountOrderDetailRequest**](AccountInformationGetUserAccountOrderDetailRequest.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order Record of canceled order |  -  |
| **400** | Unable to cancel open order. Please verify status in brokerage account |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


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
                // Get crypto pair quote
                CryptocurrencyPairQuote result = client.Trading.GetCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.GetCryptocurrencyPairQuote: " + e.Message);
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
    // Get crypto pair quote
    ApiResponse<CryptocurrencyPairQuote> response = apiInstance.GetCryptocurrencyPairQuoteWithHttpInfo(userId, userSecret, accountId, instrumentSymbol);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.GetCryptocurrencyPairQuoteWithHttpInfo: " + e.Message);
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


# **GetOrderImpact**



Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetOrderImpactExample
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
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631"; // Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
            var action = ActionStrict.BUY;
            var universalSymbolId = "2bcd7cc3-e922-4976-bce1-9858296801c3"; // Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = TimeInForceStrict.FOK;
            var price = 31.33; // The limit price for `Limit` and `StopLimit` orders.
            var stop = 31.33; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
            var units = 10.5; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
            var notionalValue = new NotionalValueNullable(100);
            
            var manualTradeForm = new ManualTradeForm(
                accountId,
                action,
                universalSymbolId,
                orderType,
                timeInForce,
                price,
                stop,
                units,
                notionalValue
            );
            
            try
            {
                // Check equity order impact
                ManualTradeAndImpact result = client.Trading.GetOrderImpact(userId, userSecret, manualTradeForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.GetOrderImpact: " + e.Message);
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

#### Using the GetOrderImpactWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Check equity order impact
    ApiResponse<ManualTradeAndImpact> response = apiInstance.GetOrderImpactWithHttpInfo(userId, userSecret, manualTradeForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.GetOrderImpactWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **manualTradeForm** | [**ManualTradeForm**](ManualTradeForm.md) |  |  |

### Return type

[**ManualTradeAndImpact**](ManualTradeAndImpact.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetUserAccountQuotes**



Returns quotes from the brokerage for the specified symbols and account.  The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint.  **This endpoint is not a substitute for a market data provider. Frequent polling of this endpoint may result in the disabling of your keys**  This endpoint does not work for options quotes.  This endpoint is disabled for free plans by default. Please contact support to enable this endpoint if needed. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountQuotesExample
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
            var symbols = "symbols_example"; // List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator
            var accountId = "accountId_example";
            var useTicker = true; // Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided. (optional) 
            
            try
            {
                // Get equity symbol quotes
                List<SymbolsQuotesInner> result = client.Trading.GetUserAccountQuotes(userId, userSecret, symbols, accountId, useTicker);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.GetUserAccountQuotes: " + e.Message);
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

#### Using the GetUserAccountQuotesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get equity symbol quotes
    ApiResponse<List<SymbolsQuotesInner>> response = apiInstance.GetUserAccountQuotesWithHttpInfo(userId, userSecret, symbols, accountId, useTicker);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.GetUserAccountQuotesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **symbols** | **string** | List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator |  |
| **accountId** | **string** |  |  |
| **useTicker** | **bool?** | Should be set to &#x60;True&#x60; if &#x60;symbols&#x60; are comprised of tickers. Defaults to &#x60;False&#x60; if not provided. | [optional]  |

### Return type

[**List&lt;SymbolsQuotesInner&gt;**](SymbolsQuotesInner.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceBracketOrder**



Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for use. Only supported on certain brokerages 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class PlaceBracketOrderExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var accountId = "accountId_example"; // The ID of the account to execute the trade on.
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var action = ActionStrictWithOptions.BUY;
            var instrument = new TradingInstrument();
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = TimeInForceStrict.FOK;
            var price = 31.33; // The limit price for `Limit` and `StopLimit` orders.
            var stop = 31.33; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
            var units = 10.5; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
            var stopLoss = new StopLoss();
            var takeProfit = new TakeProfit();
            
            var manualTradeFormBracket = new ManualTradeFormBracket(
                action,
                instrument,
                orderType,
                timeInForce,
                price,
                stop,
                units,
                stopLoss,
                takeProfit
            );
            
            try
            {
                // Place bracket order
                AccountOrderRecord result = client.Trading.PlaceBracketOrder(accountId, userId, userSecret, manualTradeFormBracket);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PlaceBracketOrder: " + e.Message);
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

#### Using the PlaceBracketOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place bracket order
    ApiResponse<AccountOrderRecord> response = apiInstance.PlaceBracketOrderWithHttpInfo(accountId, userId, userSecret, manualTradeFormBracket);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceBracketOrderWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** | The ID of the account to execute the trade on. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **manualTradeFormBracket** | [**ManualTradeFormBracket**](ManualTradeFormBracket.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Trade could not be placed |  -  |
| **403** | User does not have permissions to place trades |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceCryptoOrder**



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
    public class PlaceCryptoOrderExample
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
            var instrument = new CryptoTradingInstrument();
            var side = ActionStrict.BUY;
            var type = CryptoOrderForm.TypeEnum.MARKET; // The type of order to place.
            var timeInForce = CryptoOrderForm.TimeInForceEnum.GTC; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
            var amount = "123.45"; // The amount of the base currency to buy or sell.
            var limitPrice = "123.45"; // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
            var stopPrice = "123.45"; // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
            var postOnly = false; // Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
            var expirationDate = DateTime.Now; // The expiration date of the order. Required if the time_in_force is GTD.
            
            var cryptoOrderForm = new CryptoOrderForm(
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
                // Place crypto order
                OrderUpdatedResponse result = client.Trading.PlaceCryptoOrder(userId, userSecret, accountId, cryptoOrderForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PlaceCryptoOrder: " + e.Message);
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

#### Using the PlaceCryptoOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place crypto order
    ApiResponse<OrderUpdatedResponse> response = apiInstance.PlaceCryptoOrderWithHttpInfo(userId, userSecret, accountId, cryptoOrderForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceCryptoOrderWithHttpInfo: " + e.Message);
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
| **cryptoOrderForm** | [**CryptoOrderForm**](CryptoOrderForm.md) |  |  |

### Return type

[**OrderUpdatedResponse**](OrderUpdatedResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceForceOrder**



Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.  This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).  It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class PlaceForceOrderExample
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
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631"; // Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
            var action = ActionStrictWithOptions.BUY;
            var universalSymbolId = "2bcd7cc3-e922-4976-bce1-9858296801c3"; // Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
            var symbol = "AAPL"; // The security's trading ticker symbol. If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = TimeInForceStrict.FOK;
            var tradingSession = TradingSession.REGULAR;
            var price = 31.33; // The limit price for `Limit` and `StopLimit` orders.
            var stop = 31.33; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
            var units = "units_example"; // For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
            var notionalValue = new NotionalValueNullable(100);
            
            var manualTradeFormWithOptions = new ManualTradeFormWithOptions(
                accountId,
                action,
                universalSymbolId,
                symbol,
                orderType,
                timeInForce,
                tradingSession,
                price,
                stop,
                units,
                notionalValue
            );
            
            try
            {
                // Place equity order
                AccountOrderRecord result = client.Trading.PlaceForceOrder(userId, userSecret, manualTradeFormWithOptions);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PlaceForceOrder: " + e.Message);
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

#### Using the PlaceForceOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place equity order
    ApiResponse<AccountOrderRecord> response = apiInstance.PlaceForceOrderWithHttpInfo(userId, userSecret, manualTradeFormWithOptions);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceForceOrderWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **manualTradeFormWithOptions** | [**ManualTradeFormWithOptions**](ManualTradeFormWithOptions.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Trade could not be placed |  -  |
| **403** | User does not have permissions to place trades |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceMlegOrder**



Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class PlaceMlegOrderExample
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
            var orderType = MlegOrderTypeStrict.MARKET;
            var timeInForce = TimeInForceStrict.FOK;
            var limitPrice = ""; // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT.
            var stopPrice = ""; // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT.
            var priceEffect = MlegPriceEffectStrictNullable.CREDIT;
            var legs = new List<MlegLeg>();
            
            var mlegTradeForm = new MlegTradeForm(
                orderType,
                timeInForce,
                limitPrice,
                stopPrice,
                priceEffect,
                legs
            );
            
            try
            {
                // Place option order
                MlegOrderResponse result = client.Trading.PlaceMlegOrder(userId, userSecret, accountId, mlegTradeForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PlaceMlegOrder: " + e.Message);
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

#### Using the PlaceMlegOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place option order
    ApiResponse<MlegOrderResponse> response = apiInstance.PlaceMlegOrderWithHttpInfo(userId, userSecret, accountId, mlegTradeForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceMlegOrderWithHttpInfo: " + e.Message);
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
| **mlegTradeForm** | [**MlegTradeForm**](MlegTradeForm.md) |  |  |

### Return type

[**MlegOrderResponse**](MlegOrderResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceOrder**



Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).  It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class PlaceOrderExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var tradeId = "tradeId_example"; // Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var waitToConfirm = true; // Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.
            
            var validatedTradeBody = new ValidatedTradeBody(
                waitToConfirm
            );
            
            try
            {
                // Place checked equity order
                AccountOrderRecord result = client.Trading.PlaceOrder(tradeId, userId, userSecret, validatedTradeBody);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PlaceOrder: " + e.Message);
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

#### Using the PlaceOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place checked equity order
    ApiResponse<AccountOrderRecord> response = apiInstance.PlaceOrderWithHttpInfo(tradeId, userId, userSecret, validatedTradeBody);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceOrderWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **tradeId** | **string** | Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact) |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **validatedTradeBody** | [**ValidatedTradeBody**](ValidatedTradeBody.md) |  | [optional]  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status of order placed |  -  |
| **400** | Failed to submit order to broker |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PreviewCryptoOrder**



Previews an order using the specified account. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class PreviewCryptoOrderExample
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
            var instrument = new CryptoTradingInstrument();
            var side = ActionStrict.BUY;
            var type = CryptoOrderForm.TypeEnum.MARKET; // The type of order to place.
            var timeInForce = CryptoOrderForm.TimeInForceEnum.GTC; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
            var amount = "123.45"; // The amount of the base currency to buy or sell.
            var limitPrice = "123.45"; // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
            var stopPrice = "123.45"; // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
            var postOnly = false; // Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
            var expirationDate = DateTime.Now; // The expiration date of the order. Required if the time_in_force is GTD.
            
            var cryptoOrderForm = new CryptoOrderForm(
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
                // Preview crypto order
                CryptoOrderPreview result = client.Trading.PreviewCryptoOrder(userId, userSecret, accountId, cryptoOrderForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PreviewCryptoOrder: " + e.Message);
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

#### Using the PreviewCryptoOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Preview crypto order
    ApiResponse<CryptoOrderPreview> response = apiInstance.PreviewCryptoOrderWithHttpInfo(userId, userSecret, accountId, cryptoOrderForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PreviewCryptoOrderWithHttpInfo: " + e.Message);
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
| **cryptoOrderForm** | [**CryptoOrderForm**](CryptoOrderForm.md) |  |  |

### Return type

[**CryptoOrderPreview**](CryptoOrderPreview.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ReplaceOrder**



Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one returned in the response going forward. Only supported on some brokerages 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ReplaceOrderExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var accountId = "accountId_example"; // The ID of the account to execute the trade on.
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var brokerageOrderId = "66a033fa-da74-4fcf-b527-feefdec9257e"; // Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
            var action = ActionStrict.BUY;
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = TimeInForceStrict.FOK;
            var price = 31.33; // The limit price for `Limit` and `StopLimit` orders.
            var symbol = "AAPL"; // The security's trading ticker symbol
            var stop = 31.33; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
            var units = 10.5; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
            
            var manualTradeReplaceForm = new ManualTradeReplaceForm(
                brokerageOrderId,
                action,
                orderType,
                timeInForce,
                price,
                symbol,
                stop,
                units
            );
            
            try
            {
                // Replace order
                AccountOrderRecord result = client.Trading.ReplaceOrder(accountId, userId, userSecret, manualTradeReplaceForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.ReplaceOrder: " + e.Message);
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

#### Using the ReplaceOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Replace order
    ApiResponse<AccountOrderRecord> response = apiInstance.ReplaceOrderWithHttpInfo(accountId, userId, userSecret, manualTradeReplaceForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.ReplaceOrderWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** | The ID of the account to execute the trade on. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **manualTradeReplaceForm** | [**ManualTradeReplaceForm**](ManualTradeReplaceForm.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Trade could not be placed |  -  |
| **403** | User does not have permissions to place trades |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **SearchCryptocurrencyPairInstruments**



Searches cryptocurrency pairs instruments accessible to the specified account. Both `base` and `quote` are optional. Omit both for a full list of cryptocurrency pairs. 

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
                // Get crypto pairs
                TradingSearchCryptocurrencyPairInstruments200Response result = client.Trading.SearchCryptocurrencyPairInstruments(userId, userSecret, accountId, _base, quote);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.SearchCryptocurrencyPairInstruments: " + e.Message);
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
    // Get crypto pairs
    ApiResponse<TradingSearchCryptocurrencyPairInstruments200Response> response = apiInstance.SearchCryptocurrencyPairInstrumentsWithHttpInfo(userId, userSecret, accountId, _base, quote);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.SearchCryptocurrencyPairInstrumentsWithHttpInfo: " + e.Message);
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

