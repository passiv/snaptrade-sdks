# OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**accountsAccountIdOptionsChainGet**](OptionsApi.md#accountsAccountIdOptionsChainGet) | **GET** /accounts/{accountId}/options_chain | Get the options chain |
| [**accountsAccountIdOptionsGet**](OptionsApi.md#accountsAccountIdOptionsGet) | **GET** /accounts/{accountId}/options | Get the options holdings in the account |
| [**accountsAccountIdOptionsSearchGet**](OptionsApi.md#accountsAccountIdOptionsSearchGet) | **GET** /accounts/{accountId}/options_search | Search for more specific option quotes from option chain. Date is required but can filter by min, max or min-max. |
| [**accountsAccountIdStrategyImpactPost**](OptionsApi.md#accountsAccountIdStrategyImpactPost) | **POST** /accounts/{accountId}/strategy_impact | Get a strategies impact on the account |
| [**accountsAccountIdStrategyPlacePost**](OptionsApi.md#accountsAccountIdStrategyPlacePost) | **POST** /accounts/{accountId}/strategy_place | Place the strategy order; impact not required but the StrategyOrderQuotes object is |
| [**accountsAccountIdStrategyQuotesPost**](OptionsApi.md#accountsAccountIdStrategyQuotesPost) | **POST** /accounts/{accountId}/strategy_quotes | Get a price quote for a strategy |


<a name="accountsAccountIdOptionsChainGet"></a>
# **accountsAccountIdOptionsChainGet**
> List&lt;OptionChainInner&gt; accountsAccountIdOptionsChainGet(userId, userSecret, accountId, symbol)

Get the options chain

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.OptionsApi;

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

    OptionsApi apiInstance = new OptionsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    UUID symbol = UUID.randomUUID(); // UUID | brokerage symbol to get quotes for.
    try {
      List<OptionChainInner> result = apiInstance.accountsAccountIdOptionsChainGet(userId, userSecret, accountId, symbol);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#accountsAccountIdOptionsChainGet");
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
| **symbol** | **UUID**| brokerage symbol to get quotes for. | |

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

<a name="accountsAccountIdOptionsGet"></a>
# **accountsAccountIdOptionsGet**
> OptionsHoldings accountsAccountIdOptionsGet(userId, userSecret, accountId)

Get the options holdings in the account

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.OptionsApi;

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

    OptionsApi apiInstance = new OptionsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    try {
      OptionsHoldings result = apiInstance.accountsAccountIdOptionsGet(userId, userSecret, accountId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#accountsAccountIdOptionsGet");
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

### Return type

[**OptionsHoldings**](OptionsHoldings.md)

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

<a name="accountsAccountIdOptionsSearchGet"></a>
# **accountsAccountIdOptionsSearchGet**
> List&lt;OptionChainInner&gt; accountsAccountIdOptionsSearchGet(userId, userSecret, accountId, date, minStrike, maxStrike)

Search for more specific option quotes from option chain. Date is required but can filter by min, max or min-max.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.OptionsApi;

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

    OptionsApi apiInstance = new OptionsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    String date = "date_example"; // String | The date of the options you are searching for. Will return closest date that has not passed. Format- [YYYY-MM-DD]
    Integer minStrike = 56; // Integer | The minimum strike price for the desired contract
    Integer maxStrike = 56; // Integer | The max strike price for the desired contract
    try {
      List<OptionChainInner> result = apiInstance.accountsAccountIdOptionsSearchGet(userId, userSecret, accountId, date, minStrike, maxStrike);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#accountsAccountIdOptionsSearchGet");
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
| **date** | **String**| The date of the options you are searching for. Will return closest date that has not passed. Format- [YYYY-MM-DD] | |
| **minStrike** | **Integer**| The minimum strike price for the desired contract | [optional] |
| **maxStrike** | **Integer**| The max strike price for the desired contract | [optional] |

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
| **200** | A successful query |  -  |
| **500** | Unexpected error |  -  |

<a name="accountsAccountIdStrategyImpactPost"></a>
# **accountsAccountIdStrategyImpactPost**
> StrategyImpact accountsAccountIdStrategyImpactPost(userId, userSecret, accountId, strategyQuotesRecord, body, strikePrice, primaryRoute, secondarRoute)

Get a strategies impact on the account

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.OptionsApi;

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

    OptionsApi apiInstance = new OptionsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    Map<String, Object> strategyQuotesRecord = null; // Map<String, Object> | The strategy quotes record returned from the strategy_quotes endpoint
    UUID body = UUID.randomUUID(); // UUID | 
    Integer strikePrice = 56; // Integer | The strike price, only needed if the order is a limit order
    String primaryRoute = "primaryRoute_example"; // String | The desired route for the order, default is \"AUTO\"
    String secondarRoute = "secondarRoute_example"; // String | The desired secondary route for the order, default is \"AUTO\"
    try {
      StrategyImpact result = apiInstance.accountsAccountIdStrategyImpactPost(userId, userSecret, accountId, strategyQuotesRecord, body, strikePrice, primaryRoute, secondarRoute);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#accountsAccountIdStrategyImpactPost");
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
| **strategyQuotesRecord** | [**Map&lt;String, Object&gt;**](Object.md)| The strategy quotes record returned from the strategy_quotes endpoint | |
| **body** | **UUID**|  | |
| **strikePrice** | **Integer**| The strike price, only needed if the order is a limit order | [optional] |
| **primaryRoute** | **String**| The desired route for the order, default is \&quot;AUTO\&quot; | [optional] |
| **secondarRoute** | **String**| The desired secondary route for the order, default is \&quot;AUTO\&quot; | [optional] |

### Return type

[**StrategyImpact**](StrategyImpact.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Impact of option strategy on user account |  -  |
| **500** | Unexpected error |  -  |

<a name="accountsAccountIdStrategyPlacePost"></a>
# **accountsAccountIdStrategyPlacePost**
> StrategyOrderPlace accountsAccountIdStrategyPlacePost(userId, userSecret, strategyOrder, strikePrice, accountId, body, primaryRoute, secondaryRoute)

Place the strategy order; impact not required but the StrategyOrderQuotes object is

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.OptionsApi;

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

    OptionsApi apiInstance = new OptionsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    Integer strategyOrder = 56; // Integer | 
    Integer strikePrice = 56; // Integer | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    UUID body = UUID.randomUUID(); // UUID | 
    Integer primaryRoute = 56; // Integer | 
    Integer secondaryRoute = 56; // Integer | 
    try {
      StrategyOrderPlace result = apiInstance.accountsAccountIdStrategyPlacePost(userId, userSecret, strategyOrder, strikePrice, accountId, body, primaryRoute, secondaryRoute);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#accountsAccountIdStrategyPlacePost");
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
| **strategyOrder** | **Integer**|  | |
| **strikePrice** | **Integer**|  | |
| **accountId** | **UUID**| The ID of the account get positions. | |
| **body** | **UUID**|  | |
| **primaryRoute** | **Integer**|  | [optional] |
| **secondaryRoute** | **Integer**|  | [optional] |

### Return type

[**StrategyOrderPlace**](StrategyOrderPlace.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order Record of canceled order |  -  |
| **500** | Unexpected error |  -  |

<a name="accountsAccountIdStrategyQuotesPost"></a>
# **accountsAccountIdStrategyQuotesPost**
> Object accountsAccountIdStrategyQuotesPost(userId, userSecret, legs, strategy, timeInForce, orderType, accountId, manualTradeForm)

Get a price quote for a strategy

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.OptionsApi;

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

    OptionsApi apiInstance = new OptionsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    Integer legs = 56; // Integer | 
    String strategy = "strategy_example"; // String | 
    String timeInForce = "timeInForce_example"; // String | 
    String orderType = "orderType_example"; // String | 
    UUID accountId = UUID.randomUUID(); // UUID | The ID of the account get positions.
    ManualTradeForm manualTradeForm = new ManualTradeForm(); // ManualTradeForm | 
    try {
      Object result = apiInstance.accountsAccountIdStrategyQuotesPost(userId, userSecret, legs, strategy, timeInForce, orderType, accountId, manualTradeForm);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OptionsApi#accountsAccountIdStrategyQuotesPost");
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
| **legs** | **Integer**|  | |
| **strategy** | **String**|  | |
| **timeInForce** | **String**|  | |
| **orderType** | **String**|  | |
| **accountId** | **UUID**| The ID of the account get positions. | |
| **manualTradeForm** | [**ManualTradeForm**](ManualTradeForm.md)|  | |

### Return type

**Object**

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

