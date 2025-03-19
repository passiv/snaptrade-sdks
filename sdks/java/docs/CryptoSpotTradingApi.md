# CryptoSpotTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cryptoSpotCancelOrder**](CryptoSpotTradingApi.md#cryptoSpotCancelOrder) | **POST** /accounts/{accountId}/trading/crypto/spot/cancelOrder | Cancel a crypto spot order. |
| [**cryptoSpotPlaceOrder**](CryptoSpotTradingApi.md#cryptoSpotPlaceOrder) | **POST** /accounts/{accountId}/trading/crypto/spot/placeOrder | Place a spot order on a crypto exchange |
| [**cryptoSpotPreviewOrder**](CryptoSpotTradingApi.md#cryptoSpotPreviewOrder) | **POST** /accounts/{accountId}/trading/crypto/spot/previewOrder | Place a spot order on a crypto exchange |
| [**cryptoSpotQuote**](CryptoSpotTradingApi.md#cryptoSpotQuote) | **GET** /accounts/{accountId}/trading/crypto/spot/quote | Get a quote for a cyrptocurrency market |
| [**cryptoSpotSymbols**](CryptoSpotTradingApi.md#cryptoSpotSymbols) | **GET** /accounts/{accountId}/trading/crypto/spot/symbols | Search crypto spot symbols |


<a name="cryptoSpotCancelOrder"></a>
# **cryptoSpotCancelOrder**
> AccountOrderRecord cryptoSpotCancelOrder(userId, userSecret, accountId, tradingCryptoSpotCancelOrderRequest).execute();

Cancel a crypto spot order.

Cancels a cryptocurrency spot order in the specified account. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.CryptoSpotTradingApi;
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
    String brokerageOrderId = "brokerageOrderId_example"; // Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    try {
      AccountOrderRecord result = client
              .cryptoSpotTrading
              .cryptoSpotCancelOrder(brokerageOrderId, userId, userSecret, accountId)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
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
      System.out.println(result.getSymbol());
      System.out.println(result.getChildBrokerageOrderIds());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotCancelOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecord> response = client
              .cryptoSpotTrading
              .cryptoSpotCancelOrder(brokerageOrderId, userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotCancelOrder");
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
| **tradingCryptoSpotCancelOrderRequest** | [**TradingCryptoSpotCancelOrderRequest**](TradingCryptoSpotCancelOrderRequest.md)|  | |

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

<a name="cryptoSpotPlaceOrder"></a>
# **cryptoSpotPlaceOrder**
> AccountOrderRecord cryptoSpotPlaceOrder(userId, userSecret, accountId, tradingCryptoSpotPlaceOrderRequest).execute();

Place a spot order on a crypto exchange

Places a spot cryptocurrency order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.CryptoSpotTradingApi;
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
    CryptocurrencyPair symbol = new CryptocurrencyPair();
    ActionStrict side = ActionStrict.fromValue("BUY");
    String type = "MARKET"; // The type of order to place.
    String timeInForce = "GTC"; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
    BigDecimal amount = new BigDecimal(78); // The amount of the base currency to buy or sell.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    BigDecimal limitPrice = new BigDecimal(78); // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    BigDecimal stopPrice = new BigDecimal(78); // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    Boolean postOnly = true; // Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
    OffsetDateTime expirationDate = OffsetDateTime.now(); // The expiration date of the order. Required if the time_in_force is GTD.
    try {
      AccountOrderRecord result = client
              .cryptoSpotTrading
              .cryptoSpotPlaceOrder(symbol, side, type, timeInForce, amount, userId, userSecret, accountId)
              .limitPrice(limitPrice)
              .stopPrice(stopPrice)
              .postOnly(postOnly)
              .expirationDate(expirationDate)
              .execute();
      System.out.println(result);
      System.out.println(result.getBrokerageOrderId());
      System.out.println(result.getStatus());
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
      System.out.println(result.getSymbol());
      System.out.println(result.getChildBrokerageOrderIds());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotPlaceOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountOrderRecord> response = client
              .cryptoSpotTrading
              .cryptoSpotPlaceOrder(symbol, side, type, timeInForce, amount, userId, userSecret, accountId)
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
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotPlaceOrder");
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
| **tradingCryptoSpotPlaceOrderRequest** | [**TradingCryptoSpotPlaceOrderRequest**](TradingCryptoSpotPlaceOrderRequest.md)|  | |

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

<a name="cryptoSpotPreviewOrder"></a>
# **cryptoSpotPreviewOrder**
> CryptoSpotOrderPreview cryptoSpotPreviewOrder(userId, userSecret, accountId, tradingCryptoSpotPlaceOrderRequest).execute();

Place a spot order on a crypto exchange

Previews a cryptocurrency spot order using the specified account. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.CryptoSpotTradingApi;
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
    CryptocurrencyPair symbol = new CryptocurrencyPair();
    ActionStrict side = ActionStrict.fromValue("BUY");
    String type = "MARKET"; // The type of order to place.
    String timeInForce = "GTC"; // The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
    BigDecimal amount = new BigDecimal(78); // The amount of the base currency to buy or sell.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    BigDecimal limitPrice = new BigDecimal(78); // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    BigDecimal stopPrice = new BigDecimal(78); // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    Boolean postOnly = true; // Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
    OffsetDateTime expirationDate = OffsetDateTime.now(); // The expiration date of the order. Required if the time_in_force is GTD.
    try {
      CryptoSpotOrderPreview result = client
              .cryptoSpotTrading
              .cryptoSpotPreviewOrder(symbol, side, type, timeInForce, amount, userId, userSecret, accountId)
              .limitPrice(limitPrice)
              .stopPrice(stopPrice)
              .postOnly(postOnly)
              .expirationDate(expirationDate)
              .execute();
      System.out.println(result);
      System.out.println(result.getEstimatedFee());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotPreviewOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<CryptoSpotOrderPreview> response = client
              .cryptoSpotTrading
              .cryptoSpotPreviewOrder(symbol, side, type, timeInForce, amount, userId, userSecret, accountId)
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
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotPreviewOrder");
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
| **tradingCryptoSpotPlaceOrderRequest** | [**TradingCryptoSpotPlaceOrderRequest**](TradingCryptoSpotPlaceOrderRequest.md)|  | |

### Return type

[**CryptoSpotOrderPreview**](CryptoSpotOrderPreview.md)

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

<a name="cryptoSpotQuote"></a>
# **cryptoSpotQuote**
> CryptoSpotQuote cryptoSpotQuote(userId, userSecret, accountId, base, quote).execute();

Get a quote for a cyrptocurrency market

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
import com.konfigthis.client.api.CryptoSpotTradingApi;
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
      CryptoSpotQuote result = client
              .cryptoSpotTrading
              .cryptoSpotQuote(userId, userSecret, accountId, base, quote)
              .execute();
      System.out.println(result);
      System.out.println(result.getBid());
      System.out.println(result.getAsk());
      System.out.println(result.getMid());
      System.out.println(result.getTimestamp());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotQuote");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<CryptoSpotQuote> response = client
              .cryptoSpotTrading
              .cryptoSpotQuote(userId, userSecret, accountId, base, quote)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotQuote");
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
| **base** | **String**|  | |
| **quote** | **String**|  | |

### Return type

[**CryptoSpotQuote**](CryptoSpotQuote.md)

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

<a name="cryptoSpotSymbols"></a>
# **cryptoSpotSymbols**
> TradingCryptoSpotSymbols200Response cryptoSpotSymbols(userId, userSecret, accountId, base).quote(quote).execute();

Search crypto spot symbols

Searches cryptocurrency spot symbols accessible to the specified account. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.CryptoSpotTradingApi;
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
      TradingCryptoSpotSymbols200Response result = client
              .cryptoSpotTrading
              .cryptoSpotSymbols(userId, userSecret, accountId, base)
              .quote(quote)
              .execute();
      System.out.println(result);
      System.out.println(result.getItems());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotSymbols");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TradingCryptoSpotSymbols200Response> response = client
              .cryptoSpotTrading
              .cryptoSpotSymbols(userId, userSecret, accountId, base)
              .quote(quote)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoSpotTradingApi#cryptoSpotSymbols");
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
| **base** | **String**|  | |
| **quote** | **String**|  | [optional] |

### Return type

[**TradingCryptoSpotSymbols200Response**](TradingCryptoSpotSymbols200Response.md)

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

