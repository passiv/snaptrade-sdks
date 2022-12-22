# TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**accountsAccountIdOrdersCancelPost**](TradingApi.md#accountsAccountIdOrdersCancelPost) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account |
| [**accountsAccountIdOrdersGet**](TradingApi.md#accountsAccountIdOrdersGet) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account |
| [**accountsAccountIdQuotesGet**](TradingApi.md#accountsAccountIdQuotesGet) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet**](TradingApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet**](TradingApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch**](TradingApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost**](TradingApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series |
| [**tradeImpactPost**](TradingApi.md#tradeImpactPost) | **POST** /trade/impact | Check impact of trades on account. |
| [**tradeOcoPost**](TradingApi.md#tradeOcoPost) | **POST** /trade/oco | Place a OCO (One Cancels Other) order |
| [**tradeTradeIdPost**](TradingApi.md#tradeTradeIdPost) | **POST** /trade/{tradeId} | Place order |


<a name="accountsAccountIdOrdersCancelPost"></a>
# **accountsAccountIdOrdersCancelPost**
> AccountOrderRecord accountsAccountIdOrdersCancelPost(userId, userSecret, accountId, body)

Cancel open order in account

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    UUID body = UUID.randomUUID(); // UUID | 
    try {
      AccountOrderRecord result = apiInstance.accountsAccountIdOrdersCancelPost(userId, userSecret, accountId, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#accountsAccountIdOrdersCancelPost");
      System.err.println("Status code: " + e.getCode());
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
| **body** | **UUID**|  | |

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

<a name="accountsAccountIdOrdersGet"></a>
# **accountsAccountIdOrdersGet**
> List&lt;AccountOrderRecord&gt; accountsAccountIdOrdersGet(userId, userSecret, accountId, state)

Get all history of orders placed in account

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    String state = "all"; // String | defaults value is set to \"all\"
    try {
      List<AccountOrderRecord> result = apiInstance.accountsAccountIdOrdersGet(userId, userSecret, accountId, state);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#accountsAccountIdOrdersGet");
      System.err.println("Status code: " + e.getCode());
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
| **state** | **String**| defaults value is set to \&quot;all\&quot; | [optional] [enum: all, open, executed] |

### Return type

[**List&lt;AccountOrderRecord&gt;**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List all orders in account |  -  |
| **500** | Unexpected error |  -  |

<a name="accountsAccountIdQuotesGet"></a>
# **accountsAccountIdQuotesGet**
> SymbolsQuotes accountsAccountIdQuotesGet(userId, userSecret, symbols, accountId, useTicker)

Get symbol quotes

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    UUID symbols = UUID.randomUUID(); // UUID | List of universal_symbol_id or tickers to get quotes for.
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account to get quotes.
    Boolean useTicker = true; // Boolean | Should be set to True if providing tickers.
    try {
      SymbolsQuotes result = apiInstance.accountsAccountIdQuotesGet(userId, userSecret, symbols, accountId, useTicker);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#accountsAccountIdQuotesGet");
      System.err.println("Status code: " + e.getCode());
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
| **symbols** | **UUID**| List of universal_symbol_id or tickers to get quotes for. | |
| **accountId** | **UUID**| The ID of the account to get quotes. | |
| **useTicker** | **Boolean**| Should be set to True if providing tickers. | [optional] |

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

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet**
> List&lt;TradeImpact&gt; portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet(portfolioGroupId, calculatedTradeId)

Return the impact of placing a series of trades on the portfolio

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // UUID | The ID of calculated trade to get account impact
    try {
      List<TradeImpact> result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet(portfolioGroupId, calculatedTradeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet");
      System.err.println("Status code: " + e.getCode());
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to perform rebalancing calculations | |
| **calculatedTradeId** | **UUID**| The ID of calculated trade to get account impact | |

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

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet**
> Trade portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet(portfolioGroupId, calculatedTradeId, tradeId)

Return details of a specific trade before it&#39;s placed

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // UUID | The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // UUID | The ID of trade object
    try {
      Trade result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet(portfolioGroupId, calculatedTradeId, tradeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet");
      System.err.println("Status code: " + e.getCode());
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to perform rebalancing calculations | |
| **calculatedTradeId** | **UUID**| The ID of calculated trade to get account impact | |
| **tradeId** | **UUID**| The ID of trade object | |

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

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch**
> Trade portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch(portfolioGroupId, calculatedTradeId, tradeId, trade)

Modify units of a trade before it is placed

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // UUID | The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // UUID | The ID of trade object
    Trade trade = new Trade(); // Trade | 
    try {
      Trade result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch(portfolioGroupId, calculatedTradeId, tradeId, trade);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch");
      System.err.println("Status code: " + e.getCode());
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to perform rebalancing calculations | |
| **calculatedTradeId** | **UUID**| The ID of calculated trade to get account impact | |
| **tradeId** | **UUID**| The ID of trade object | |
| **trade** | [**Trade**](Trade.md)|  | [optional] |

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

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost**
> List&lt;TradeExecutionStatus&gt; portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost(portfolioGroupId, calculatedTradeId)

Place orders for the CalculatedTrades in series

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // UUID | The ID of calculated trade to get account impact
    try {
      List<TradeExecutionStatus> result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost(portfolioGroupId, calculatedTradeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost");
      System.err.println("Status code: " + e.getCode());
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to perform rebalancing calculations | |
| **calculatedTradeId** | **UUID**| The ID of calculated trade to get account impact | |

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

<a name="tradeImpactPost"></a>
# **tradeImpactPost**
> ManualTradeAndImpact tradeImpactPost(userId, userSecret, manualTradeForm)

Check impact of trades on account.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    ManualTradeForm manualTradeForm = new ManualTradeForm(); // ManualTradeForm | 
    try {
      ManualTradeAndImpact result = apiInstance.tradeImpactPost(userId, userSecret, manualTradeForm);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#tradeImpactPost");
      System.err.println("Status code: " + e.getCode());
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
| **200** | Return trade object and it&#39;s impact on the account |  -  |
| **400** | Missing or wrong data format provided in request body |  -  |
| **403** | User does not have permissions to place trades |  -  |
| **500** | Unexpected Error |  -  |

<a name="tradeOcoPost"></a>
# **tradeOcoPost**
> AccountOrderRecord tradeOcoPost(userId, userSecret, tradeOcoPostRequest)

Place a OCO (One Cancels Other) order

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    TradeOcoPostRequest tradeOcoPostRequest = new TradeOcoPostRequest(); // TradeOcoPostRequest | 
    try {
      AccountOrderRecord result = apiInstance.tradeOcoPost(userId, userSecret, tradeOcoPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#tradeOcoPost");
      System.err.println("Status code: " + e.getCode());
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
| **tradeOcoPostRequest** | [**TradeOcoPostRequest**](TradeOcoPostRequest.md)|  | |

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

<a name="tradeTradeIdPost"></a>
# **tradeTradeIdPost**
> AccountOrderRecord tradeTradeIdPost(tradeId, userId, userSecret)

Place order

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    TradingApi apiInstance = new TradingApi(defaultClient);
    UUID tradeId = UUID.randomUUID(); // UUID | The ID of trade object obtained from trade/impact endpoint
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    try {
      AccountOrderRecord result = apiInstance.tradeTradeIdPost(tradeId, userId, userSecret);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#tradeTradeIdPost");
      System.err.println("Status code: " + e.getCode());
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
| **tradeId** | **UUID**| The ID of trade object obtained from trade/impact endpoint | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |

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

