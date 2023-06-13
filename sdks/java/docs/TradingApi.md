# TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cancelUserAccountOrder**](TradingApi.md#cancelUserAccountOrder) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account |
| [**getCalculatedTradeImpactById**](TradingApi.md#getCalculatedTradeImpactById) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed |
| [**getCalculatedTradesImpact**](TradingApi.md#getCalculatedTradesImpact) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio |
| [**getOrderImpact**](TradingApi.md#getOrderImpact) | **POST** /trade/impact | Check impact of trades on account. |
| [**getUserAccountQuotes**](TradingApi.md#getUserAccountQuotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes |
| [**modifyCalculatedTradeById**](TradingApi.md#modifyCalculatedTradeById) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed |
| [**placeCalculatedTrades**](TradingApi.md#placeCalculatedTrades) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series |
| [**placeForceOrder**](TradingApi.md#placeForceOrder) | **POST** /trade/place | Place a trade with NO validation. |
| [**placeOCOOrder**](TradingApi.md#placeOCOOrder) | **POST** /trade/oco | Place a OCO (One Cancels Other) order |
| [**placeOrder**](TradingApi.md#placeOrder) | **POST** /trade/{tradeId} | Place order |


<a name="cancelUserAccountOrder"></a>
# **cancelUserAccountOrder**
> AccountOrderRecord cancelUserAccountOrder(userId, userSecret, accountId, tradingCancelUserAccountOrderRequest).execute();

Cancel open order in account

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID(); // The ID of the account get positions.
    UUID brokerageOrderId = UUID.randomUUID();
    try {
      AccountOrderRecord result = api
              .cancelUserAccountOrder(userId, userSecret, accountId)
              .brokerageOrderId(brokerageOrderId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#cancelUserAccountOrder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<AccountOrderRecord> response = api
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
| **tradingCancelUserAccountOrderRequest** | [**TradingCancelUserAccountOrderRequest**](TradingCancelUserAccountOrderRequest.md)| The Order ID to be canceled | |

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
| **500** | Unexpected error |  -  |

<a name="getCalculatedTradeImpactById"></a>
# **getCalculatedTradeImpactById**
> Trade getCalculatedTradeImpactById(portfolioGroupId, calculatedTradeId, tradeId).execute();

Return details of a specific trade before it&#39;s placed

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // The ID of trade object
    try {
      Trade result = api
              .getCalculatedTradeImpactById(portfolioGroupId, calculatedTradeId, tradeId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getCalculatedTradeImpactById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<Trade> response = api
              .getCalculatedTradeImpactById(portfolioGroupId, calculatedTradeId, tradeId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getCalculatedTradeImpactById");
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

<a name="getCalculatedTradesImpact"></a>
# **getCalculatedTradesImpact**
> List&lt;TradeImpact&gt; getCalculatedTradesImpact(portfolioGroupId, calculatedTradeId).execute();

Return the impact of placing a series of trades on the portfolio

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // The ID of calculated trade to get account impact
    try {
      List<TradeImpact> result = api
              .getCalculatedTradesImpact(portfolioGroupId, calculatedTradeId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getCalculatedTradesImpact");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<List<TradeImpact>> response = api
              .getCalculatedTradesImpact(portfolioGroupId, calculatedTradeId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getCalculatedTradesImpact");
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

<a name="getOrderImpact"></a>
# **getOrderImpact**
> ManualTradeAndImpact getOrderImpact(userId, userSecret, manualTradeForm).execute();

Check impact of trades on account.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    Action action = Action.fromValue("BUY");
    OrderType orderType = OrderType.fromValue("Limit");
    Double price = 3.4D; // Trade Price if limit or stop limit order
    Double stop = 3.4D; // Stop Price. If stop loss or stop limit order, the price to trigger the stop
    TimeInForce timeInForce = TimeInForce.fromValue("Day");
    Double units = 3.4D; // Trade Units
    UUID universalSymbolId = UUID.randomUUID();
    try {
      ManualTradeAndImpact result = api
              .getOrderImpact(userId, userSecret)
              .accountId(accountId)
              .action(action)
              .orderType(orderType)
              .price(price)
              .stop(stop)
              .timeInForce(timeInForce)
              .units(units)
              .universalSymbolId(universalSymbolId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getOrderImpact");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<ManualTradeAndImpact> response = api
              .getOrderImpact(userId, userSecret)
              .accountId(accountId)
              .action(action)
              .orderType(orderType)
              .price(price)
              .stop(stop)
              .timeInForce(timeInForce)
              .units(units)
              .universalSymbolId(universalSymbolId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getOrderImpact");
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
| **500** | Unexpected Error |  -  |

<a name="getUserAccountQuotes"></a>
# **getUserAccountQuotes**
> SymbolsQuotes getUserAccountQuotes(userId, userSecret, symbols, accountId).useTicker(useTicker).execute();

Get symbol quotes

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    String symbols = "symbols_example"; // List of universal_symbol_id or tickers to get quotes for.
    String accountId = "accountId_example"; // The ID of the account to get quotes.
    Boolean useTicker = true; // Should be set to True if providing tickers.
    try {
      SymbolsQuotes result = api
              .getUserAccountQuotes(userId, userSecret, symbols, accountId)
              .useTicker(useTicker)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#getUserAccountQuotes");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<SymbolsQuotes> response = api
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
| **symbols** | **String**| List of universal_symbol_id or tickers to get quotes for. | |
| **accountId** | **String**| The ID of the account to get quotes. | |
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

<a name="modifyCalculatedTradeById"></a>
# **modifyCalculatedTradeById**
> Trade modifyCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId).trade(trade).execute();

Modify units of a trade before it is placed

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // The ID of trade object
    UUID id = UUID.randomUUID();
    Account account = new Account();
    BrokerageSymbol symbol = new BrokerageSymbol();
    UniversalSymbol universalSymbol = new UniversalSymbol();
    String action = "BUY";
    Integer units = 56;
    Double price = 3.4D;
    Integer sequence = 56;
    try {
      Trade result = api
              .modifyCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId)
              .id(id)
              .account(account)
              .symbol(symbol)
              .universalSymbol(universalSymbol)
              .action(action)
              .units(units)
              .price(price)
              .sequence(sequence)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#modifyCalculatedTradeById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<Trade> response = api
              .modifyCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId)
              .id(id)
              .account(account)
              .symbol(symbol)
              .universalSymbol(universalSymbol)
              .action(action)
              .units(units)
              .price(price)
              .sequence(sequence)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#modifyCalculatedTradeById");
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

<a name="placeCalculatedTrades"></a>
# **placeCalculatedTrades**
> List&lt;TradeExecutionStatus&gt; placeCalculatedTrades(portfolioGroupId, calculatedTradeId).execute();

Place orders for the CalculatedTrades in series

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // The ID of calculated trade to get account impact
    try {
      List<TradeExecutionStatus> result = api
              .placeCalculatedTrades(portfolioGroupId, calculatedTradeId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeCalculatedTrades");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<List<TradeExecutionStatus>> response = api
              .placeCalculatedTrades(portfolioGroupId, calculatedTradeId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeCalculatedTrades");
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

<a name="placeForceOrder"></a>
# **placeForceOrder**
> AccountOrderRecord placeForceOrder(userId, userSecret, manualTradeForm).execute();

Place a trade with NO validation.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    UUID accountId = UUID.randomUUID();
    Action action = Action.fromValue("BUY");
    OrderType orderType = OrderType.fromValue("Limit");
    Double price = 3.4D; // Trade Price if limit or stop limit order
    Double stop = 3.4D; // Stop Price. If stop loss or stop limit order, the price to trigger the stop
    TimeInForce timeInForce = TimeInForce.fromValue("Day");
    Double units = 3.4D; // Trade Units
    UUID universalSymbolId = UUID.randomUUID();
    try {
      AccountOrderRecord result = api
              .placeForceOrder(userId, userSecret)
              .accountId(accountId)
              .action(action)
              .orderType(orderType)
              .price(price)
              .stop(stop)
              .timeInForce(timeInForce)
              .units(units)
              .universalSymbolId(universalSymbolId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeForceOrder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<AccountOrderRecord> response = api
              .placeForceOrder(userId, userSecret)
              .accountId(accountId)
              .action(action)
              .orderType(orderType)
              .price(price)
              .stop(stop)
              .timeInForce(timeInForce)
              .units(units)
              .universalSymbolId(universalSymbolId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeForceOrder");
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

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade sucessfully placed |  -  |
| **500** | Unexpected Error |  -  |

<a name="placeOCOOrder"></a>
# **placeOCOOrder**
> AccountOrderRecord placeOCOOrder(userId, userSecret, tradingPlaceOCOOrderRequest).execute();

Place a OCO (One Cancels Other) order

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    Object firstTradeId = null; // The ID of first trade object obtained from trade/impact endpoint
    Object secondTradeId = null; // The ID of second trade object obtained from trade/impact endpoint
    try {
      AccountOrderRecord result = api
              .placeOCOOrder(userId, userSecret)
              .firstTradeId(firstTradeId)
              .secondTradeId(secondTradeId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeOCOOrder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<AccountOrderRecord> response = api
              .placeOCOOrder(userId, userSecret)
              .firstTradeId(firstTradeId)
              .secondTradeId(secondTradeId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeOCOOrder");
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
| **tradingPlaceOCOOrderRequest** | [**TradingPlaceOCOOrderRequest**](TradingPlaceOCOOrderRequest.md)|  | |

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

<a name="placeOrder"></a>
# **placeOrder**
> AccountOrderRecord placeOrder(tradeId, userId, userSecret).execute();

Place order

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TradingApi;

public class Example {
  public static void main(String[] args) {

    ApiClient apiClient = Configuration.getDefaultApiClient();
    // Set custom base path if desired
    // apiClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    apiClient.setPartnerClientId("YOUR API KEY");

    // Configure API key authorization: PartnerSignature
    apiClient.setPartnerSignature("YOUR API KEY");

    // Configure API key authorization: PartnerTimestamp
    apiClient.setPartnerTimestamp("YOUR API KEY");

    TradingApi api = new TradingApi(apiClient);
    UUID tradeId = UUID.randomUUID(); // The ID of trade object obtained from trade/impact endpoint
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      AccountOrderRecord result = api
              .placeOrder(tradeId, userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeOrder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<AccountOrderRecord> response = api
              .placeOrder(tradeId, userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TradingApi#placeOrder");
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
| **500** | Unexpected Error |  -  |

