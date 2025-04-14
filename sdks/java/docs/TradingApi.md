# TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cancelOrder**](TradingApi.md#cancelOrder) | **POST** /accounts/{accountId}/trading/simple/{brokerageOrderId}/cancel | Cancel an order. |
| [**cancelUserAccountOrder**](TradingApi.md#cancelUserAccountOrder) | **POST** /accounts/{accountId}/orders/cancel | Cancel order |
| [**getCryptocurrencyPairQuote**](TradingApi.md#getCryptocurrencyPairQuote) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get cryptocurrency pair quote |
| [**getOrderImpact**](TradingApi.md#getOrderImpact) | **POST** /trade/impact | Check order impact |
| [**getUserAccountQuotes**](TradingApi.md#getUserAccountQuotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**placeBracketOrder**](TradingApi.md#placeBracketOrder) | **POST** /accounts/{accountId}/trading/bracket | Place a Bracket Order |
| [**placeForceOrder**](TradingApi.md#placeForceOrder) | **POST** /trade/place | Place order |
| [**placeOrder**](TradingApi.md#placeOrder) | **POST** /trade/{tradeId} | Place checked order |
| [**placeSimpleOrder**](TradingApi.md#placeSimpleOrder) | **POST** /accounts/{accountId}/trading/simple | Place order |
| [**previewSimpleOrder**](TradingApi.md#previewSimpleOrder) | **POST** /accounts/{accountId}/trading/simple/preview | Preview order |
| [**replaceOrder**](TradingApi.md#replaceOrder) | **PATCH** /accounts/{accountId}/trading/simple/{brokerageOrderId}/replace | Replaces an order with a new one |
| [**searchCryptocurrencyPairInstruments**](TradingApi.md#searchCryptocurrencyPairInstruments) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Search cryptocurrency pairs instruments |


<a name="cancelOrder"></a>
# **cancelOrder**
> OrderUpdatedResponse cancelOrder(userId, userSecret, accountId, brokerageOrderId).execute();

Cancel an order.

Cancels an order in the specified account. 

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
    String brokerageOrderId = "brokerageOrderId_example";
    try {
      OrderUpdatedResponse result = client
              .trading
              .cancelOrder(userId, userSecret, accountId, brokerageOrderId)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getOrder());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#cancelOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<OrderUpdatedResponse> response = client
              .trading
              .cancelOrder(userId, userSecret, accountId, brokerageOrderId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#cancelOrder");
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
| **brokerageOrderId** | **String**|  | |

### Return type

[**OrderUpdatedResponse**](OrderUpdatedResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Unexpected Error |  -  |

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
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getQuoteUniversalSymbol());
      System.out.println(result.getQuoteCurrency());
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
      System.out.println(result.getSymbol());
      System.out.println(result.getChildBrokerageOrderIds());
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

<a name="getCryptocurrencyPairQuote"></a>
# **getCryptocurrencyPairQuote**
> CryptocurrencyPairQuote getCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol).execute();

Get cryptocurrency pair quote

Gets a quote for the specified account. 

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
    String instrumentSymbol = "instrumentSymbol_example";
    try {
      CryptocurrencyPairQuote result = client
              .trading
              .getCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol)
              .execute();
      System.out.println(result);
      System.out.println(result.getBid());
      System.out.println(result.getAsk());
      System.out.println(result.getMid());
      System.out.println(result.getTimestamp());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getCryptocurrencyPairQuote");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<CryptocurrencyPairQuote> response = client
              .trading
              .getCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getCryptocurrencyPairQuote");
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
| **instrumentSymbol** | **String**|  | |

### Return type

[**CryptocurrencyPairQuote**](CryptocurrencyPairQuote.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Unexpected Error |  -  |

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
    String symbols = "symbols_example"; // List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator
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
| **symbols** | **String**| List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator | |
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

<a name="placeBracketOrder"></a>
# **placeBracketOrder**
> AccountOrderRecord placeBracketOrder(accountId, userId, userSecret, manualTradeFormBracket).execute();

Place a Bracket Order

Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for use. Only supported on certain brokerages 

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
    ActionStrictWithOptions action = ActionStrictWithOptions.fromValue("BUY");
    TradingInstrument instrument = new TradingInstrument();
    OrderTypeStrict orderType = OrderTypeStrict.fromValue("Limit");
    TimeInForceStrict timeInForce = TimeInForceStrict.fromValue("FOK");
    StopLoss stopLoss = new StopLoss();
    TakeProfit takeProfit = new TakeProfit();
    UUID accountId = UUID.randomUUID(); // The ID of the account to execute the trade on.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    String symbol = "symbol_example"; // The security's trading ticker symbol.
    Double price = 3.4D; // The limit price for `Limit` and `StopLimit` orders.
    Double stop = 3.4D; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    Double units = 3.4D; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    try {
      AccountOrderRecord result = client
              .trading
              .placeBracketOrder(action, instrument, orderType, timeInForce, stopLoss, takeProfit, accountId, userId, userSecret)
              .symbol(symbol)
              .price(price)
              .stop(stop)
              .units(units)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getQuoteUniversalSymbol());
      System.out.println(result.getQuoteCurrency());
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
      System.out.println(result.getSymbol());
      System.out.println(result.getChildBrokerageOrderIds());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeBracketOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecord> response = client
              .trading
              .placeBracketOrder(action, instrument, orderType, timeInForce, stopLoss, takeProfit, accountId, userId, userSecret)
              .symbol(symbol)
              .price(price)
              .stop(stop)
              .units(units)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeBracketOrder");
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
| **accountId** | **UUID**| The ID of the account to execute the trade on. | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **manualTradeFormBracket** | [**ManualTradeFormBracket**](ManualTradeFormBracket.md)|  | |

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

<a name="placeForceOrder"></a>
# **placeForceOrder**
> AccountOrderRecord placeForceOrder(userId, userSecret, manualTradeFormWithOptions).execute();

Place order

Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.  This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 

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
    ActionStrictWithOptions action = ActionStrictWithOptions.fromValue("BUY");
    OrderTypeStrict orderType = OrderTypeStrict.fromValue("Limit");
    TimeInForceStrict timeInForce = TimeInForceStrict.fromValue("FOK");
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID universalSymbolId = UUID.randomUUID(); // Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    String symbol = "symbol_example"; // The security's trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example \\\"AAPL  131124C00240000\\\" represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
    Double price = 3.4D; // The limit price for `Limit` and `StopLimit` orders.
    Double stop = 3.4D; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    Double units = 3.4D; // For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
    Object notionalValue = null;
    try {
      AccountOrderRecord result = client
              .trading
              .placeForceOrder(accountId, action, orderType, timeInForce, userId, userSecret)
              .universalSymbolId(universalSymbolId)
              .symbol(symbol)
              .price(price)
              .stop(stop)
              .units(units)
              .notionalValue(notionalValue)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getQuoteUniversalSymbol());
      System.out.println(result.getQuoteCurrency());
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
      System.out.println(result.getSymbol());
      System.out.println(result.getChildBrokerageOrderIds());
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
              .placeForceOrder(accountId, action, orderType, timeInForce, userId, userSecret)
              .universalSymbolId(universalSymbolId)
              .symbol(symbol)
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
| **manualTradeFormWithOptions** | [**ManualTradeFormWithOptions**](ManualTradeFormWithOptions.md)|  | |

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

Places the previously checked order with the brokerage. The &#x60;tradeId&#x60; is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 

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
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getQuoteUniversalSymbol());
      System.out.println(result.getQuoteCurrency());
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
      System.out.println(result.getSymbol());
      System.out.println(result.getChildBrokerageOrderIds());
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

<a name="placeSimpleOrder"></a>
# **placeSimpleOrder**
> OrderUpdatedResponse placeSimpleOrder(userId, userSecret, accountId, tradingPlaceSimpleOrderRequest).execute();

Place order

Places an order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order. 

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
    TradingInstrument instrument = new TradingInstrument();
    ActionStrict side = ActionStrict.fromValue("BUY");
    String type = "MARKET"; // The type of order to place.
    String timeInForce = "GTC"; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
    BigDecimal amount = new BigDecimal(78); // The amount of the base currency to buy or sell.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    BigDecimal limitPrice = new BigDecimal(78); // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    BigDecimal stopPrice = new BigDecimal(78); // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    Boolean postOnly = true; // Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    OffsetDateTime expirationDate = OffsetDateTime.now(); // The expiration date of the order. Required if the time_in_force is GTD.
    try {
      OrderUpdatedResponse result = client
              .trading
              .placeSimpleOrder(instrument, side, type, timeInForce, amount, userId, userSecret, accountId)
              .limitPrice(limitPrice)
              .stopPrice(stopPrice)
              .postOnly(postOnly)
              .expirationDate(expirationDate)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getOrder());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeSimpleOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<OrderUpdatedResponse> response = client
              .trading
              .placeSimpleOrder(instrument, side, type, timeInForce, amount, userId, userSecret, accountId)
              .limitPrice(limitPrice)
              .stopPrice(stopPrice)
              .postOnly(postOnly)
              .expirationDate(expirationDate)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeSimpleOrder");
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
| **tradingPlaceSimpleOrderRequest** | [**TradingPlaceSimpleOrderRequest**](TradingPlaceSimpleOrderRequest.md)|  | |

### Return type

[**OrderUpdatedResponse**](OrderUpdatedResponse.md)

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

<a name="previewSimpleOrder"></a>
# **previewSimpleOrder**
> SimpleOrderPreview previewSimpleOrder(userId, userSecret, accountId, tradingPlaceSimpleOrderRequest).execute();

Preview order

Previews an order using the specified account. 

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
    TradingInstrument instrument = new TradingInstrument();
    ActionStrict side = ActionStrict.fromValue("BUY");
    String type = "MARKET"; // The type of order to place.
    String timeInForce = "GTC"; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
    BigDecimal amount = new BigDecimal(78); // The amount of the base currency to buy or sell.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    BigDecimal limitPrice = new BigDecimal(78); // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    BigDecimal stopPrice = new BigDecimal(78); // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    Boolean postOnly = true; // Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    OffsetDateTime expirationDate = OffsetDateTime.now(); // The expiration date of the order. Required if the time_in_force is GTD.
    try {
      SimpleOrderPreview result = client
              .trading
              .previewSimpleOrder(instrument, side, type, timeInForce, amount, userId, userSecret, accountId)
              .limitPrice(limitPrice)
              .stopPrice(stopPrice)
              .postOnly(postOnly)
              .expirationDate(expirationDate)
              .execute();
      System.out.println(result);
      System.out.println(result.getEstimatedFee());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#previewSimpleOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<SimpleOrderPreview> response = client
              .trading
              .previewSimpleOrder(instrument, side, type, timeInForce, amount, userId, userSecret, accountId)
              .limitPrice(limitPrice)
              .stopPrice(stopPrice)
              .postOnly(postOnly)
              .expirationDate(expirationDate)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#previewSimpleOrder");
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
| **tradingPlaceSimpleOrderRequest** | [**TradingPlaceSimpleOrderRequest**](TradingPlaceSimpleOrderRequest.md)|  | |

### Return type

[**SimpleOrderPreview**](SimpleOrderPreview.md)

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

<a name="replaceOrder"></a>
# **replaceOrder**
> AccountOrderRecord replaceOrder(accountId, brokerageOrderId, userId, userSecret, manualTradeReplaceForm).execute();

Replaces an order with a new one

Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling the existing order and placing a new one. The order&#39;s brokerage_order_id may or may not change, be sure to use the one returned in the response going forward. Only supported on some brokerages 

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
    ActionStrict action = ActionStrict.fromValue("BUY");
    OrderTypeStrict orderType = OrderTypeStrict.fromValue("Limit");
    TimeInForceStrict timeInForce = TimeInForceStrict.fromValue("FOK");
    UUID accountId = UUID.randomUUID(); // The ID of the account to execute the trade on.
    String brokerageOrderId = "brokerageOrderId_example"; // The Brokerage Order ID of the order to replace.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    Double price = 3.4D; // The limit price for `Limit` and `StopLimit` orders.
    String symbol = "symbol_example"; // The security's trading ticker symbol
    Double stop = 3.4D; // The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    Double units = 3.4D; // Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    try {
      AccountOrderRecord result = client
              .trading
              .replaceOrder(action, orderType, timeInForce, accountId, brokerageOrderId, userId, userSecret)
              .price(price)
              .symbol(symbol)
              .stop(stop)
              .units(units)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
      System.out.println(result.getUniversalSymbol());
      System.out.println(result.getOptionSymbol());
      System.out.println(result.getQuoteUniversalSymbol());
      System.out.println(result.getQuoteCurrency());
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
      System.out.println(result.getSymbol());
      System.out.println(result.getChildBrokerageOrderIds());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#replaceOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecord> response = client
              .trading
              .replaceOrder(action, orderType, timeInForce, accountId, brokerageOrderId, userId, userSecret)
              .price(price)
              .symbol(symbol)
              .stop(stop)
              .units(units)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#replaceOrder");
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
| **accountId** | **UUID**| The ID of the account to execute the trade on. | |
| **brokerageOrderId** | **String**| The Brokerage Order ID of the order to replace. | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **manualTradeReplaceForm** | [**ManualTradeReplaceForm**](ManualTradeReplaceForm.md)|  | |

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

<a name="searchCryptocurrencyPairInstruments"></a>
# **searchCryptocurrencyPairInstruments**
> TradingSearchCryptocurrencyPairInstruments200Response searchCryptocurrencyPairInstruments(userId, userSecret, accountId).base(base).quote(quote).execute();

Search cryptocurrency pairs instruments

Searches cryptocurrency pairs instruments accessible to the specified account. 

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
    String base = "base_example";
    String quote = "quote_example";
    try {
      TradingSearchCryptocurrencyPairInstruments200Response result = client
              .trading
              .searchCryptocurrencyPairInstruments(userId, userSecret, accountId)
              .base(base)
              .quote(quote)
              .execute();
      System.out.println(result);
      System.out.println(result.getItems());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#searchCryptocurrencyPairInstruments");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TradingSearchCryptocurrencyPairInstruments200Response> response = client
              .trading
              .searchCryptocurrencyPairInstruments(userId, userSecret, accountId)
              .base(base)
              .quote(quote)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#searchCryptocurrencyPairInstruments");
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
| **base** | **String**|  | [optional] |
| **quote** | **String**|  | [optional] |

### Return type

[**TradingSearchCryptocurrencyPairInstruments200Response**](TradingSearchCryptocurrencyPairInstruments200Response.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Unexpected Error |  -  |

