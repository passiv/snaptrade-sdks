# OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getOptionStrategy**](OptionsApi.md#getOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order |
| [**getOptionsChain**](OptionsApi.md#getOptionsChain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain |
| [**getOptionsStrategyQuote**](OptionsApi.md#getOptionsStrategyQuote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy |
| [**listOptionHoldings**](OptionsApi.md#listOptionHoldings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account |
| [**placeOptionStrategy**](OptionsApi.md#placeOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage |


<a name="getOptionStrategy"></a>
# **getOptionStrategy**
> StrategyQuotes getOptionStrategy(userId, userSecret, accountId, optionsGetOptionStrategyRequest).execute();

Creates an option strategy object that will be used to place an option strategy order

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.OptionsApi;
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
    UUID underlyingSymbolId = UUID.randomUUID();
    List<OptionLeg> legs = Arrays.asList();
    String strategyType = "CUSTOM";
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID(); // The ID of the account get positions.
    try {
      StrategyQuotes result = client
              .options
              .getOptionStrategy(underlyingSymbolId, legs, strategyType, userId, userSecret, accountId)
              .execute();
      System.out.println(result);

      System.out.println(result.getStrategy());

      System.out.println(result.getOpenPrice());

      System.out.println(result.getBidPrice());

      System.out.println(result.getAskPrice());

      System.out.println(result.getVolatility());

      System.out.println(result.getGreek());

    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#getOptionStrategy");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<StrategyQuotes> response = client
              .options
              .getOptionStrategy(underlyingSymbolId, legs, strategyType, userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#getOptionStrategy");
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
| **accountId** | **UUID**| The ID of the account get positions. | |
| **optionsGetOptionStrategyRequest** | [**OptionsGetOptionStrategyRequest**](OptionsGetOptionStrategyRequest.md)|  | |

### Return type

[**StrategyQuotes**](StrategyQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order Quotes |  -  |
| **500** | Unexpected error |  -  |

<a name="getOptionsChain"></a>
# **getOptionsChain**
> List&lt;OptionChainInner&gt; getOptionsChain(userId, userSecret, accountId, symbol).execute();

Get the options chain

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.OptionsApi;
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
    UUID accountId = UUID.randomUUID(); // The ID of the account get positions.
    UUID symbol = UUID.randomUUID(); // Universal symbol ID if symbol
    try {
      List<OptionChainInner> result = client
              .options
              .getOptionsChain(userId, userSecret, accountId, symbol)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#getOptionsChain");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<OptionChainInner>> response = client
              .options
              .getOptionsChain(userId, userSecret, accountId, symbol)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#getOptionsChain");
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
| **accountId** | **UUID**| The ID of the account get positions. | |
| **symbol** | **UUID**| Universal symbol ID if symbol | |

### Return type

[**List&lt;OptionChainInner&gt;**](OptionChainInner.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of all Options available for the brokerage symbol |  -  |
| **500** | Unexpected error |  -  |

<a name="getOptionsStrategyQuote"></a>
# **getOptionsStrategyQuote**
> StrategyQuotes getOptionsStrategyQuote(userId, userSecret, accountId, optionStrategyId).execute();

Get latest market data of option strategy

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.OptionsApi;
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
    UUID accountId = UUID.randomUUID(); // The ID of the account get positions.
    UUID optionStrategyId = UUID.randomUUID(); // Option strategy id obtained from response when creating option strategy object
    try {
      StrategyQuotes result = client
              .options
              .getOptionsStrategyQuote(userId, userSecret, accountId, optionStrategyId)
              .execute();
      System.out.println(result);

      System.out.println(result.getStrategy());

      System.out.println(result.getOpenPrice());

      System.out.println(result.getBidPrice());

      System.out.println(result.getAskPrice());

      System.out.println(result.getVolatility());

      System.out.println(result.getGreek());

    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#getOptionsStrategyQuote");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<StrategyQuotes> response = client
              .options
              .getOptionsStrategyQuote(userId, userSecret, accountId, optionStrategyId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#getOptionsStrategyQuote");
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
| **accountId** | **UUID**| The ID of the account get positions. | |
| **optionStrategyId** | **UUID**| Option strategy id obtained from response when creating option strategy object | |

### Return type

[**StrategyQuotes**](StrategyQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order Quotes |  -  |
| **500** | Unexpected error |  -  |

<a name="listOptionHoldings"></a>
# **listOptionHoldings**
> List&lt;OptionsHoldings&gt; listOptionHoldings(userId, userSecret, accountId).execute();

Get the options holdings in the account

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.OptionsApi;
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
    UUID accountId = UUID.randomUUID(); // The ID of the account get positions.
    try {
      List<OptionsHoldings> result = client
              .options
              .listOptionHoldings(userId, userSecret, accountId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#listOptionHoldings");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<OptionsHoldings>> response = client
              .options
              .listOptionHoldings(userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#listOptionHoldings");
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
| **accountId** | **UUID**| The ID of the account get positions. | |

### Return type

[**List&lt;OptionsHoldings&gt;**](OptionsHoldings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The option holdings in the account |  -  |
| **500** | Unexpected error |  -  |

<a name="placeOptionStrategy"></a>
# **placeOptionStrategy**
> StrategyOrderRecord placeOptionStrategy(userId, userSecret, accountId, optionStrategyId, optionsPlaceOptionStrategyRequest).execute();

Place an option strategy order on the brokerage

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.OptionsApi;
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
    String orderType = "Limit";
    String timeInForce = "DAY";
    Double price = 3.4D; // Trade Price if limit or stop limit order
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID(); // The ID of the account get positions.
    UUID optionStrategyId = UUID.randomUUID(); // Option strategy id obtained from response when creating option strategy object
    try {
      StrategyOrderRecord result = client
              .options
              .placeOptionStrategy(orderType, timeInForce, price, userId, userSecret, accountId, optionStrategyId)
              .execute();
      System.out.println(result);

      System.out.println(result.getStrategy());

      System.out.println(result.getStatus());

      System.out.println(result.getFilledQuantity());

      System.out.println(result.getOpenQuantity());

      System.out.println(result.getClosedQuantity());

      System.out.println(result.getOrderType());

      System.out.println(result.getTimeInForce());

      System.out.println(result.getLimitPrice());

      System.out.println(result.getExecutionPrice());

      System.out.println(result.getTimePlaced());

      System.out.println(result.getTimeUpdated());

    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#placeOptionStrategy");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<StrategyOrderRecord> response = client
              .options
              .placeOptionStrategy(orderType, timeInForce, price, userId, userSecret, accountId, optionStrategyId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#placeOptionStrategy");
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
| **accountId** | **UUID**| The ID of the account get positions. | |
| **optionStrategyId** | **UUID**| Option strategy id obtained from response when creating option strategy object | |
| **optionsPlaceOptionStrategyRequest** | [**OptionsPlaceOptionStrategyRequest**](OptionsPlaceOptionStrategyRequest.md)|  | |

### Return type

[**StrategyOrderRecord**](StrategyOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status of strategy order placed |  -  |
| **500** | Unexpected error |  -  |

