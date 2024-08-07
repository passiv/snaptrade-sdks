# AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteSnapTradeUser**](AuthenticationApi.md#deleteSnapTradeUser) | **DELETE** /snapTrade/deleteUser | Delete SnapTrade user |
| [**listSnapTradeUsers**](AuthenticationApi.md#listSnapTradeUsers) | **GET** /snapTrade/listUsers | List SnapTrade users |
| [**loginSnapTradeUser**](AuthenticationApi.md#loginSnapTradeUser) | **POST** /snapTrade/login | Login user &amp; generate connection link |
| [**registerSnapTradeUser**](AuthenticationApi.md#registerSnapTradeUser) | **POST** /snapTrade/registerUser | Create SnapTrade user |
| [**resetSnapTradeUserSecret**](AuthenticationApi.md#resetSnapTradeUserSecret) | **POST** /snapTrade/resetUserSecret | Obtain a new user secret for a user |


<a name="deleteSnapTradeUser"></a>
# **deleteSnapTradeUser**
> DeleteUserResponse deleteSnapTradeUser(userId).execute();

Delete SnapTrade user

Deletes a user you&#39;ve registered over the SnapTrade API, and any data associated with them or their investment accounts.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;
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
    try {
      DeleteUserResponse result = client
              .authentication
              .deleteSnapTradeUser(userId)
              .execute();
      System.out.println(result);
      System.out.println(result.getStatus());
      System.out.println(result.getUserId());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#deleteSnapTradeUser");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<DeleteUserResponse> response = client
              .authentication
              .deleteSnapTradeUser(userId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#deleteSnapTradeUser");
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

<a name="listSnapTradeUsers"></a>
# **listSnapTradeUsers**
> List&lt;String&gt; listSnapTradeUsers().execute();

List SnapTrade users

Returns a list of users you&#39;ve registered over the SnapTrade API.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;
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
    try {
      List<String> result = client
              .authentication
              .listSnapTradeUsers()
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#listSnapTradeUsers");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<String>> response = client
              .authentication
              .listSnapTradeUsers()
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#listSnapTradeUsers");
      System.err.println("Status code: " + e.getStatusCode());
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
| **200** | Successfully retrieved a list of users |  -  |

<a name="loginSnapTradeUser"></a>
# **loginSnapTradeUser**
> Object loginSnapTradeUser(userId, userSecret).snapTradeLoginUserRequestBody(snapTradeLoginUserRequestBody).execute();

Login user &amp; generate connection link

Logs in a SnapTrade user and returns an authenticated connection portal URL for them to use to connect a brokerage account.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;
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
    String broker = "broker_example"; // Slug of the brokerage to connect the user to. See [this document](https://snaptrade.notion.site/SnapTrade-Brokerage-Integrations-f83946a714a84c3caf599f6a945f0ead) for a list of supported brokerages and their slugs.
    Boolean immediateRedirect = true; // When set to True, user will be redirected back to the partner's site instead of the connection portal
    String customRedirect = "customRedirect_example"; // URL to redirect the user to after the user connects their brokerage account
    String reconnect = "reconnect_example"; // The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See ‘Reconnecting Accounts’ for more information.
    String connectionType = "read"; // Sets whether the connection should be read or trade
    String connectionPortalVersion = "v2"; // Sets the version of the connection portal to render, with a default to 'v3'
    try {
      Object result = client
              .authentication
              .loginSnapTradeUser(userId, userSecret)
              .broker(broker)
              .immediateRedirect(immediateRedirect)
              .customRedirect(customRedirect)
              .reconnect(reconnect)
              .connectionType(connectionType)
              .connectionPortalVersion(connectionPortalVersion)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#loginSnapTradeUser");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Object> response = client
              .authentication
              .loginSnapTradeUser(userId, userSecret)
              .broker(broker)
              .immediateRedirect(immediateRedirect)
              .customRedirect(customRedirect)
              .reconnect(reconnect)
              .connectionType(connectionType)
              .connectionPortalVersion(connectionPortalVersion)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#loginSnapTradeUser");
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

Create SnapTrade user

Registers a new SnapTrade user under your ClientID. A user secret will be automatically generated for you and must be properly stored in your database. Most SnapTrade operations require a user ID and user secret to be passed as a parameter. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;
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
    String userId = "userId_example"; // SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
    try {
      UserIDandSecret result = client
              .authentication
              .registerSnapTradeUser()
              .userId(userId)
              .execute();
      System.out.println(result);
      System.out.println(result.getUserId());
      System.out.println(result.getUserSecret());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#registerSnapTradeUser");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<UserIDandSecret> response = client
              .authentication
              .registerSnapTradeUser()
              .userId(userId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#registerSnapTradeUser");
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

<a name="resetSnapTradeUserSecret"></a>
# **resetSnapTradeUserSecret**
> UserIDandSecret resetSnapTradeUserSecret(userIDandSecret).execute();

Obtain a new user secret for a user

This API is used to rotate the secret for a SnapTrade user. You might use this if a userSecret is compromised. Please note that if you call this endpoint and fail to save the new secret, you&#39;ll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.AuthenticationApi;
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
    String userId = "userId_example"; // SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
    String userSecret = "userSecret_example"; // SnapTrade User Secret randomly generated by SnapTrade. This is privileged information and if compromised, should be rotated via the SnapTrade API.
    try {
      UserIDandSecret result = client
              .authentication
              .resetSnapTradeUserSecret()
              .userId(userId)
              .userSecret(userSecret)
              .execute();
      System.out.println(result);
      System.out.println(result.getUserId());
      System.out.println(result.getUserSecret());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#resetSnapTradeUserSecret");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<UserIDandSecret> response = client
              .authentication
              .resetSnapTradeUserSecret()
              .userId(userId)
              .userSecret(userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#resetSnapTradeUserSecret");
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
| **userIDandSecret** | [**UserIDandSecret**](UserIDandSecret.md)|  | |

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
| **200** | New user secret is generated |  -  |

