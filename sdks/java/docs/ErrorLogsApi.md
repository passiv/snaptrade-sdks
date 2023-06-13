# ErrorLogsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listUserErrors**](ErrorLogsApi.md#listUserErrors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users |


<a name="listUserErrors"></a>
# **listUserErrors**
> List&lt;UserErrorLog&gt; listUserErrors(userId, userSecret).execute();

Retrieve error logs on behalf of your SnapTrade users

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.ErrorLogsApi;

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

    ErrorLogsApi api = new ErrorLogsApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      List<UserErrorLog> result = api
              .listUserErrors(userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling ErrorLogsApi#listUserErrors");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<List<UserErrorLog>> response = api
              .listUserErrors(userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ErrorLogsApi#listUserErrors");
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

