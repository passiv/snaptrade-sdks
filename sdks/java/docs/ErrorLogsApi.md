# ErrorLogsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**snapTradeListUserErrorsGet**](ErrorLogsApi.md#snapTradeListUserErrorsGet) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users |


<a name="snapTradeListUserErrorsGet"></a>
# **snapTradeListUserErrorsGet**
> List&lt;UserErrorLog&gt; snapTradeListUserErrorsGet(userId, userSecret)

Retrieve error logs on behalf of your SnapTrade users

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.ErrorLogsApi;

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

    ErrorLogsApi apiInstance = new ErrorLogsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    try {
      List<UserErrorLog> result = apiInstance.snapTradeListUserErrorsGet(userId, userSecret);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ErrorLogsApi#snapTradeListUserErrorsGet");
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

### Return type

[**List&lt;UserErrorLog&gt;**](UserErrorLog.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all user errors for a particular user in the last 90 days. |  -  |

