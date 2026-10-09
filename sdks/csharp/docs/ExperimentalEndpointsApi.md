# SnapTrade.Net.Api.ExperimentalEndpointsApi

All URIs are relative to *https://api.snaptrade.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AddSubscription**](ExperimentalEndpointsApi.md#addsubscription) | **POST** /snapTrade/tradeDetection/subscriptions | Add a Trade Detection subscription |
| [**CancelSubscription**](ExperimentalEndpointsApi.md#cancelsubscription) | **POST** /snapTrade/tradeDetection/subscriptions/cancel | Cancel a Trade Detection subscription |
| [**GetUserAccountOrderDetailV2**](ExperimentalEndpointsApi.md#getuseraccountorderdetailv2) | **GET** /accounts/{accountId}/orders/details/v2/{brokerageOrderId} | Get account order detail (V2) |
| [**GetUserAccountOrdersV2**](ExperimentalEndpointsApi.md#getuseraccountordersv2) | **GET** /accounts/{accountId}/orders/v2 | List account orders v2 |
| [**GetUserAccountRecentOrdersV2**](ExperimentalEndpointsApi.md#getuseraccountrecentordersv2) | **GET** /accounts/{accountId}/recentOrders/v2 | List account recent orders (V2, last 24 hours only) |
| [**ListSubscriptions**](ExperimentalEndpointsApi.md#listsubscriptions) | **GET** /snapTrade/tradeDetection/subscriptions | List active Trade Detection subscriptions |
| [**PlaceSimpleOrder**](ExperimentalEndpointsApi.md#placesimpleorder) | **POST** /accounts/{accountId}/trading/simple | Place a simple order (beta) |


# **AddSubscription**



Adds or restores a Trade Detection subscription for a connected brokerage account. This endpoint requires `userId` and `userSecret` in addition to the partner signature. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class AddSubscriptionExample
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
            var checkIntervalSeconds = 300; // How often the subscribed account should be checked for new trades. Must match an active Trade Detection plan.
            
            var tradeDetectionAddSubscriptionRequest = new TradeDetectionAddSubscriptionRequest(
                accountId,
                checkIntervalSeconds
            );
            
            try
            {
                // Add a Trade Detection subscription
                TradeDetectionSubscription result = client.ExperimentalEndpoints.AddSubscription(userId, userSecret, tradeDetectionAddSubscriptionRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ExperimentalEndpointsApi.AddSubscription: " + e.Message);
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

#### Using the AddSubscriptionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Add a Trade Detection subscription
    ApiResponse<TradeDetectionSubscription> response = apiInstance.AddSubscriptionWithHttpInfo(userId, userSecret, tradeDetectionAddSubscriptionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExperimentalEndpointsApi.AddSubscriptionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **tradeDetectionAddSubscriptionRequest** | [**TradeDetectionAddSubscriptionRequest**](TradeDetectionAddSubscriptionRequest.md) |  |  |

### Return type

[**TradeDetectionSubscription**](TradeDetectionSubscription.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Restored an existing cancelled Trade Detection subscription |  -  |
| **201** | Created a new Trade Detection subscription |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Feature not enabled |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **CancelSubscription**



Cancels a Trade Detection subscription for a connected brokerage account. This endpoint requires partner signature authentication only and does not require `userId` or `userSecret`. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CancelSubscriptionExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631"; // Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
            
            var tradeDetectionCancelSubscriptionRequest = new TradeDetectionCancelSubscriptionRequest(
                accountId
            );
            
            try
            {
                // Cancel a Trade Detection subscription
                TradeDetectionCancelSubscriptionResponse result = client.ExperimentalEndpoints.CancelSubscription(tradeDetectionCancelSubscriptionRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ExperimentalEndpointsApi.CancelSubscription: " + e.Message);
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

#### Using the CancelSubscriptionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Cancel a Trade Detection subscription
    ApiResponse<TradeDetectionCancelSubscriptionResponse> response = apiInstance.CancelSubscriptionWithHttpInfo(tradeDetectionCancelSubscriptionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExperimentalEndpointsApi.CancelSubscriptionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **tradeDetectionCancelSubscriptionRequest** | [**TradeDetectionCancelSubscriptionRequest**](TradeDetectionCancelSubscriptionRequest.md) |  |  |

### Return type

[**TradeDetectionCancelSubscriptionResponse**](TradeDetectionCancelSubscriptionResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Cancelled the Trade Detection subscription, or it was already cancelled |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Feature not enabled |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetUserAccountOrderDetailV2**



Returns the detail of a single order using the brokerage order ID provided as a path parameter.  The V2 order response format includes all legs of the order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountOrderDetailV2Example
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var accountId = "917c8734-8470-4a3e-a18f-57c3f2ee6631";
            var brokerageOrderId = "66a033fa-da74-4fcf-b527-feefdec9257e";
            var userId = "snaptrade-user-123";
            var userSecret = "adf2aa34-8219-40f7-a6b3-60156985cc61";
            
            try
            {
                // Get account order detail (V2)
                AccountOrderRecordV2 result = client.ExperimentalEndpoints.GetUserAccountOrderDetailV2(accountId, brokerageOrderId, userId, userSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ExperimentalEndpointsApi.GetUserAccountOrderDetailV2: " + e.Message);
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

#### Using the GetUserAccountOrderDetailV2WithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get account order detail (V2)
    ApiResponse<AccountOrderRecordV2> response = apiInstance.GetUserAccountOrderDetailV2WithHttpInfo(accountId, brokerageOrderId, userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExperimentalEndpointsApi.GetUserAccountOrderDetailV2WithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **string** |  |  |
| **brokerageOrderId** | **string** |  |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**AccountOrderRecordV2**](AccountOrderRecordV2.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Not Found |  -  |
| **429** | Rate limit exceeded. Check &#x60;X-RateLimit-Remaining&#x60; (customer-level) and &#x60;X-RateLimit-Account-Remaining&#x60; (account-level) to see which limit you hit, then wait for the matching &#x60;*-Reset&#x60; value before retrying.  Not every header listed below appears on every operation. The &#x60;X-RateLimit-Account-*&#x60; headers are sent only where the per-account limit is enforced, and OAuth-authenticated requests never receive the customer-level &#x60;X-RateLimit-Limit&#x60;, &#x60;X-RateLimit-Remaining&#x60; or &#x60;X-RateLimit-Reset&#x60;.  A separate per-authenticated-user limit, reported in no &#x60;X-RateLimit-*&#x60; header, covers OAuth-authenticated requests and signed requests not governed by the customer-level limit; it does not stack on top of that limit. So a 429 can arrive with every reported counter above zero — or with no &#x60;X-RateLimit-*&#x60; headers at all. Honour &#x60;Retry-After&#x60; in that case.  |  * Retry-After - Seconds to wait before retrying. <br>  * X-RateLimit-Limit -  <br>  * X-RateLimit-Remaining -  <br>  * X-RateLimit-Reset -  <br>  * X-RateLimit-Account-Limit -  <br>  * X-RateLimit-Account-Remaining -  <br>  * X-RateLimit-Account-Reset -  <br>  |
| **500** | Unexpected error |  -  |
| **503** | Service Unavailable - the brokerage connection is busy syncing (sync lock held) or the brokerage API is temporarily unavailable. Safe to retry. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetUserAccountOrdersV2**



Returns a list of recent orders in the specified account.  The V2 order response format will include all legs of each order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountOrdersV2Example
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
            var state = "all"; // defaults to \"all\" (optional) 
            var days = 30; // Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90. (optional) 
            
            try
            {
                // List account orders v2
                AccountOrdersV2Response result = client.ExperimentalEndpoints.GetUserAccountOrdersV2(userId, userSecret, accountId, state, days);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ExperimentalEndpointsApi.GetUserAccountOrdersV2: " + e.Message);
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

#### Using the GetUserAccountOrdersV2WithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List account orders v2
    ApiResponse<AccountOrdersV2Response> response = apiInstance.GetUserAccountOrdersV2WithHttpInfo(userId, userSecret, accountId, state, days);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExperimentalEndpointsApi.GetUserAccountOrdersV2WithHttpInfo: " + e.Message);
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
| **state** | **string** | defaults to \&quot;all\&quot; | [optional]  |
| **days** | **int?** | Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90. | [optional]  |

### Return type

[**AccountOrdersV2Response**](AccountOrdersV2Response.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **429** | Rate limit exceeded. Check &#x60;X-RateLimit-Remaining&#x60; (customer-level) and &#x60;X-RateLimit-Account-Remaining&#x60; (account-level) to see which limit you hit, then wait for the matching &#x60;*-Reset&#x60; value before retrying.  Not every header listed below appears on every operation. The &#x60;X-RateLimit-Account-*&#x60; headers are sent only where the per-account limit is enforced, and OAuth-authenticated requests never receive the customer-level &#x60;X-RateLimit-Limit&#x60;, &#x60;X-RateLimit-Remaining&#x60; or &#x60;X-RateLimit-Reset&#x60;.  A separate per-authenticated-user limit, reported in no &#x60;X-RateLimit-*&#x60; header, covers OAuth-authenticated requests and signed requests not governed by the customer-level limit; it does not stack on top of that limit. So a 429 can arrive with every reported counter above zero — or with no &#x60;X-RateLimit-*&#x60; headers at all. Honour &#x60;Retry-After&#x60; in that case.  |  * Retry-After - Seconds to wait before retrying. <br>  * X-RateLimit-Limit -  <br>  * X-RateLimit-Remaining -  <br>  * X-RateLimit-Reset -  <br>  * X-RateLimit-Account-Limit -  <br>  * X-RateLimit-Account-Remaining -  <br>  * X-RateLimit-Account-Reset -  <br>  |
| **500** | Unexpected error |  -  |
| **503** | Service Unavailable - the brokerage connection is busy syncing (sync lock held) or the brokerage API is temporarily unavailable. Safe to retry. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetUserAccountRecentOrdersV2**



A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders. Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days. By default only returns executed orders, but that can be changed by setting *only_executed* to false. **Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountRecentOrdersV2Example
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
            var onlyExecuted = true; // Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well (optional) 
            
            try
            {
                // List account recent orders (V2, last 24 hours only)
                AccountOrdersV2Response result = client.ExperimentalEndpoints.GetUserAccountRecentOrdersV2(userId, userSecret, accountId, onlyExecuted);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ExperimentalEndpointsApi.GetUserAccountRecentOrdersV2: " + e.Message);
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

#### Using the GetUserAccountRecentOrdersV2WithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List account recent orders (V2, last 24 hours only)
    ApiResponse<AccountOrdersV2Response> response = apiInstance.GetUserAccountRecentOrdersV2WithHttpInfo(userId, userSecret, accountId, onlyExecuted);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExperimentalEndpointsApi.GetUserAccountRecentOrdersV2WithHttpInfo: " + e.Message);
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
| **onlyExecuted** | **bool?** | Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well | [optional]  |

### Return type

[**AccountOrdersV2Response**](AccountOrdersV2Response.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **403** | Forbidden |  -  |
| **429** | Rate limit exceeded. Check &#x60;X-RateLimit-Remaining&#x60; (customer-level) and &#x60;X-RateLimit-Account-Remaining&#x60; (account-level) to see which limit you hit, then wait for the matching &#x60;*-Reset&#x60; value before retrying.  Not every header listed below appears on every operation. The &#x60;X-RateLimit-Account-*&#x60; headers are sent only where the per-account limit is enforced, and OAuth-authenticated requests never receive the customer-level &#x60;X-RateLimit-Limit&#x60;, &#x60;X-RateLimit-Remaining&#x60; or &#x60;X-RateLimit-Reset&#x60;.  A separate per-authenticated-user limit, reported in no &#x60;X-RateLimit-*&#x60; header, covers OAuth-authenticated requests and signed requests not governed by the customer-level limit; it does not stack on top of that limit. So a 429 can arrive with every reported counter above zero — or with no &#x60;X-RateLimit-*&#x60; headers at all. Honour &#x60;Retry-After&#x60; in that case.  |  * Retry-After - Seconds to wait before retrying. <br>  * X-RateLimit-Limit -  <br>  * X-RateLimit-Remaining -  <br>  * X-RateLimit-Reset -  <br>  * X-RateLimit-Account-Limit -  <br>  * X-RateLimit-Account-Remaining -  <br>  * X-RateLimit-Account-Reset -  <br>  |
| **500** | Unexpected error |  -  |
| **503** | Service Unavailable - the brokerage connection is busy syncing (sync lock held) or the brokerage API is temporarily unavailable. Safe to retry. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ListSubscriptions**



Returns active Trade Detection subscriptions for your Client ID. Cancelled subscriptions are not returned.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListSubscriptionsExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            
            try
            {
                // List active Trade Detection subscriptions
                List<TradeDetectionSubscription> result = client.ExperimentalEndpoints.ListSubscriptions();
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ExperimentalEndpointsApi.ListSubscriptions: " + e.Message);
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

#### Using the ListSubscriptionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List active Trade Detection subscriptions
    ApiResponse<List<TradeDetectionSubscription>> response = apiInstance.ListSubscriptionsWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ExperimentalEndpointsApi.ListSubscriptionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;TradeDetectionSubscription&gt;**](TradeDetectionSubscription.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Active Trade Detection subscriptions |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | Feature not enabled |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **PlaceSimpleOrder**



**Beta.** Places a single-leg or multi-leg order using a common request format for equities, equity options, futures, and future options. This endpoint is experimental; breaking changes are possible during the experimental phase.  Equity and equity-option orders use the existing brokerage trading capabilities. Futures and future options are currently supported only on tastytrade. Order types, time in force, optional fields, and strategy combinations remain subject to brokerage support. See the [brokerage trading support page](https://support.snaptrade.com/brokerages).  An order may contain equity/option legs or future/future_option legs, but cannot mix those two families. Equity/option strategies must share the same underlying symbol. Each strategy is submitted as one brokerage order; unsupported strategies are never split into independent orders. Tastytrade supports single-leg outright futures and up to four future-option legs, and does not support multi-leg market orders.  All string choices use lower snake_case and are case-sensitive. Symbols retain their native format: equity tickers, OCC equity-option symbols, or the exact tastytrade BrokerageInstrument ticker for futures and future options, including any spaces.  A successful response contains only the brokerage order ID. Use the existing order endpoints to retrieve order details. 

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
            var timeInForce = SimpleTradeForm.TimeInForceEnum.Day; // Order duration, subject to brokerage and execution-path support. gtd requires expiry_date and a non-market single-leg equity/option order. Existing single-leg option routing does not support ioc. Futures and multi-leg orders do not support gtd through this endpoint.
            var legs = new List<SimpleTradeLeg>(); // Legs of one brokerage order. Use equity/option legs or future/future_option legs, without mixing the two families. Brokerage strategy and leg-count limits apply.
            var limitPrice = 1.25M; // Required for limit and stop_limit orders, except that multi-leg price_effect even implies zero. Must be omitted or null for market and stop orders. For multi-leg orders this is the net strategy price. Negative prices are accepted only for futures-family orders, subject to brokerage support.
            var stopPrice = 1.25M; // Required for stop and stop_limit orders. Must be omitted or null for market and limit orders. Must be positive for equity/option orders; futures-family trigger prices are subject to brokerage support.
            var priceEffect = SimpleTradeForm.PriceEffectEnum.Debit; // Only applicable to multi-leg limit and stop_limit orders. Requirements and supported values depend on the brokerage; tastytrade requires credit or debit. even implies a zero limit_price, which may be omitted and must be zero if supplied. Single-leg price effects are derived from the action.
            var clientOrderId = "550e8400-e29b-41d4-a716-446655440000"; // Optional canonical UUID, forwarded where the existing execution path supports it and for tastytrade futures orders. Requires the existing client-order-ID enablement; when disabled the value is ignored. Brokerage behavior on duplicates varies; SnapTrade does not enforce uniqueness. Tastytrade uses this as external-identifier for correlation and does not deduplicate submissions.
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
                SimpleTradeResponse result = client.ExperimentalEndpoints.PlaceSimpleOrder(accountId, userId, userSecret, simpleTradeForm);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ExperimentalEndpointsApi.PlaceSimpleOrder: " + e.Message);
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
    Debug.Print("Exception when calling ExperimentalEndpointsApi.PlaceSimpleOrderWithHttpInfo: " + e.Message);
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
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

