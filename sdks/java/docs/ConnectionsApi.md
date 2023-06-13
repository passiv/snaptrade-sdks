# ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**detailBrokerageAuthorization**](ConnectionsApi.md#detailBrokerageAuthorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user |
| [**listBrokerageAuthorizations**](ConnectionsApi.md#listBrokerageAuthorizations) | **GET** /authorizations | List all brokerage authorizations for the user |
| [**removeBrokerageAuthorization**](ConnectionsApi.md#removeBrokerageAuthorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization. |
| [**sessionEvents**](ConnectionsApi.md#sessionEvents) | **GET** /sessionEvents | List all session events for the partner |


<a name="detailBrokerageAuthorization"></a>
# **detailBrokerageAuthorization**
> BrokerageAuthorization detailBrokerageAuthorization(authorizationId, userId, userSecret).execute();

Get detail of a specific brokerage authorizations for the user

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.ConnectionsApi;

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

    ConnectionsApi api = new ConnectionsApi(apiClient);
    UUID authorizationId = UUID.randomUUID(); // The ID of a brokerage authorization object.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      BrokerageAuthorization result = api
              .detailBrokerageAuthorization(authorizationId, userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#detailBrokerageAuthorization");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<BrokerageAuthorization> response = api
              .detailBrokerageAuthorization(authorizationId, userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#detailBrokerageAuthorization");
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

<a name="listBrokerageAuthorizations"></a>
# **listBrokerageAuthorizations**
> List&lt;BrokerageAuthorization&gt; listBrokerageAuthorizations(userId, userSecret).execute();

List all brokerage authorizations for the user

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.ConnectionsApi;

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

    ConnectionsApi api = new ConnectionsApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      List<BrokerageAuthorization> result = api
              .listBrokerageAuthorizations(userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#listBrokerageAuthorizations");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<List<BrokerageAuthorization>> response = api
              .listBrokerageAuthorizations(userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#listBrokerageAuthorizations");
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

<a name="removeBrokerageAuthorization"></a>
# **removeBrokerageAuthorization**
> removeBrokerageAuthorization(authorizationId, userId, userSecret).execute();

Remove a brokerage authorization.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.ConnectionsApi;

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

    ConnectionsApi api = new ConnectionsApi(apiClient);
    UUID authorizationId = UUID.randomUUID(); // The ID of the Authorization to delete.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      api
              .removeBrokerageAuthorization(authorizationId, userId, userSecret)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#removeBrokerageAuthorization");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      api
              .removeBrokerageAuthorization(authorizationId, userId, userSecret)
              .executeWithHttpInfo();
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#removeBrokerageAuthorization");
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

<a name="sessionEvents"></a>
# **sessionEvents**
> List&lt;ConnectionsSessionEvents200ResponseInner&gt; sessionEvents(partnerClientId).userId(userId).sessionId(sessionId).execute();

List all session events for the partner

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.ConnectionsApi;

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

    ConnectionsApi api = new ConnectionsApi(apiClient);
    String partnerClientId = "partnerClientId_example";
    String userId = "userId_example"; // Optional comma seperated list of user IDs used to filter the request on specific users
    String sessionId = "sessionId_example"; // Optional comma seperated list of session IDs used to filter the request on specific users
    try {
      List<ConnectionsSessionEvents200ResponseInner> result = api
              .sessionEvents(partnerClientId)
              .userId(userId)
              .sessionId(sessionId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#sessionEvents");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<List<ConnectionsSessionEvents200ResponseInner>> response = api
              .sessionEvents(partnerClientId)
              .userId(userId)
              .sessionId(sessionId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ConnectionsApi#sessionEvents");
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
| **partnerClientId** | **String**|  | |
| **userId** | **String**| Optional comma seperated list of user IDs used to filter the request on specific users | [optional] |
| **sessionId** | **String**| Optional comma seperated list of session IDs used to filter the request on specific users | [optional] |

### Return type

[**List&lt;ConnectionsSessionEvents200ResponseInner&gt;**](ConnectionsSessionEvents200ResponseInner.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Session Events for the Partner. |  -  |
| **0** | Unexpected error. |  -  |

