# SnapTrade.Net.Api.ExperimentalEndpointsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AddSubscription**](ExperimentalEndpointsApi.md#addsubscription) | **POST** /snapTrade/tradeDetection/subscriptions | Add a Trade Detection subscription |
| [**CancelSubscription**](ExperimentalEndpointsApi.md#cancelsubscription) | **POST** /snapTrade/tradeDetection/subscriptions/cancel | Cancel a Trade Detection subscription |
| [**GetUserAccountOrderDetailV2**](ExperimentalEndpointsApi.md#getuseraccountorderdetailv2) | **GET** /accounts/{accountId}/orders/details/v2/{brokerageOrderId} | Get account order detail (V2) |
| [**GetUserAccountOrdersV2**](ExperimentalEndpointsApi.md#getuseraccountordersv2) | **GET** /accounts/{accountId}/orders/v2 | List account orders v2 |
| [**GetUserAccountRecentOrdersV2**](ExperimentalEndpointsApi.md#getuseraccountrecentordersv2) | **GET** /accounts/{accountId}/recentOrders/v2 | List account recent orders (V2, last 24 hours only) |
| [**ListSubscriptions**](ExperimentalEndpointsApi.md#listsubscriptions) | **GET** /snapTrade/tradeDetection/subscriptions | List active Trade Detection subscriptions |


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

            var userId = "userId_example";
            var userSecret = "userSecret_example";
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

            var accountId = "accountId_example";
            var brokerageOrderId = "brokerageOrderId_example";
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
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
| **500** | Unexpected error |  -  |

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

            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var accountId = "accountId_example";
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
| **500** | Unexpected error |  -  |

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

            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var accountId = "accountId_example";
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
| **500** | Unexpected error |  -  |

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

