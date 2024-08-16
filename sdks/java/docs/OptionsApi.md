# OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getOptionStrategy**](OptionsApi.md#getOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy | Create options strategy |
| [**getOptionsChain**](OptionsApi.md#getOptionsChain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain for a symbol |
| [**getOptionsStrategyQuote**](OptionsApi.md#getOptionsStrategyQuote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get options strategy quotes |
| [**listOptionHoldings**](OptionsApi.md#listOptionHoldings) | **GET** /accounts/{accountId}/options | List account option positions |
| [**placeOptionStrategy**](OptionsApi.md#placeOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order |


<a name="getOptionStrategy"></a>
# **getOptionStrategy**
> StrategyQuotes getOptionStrategy(userId, userSecret, accountId, optionsGetOptionStrategyRequest).execute();

Create options strategy

Creates an option strategy object that will be used to place an option strategy order. 

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
    UUID accountId = UUID.randomUUID(); // The ID of the account to create the option strategy object in.
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
| **accountId** | **UUID**| The ID of the account to create the option strategy object in. | |
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

<a name="getOptionsChain"></a>
# **getOptionsChain**
> List&lt;OptionChainInner&gt; getOptionsChain(userId, userSecret, accountId, symbol).execute();

Get the options chain for a symbol

Returns the option chain for the specified symbol in the specified account.

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
    UUID accountId = UUID.randomUUID(); // The ID of the account to get the options chain from.
    UUID symbol = UUID.randomUUID(); // Universal symbol ID if symbol
    try {
      List<OptionChainInner> result = client
              .options
              .getOptionsChain(userId, userSecret, accountId, symbol)
              .execute();
      System.out.println(result);
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
| **accountId** | **UUID**| The ID of the account to get the options chain from. | |
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

<a name="getOptionsStrategyQuote"></a>
# **getOptionsStrategyQuote**
> StrategyQuotes getOptionsStrategyQuote(userId, userSecret, accountId, optionStrategyId).execute();

Get options strategy quotes

Returns a Strategy Quotes object which has latest market data of the specified option strategy. 

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
    UUID accountId = UUID.randomUUID(); // The ID of the account the strategy will be placed in.
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
| **accountId** | **UUID**| The ID of the account the strategy will be placed in. | |
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

<a name="listOptionHoldings"></a>
# **listOptionHoldings**
> List&lt;OptionsPosition&gt; listOptionHoldings(userId, userSecret, accountId).execute();

List account option positions

Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 

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
    UUID accountId = UUID.randomUUID();
    try {
      List<OptionsPosition> result = client
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
      ApiResponse<List<OptionsPosition>> response = client
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
| **accountId** | **UUID**|  | |

### Return type

[**List&lt;OptionsPosition&gt;**](OptionsPosition.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="placeOptionStrategy"></a>
# **placeOptionStrategy**
> StrategyOrderRecord placeOptionStrategy(userId, userSecret, accountId, optionStrategyId, optionsPlaceOptionStrategyRequest).execute();

Place an option strategy order

Places the option strategy order and returns the order record received from the brokerage.

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
    OrderTypeStrict orderType = OrderTypeStrict.fromValue("Limit");
    TimeInForceStrict timeInForce = TimeInForceStrict.fromValue("FOK");
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID(); // The ID of the account to execute the strategy in.
    UUID optionStrategyId = UUID.randomUUID(); // Option strategy id obtained from response when creating option strategy object
    Double price = 3.4D; // Trade Price if limit or stop limit order
    try {
      StrategyOrderRecord result = client
              .options
              .placeOptionStrategy(orderType, timeInForce, userId, userSecret, accountId, optionStrategyId)
              .price(price)
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
              .placeOptionStrategy(orderType, timeInForce, userId, userSecret, accountId, optionStrategyId)
              .price(price)
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
| **accountId** | **UUID**| The ID of the account to execute the strategy in. | |
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

