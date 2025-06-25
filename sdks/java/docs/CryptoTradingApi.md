# CryptoTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCryptocurrencyPairQuote**](CryptoTradingApi.md#getCryptocurrencyPairQuote) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get cryptocurrency pair quote |
| [**placeSimpleOrder**](CryptoTradingApi.md#placeSimpleOrder) | **POST** /accounts/{accountId}/trading/simple | Place order v2 |
| [**searchCryptocurrencyPairInstruments**](CryptoTradingApi.md#searchCryptocurrencyPairInstruments) | **GET** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Search cryptocurrency pairs instruments |


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
import com.konfigthis.client.api.CryptoTradingApi;
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
              .cryptoTrading
              .getCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol)
              .execute();
      System.out.println(result);
      System.out.println(result.getBid());
      System.out.println(result.getAsk());
      System.out.println(result.getMid());
      System.out.println(result.getTimestamp());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoTradingApi#getCryptocurrencyPairQuote");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<CryptocurrencyPairQuote> response = client
              .cryptoTrading
              .getCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoTradingApi#getCryptocurrencyPairQuote");
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

<a name="placeSimpleOrder"></a>
# **placeSimpleOrder**
> OrderUpdatedResponse placeSimpleOrder(userId, userSecret, accountId, simpleOrderForm).execute();

Place order v2

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
import com.konfigthis.client.api.CryptoTradingApi;
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
    String amount = "amount_example"; // The amount of the base currency to buy or sell.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    String limitPrice = "limitPrice_example"; // The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    String stopPrice = "stopPrice_example"; // The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    Boolean postOnly = true; // Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    OffsetDateTime expirationDate = OffsetDateTime.now(); // The expiration date of the order. Required if the time_in_force is GTD.
    try {
      OrderUpdatedResponse result = client
              .cryptoTrading
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
      System.err.println("Exception when calling CryptoTradingApi#placeSimpleOrder");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<OrderUpdatedResponse> response = client
              .cryptoTrading
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
      System.err.println("Exception when calling CryptoTradingApi#placeSimpleOrder");
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
| **simpleOrderForm** | [**SimpleOrderForm**](SimpleOrderForm.md)|  | |

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
import com.konfigthis.client.api.CryptoTradingApi;
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
              .cryptoTrading
              .searchCryptocurrencyPairInstruments(userId, userSecret, accountId)
              .base(base)
              .quote(quote)
              .execute();
      System.out.println(result);
      System.out.println(result.getItems());
    } catch (ApiException e) {
      System.err.println("Exception when calling CryptoTradingApi#searchCryptocurrencyPairInstruments");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TradingSearchCryptocurrencyPairInstruments200Response> response = client
              .cryptoTrading
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
      System.err.println("Exception when calling CryptoTradingApi#searchCryptocurrencyPairInstruments");
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

