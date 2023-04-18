# SnapTrade.Net.Api.TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CancelUserAccountOrder**](TradingApi.md#canceluseraccountorder) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account |
| [**GetCalculatedTradeImpactById**](TradingApi.md#getcalculatedtradeimpactbyid) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed |
| [**GetCalculatedTradesImpact**](TradingApi.md#getcalculatedtradesimpact) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio |
| [**GetOrderImpact**](TradingApi.md#getorderimpact) | **POST** /trade/impact | Check impact of trades on account. |
| [**GetUserAccountQuotes**](TradingApi.md#getuseraccountquotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**ModifyCalculatedTradeById**](TradingApi.md#modifycalculatedtradebyid) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed |
| [**PlaceCalculatedTrades**](TradingApi.md#placecalculatedtrades) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series |
| [**PlaceForceOrder**](TradingApi.md#placeforceorder) | **POST** /trade/place | Place a trade with NO validation. |
| [**PlaceOCOOrder**](TradingApi.md#placeocoorder) | **POST** /trade/oco | Place a OCO (One Cancels Other) order |
| [**PlaceOrder**](TradingApi.md#placeorder) | **POST** /trade/{tradeId} | Place order |

<a name="canceluseraccountorder"></a>
# **CancelUserAccountOrder**
> AccountOrderRecord CancelUserAccountOrder (string userId, string userSecret, Guid accountId, TradingCancelUserAccountOrderRequest tradingCancelUserAccountOrderRequest)

Cancel open order in account

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
    public class CancelUserAccountOrderExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accountId = "accountId_example";  // Guid | The ID of the account get positions.
            var tradingCancelUserAccountOrderRequest = new TradingCancelUserAccountOrderRequest(); // TradingCancelUserAccountOrderRequest | The Order ID to be canceled

            try
            {
                // Cancel open order in account
                AccountOrderRecord result = apiInstance.CancelUserAccountOrder(userId, userSecret, accountId, tradingCancelUserAccountOrderRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.CancelUserAccountOrder: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Cancel open order in account
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
| **accountId** | **Guid** | The ID of the account get positions. |  |
| **tradingCancelUserAccountOrderRequest** | [**TradingCancelUserAccountOrderRequest**](TradingCancelUserAccountOrderRequest.md) | The Order ID to be canceled |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order Record of canceled order |  -  |
| **400** | Unable to cancel open order. Please verify status in brokerage account |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcalculatedtradeimpactbyid"></a>
# **GetCalculatedTradeImpactById**
> Trade GetCalculatedTradeImpactById (Guid portfolioGroupId, Guid calculatedTradeId, Guid tradeId)

Return details of a specific trade before it's placed

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
    public class GetCalculatedTradeImpactByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to perform rebalancing calculations
            var calculatedTradeId = "calculatedTradeId_example";  // Guid | The ID of calculated trade to get account impact
            var tradeId = "tradeId_example";  // Guid | The ID of trade object

            try
            {
                // Return details of a specific trade before it's placed
                Trade result = apiInstance.GetCalculatedTradeImpactById(portfolioGroupId, calculatedTradeId, tradeId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.GetCalculatedTradeImpactById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCalculatedTradeImpactByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return details of a specific trade before it's placed
    ApiResponse<Trade> response = apiInstance.GetCalculatedTradeImpactByIdWithHttpInfo(portfolioGroupId, calculatedTradeId, tradeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.GetCalculatedTradeImpactByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculatedTradeId** | **Guid** | The ID of calculated trade to get account impact |  |
| **tradeId** | **Guid** | The ID of trade object |  |

### Return type

[**Trade**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcalculatedtradesimpact"></a>
# **GetCalculatedTradesImpact**
> List&lt;TradeImpact&gt; GetCalculatedTradesImpact (Guid portfolioGroupId, Guid calculatedTradeId)

Return the impact of placing a series of trades on the portfolio

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
    public class GetCalculatedTradesImpactExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to perform rebalancing calculations
            var calculatedTradeId = "calculatedTradeId_example";  // Guid | The ID of calculated trade to get account impact

            try
            {
                // Return the impact of placing a series of trades on the portfolio
                List<TradeImpact> result = apiInstance.GetCalculatedTradesImpact(portfolioGroupId, calculatedTradeId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.GetCalculatedTradesImpact: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCalculatedTradesImpactWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return the impact of placing a series of trades on the portfolio
    ApiResponse<List<TradeImpact>> response = apiInstance.GetCalculatedTradesImpactWithHttpInfo(portfolioGroupId, calculatedTradeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.GetCalculatedTradesImpactWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculatedTradeId** | **Guid** | The ID of calculated trade to get account impact |  |

### Return type

[**List&lt;TradeImpact&gt;**](TradeImpact.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Impact of trades to make |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorderimpact"></a>
# **GetOrderImpact**
> ManualTradeAndImpact GetOrderImpact (string userId, string userSecret, ManualTradeForm manualTradeForm)

Check impact of trades on account.

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
    public class GetOrderImpactExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var manualTradeForm = new ManualTradeForm(); // ManualTradeForm | 

            try
            {
                // Check impact of trades on account.
                ManualTradeAndImpact result = apiInstance.GetOrderImpact(userId, userSecret, manualTradeForm);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.GetOrderImpact: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Check impact of trades on account.
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

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Return trade object and it&#39;s impact on the account |  -  |
| **400** | Missing or wrong data format provided in request body |  -  |
| **403** | User does not have permissions to place trades |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuseraccountquotes"></a>
# **GetUserAccountQuotes**
> SymbolsQuotes GetUserAccountQuotes (string userId, string userSecret, string symbols, Guid accountId, bool? useTicker = null)

Get symbol quotes

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
    public class GetUserAccountQuotesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var symbols = "symbols_example";  // string | List of universal_symbol_id or tickers to get quotes for.
            var accountId = "accountId_example";  // Guid | The ID of the account to get quotes.
            var useTicker = true;  // bool? | Should be set to True if providing tickers. (optional) 

            try
            {
                // Get symbol quotes
                SymbolsQuotes result = apiInstance.GetUserAccountQuotes(userId, userSecret, symbols, accountId, useTicker);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.GetUserAccountQuotes: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    ApiResponse<SymbolsQuotes> response = apiInstance.GetUserAccountQuotesWithHttpInfo(userId, userSecret, symbols, accountId, useTicker);
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
| **symbols** | **string** | List of universal_symbol_id or tickers to get quotes for. |  |
| **accountId** | **Guid** | The ID of the account to get quotes. |  |
| **useTicker** | **bool?** | Should be set to True if providing tickers. | [optional]  |

### Return type

[**SymbolsQuotes**](SymbolsQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns quotes object with different prices |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modifycalculatedtradebyid"></a>
# **ModifyCalculatedTradeById**
> Trade ModifyCalculatedTradeById (Guid portfolioGroupId, Guid calculatedTradeId, Guid tradeId, Trade trade = null)

Modify units of a trade before it is placed

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
    public class ModifyCalculatedTradeByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to perform rebalancing calculations
            var calculatedTradeId = "calculatedTradeId_example";  // Guid | The ID of calculated trade to get account impact
            var tradeId = "tradeId_example";  // Guid | The ID of trade object
            var trade = new Trade(); // Trade |  (optional) 

            try
            {
                // Modify units of a trade before it is placed
                Trade result = apiInstance.ModifyCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId, trade);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.ModifyCalculatedTradeById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ModifyCalculatedTradeByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Modify units of a trade before it is placed
    ApiResponse<Trade> response = apiInstance.ModifyCalculatedTradeByIdWithHttpInfo(portfolioGroupId, calculatedTradeId, tradeId, trade);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.ModifyCalculatedTradeByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculatedTradeId** | **Guid** | The ID of calculated trade to get account impact |  |
| **tradeId** | **Guid** | The ID of trade object |  |
| **trade** | [**Trade**](Trade.md) |  | [optional]  |

### Return type

[**Trade**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Modified trade object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="placecalculatedtrades"></a>
# **PlaceCalculatedTrades**
> List&lt;TradeExecutionStatus&gt; PlaceCalculatedTrades (Guid portfolioGroupId, Guid calculatedTradeId)

Place orders for the CalculatedTrades in series

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
    public class PlaceCalculatedTradesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to perform rebalancing calculations
            var calculatedTradeId = "calculatedTradeId_example";  // Guid | The ID of calculated trade to get account impact

            try
            {
                // Place orders for the CalculatedTrades in series
                List<TradeExecutionStatus> result = apiInstance.PlaceCalculatedTrades(portfolioGroupId, calculatedTradeId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.PlaceCalculatedTrades: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PlaceCalculatedTradesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place orders for the CalculatedTrades in series
    ApiResponse<List<TradeExecutionStatus>> response = apiInstance.PlaceCalculatedTradesWithHttpInfo(portfolioGroupId, calculatedTradeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceCalculatedTradesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculatedTradeId** | **Guid** | The ID of calculated trade to get account impact |  |

### Return type

[**List&lt;TradeExecutionStatus&gt;**](TradeExecutionStatus.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Return trade execution statuses for all trades submitted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="placeforceorder"></a>
# **PlaceForceOrder**
> AccountOrderRecord PlaceForceOrder (string userId, string userSecret, ManualTradeForm manualTradeForm)

Place a trade with NO validation.

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
    public class PlaceForceOrderExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var manualTradeForm = new ManualTradeForm(); // ManualTradeForm | 

            try
            {
                // Place a trade with NO validation.
                AccountOrderRecord result = apiInstance.PlaceForceOrder(userId, userSecret, manualTradeForm);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.PlaceForceOrder: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Place a trade with NO validation.
    ApiResponse<AccountOrderRecord> response = apiInstance.PlaceForceOrderWithHttpInfo(userId, userSecret, manualTradeForm);
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
| **manualTradeForm** | [**ManualTradeForm**](ManualTradeForm.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade sucessfully placed |  -  |
| **400** | Trade could not be placed |  -  |
| **403** | User does not have permissions to place trades |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="placeocoorder"></a>
# **PlaceOCOOrder**
> AccountOrderRecord PlaceOCOOrder (string userId, string userSecret, TradingPlaceOCOOrderRequest tradingPlaceOCOOrderRequest)

Place a OCO (One Cancels Other) order

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
    public class PlaceOCOOrderExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var tradingPlaceOCOOrderRequest = new TradingPlaceOCOOrderRequest(); // TradingPlaceOCOOrderRequest | 

            try
            {
                // Place a OCO (One Cancels Other) order
                AccountOrderRecord result = apiInstance.PlaceOCOOrder(userId, userSecret, tradingPlaceOCOOrderRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.PlaceOCOOrder: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PlaceOCOOrderWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Place a OCO (One Cancels Other) order
    ApiResponse<AccountOrderRecord> response = apiInstance.PlaceOCOOrderWithHttpInfo(userId, userSecret, tradingPlaceOCOOrderRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TradingApi.PlaceOCOOrderWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **tradingPlaceOCOOrderRequest** | [**TradingPlaceOCOOrderRequest**](TradingPlaceOCOOrderRequest.md) |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status of order placed |  -  |
| **400** | Failed to submit order to broker |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="placeorder"></a>
# **PlaceOrder**
> AccountOrderRecord PlaceOrder (Guid tradeId, string userId, string userSecret)

Place order

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
    public class PlaceOrderExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TradingApi(config);
            var tradeId = "tradeId_example";  // Guid | The ID of trade object obtained from trade/impact endpoint
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // Place order
                AccountOrderRecord result = apiInstance.PlaceOrder(tradeId, userId, userSecret);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TradingApi.PlaceOrder: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Place order
    ApiResponse<AccountOrderRecord> response = apiInstance.PlaceOrderWithHttpInfo(tradeId, userId, userSecret);
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
| **tradeId** | **Guid** | The ID of trade object obtained from trade/impact endpoint |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status of order placed |  -  |
| **400** | Failed to submit order to broker |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

