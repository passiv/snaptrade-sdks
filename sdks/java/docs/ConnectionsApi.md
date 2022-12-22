# ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**authorizationsAuthorizationIdDelete**](ConnectionsApi.md#authorizationsAuthorizationIdDelete) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization. |
| [**authorizationsAuthorizationIdGet**](ConnectionsApi.md#authorizationsAuthorizationIdGet) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user |
| [**authorizationsGet**](ConnectionsApi.md#authorizationsGet) | **GET** /authorizations | List all brokerage authorizations for the user |


<a name="authorizationsAuthorizationIdDelete"></a>
# **authorizationsAuthorizationIdDelete**
> authorizationsAuthorizationIdDelete(authorizationId, userId, userSecret)

Remove a brokerage authorization.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.ConnectionsApi;

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

    ConnectionsApi apiInstance = new ConnectionsApi(defaultClient);
    UUID authorizationId = UUID.randomUUID(); // UUID | The ID of the Authorization to delete.
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    try {
      apiInstance.authorizationsAuthorizationIdDelete(authorizationId, userId, userSecret);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#authorizationsAuthorizationIdDelete");
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
| **authorizationId** | **UUID**| The ID of the Authorization to delete. | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |

### Return type

null (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Brokerage authorization object has been successfully deleted |  -  |
| **400** | The specified authorizationId is invalid (not a UUID string). |  -  |
| **404** | The specified authorizationId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="authorizationsAuthorizationIdGet"></a>
# **authorizationsAuthorizationIdGet**
> BrokerageAuthorization authorizationsAuthorizationIdGet(authorizationId, userId, userSecret)

Get detail of a specific brokerage authorizations for the user

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.ConnectionsApi;

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

    ConnectionsApi apiInstance = new ConnectionsApi(defaultClient);
    UUID authorizationId = UUID.randomUUID(); // UUID | The ID of a brokerage authorization object.
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    try {
      BrokerageAuthorization result = apiInstance.authorizationsAuthorizationIdGet(authorizationId, userId, userSecret);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#authorizationsAuthorizationIdGet");
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
| **authorizationId** | **UUID**| The ID of a brokerage authorization object. | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |

### Return type

[**BrokerageAuthorization**](BrokerageAuthorization.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authorization object for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

<a name="authorizationsGet"></a>
# **authorizationsGet**
> List&lt;BrokerageAuthorization&gt; authorizationsGet(userId, userSecret)

List all brokerage authorizations for the user

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.ConnectionsApi;

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

    ConnectionsApi apiInstance = new ConnectionsApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    try {
      List<BrokerageAuthorization> result = apiInstance.authorizationsGet(userId, userSecret);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#authorizationsGet");
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

[**List&lt;BrokerageAuthorization&gt;**](BrokerageAuthorization.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Authorization objects for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

