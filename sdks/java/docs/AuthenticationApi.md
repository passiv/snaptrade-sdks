# AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteSnapTradeUser**](AuthenticationApi.md#deleteSnapTradeUser) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user |
| [**getUserJWT**](AuthenticationApi.md#getUserJWT) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user&#39;s local device |
| [**listSnapTradeUsers**](AuthenticationApi.md#listSnapTradeUsers) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you&#39;ve registered on our platform |
| [**loginSnapTradeUser**](AuthenticationApi.md#loginSnapTradeUser) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal |
| [**registerSnapTradeUser**](AuthenticationApi.md#registerSnapTradeUser) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations |


<a name="deleteSnapTradeUser"></a>
# **deleteSnapTradeUser**
> DeleteUserResponse deleteSnapTradeUser(userId).execute();

Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;

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

    AuthenticationApi api = new AuthenticationApi(apiClient);
    String userId = "userId_example";
    try {
      DeleteUserResponse result = api
              .deleteSnapTradeUser(userId)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#deleteSnapTradeUser");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<DeleteUserResponse> response = api
              .deleteSnapTradeUser(userId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#deleteSnapTradeUser");
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

### Return type

[**DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Delete successful |  -  |
| **500** | Unexpected Error |  -  |

<a name="getUserJWT"></a>
# **getUserJWT**
> EncryptedResponse getUserJWT(userId, userSecret).execute();

Obtains an encrypted JWT tokens that should be decrypted on a user&#39;s local device

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;

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

    AuthenticationApi api = new AuthenticationApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      EncryptedResponse result = api
              .getUserJWT(userId, userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#getUserJWT");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<EncryptedResponse> response = api
              .getUserJWT(userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#getUserJWT");
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

[**EncryptedResponse**](EncryptedResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully obtained encrypted JWT data. See description on how to object JWT token |  -  |
| **500** | Unexpected Error |  -  |

<a name="listSnapTradeUsers"></a>
# **listSnapTradeUsers**
> List&lt;String&gt; listSnapTradeUsers().execute();

Get a list of all SnapTrade users you&#39;ve registered on our platform

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;

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

    AuthenticationApi api = new AuthenticationApi(apiClient);
    try {
      List<String> result = api
              .listSnapTradeUsers()
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#listSnapTradeUsers");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<List<String>> response = api
              .listSnapTradeUsers()
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#listSnapTradeUsers");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List&lt;String&gt;**

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully generated a list of users |  -  |
| **500** | Unexpected error |  -  |

<a name="loginSnapTradeUser"></a>
# **loginSnapTradeUser**
> Object loginSnapTradeUser(userId, userSecret).snapTradeLoginUserRequestBody(snapTradeLoginUserRequestBody).execute();

Generate a redirect URI to securely login a user to the SnapTrade Connection Portal

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;

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

    AuthenticationApi api = new AuthenticationApi(apiClient);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    String broker = "broker_example";
    Boolean immediateRedirect = true;
    String customRedirect = "customRedirect_example";
    String reconnect = "reconnect_example";
    String connectionType = "read";
    try {
      Object result = api
              .loginSnapTradeUser(userId, userSecret)
              .broker(broker)
              .immediateRedirect(immediateRedirect)
              .customRedirect(customRedirect)
              .reconnect(reconnect)
              .connectionType(connectionType)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#loginSnapTradeUser");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<Object> response = api
              .loginSnapTradeUser(userId, userSecret)
              .broker(broker)
              .immediateRedirect(immediateRedirect)
              .customRedirect(customRedirect)
              .reconnect(reconnect)
              .connectionType(connectionType)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#loginSnapTradeUser");
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
| **snapTradeLoginUserRequestBody** | [**SnapTradeLoginUserRequestBody**](SnapTradeLoginUserRequestBody.md)|  | [optional] |

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
| **200** | Login successful. Redirect user to provided URI in response |  -  |
| **500** | Unexpected Error |  -  |

<a name="registerSnapTradeUser"></a>
# **registerSnapTradeUser**
> UserIDandSecret registerSnapTradeUser(snapTradeRegisterUserRequestBody).execute();

Register user with SnapTrade in order to create secure brokerage authorizations

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;

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

    AuthenticationApi api = new AuthenticationApi(apiClient);
    String userId = "userId_example"; // SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it's unique to a user
    String rsaPublicKey = "rsaPublicKey_example"; // Open SSH RSA public key
    try {
      UserIDandSecret result = api
              .registerSnapTradeUser()
              .userId(userId)
              .rsaPublicKey(rsaPublicKey)
              .execute();
      System.out.println(result);
      System.out.println(result.toJson()); // Serialize response back to JSON 
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#registerSnapTradeUser");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request 
    try {
      ApiResponse<UserIDandSecret> response = api
              .registerSnapTradeUser()
              .userId(userId)
              .rsaPublicKey(rsaPublicKey)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#registerSnapTradeUser");
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
| **snapTradeRegisterUserRequestBody** | [**SnapTradeRegisterUserRequestBody**](SnapTradeRegisterUserRequestBody.md)|  | |

### Return type

[**UserIDandSecret**](UserIDandSecret.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully registered user |  -  |
| **500** | Unexpected error |  -  |

