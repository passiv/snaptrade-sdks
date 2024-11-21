# SnapTrade.Net.Api.TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CancelUserAccountOrder**](TradingApi.md#canceluseraccountorder) | **POST** /accounts/{accountId}/orders/cancel | Cancel order |
| [**GetOrderImpact**](TradingApi.md#getorderimpact) | **POST** /trade/impact | Check order impact |
| [**GetUserAccountQuotes**](TradingApi.md#getuseraccountquotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**PlaceForceOrder**](TradingApi.md#placeforceorder) | **POST** /trade/place | Place order |
| [**PlaceOrder**](TradingApi.md#placeorder) | **POST** /trade/{tradeId} | Place checked order |


# **CancelUserAccountOrder**



Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected. 

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
            
            var tradingCancelUserAccountOrderRequest = new TradingCancelUserAccountOrderRequest(
                brokerageOrderId
            );
            
            try
            {
                // Cancel order
                AccountOrderRecord result = client.Trading.CancelUserAccountOrder(userId, userSecret, accountId, tradingCancelUserAccountOrderRequest);
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
    // Cancel order
    ApiResponse<AccountOrderRecord> response = apiInstance.CancelUserAccountOrderWithHttpInfo(userId, userSecret, accountId, tradingCancelUserAccountOrderRequest);
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
| **tradingCancelUserAccountOrderRequest** | [**TradingCancelUserAccountOrderRequest**](TradingCancelUserAccountOrderRequest.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order Record of canceled order |  -  |
| **400** | Unable to cancel open order. Please verify status in brokerage account |  -  |
| **500** | Unexpected error |  -  |

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
                // Check order impact
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
    // Check order impact
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



Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.

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
                // Get symbol quotes
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
    // Get symbol quotes
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
            var symbol = "AAPL  131124C00240000"; // The security's trading ticker symbol. This currently only support Options symbols in the 21 character OCC format. For example \"AAPL  131124C00240000\" represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = TimeInForceStrict.FOK;
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
                price,
                stop,
                units,
                notionalValue
            );
            
            try
            {
                // Place order
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
    // Place order
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
                // Place checked order
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
    // Place checked order
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

