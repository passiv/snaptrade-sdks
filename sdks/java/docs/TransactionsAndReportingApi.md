# TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**activitiesGet**](TransactionsAndReportingApi.md#activitiesGet) | **GET** /activities/ | Get transaction history for a user |
| [**performanceCustomGet**](TransactionsAndReportingApi.md#performanceCustomGet) | **GET** /performance/custom | Get performance information for a specific timeframe |


<a name="activitiesGet"></a>
# **activitiesGet**
> List&lt;UniversalActivity&gt; activitiesGet(userId, userSecret, startDate, endDate, accounts)

Get transaction history for a user

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TransactionsAndReportingApi;

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

    TransactionsAndReportingApi apiInstance = new TransactionsAndReportingApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    String startDate = "startDate_example"; // String | 
    String endDate = "endDate_example"; // String | 
    String accounts = "accounts_example"; // String | Optional comma seperated list of account IDs used to filter the request on specific accounts
    try {
      List<UniversalActivity> result = apiInstance.activitiesGet(userId, userSecret, startDate, endDate, accounts);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsAndReportingApi#activitiesGet");
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
| **startDate** | **String**|  | [optional] |
| **endDate** | **String**|  | [optional] |
| **accounts** | **String**| Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional] |

### Return type

[**List&lt;UniversalActivity&gt;**](UniversalActivity.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved transaction history |  -  |
| **0** | Unexpected error |  -  |

<a name="performanceCustomGet"></a>
# **performanceCustomGet**
> PerformanceCustom performanceCustomGet(startDate, endDate, userId, userSecret, accounts, detailed, frequency)

Get performance information for a specific timeframe

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.TransactionsAndReportingApi;

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

    TransactionsAndReportingApi apiInstance = new TransactionsAndReportingApi(defaultClient);
    String startDate = "startDate_example"; // String | 
    String endDate = "endDate_example"; // String | 
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    String accounts = "accounts_example"; // String | Optional comma seperated list of account IDs used to filter the request on specific accounts
    Boolean detailed = true; // Boolean | Optional, increases frequency of data points for the total value and contribution charts if set to true
    String frequency = "frequency_example"; // String | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
    try {
      PerformanceCustom result = apiInstance.performanceCustomGet(startDate, endDate, userId, userSecret, accounts, detailed, frequency);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsAndReportingApi#performanceCustomGet");
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
| **startDate** | **String**|  | |
| **endDate** | **String**|  | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **accounts** | **String**| Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional] |
| **detailed** | **Boolean**| Optional, increases frequency of data points for the total value and contribution charts if set to true | [optional] |
| **frequency** | **String**| Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. | [optional] |

### Return type

[**PerformanceCustom**](PerformanceCustom.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved performance data |  -  |
| **0** | Unexpected error |  -  |

