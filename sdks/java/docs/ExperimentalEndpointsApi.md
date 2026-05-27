# ExperimentalEndpointsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addSubscription**](ExperimentalEndpointsApi.md#addSubscription) | **POST** /snapTrade/tradeDetection/subscriptions | Add a Trade Detection subscription |
| [**cancelSubscription**](ExperimentalEndpointsApi.md#cancelSubscription) | **POST** /snapTrade/tradeDetection/subscriptions/cancel | Cancel a Trade Detection subscription |
| [**getUserAccountOrderDetailV2**](ExperimentalEndpointsApi.md#getUserAccountOrderDetailV2) | **GET** /accounts/{accountId}/orders/details/v2/{brokerageOrderId} | Get account order detail (V2) |
| [**getUserAccountOrdersV2**](ExperimentalEndpointsApi.md#getUserAccountOrdersV2) | **GET** /accounts/{accountId}/orders/v2 | List account orders v2 |
| [**getUserAccountRecentOrdersV2**](ExperimentalEndpointsApi.md#getUserAccountRecentOrdersV2) | **GET** /accounts/{accountId}/recentOrders/v2 | List account recent orders (V2, last 24 hours only) |
| [**listSubscriptions**](ExperimentalEndpointsApi.md#listSubscriptions) | **GET** /snapTrade/tradeDetection/subscriptions | List active Trade Detection subscriptions |


<a name="addSubscription"></a>
# **addSubscription**
> TradeDetectionSubscription addSubscription(userId, userSecret, tradeDetectionAddSubscriptionRequest).execute();

Add a Trade Detection subscription

Adds or restores a Trade Detection subscription for a connected brokerage account. This endpoint requires &#x60;userId&#x60; and &#x60;userSecret&#x60; in addition to the partner signature. 

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ExperimentalEndpointsApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    UUID accountId = UUID.randomUUID(); // Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      TradeDetectionSubscription result = client
              .experimentalEndpoints
              .addSubscription(accountId, userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.getAccountId());
      System.out.println(result.getCost());
      System.out.println(result.getCheckIntervalSeconds());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#addSubscription");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TradeDetectionSubscription> response = client
              .experimentalEndpoints
              .addSubscription(accountId, userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#addSubscription");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **tradeDetectionAddSubscriptionRequest** | [**TradeDetectionAddSubscriptionRequest**](TradeDetectionAddSubscriptionRequest.md)|  | |

### Return type

[**TradeDetectionSubscription**](TradeDetectionSubscription.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Restored an existing cancelled Trade Detection subscription |  -  |
| **201** | Created a new Trade Detection subscription |  -  |
| **500** | Unexpected Error |  -  |

<a name="cancelSubscription"></a>
# **cancelSubscription**
> TradeDetectionCancelSubscriptionResponse cancelSubscription(tradeDetectionAddSubscriptionRequest).execute();

Cancel a Trade Detection subscription

Cancels a Trade Detection subscription for a connected brokerage account. This endpoint requires partner signature authentication only and does not require &#x60;userId&#x60; or &#x60;userSecret&#x60;. 

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ExperimentalEndpointsApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    UUID accountId = UUID.randomUUID(); // Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    try {
      TradeDetectionCancelSubscriptionResponse result = client
              .experimentalEndpoints
              .cancelSubscription(accountId)
              .execute();
      System.out.println(result);
      System.out.println(result.getSuccess());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#cancelSubscription");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TradeDetectionCancelSubscriptionResponse> response = client
              .experimentalEndpoints
              .cancelSubscription(accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#cancelSubscription");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **tradeDetectionAddSubscriptionRequest** | [**TradeDetectionAddSubscriptionRequest**](TradeDetectionAddSubscriptionRequest.md)|  | |

### Return type

[**TradeDetectionCancelSubscriptionResponse**](TradeDetectionCancelSubscriptionResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Cancelled the Trade Detection subscription, or it was already cancelled |  -  |
| **500** | Unexpected Error |  -  |

<a name="getUserAccountOrderDetailV2"></a>
# **getUserAccountOrderDetailV2**
> AccountOrderRecordV2 getUserAccountOrderDetailV2(accountId, brokerageOrderId, userId, userSecret).execute();

Get account order detail (V2)

Returns the detail of a single order using the brokerage order ID provided as a path parameter.  The V2 order response format includes all legs of the order in the &#x60;legs&#x60; list field. If the order is single legged, &#x60;legs&#x60; will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ExperimentalEndpointsApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    UUID accountId = UUID.randomUUID();
    String brokerageOrderId = "brokerageOrderId_example";
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      AccountOrderRecordV2 result = client
              .experimentalEndpoints
              .getUserAccountOrderDetailV2(accountId, brokerageOrderId, userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getBrokerageGroupOrderId());
      System.out.println(result.getOrderRole());
      System.out.println(result.getStatus());
      System.out.println(result.getOrderType());
      System.out.println(result.getTimeInForce());
      System.out.println(result.getTimePlaced());
      System.out.println(result.getTimeExecuted());
      System.out.println(result.getQuoteCurrency());
      System.out.println(result.getExecutionPrice());
      System.out.println(result.getLimitPrice());
      System.out.println(result.getStopPrice());
      System.out.println(result.getTrailingStop());
      System.out.println(result.getLegs());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#getUserAccountOrderDetailV2");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecordV2> response = client
              .experimentalEndpoints
              .getUserAccountOrderDetailV2(accountId, brokerageOrderId, userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#getUserAccountOrderDetailV2");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **UUID**|  | |
| **brokerageOrderId** | **String**|  | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |

### Return type

[**AccountOrderRecordV2**](AccountOrderRecordV2.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="getUserAccountOrdersV2"></a>
# **getUserAccountOrdersV2**
> AccountOrdersV2Response getUserAccountOrdersV2(userId, userSecret, accountId).state(state).days(days).execute();

List account orders v2

Returns a list of recent orders in the specified account.  The V2 order response format will include all legs of each order in the &#x60;legs&#x60; list field. If the order is single legged, &#x60;legs&#x60; will be a list of one leg.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ExperimentalEndpointsApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    String state = "all"; // defaults to \"all\"
    Integer days = 30; // Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90.
    try {
      AccountOrdersV2Response result = client
              .experimentalEndpoints
              .getUserAccountOrdersV2(userId, userSecret, accountId)
              .state(state)
              .days(days)
              .execute();
      System.out.println(result);
      System.out.println(result.getOrders());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#getUserAccountOrdersV2");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrdersV2Response> response = client
              .experimentalEndpoints
              .getUserAccountOrdersV2(userId, userSecret, accountId)
              .state(state)
              .days(days)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#getUserAccountOrdersV2");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **accountId** | **UUID**|  | |
| **state** | **String**| defaults to \&quot;all\&quot; | [optional] [enum: all, open, executed] |
| **days** | **Integer**| Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90. | [optional] |

### Return type

[**AccountOrdersV2Response**](AccountOrdersV2Response.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="getUserAccountRecentOrdersV2"></a>
# **getUserAccountRecentOrdersV2**
> AccountOrdersV2Response getUserAccountRecentOrdersV2(userId, userSecret, accountId).onlyExecuted(onlyExecuted).execute();

List account recent orders (V2, last 24 hours only)

A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders. Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days. By default only returns executed orders, but that can be changed by setting *only_executed* to false. **Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ExperimentalEndpointsApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    Boolean onlyExecuted = true; // Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    try {
      AccountOrdersV2Response result = client
              .experimentalEndpoints
              .getUserAccountRecentOrdersV2(userId, userSecret, accountId)
              .onlyExecuted(onlyExecuted)
              .execute();
      System.out.println(result);
      System.out.println(result.getOrders());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#getUserAccountRecentOrdersV2");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrdersV2Response> response = client
              .experimentalEndpoints
              .getUserAccountRecentOrdersV2(userId, userSecret, accountId)
              .onlyExecuted(onlyExecuted)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#getUserAccountRecentOrdersV2");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **accountId** | **UUID**|  | |
| **onlyExecuted** | **Boolean**| Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well | [optional] |

### Return type

[**AccountOrdersV2Response**](AccountOrdersV2Response.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="listSubscriptions"></a>
# **listSubscriptions**
> List&lt;TradeDetectionSubscription&gt; listSubscriptions().execute();

List active Trade Detection subscriptions

Returns active Trade Detection subscriptions for your Client ID. Cancelled subscriptions are not returned.

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ExperimentalEndpointsApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    try {
      List<TradeDetectionSubscription> result = client
              .experimentalEndpoints
              .listSubscriptions()
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#listSubscriptions");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<TradeDetectionSubscription>> response = client
              .experimentalEndpoints
              .listSubscriptions()
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ExperimentalEndpointsApi#listSubscriptions");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;TradeDetectionSubscription&gt;**](TradeDetectionSubscription.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Active Trade Detection subscriptions |  -  |
| **500** | Unexpected Error |  -  |

