# SnapTrade.Net.Api.TradingApi

All URIs are relative to *https://api.snaptrade.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CancelOrder**](TradingApi.md#cancelorder) | **POST** /accounts/{accountId}/trading/cancel | Cancel order |
| [**GetCryptocurrencyPairQuote**](TradingApi.md#getcryptocurrencypairquote) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get crypto pair quote |
| [**GetOptionImpact**](TradingApi.md#getoptionimpact) | **POST** /accounts/{accountId}/trading/options/impact | Get option order impact |
| [**GetOrderImpact**](TradingApi.md#getorderimpact) | **POST** /trade/impact | Check equity order impact |
| [**GetUserAccountOptionQuotes**](TradingApi.md#getuseraccountoptionquotes) | **GET** /accounts/{accountId}/quotes/options | Get option quote |
| [**GetUserAccountQuotes**](TradingApi.md#getuseraccountquotes) | **GET** /accounts/{accountId}/quotes | Get equity symbol quotes |
| [**PlaceComplexOrder**](TradingApi.md#placecomplexorder) | **POST** /accounts/{accountId}/trading/complex | Place complex order |
| [**PlaceCryptoOrder**](TradingApi.md#placecryptoorder) | **POST** /accounts/{accountId}/trading/crypto | Place crypto order |
| [**PlaceForceOrder**](TradingApi.md#placeforceorder) | **POST** /trade/place | Place equity order |
| [**PlaceMlegOrder**](TradingApi.md#placemlegorder) | **POST** /accounts/{accountId}/trading/options | Place option order |
| [**PlaceOrder**](TradingApi.md#placeorder) | **POST** /trade/{tradeId} | Place checked equity order |
| [**PlaceSimpleOrder**](TradingApi.md#placesimpleorder) | **POST** /accounts/{accountId}/trading/simple | Place a simple order (beta) |
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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var instrumentSymbol = "BTC-USD";
            
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


# **GetOptionImpact**



Simulates an option order with up to 4 legs and returns the estimated cost and transaction fees without placing it. Only supported for certain enabled brokerages. Please refer to the [brokerage trading support page](https://support.snaptrade.com/brokerages) for more information on which brokerages support this endpoint. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetOptionImpactExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var clientOrderId = "3e8b682d-c901-4b2d-a67f-70f73b04a29e"; // Canonical 36-character UUID required when placing a Wealthsimple order with two or more legs. Not required for an impact preview or single-leg request. Reuse it when retrying the same attempt. SnapTrade retains the ID after success or failure; reuse by the same user across accounts or placement endpoints returns 409 without submitting again. A 409 does not establish whether the original attempt was accepted; reconcile it before using a new ID for a genuinely new order. This protection does not depend on Wealthsimple deduplicating its external order ID.
            var orderType = MlegOrderTypeStrict.MARKET;
            var timeInForce = TimeInForceStrict.FOK;
            var limitPrice = 8.9M; // The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT`, unless `price_effect` is `EVEN` - a net-even order is implicitly priced at 0, so the field may be omitted and must be `0` if sent.
            var stopPrice = 8.9M; // The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`.
            var priceEffect = MlegPriceEffectStrictNullable.CREDIT;
            var legs = new List<MlegLeg>();
            
            var mlegTradeForm = new MlegTradeForm(
                clientOrderId,
                orderType,
                timeInForce,
                limitPrice,
                stopPrice,
                priceEffect,
                legs
            );
            
            try
            {
                // Get option order impact
                OptionImpact result = client.Trading.GetOptionImpact(userId, userSecret, accountId, mlegTradeForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.GetOptionImpact: " + e.Message);
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

#### Using the GetOptionImpactWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get option order impact
    ApiResponse<OptionImpact> response = apiInstance.GetOptionImpactWithHttpInfo(userId, userSecret, accountId, mlegTradeForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.GetOptionImpactWithHttpInfo: " + e.Message);
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

[**OptionImpact**](OptionImpact.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Invalid request, or option impact is not supported for this brokerage |  -  |
| **403** | Forbidden |  -  |
| **501** | Deprecated. Previously returned when option impact was not supported for this brokerage; such requests now return 400. |  -  |

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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631"; // Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
            var action = ActionStrict.BUY;
            var universalSymbolId = "2bcd7cc3-e922-4976-bce1-9858296801c3"; // Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = TimeInForceStrict.FOK;
            var price = 31.33; // The limit price for `Limit` and `StopLimit` orders.
            var stop = 31.33; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
            var units = 10.5; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
            var notionalValue = new NotionalValueNullable(100); // Total notional amount for the order. Must be `null` if `units` is provided. Can only work with `Market` for `order_type` and `Day` for `time_in_force`. This is only available for certain brokerages. Please check the [integrations doc](https://support.snaptrade.com/brokerages-table?v=e7bbcbf9f272441593f93decde660687) for more information.
            
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


# **GetUserAccountOptionQuotes**



**Deprecated.** This endpoint was sunset on October 1, 2026 and now always returns `410 Gone`.  Returns a quote for a single option contract. The option contract is specified using in the 21 character OCC format. For example `AAPL  251114C00240000` represents a call option on AAPL expiring on 2025-11-14 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format) **Note:** These are derived values and are not suitable for trading purposes. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountOptionQuotesExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var symbol = "AAPL  251219C00150000"; // The OCC-formatted option symbol.
            
            try
            {
                // Get option quote
                OptionQuote result = client.Trading.GetUserAccountOptionQuotes(userId, userSecret, accountId, symbol);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.GetUserAccountOptionQuotes: " + e.Message);
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

#### Using the GetUserAccountOptionQuotesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get option quote
    ApiResponse<OptionQuote> response = apiInstance.GetUserAccountOptionQuotesWithHttpInfo(userId, userSecret, accountId, symbol);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.GetUserAccountOptionQuotesWithHttpInfo: " + e.Message);
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
| **symbol** | **string** | The OCC-formatted option symbol. |  |

### Return type

[**OptionQuote**](OptionQuote.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Option contract not found |  -  |
| **410** | Endpoint is no longer available |  -  |
| **429** | Rate limit exceeded |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetUserAccountQuotes**



Returns a maximum of 10 quotes from the brokerage for the specified symbols and account.  The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint.  **This endpoint is not a substitute for a market data provider. Frequent polling of this endpoint may result in the disabling of your keys**  This endpoint does not work for options quotes. 

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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var symbols = "symbols_example"; // List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator. Maximum of 10 values allowed
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
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
| **symbols** | **string** | List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator. Maximum of 10 values allowed |  |
| **accountId** | **string** |  |  |
| **useTicker** | **bool?** | Should be set to &#x60;True&#x60; if &#x60;symbols&#x60; are comprised of tickers. Defaults to &#x60;False&#x60; if not provided. | [optional]  |

### Return type

[**List&lt;SymbolsQuotesInner&gt;**](SymbolsQuotesInner.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **429** | Rate limit exceeded. Check &#x60;X-RateLimit-Remaining&#x60; (customer-level) and &#x60;X-RateLimit-Account-Remaining&#x60; (account-level) to see which limit you hit, then wait for the matching &#x60;*-Reset&#x60; value before retrying.  Not every header listed below appears on every operation. The &#x60;X-RateLimit-Account-*&#x60; headers are sent only where the per-account limit is enforced, and OAuth-authenticated requests never receive the customer-level &#x60;X-RateLimit-Limit&#x60;, &#x60;X-RateLimit-Remaining&#x60; or &#x60;X-RateLimit-Reset&#x60;.  A separate per-authenticated-user limit, reported in no &#x60;X-RateLimit-*&#x60; header, covers OAuth-authenticated requests and signed requests not governed by the customer-level limit; it does not stack on top of that limit. So a 429 can arrive with every reported counter above zero — or with no &#x60;X-RateLimit-*&#x60; headers at all. Honour &#x60;Retry-After&#x60; in that case.  |  * Retry-After - Seconds to wait before retrying. <br>  * X-RateLimit-Limit -  <br>  * X-RateLimit-Remaining -  <br>  * X-RateLimit-Reset -  <br>  * X-RateLimit-Account-Limit -  <br>  * X-RateLimit-Account-Remaining -  <br>  * X-RateLimit-Account-Reset -  <br>  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceComplexOrder**



Places a complex conditional order (OCO, OTO, or OTOCO). Only supported on certain brokerages. Please refer to the [brokerage trading support page](https://support.snaptrade.com/brokerages) for details on which brokerages support complex orders and which types they support.  - **OCO** (One Cancels the Other): Two peer orders; when one fills the other is cancelled. - **OTO** (One Triggers the Other): A trigger order that, when filled, activates a conditional order. - **OTOCO** (One Triggers a One Cancels the Other): A trigger order that, when filled, activates an OCO pair of two peer orders.  Option OCO peers must trade the same OCC option symbol with the same closing action and positive whole-contract quantity.  On tastytrade, option OCO supports closing an existing long or short option position with one `Limit` order and one `Stop` or `StopLimit` order. Both `PEER` orders must use `SELL_TO_CLOSE` or both must use `BUY_TO_CLOSE`, with `Day` or `GTC` time in force. Opening option OCOs are not supported.  On enabled Webull US v3 accounts, option OCO supports closing an existing long option position with one `Limit` take-profit order and one `Stop` stop-loss order. Both `PEER` orders must use `SELL_TO_CLOSE`, `Day`, the same OCC option symbol, and the same positive whole-contract quantity. Webull receives these as `STOP_PROFIT` and `STOP_LOSS` orders sharing a combo ID, without a MASTER order. Opening option OCOs, `BUY_TO_CLOSE`, `StopLimit`, and other option order pairs are not supported on Webull. Equity complex-order behavior is unchanged. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class PlaceComplexOrderExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631"; // The ID of the account to execute the trade on.
            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var type = ManualTradeFormComplex.TypeEnum.OTO; // The complex order type. - `OCO`: One Cancels the Other — two peer orders. - `OTO`: One Triggers the Other — a trigger order and a conditional order. - `OTOCO`: One Triggers a One Cancels the Other — a trigger order and two peer orders. 
            var orders = new List<ComplexOrderLeg>(); // The orders that make up the complex order. Required counts and roles per type: - `OCO`: exactly 2 orders, both `PEER` - `OTO`: exactly 2 orders, one `TRIGGER` and one `CONDITIONAL` - `OTOCO`: exactly 3 orders, one `TRIGGER` and two `PEER` 
            var clientOrderId = "550e8400-e29b-41d4-a716-446655440000"; // Caller-supplied canonical 36-character UUID. Required for Wealthsimple multi-leg placement and optional for other orders. SnapTrade rejects reuse by the same user for Wealthsimple multi-leg placement and OAuth requests. Otherwise, forwarding and duplicate prevention depend on the endpoint and brokerage. Refer to the request schema and per-brokerage documentation for behavior on duplicate submission. 
            
            var manualTradeFormComplex = new ManualTradeFormComplex(
                type,
                orders,
                clientOrderId
            );
            
            try
            {
                // Place complex order
                ComplexOrderResponse result = client.Trading.PlaceComplexOrder(accountId, userId, userSecret, manualTradeFormComplex);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PlaceComplexOrder: " + e.Message);
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

#### Using the PlaceComplexOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place complex order
    ApiResponse<ComplexOrderResponse> response = apiInstance.PlaceComplexOrderWithHttpInfo(accountId, userId, userSecret, manualTradeFormComplex);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceComplexOrderWithHttpInfo: " + e.Message);
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
| **manualTradeFormComplex** | [**ManualTradeFormComplex**](ManualTradeFormComplex.md) |  |  |

### Return type

[**ComplexOrderResponse**](ComplexOrderResponse.md)


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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var instrument = new CryptoTradingInstrument();
            var side = ActionStrict.BUY;
            var type = CryptoOrderForm.TypeEnum.MARKET; // The type of order to place.
            var timeInForce = CryptoOrderForm.TimeInForceEnum.GTC; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
            var amount = 123.45M; // The amount of the base currency to buy or sell.
            var limitPrice = 123.45M; // The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT` or `TAKE_PROFIT_LIMIT`.
            var stopPrice = 123.45M; // The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`, `TAKE_PROFIT_MARKET` or `TAKE_PROFIT_LIMIT`.
            var postOnly = false; // Valid and required only for order type `LIMIT`. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
            var expirationDate = DateTime.Now; // The expiration date of the order. Required if the time_in_force is `GTD`.
            
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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631"; // Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
            var action = ActionStrictWithOptions.BUY;
            var universalSymbolId = "2bcd7cc3-e922-4976-bce1-9858296801c3"; // Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
            var symbol = "AAPL"; // The security's trading ticker symbol. If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = ManualTradePlaceTimeInForceStrict.FOK;
            var tradingSession = TradingSession.REGULAR;
            var expiryDate = DateTime.Now; // Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the order expires. Required when `time_in_force` is `GTD`. Include a timezone offset or `Z` for UTC; if no timezone is provided, UTC is assumed. GTD orders are only available on certain brokerages. Visit https://support.snaptrade.com/brokerages for brokerage support.
            var price = 31.33; // The limit price for `Limit` and `StopLimit` orders.
            var stop = 31.33; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
            var units = 10.5; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
            var notionalValue = new NotionalValueNullable(100); // Total notional amount for the order. Must be `null` if `units` is provided. Can only work with `Market` for `order_type` and `Day` for `time_in_force`. This is only available for certain brokerages. Please check the [integrations doc](https://support.snaptrade.com/brokerages-table?v=e7bbcbf9f272441593f93decde660687) for more information.
            var clientOrderId = "550e8400-e29b-41d4-a716-446655440000"; // Caller-supplied canonical 36-character UUID. Required for Wealthsimple multi-leg placement and optional for other orders. SnapTrade rejects reuse by the same user for Wealthsimple multi-leg placement and OAuth requests. Otherwise, forwarding and duplicate prevention depend on the endpoint and brokerage. Refer to the request schema and per-brokerage documentation for behavior on duplicate submission. 
            
            var manualTradeFormWithOptions = new ManualTradeFormWithOptions(
                accountId,
                action,
                universalSymbolId,
                symbol,
                orderType,
                timeInForce,
                tradingSession,
                expiryDate,
                price,
                stop,
                units,
                notionalValue,
                clientOrderId
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



Places a multi-leg option order. Only supported on certain option trading brokerages. https://support.snaptrade.com/brokerages has information on brokerage trading support  Wealthsimple placement with two or more legs requires a canonical UUID `client_order_id`. Reuse it for retries of the same attempt. SnapTrade returns 409 for an ID already used by that user, including across accounts and after a lost placement response. Reconcile the original attempt before submitting a genuinely new order with a new ID. 

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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var clientOrderId = "3e8b682d-c901-4b2d-a67f-70f73b04a29e"; // Canonical 36-character UUID required when placing a Wealthsimple order with two or more legs. Not required for an impact preview or single-leg request. Reuse it when retrying the same attempt. SnapTrade retains the ID after success or failure; reuse by the same user across accounts or placement endpoints returns 409 without submitting again. A 409 does not establish whether the original attempt was accepted; reconcile it before using a new ID for a genuinely new order. This protection does not depend on Wealthsimple deduplicating its external order ID.
            var orderType = MlegOrderTypeStrict.MARKET;
            var timeInForce = TimeInForceStrict.FOK;
            var limitPrice = 8.9M; // The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT`, unless `price_effect` is `EVEN` - a net-even order is implicitly priced at 0, so the field may be omitted and must be `0` if sent.
            var stopPrice = 8.9M; // The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`.
            var priceEffect = MlegPriceEffectStrictNullable.CREDIT;
            var legs = new List<MlegLeg>();
            
            var mlegTradeForm = new MlegTradeForm(
                clientOrderId,
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
| **409** | The Wealthsimple client_order_id was already submitted by this user. No second order is submitted; this does not establish whether the original attempt was accepted. |  -  |
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

            var tradeId = "139e307a-82f7-4402-b39e-4da7baa87758"; // Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
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


# **PlaceSimpleOrder**



**Beta.** Places a single-leg or multi-leg order using a common request format for equities, equity options, futures, and future options. Breaking changes are possible while this endpoint is in beta.  Equity and equity-option orders use the existing brokerage trading capabilities. Futures are supported on tastytrade, Webull US, and TradeStation (live and SIM); future options are supported on tastytrade and TradeStation (live and SIM). Order types, time in force, optional fields, and strategy combinations remain subject to brokerage support. See the [brokerage trading support page](https://support.snaptrade.com/brokerages).  An order may contain equity/option legs or future/future_option legs, but cannot mix those two families. Equity/option strategies must share the same underlying symbol. Each strategy is submitted as one brokerage order; unsupported strategies are never split into independent orders. Tastytrade supports single-leg outright futures and up to four future-option legs, and does not support multi-leg market orders.  Webull US supports single-leg futures orders with buy or sell actions and positive whole-contract quantities. Supported order types are market, limit, stop, and stop_limit, with day or gtc duration. Futures options, multi-leg futures, trailing stops, and Webull Canada futures trading are not supported. Webull determines contract availability, margin requirements, and valid price increments.  TradeStation and TradeStation SIM support single-leg futures and futures-option orders in Futures accounts, with positive whole-contract quantities. Supported order types are market, limit, stop, and stop_limit, with day, gtc, ioc, or fok duration, subject to the contract and route's supported combinations. Futures use buy/sell; futures options use the open/close option actions. Multi-leg futures-family strategies are not supported. Prices are forwarded without rounding; TradeStation determines contract availability, permissions, margin requirements, and valid price increments.  All string choices use lower snake_case and are case-sensitive. Symbols retain their native format: equity tickers, OCC equity-option symbols, or brokerage-native futures symbols. For tastytrade, use the exact BrokerageInstrument ticker, including any spaces. For Webull US, use a specific unprefixed futures contract symbol such as ESZ6; slash-prefixed aliases, continuous/root-only symbols, and whitespace are not accepted. For TradeStation, use a specific two-digit-year contract such as ESZ26 or @ESZ26, or a futures-option symbol such as `ESZ26 C6000`, preserving the space and any session alias. The optional @ prefix is supported for dated futures contracts and is forwarded unchanged. Slash-prefixed aliases and root-only continuous symbols such as @ES are not accepted. A futures symbol does not need to be present in SnapTrade's local instrument catalog to submit an order.  A successful response contains only the brokerage order ID. Use the existing order endpoints to retrieve order details. 

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

            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631"; // The ID of the account to execute the trade on.
            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var orderType = SimpleTradeForm.OrderTypeEnum.StopLimit;
            var timeInForce = SimpleTradeForm.TimeInForceEnum.Day; // Order duration, subject to brokerage and execution-path support. gtd requires expiry_date and a non-market single-leg equity/option order. Existing single-leg option routing does not support ioc. Futures and multi-leg orders do not support gtd through this endpoint. Webull US futures only support day and gtc. TradeStation futures and futures options accept day, gtc, ioc, and fok, subject to the contract and route's supported combinations.
            var legs = new List<SimpleTradeLeg>(); // Legs of one brokerage order. Use equity/option legs or future/future_option legs, without mixing the two families. Brokerage strategy and leg-count limits apply.
            var limitPrice = 1.25M; // Required for limit and stop_limit orders, except that multi-leg price_effect even implies zero. Must be omitted or null for market and stop orders. For multi-leg orders this is the net strategy price. Negative prices are accepted only for futures-family orders, subject to brokerage support.
            var stopPrice = 1.25M; // Required for stop and stop_limit orders. Must be omitted or null for market and limit orders. Must be positive for equity/option orders; futures-family trigger prices are subject to brokerage support.
            var priceEffect = SimpleTradeForm.PriceEffectEnum.Debit; // Only applicable to multi-leg limit and stop_limit orders. Requirements and supported values depend on the brokerage; tastytrade requires credit or debit. even implies a zero limit_price, which may be omitted and must be zero if supplied. Single-leg price effects are derived from the action.
            var clientOrderId = "550e8400-e29b-41d4-a716-446655440000"; // Canonical UUID. Required for Wealthsimple multi-leg placement regardless of client-order-ID enablement; reuse it when retrying the same attempt. Wealthsimple multi-leg attempts retain the ID after success or failure, and reuse by the same user across accounts or placement endpoints returns 409 without another submission. A 409 does not establish whether the original attempt was accepted; reconcile it before creating a new order with a new ID. Optional for other orders, forwarded where the existing execution path supports it and for tastytrade, Webull US, and TradeStation futures-family orders. Other orders require the existing client-order-ID enablement; when disabled the value is ignored. Brokerage behavior on duplicates varies. OAuth requests also reject a client_order_id the user has already used with 409. Tastytrade uses this as external-identifier for correlation and does not deduplicate submissions. For Webull US futures, SnapTrade converts the supplied UUID (or its generated order UUID) to lowercase 32-character hexadecimal without hyphens. The original supplied UUID remains in SnapTrade's trade audit; the converted value is returned as brokerage_order_id for subsequent order reads. For TradeStation live and SIM, SnapTrade encodes the supplied UUID (or its generated order UUID) as 22-character URL-safe base64 without padding and sends it as OrderConfirmID for brokerage duplicate prevention; the response contains TradeStation's separate order ID.
            var expiryDate = DateTime.Now; // ISO 8601 expiry timestamp, required for gtd and invalid with other durations. A missing timezone is treated as UTC. Supported only through existing single-leg Public and Sandbox execution paths.
            var notionalValue = 1.25M; // Positive order value, supported only for a single-equity market order on eligible brokerages and partners. Mutually exclusive with leg units. Omit or set units to null when supplied.
            var tradingSession = SimpleTradeForm.TradingSessionEnum.Regular; // extended uses existing single-leg equity/option brokerage support and requires extended-hours enablement. Futures and multi-leg orders only accept regular.
            
            var simpleTradeForm = new SimpleTradeForm(
                orderType,
                timeInForce,
                legs,
                limitPrice,
                stopPrice,
                priceEffect,
                clientOrderId,
                expiryDate,
                notionalValue,
                tradingSession
            );
            
            try
            {
                // Place a simple order (beta)
                SimpleTradeResponse result = client.Trading.PlaceSimpleOrder(accountId, userId, userSecret, simpleTradeForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TradingApi.PlaceSimpleOrder: " + e.Message);
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
    // Place a simple order (beta)
    ApiResponse<SimpleTradeResponse> response = apiInstance.PlaceSimpleOrderWithHttpInfo(accountId, userId, userSecret, simpleTradeForm);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceSimpleOrderWithHttpInfo: " + e.Message);
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
| **simpleTradeForm** | [**SimpleTradeForm**](SimpleTradeForm.md) |  |  |

### Return type

[**SimpleTradeResponse**](SimpleTradeResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order placed |  -  |
| **400** | Invalid request, unsupported trading feature, or brokerage rejection |  -  |
| **403** | User does not have permissions to place trades |  -  |
| **404** | Account not found |  -  |
| **409** | For OAuth requests and Wealthsimple multi-leg placement, the client_order_id was already used by this user, or a request with it is in progress. Check the original attempt before submitting another order; this response does not establish whether the brokerage accepted it. |  -  |
| **500** | Unexpected error |  -  |

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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var instrument = new CryptoTradingInstrument();
            var side = ActionStrict.BUY;
            var type = CryptoOrderForm.TypeEnum.MARKET; // The type of order to place.
            var timeInForce = CryptoOrderForm.TimeInForceEnum.GTC; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
            var amount = 123.45M; // The amount of the base currency to buy or sell.
            var limitPrice = 123.45M; // The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT` or `TAKE_PROFIT_LIMIT`.
            var stopPrice = 123.45M; // The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`, `TAKE_PROFIT_MARKET` or `TAKE_PROFIT_LIMIT`.
            var postOnly = false; // Valid and required only for order type `LIMIT`. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
            var expirationDate = DateTime.Now; // The expiration date of the order. Required if the time_in_force is `GTD`.
            
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

            var accountId = "2bcd7cc3-e922-4976-bce1-9858296801c3"; // The ID of the account to execute the trade on.
            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var brokerageOrderId = "66a033fa-da74-4fcf-b527-feefdec9257e"; // Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
            var action = ActionStrictWithOptions.BUY;
            var orderType = OrderTypeStrict.Limit;
            var timeInForce = TimeInForceStrict.FOK;
            var price = 31.33; // The limit price for `Limit` and `StopLimit` orders.
            var symbol = "AAPL"; // The security's trading ticker symbol. Use the OCC symbol to replace an option order.
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

            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var _base = "BTC";
            var quote = "USD";
            
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

