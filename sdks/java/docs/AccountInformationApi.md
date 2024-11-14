# AccountInformationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAllUserHoldings**](AccountInformationApi.md#getAllUserHoldings) | **GET** /holdings | List all accounts for the user, plus balances, positions, and orders for each account. |
| [**getUserAccountBalance**](AccountInformationApi.md#getUserAccountBalance) | **GET** /accounts/{accountId}/balances | List account balances |
| [**getUserAccountDetails**](AccountInformationApi.md#getUserAccountDetails) | **GET** /accounts/{accountId} | Get account detail |
| [**getUserAccountOrders**](AccountInformationApi.md#getUserAccountOrders) | **GET** /accounts/{accountId}/orders | List account recent orders |
| [**getUserAccountPositions**](AccountInformationApi.md#getUserAccountPositions) | **GET** /accounts/{accountId}/positions | List account positions |
| [**getUserAccountRecentOrders**](AccountInformationApi.md#getUserAccountRecentOrders) | **GET** /accounts/{accountId}/recentOrders | List account recent executed orders |
| [**getUserHoldings**](AccountInformationApi.md#getUserHoldings) | **GET** /accounts/{accountId}/holdings | List account holdings |
| [**listUserAccounts**](AccountInformationApi.md#listUserAccounts) | **GET** /accounts | List accounts |
| [**updateUserAccount**](AccountInformationApi.md#updateUserAccount) | **PUT** /accounts/{accountId} | Update details of an investment account |


<a name="getAllUserHoldings"></a>
# **getAllUserHoldings**
> List&lt;AccountHoldings&gt; getAllUserHoldings(userId, userSecret).brokerageAuthorizations(brokerageAuthorizations).execute();

List all accounts for the user, plus balances, positions, and orders for each account.

**Deprecated, please use the account-specific holdings endpoint instead.**  List all accounts for the user, plus balances, positions, and orders for each account. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
    UUID brokerageAuthorizations = UUID.fromString("917c8734-8470-4a3e-a18f-57c3f2ee6631"); // Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).
    try {
      List<AccountHoldings> result = client
              .accountInformation
              .getAllUserHoldings(userId, userSecret)
              .brokerageAuthorizations(brokerageAuthorizations)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getAllUserHoldings");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<AccountHoldings>> response = client
              .accountInformation
              .getAllUserHoldings(userId, userSecret)
              .brokerageAuthorizations(brokerageAuthorizations)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getAllUserHoldings");
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
| **brokerageAuthorizations** | **UUID**| Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations). | [optional] |

### Return type

[**List&lt;AccountHoldings&gt;**](AccountHoldings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns list of accounts and holdings |  -  |
| **500** | Unexpected Error |  -  |

<a name="getUserAccountBalance"></a>
# **getUserAccountBalance**
> List&lt;Balance&gt; getUserAccountBalance(userId, userSecret, accountId).execute();

List account balances

Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
      List<Balance> result = client
              .accountInformation
              .getUserAccountBalance(userId, userSecret, accountId)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountBalance");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Balance>> response = client
              .accountInformation
              .getUserAccountBalance(userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountBalance");
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

[**List&lt;Balance&gt;**](Balance.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **0** | Unexpected error |  -  |

<a name="getUserAccountDetails"></a>
# **getUserAccountDetails**
> Account getUserAccountDetails(userId, userSecret, accountId).execute();

Get account detail

Returns account detail known to SnapTrade for the specified account.  The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
      Account result = client
              .accountInformation
              .getUserAccountDetails(userId, userSecret, accountId)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getBrokerageAuthorization());
      System.out.println(result.getName());
      System.out.println(result.getNumber());
      System.out.println(result.getInstitutionName());
      System.out.println(result.getCreatedDate());
      System.out.println(result.getSyncStatus());
      System.out.println(result.getBalance());
      System.out.println(result.getMeta());
      System.out.println(result.getPortfolioGroup());
      System.out.println(result.getCashRestrictions());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountDetails");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Account> response = client
              .accountInformation
              .getUserAccountDetails(userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountDetails");
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

[**Account**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **0** | Unexpected error |  -  |

<a name="getUserAccountOrders"></a>
# **getUserAccountOrders**
> List&lt;AccountOrderRecord&gt; getUserAccountOrders(userId, userSecret, accountId).state(state).days(days).execute();

List account recent orders

Returns a list of recent orders in the specified account.  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
    String state = "all"; // defaults value is set to \"all\"
    Integer days = 30; // Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    try {
      List<AccountOrderRecord> result = client
              .accountInformation
              .getUserAccountOrders(userId, userSecret, accountId)
              .state(state)
              .days(days)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountOrders");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<AccountOrderRecord>> response = client
              .accountInformation
              .getUserAccountOrders(userId, userSecret, accountId)
              .state(state)
              .days(days)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountOrders");
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
| **state** | **String**| defaults value is set to \&quot;all\&quot; | [optional] [enum: all, open, executed] |
| **days** | **Integer**| Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. | [optional] |

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
| **200** | OK |  -  |

<a name="getUserAccountPositions"></a>
# **getUserAccountPositions**
> List&lt;Position&gt; getUserAccountPositions(userId, userSecret, accountId).execute();

List account positions

Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
      List<Position> result = client
              .accountInformation
              .getUserAccountPositions(userId, userSecret, accountId)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountPositions");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Position>> response = client
              .accountInformation
              .getUserAccountPositions(userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountPositions");
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

[**List&lt;Position&gt;**](Position.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **0** | Unexpected error |  -  |

<a name="getUserAccountRecentOrders"></a>
# **getUserAccountRecentOrders**
> RecentOrdersResponse getUserAccountRecentOrders(userId, userSecret, accountId).execute();

List account recent executed orders

Returns a list of orders executed in the last 24 hours in the specified account. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution Differs from /orders in that it only returns orders that have been *executed* in the last 24 hours as opposed to pending or cancelled orders up to 30 days old *Please contact support for access as this endpoint is not enabled by default.* 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
      RecentOrdersResponse result = client
              .accountInformation
              .getUserAccountRecentOrders(userId, userSecret, accountId)
              .execute();
      System.out.println(result);
      System.out.println(result.getOrders());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountRecentOrders");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<RecentOrdersResponse> response = client
              .accountInformation
              .getUserAccountRecentOrders(userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserAccountRecentOrders");
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

[**RecentOrdersResponse**](RecentOrdersResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="getUserHoldings"></a>
# **getUserHoldings**
> AccountHoldingsAccount getUserHoldings(accountId, userId, userSecret).execute();

List account holdings

Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      AccountHoldingsAccount result = client
              .accountInformation
              .getUserHoldings(accountId, userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.getAccount());
      System.out.println(result.getBalances());
      System.out.println(result.getPositions());
      System.out.println(result.getOptionPositions());
      System.out.println(result.getOrders());
      System.out.println(result.getTotalValue());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserHoldings");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<AccountHoldingsAccount> response = client
              .accountInformation
              .getUserHoldings(accountId, userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#getUserHoldings");
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
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |

### Return type

[**AccountHoldingsAccount**](AccountHoldingsAccount.md)

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

<a name="listUserAccounts"></a>
# **listUserAccounts**
> List&lt;Account&gt; listUserAccounts(userId, userSecret).execute();

List accounts

Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.  The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
    try {
      List<Account> result = client
              .accountInformation
              .listUserAccounts(userId, userSecret)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#listUserAccounts");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Account>> response = client
              .accountInformation
              .listUserAccounts(userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#listUserAccounts");
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

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **0** | Unexpected error. |  -  |

<a name="updateUserAccount"></a>
# **updateUserAccount**
> List&lt;Account&gt; updateUserAccount(userId, userSecret, accountId).execute();

Update details of an investment account

Updates various properties of a specified account.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AccountInformationApi;
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
    UUID accountId = UUID.randomUUID(); // The ID of the account to update.
    try {
      List<Account> result = client
              .accountInformation
              .updateUserAccount(userId, userSecret, accountId)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#updateUserAccount");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Account>> response = client
              .accountInformation
              .updateUserAccount(userId, userSecret, accountId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AccountInformationApi#updateUserAccount");
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
| **accountId** | **UUID**| The ID of the account to update. | |

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully updated details of an investment account |  -  |
| **0** | Unexpected error |  -  |

