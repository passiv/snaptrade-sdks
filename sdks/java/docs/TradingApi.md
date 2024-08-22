# TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cancelUserAccountOrder**](TradingApi.md#cancelUserAccountOrder) | **POST** /accounts/{accountId}/orders/cancel | Cancel order |
| [**getOrderImpact**](TradingApi.md#getOrderImpact) | **POST** /trade/impact | Check order impact |
| [**getUserAccountQuotes**](TradingApi.md#getUserAccountQuotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**placeForceOrder**](TradingApi.md#placeForceOrder) | **POST** /trade/place | Place order |
| [**placeOrder**](TradingApi.md#placeOrder) | **POST** /trade/{tradeId} | Place checked order |


<a name="cancelUserAccountOrder"></a>
# **cancelUserAccountOrder**
> AccountOrderRecord cancelUserAccountOrder(userId, userSecret, accountId, tradingCancelUserAccountOrderRequest).execute();

Cancel order

Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;
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
    String brokerageOrderId = "brokerageOrderId_example"; // Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    try {
      AccountOrderRecord result = client
              .trading
              .cancelUserAccountOrder(userId, userSecret, accountId)
              .brokerageOrderId(brokerageOrderId)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
      System.out.println(result.getSymbol());
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getAction());
      System.out.println(result.getTotalQuantity());
      System.out.println(result.getOpenQuantity());
      System.out.println(result.getCanceledQuantity());
      System.out.println(result.getFilledQuantity());
      System.out.println(result.getExecutionPrice());
      System.out.println(result.getLimitPrice());
      System.out.println(result.getStopPrice());
      System.out.println(result.getOrderType());
      System.out.println(result.getTimeInForce());
      System.out.println(result.getTimePlaced());
      System.out.println(result.getTimeUpdated());
      System.out.println(result.getTimeExecuted());
      System.out.println(result.getExpiryDate());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#cancelUserAccountOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecord> response = client
              .trading
              .cancelUserAccountOrder(userId, userSecret, accountId)
              .brokerageOrderId(brokerageOrderId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#cancelUserAccountOrder");
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
| **tradingCancelUserAccountOrderRequest** | [**TradingCancelUserAccountOrderRequest**](TradingCancelUserAccountOrderRequest.md)|  | |

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

<a name="getOrderImpact"></a>
# **getOrderImpact**
> ManualTradeAndImpact getOrderImpact(userId, userSecret, manualTradeForm).execute();

Check order impact

Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a &#x60;Trade&#x60; object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the &#x60;Trade&#x60; object returned expires after 5 minutes. Any order placed using an expired &#x60;Trade&#x60; will be rejected.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;
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
    ActionStrict action = ActionStrict.fromValue("BUY");
    UUID universalSymbolId = UUID.randomUUID(); // Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    OrderTypeStrict orderType = OrderTypeStrict.fromValue("Limit");
    TimeInForceStrict timeInForce = TimeInForceStrict.fromValue("FOK");
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    Double price = 3.4D; // The limit price for `Limit` and `StopLimit` orders.
    Double stop = 3.4D; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    Double units = 3.4D; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    Object notionalValue = null;
    try {
      ManualTradeAndImpact result = client
              .trading
              .getOrderImpact(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret)
              .price(price)
              .stop(stop)
              .units(units)
              .notionalValue(notionalValue)
              .execute();
      System.out.println(result);
      System.out.println(result.getTrade());
      System.out.println(result.getTradeImpacts());
      System.out.println(result.getCombinedRemainingBalance());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getOrderImpact");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ManualTradeAndImpact> response = client
              .trading
              .getOrderImpact(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret)
              .price(price)
              .stop(stop)
              .units(units)
              .notionalValue(notionalValue)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getOrderImpact");
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
| **manualTradeForm** | [**ManualTradeForm**](ManualTradeForm.md)|  | |

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
| **200** | OK |  -  |
| **500** | Unexpected Error |  -  |

<a name="getUserAccountQuotes"></a>
# **getUserAccountQuotes**
> List&lt;SymbolsQuotesInner&gt; getUserAccountQuotes(userId, userSecret, symbols, accountId).useTicker(useTicker).execute();

Get symbol quotes

Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;
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
    String symbols = "symbols_example"; // List of Universal Symbol IDs or tickers to get quotes for.
    UUID accountId = UUID.randomUUID();
    Boolean useTicker = true; // Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.
    try {
      List<SymbolsQuotesInner> result = client
              .trading
              .getUserAccountQuotes(userId, userSecret, symbols, accountId)
              .useTicker(useTicker)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getUserAccountQuotes");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<SymbolsQuotesInner>> response = client
              .trading
              .getUserAccountQuotes(userId, userSecret, symbols, accountId)
              .useTicker(useTicker)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getUserAccountQuotes");
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
| **symbols** | **String**| List of Universal Symbol IDs or tickers to get quotes for. | |
| **accountId** | **UUID**|  | |
| **useTicker** | **Boolean**| Should be set to &#x60;True&#x60; if &#x60;symbols&#x60; are comprised of tickers. Defaults to &#x60;False&#x60; if not provided. | [optional] |

### Return type

[**List&lt;SymbolsQuotesInner&gt;**](SymbolsQuotesInner.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="placeForceOrder"></a>
# **placeForceOrder**
> AccountOrderRecord placeForceOrder(userId, userSecret, manualTradeForm).execute();

Place order

Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.   This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;
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
    ActionStrict action = ActionStrict.fromValue("BUY");
    UUID universalSymbolId = UUID.randomUUID(); // Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    OrderTypeStrict orderType = OrderTypeStrict.fromValue("Limit");
    TimeInForceStrict timeInForce = TimeInForceStrict.fromValue("FOK");
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    Double price = 3.4D; // The limit price for `Limit` and `StopLimit` orders.
    Double stop = 3.4D; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    Double units = 3.4D; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    Object notionalValue = null;
    try {
      AccountOrderRecord result = client
              .trading
              .placeForceOrder(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret)
              .price(price)
              .stop(stop)
              .units(units)
              .notionalValue(notionalValue)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
      System.out.println(result.getSymbol());
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getAction());
      System.out.println(result.getTotalQuantity());
      System.out.println(result.getOpenQuantity());
      System.out.println(result.getCanceledQuantity());
      System.out.println(result.getFilledQuantity());
      System.out.println(result.getExecutionPrice());
      System.out.println(result.getLimitPrice());
      System.out.println(result.getStopPrice());
      System.out.println(result.getOrderType());
      System.out.println(result.getTimeInForce());
      System.out.println(result.getTimePlaced());
      System.out.println(result.getTimeUpdated());
      System.out.println(result.getTimeExecuted());
      System.out.println(result.getExpiryDate());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeForceOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecord> response = client
              .trading
              .placeForceOrder(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret)
              .price(price)
              .stop(stop)
              .units(units)
              .notionalValue(notionalValue)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeForceOrder");
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
| **manualTradeForm** | [**ManualTradeForm**](ManualTradeForm.md)|  | |

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
| **200** | OK |  -  |
| **500** | Unexpected Error |  -  |

<a name="placeOrder"></a>
# **placeOrder**
> AccountOrderRecord placeOrder(tradeId, userId, userSecret).validatedTradeBody(validatedTradeBody).execute();

Place checked order

Places the previously checked order with the brokerage. The &#x60;tradeId&#x60; is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder). 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;
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
    UUID tradeId = UUID.randomUUID(); // Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    Boolean waitToConfirm = true; // Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.
    try {
      AccountOrderRecord result = client
              .trading
              .placeOrder(tradeId, userId, userSecret)
              .waitToConfirm(waitToConfirm)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
      System.out.println(result.getSymbol());
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getAction());
      System.out.println(result.getTotalQuantity());
      System.out.println(result.getOpenQuantity());
      System.out.println(result.getCanceledQuantity());
      System.out.println(result.getFilledQuantity());
      System.out.println(result.getExecutionPrice());
      System.out.println(result.getLimitPrice());
      System.out.println(result.getStopPrice());
      System.out.println(result.getOrderType());
      System.out.println(result.getTimeInForce());
      System.out.println(result.getTimePlaced());
      System.out.println(result.getTimeUpdated());
      System.out.println(result.getTimeExecuted());
      System.out.println(result.getExpiryDate());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecord> response = client
              .trading
              .placeOrder(tradeId, userId, userSecret)
              .waitToConfirm(waitToConfirm)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeOrder");
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
| **tradeId** | **UUID**| Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact) | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **validatedTradeBody** | [**ValidatedTradeBody**](ValidatedTradeBody.md)|  | [optional] |

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
| **500** | Unexpected Error |  -  |

