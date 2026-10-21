# ManagementApi

All URIs are relative to *https://api.snaptrade.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getStats**](ManagementApi.md#getStats) | **GET** /management/stats | Get usage stats (beta) |
| [**getStatsLegacy**](ManagementApi.md#getStatsLegacy) | **GET** /snapTrade/stats | Get usage stats (deprecated) |


<a name="getStats"></a>
# **getStats**
> ConnectedAssetPartnerStats getStats().currency(currency).execute();

Get usage stats (beta)

**Beta.** This endpoint and its response schema may change.  Returns user, connection, and connected asset totals for your SnapTrade Client ID. These are the same numbers shown on the Users &amp; Connections page of the SnapTrade Dashboard.  User and connection counts are cached for up to 5 minutes. Connected asset values come from a snapshot calculated once a day; &#x60;connected_assets_calculated_at&#x60; indicates when it was last calculated. 

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ManagementApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    String currency = "USD"; // ISO 4217 currency code to express connected asset values in. Defaults to `USD`.
    try {
      ConnectedAssetPartnerStats result = client
              .management
              .getStats()
              .currency(currency)
              .execute();
      System.out.println(result);
      System.out.println(result.getTotalUsers());
      System.out.println(result.getTotalConnectedUsers());
      System.out.println(result.getTotalActiveConnections());
      System.out.println(result.getTotalDisabledConnections());
      System.out.println(result.getOauthTotalUsers());
      System.out.println(result.getOauthTotalConnectedUsers());
      System.out.println(result.getOauthTotalActiveConnections());
      System.out.println(result.getOauthTotalDisabledConnections());
      System.out.println(result.getConnectedAssets());
      System.out.println(result.getDisabledConnectedAssets());
      System.out.println(result.getOauthConnectedAssets());
      System.out.println(result.getOauthDisabledConnectedAssets());
      System.out.println(result.getConnectedAssetsCurrency());
      System.out.println(result.getConnectedAssetsCalculatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling ManagementApi#getStats");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ConnectedAssetPartnerStats> response = client
              .management
              .getStats()
              .currency(currency)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ManagementApi#getStats");
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
| **currency** | **String**| ISO 4217 currency code to express connected asset values in. Defaults to &#x60;USD&#x60;. | [optional] |

### Return type

[**ConnectedAssetPartnerStats**](ConnectedAssetPartnerStats.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

<a name="getStatsLegacy"></a>
# **getStatsLegacy**
> PartnerStats getStatsLegacy().currency(currency).execute();

Get usage stats (deprecated)

**Deprecated.** Use &#x60;GET /management/stats&#x60; for the beta response with connected asset field names.  Returns user, connection, and connected asset totals for your SnapTrade Client ID. These are the same numbers shown on the Users &amp; Connections page of the SnapTrade Dashboard.  User and connection counts are cached for up to 5 minutes. Connected asset values come from a snapshot calculated once a day; &#x60;assets_under_management_calculated_at&#x60; indicates when it was last calculated. 

### Example
```java
import com.snaptrade.client.ApiClient;
import com.snaptrade.client.ApiException;
import com.snaptrade.client.ApiResponse;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.auth.*;
import com.snaptrade.client.model.*;
import com.snaptrade.client.api.ManagementApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    String currency = "USD"; // ISO 4217 currency code to express connected asset values in. Defaults to `USD`.
    try {
      PartnerStats result = client
              .management
              .getStatsLegacy()
              .currency(currency)
              .execute();
      System.out.println(result);
      System.out.println(result.getTotalUsers());
      System.out.println(result.getTotalConnectedUsers());
      System.out.println(result.getTotalActiveConnections());
      System.out.println(result.getTotalDisabledConnections());
      System.out.println(result.getOauthTotalUsers());
      System.out.println(result.getOauthTotalConnectedUsers());
      System.out.println(result.getOauthTotalActiveConnections());
      System.out.println(result.getOauthTotalDisabledConnections());
      System.out.println(result.getAssetsUnderManagement());
      System.out.println(result.getDisabledAssetsUnderManagement());
      System.out.println(result.getOauthAssetsUnderManagement());
      System.out.println(result.getOauthDisabledAssetsUnderManagement());
      System.out.println(result.getAssetsUnderManagementCurrency());
      System.out.println(result.getAssetsUnderManagementCalculatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling ManagementApi#getStatsLegacy");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PartnerStats> response = client
              .management
              .getStatsLegacy()
              .currency(currency)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ManagementApi#getStatsLegacy");
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
| **currency** | **String**| ISO 4217 currency code to express connected asset values in. Defaults to &#x60;USD&#x60;. | [optional] |

### Return type

[**PartnerStats**](PartnerStats.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

