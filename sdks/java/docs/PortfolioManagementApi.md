# PortfolioManagementApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**modelAssetClassGet**](PortfolioManagementApi.md#modelAssetClassGet) | **GET** /modelAssetClass | List of model asset class |
| [**modelAssetClassModelAssetClassIdDelete**](PortfolioManagementApi.md#modelAssetClassModelAssetClassIdDelete) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class |
| [**modelAssetClassModelAssetClassIdGet**](PortfolioManagementApi.md#modelAssetClassModelAssetClassIdGet) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class |
| [**modelAssetClassModelAssetClassIdPost**](PortfolioManagementApi.md#modelAssetClassModelAssetClassIdPost) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects |
| [**modelAssetClassPost**](PortfolioManagementApi.md#modelAssetClassPost) | **POST** /modelAssetClass | Create a new model asset class |
| [**modelPortfolioGet**](PortfolioManagementApi.md#modelPortfolioGet) | **GET** /modelPortfolio | List of model portfolio |
| [**modelPortfolioModelPortfolioIdDelete**](PortfolioManagementApi.md#modelPortfolioModelPortfolioIdDelete) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio |
| [**modelPortfolioModelPortfolioIdGet**](PortfolioManagementApi.md#modelPortfolioModelPortfolioIdGet) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio |
| [**modelPortfolioModelPortfolioIdPost**](PortfolioManagementApi.md#modelPortfolioModelPortfolioIdPost) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object |
| [**modelPortfolioPost**](PortfolioManagementApi.md#modelPortfolioPost) | **POST** /modelPortfolio | Creates a new model portfolio |
| [**portfolioGroupsGet**](PortfolioManagementApi.md#portfolioGroupsGet) | **GET** /portfolioGroups | List all portfolio groups |
| [**portfolioGroupsPortfolioGroupIdAccountsGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdAccountsGet) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group |
| [**portfolioGroupsPortfolioGroupIdBalancesGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdBalancesGet) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeIdGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeIdGet) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade |
| [**portfolioGroupsPortfolioGroupIdCalculatedtradesGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdCalculatedtradesGet) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group |
| [**portfolioGroupsPortfolioGroupIdDelete**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdDelete) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio. |
| [**portfolioGroupsPortfolioGroupIdExcludedassetsGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdExcludedassetsGet) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group |
| [**portfolioGroupsPortfolioGroupIdExcludedassetsPost**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdExcludedassetsPost) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group |
| [**portfolioGroupsPortfolioGroupIdExcludedassetsSymbolIdDelete**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdExcludedassetsSymbolIdDelete) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group |
| [**portfolioGroupsPortfolioGroupIdGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdGet) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio |
| [**portfolioGroupsPortfolioGroupIdImportPost**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdImportPost) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group |
| [**portfolioGroupsPortfolioGroupIdInfoGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdInfoGet) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group. |
| [**portfolioGroupsPortfolioGroupIdPatch**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdPatch) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio. |
| [**portfolioGroupsPortfolioGroupIdPositionsGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdPositionsGet) | **GET** /portfolioGroups/{portfolioGroupId}/positions | Get total of each postions owned in portfolio group |
| [**portfolioGroupsPortfolioGroupIdSettingsGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdSettingsGet) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings |
| [**portfolioGroupsPortfolioGroupIdSettingsPatch**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdSettingsPatch) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings |
| [**portfolioGroupsPortfolioGroupIdSymbolsPost**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdSymbolsPost) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group |
| [**portfolioGroupsPortfolioGroupIdTargetsGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdTargetsGet) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup. |
| [**portfolioGroupsPortfolioGroupIdTargetsPost**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdTargetsPost) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list. |
| [**portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdDelete**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdDelete) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset. |
| [**portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdGet**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdGet) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group |
| [**portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdPatch**](PortfolioManagementApi.md#portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdPatch) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup. |
| [**portfolioGroupsPost**](PortfolioManagementApi.md#portfolioGroupsPost) | **POST** /portfolioGroups | Create new portfolio group |


<a name="modelAssetClassGet"></a>
# **modelAssetClassGet**
> List&lt;ModelAssetClassDetails&gt; modelAssetClassGet()

List of model asset class

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    try {
      List<ModelAssetClassDetails> result = apiInstance.modelAssetClassGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelAssetClassGet");
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

[**List&lt;ModelAssetClassDetails&gt;**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all model asset class objects for the authenticated user. |  -  |

<a name="modelAssetClassModelAssetClassIdDelete"></a>
# **modelAssetClassModelAssetClassIdDelete**
> modelAssetClassModelAssetClassIdDelete(modelAssetClassId)

Deletes a model asset class

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID modelAssetClassId = UUID.randomUUID(); // UUID | The ID of the model asset class to delete.
    try {
      apiInstance.modelAssetClassModelAssetClassIdDelete(modelAssetClassId);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelAssetClassModelAssetClassIdDelete");
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
| **modelAssetClassId** | **UUID**| The ID of the model asset class to delete. | |

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
| **204** | No content |  -  |

<a name="modelAssetClassModelAssetClassIdGet"></a>
# **modelAssetClassModelAssetClassIdGet**
> ModelAssetClassDetails modelAssetClassModelAssetClassIdGet(modelAssetClassId)

Get details of a model asset class

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID modelAssetClassId = UUID.randomUUID(); // UUID | The ID of the model asset class to get.
    try {
      ModelAssetClassDetails result = apiInstance.modelAssetClassModelAssetClassIdGet(modelAssetClassId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelAssetClassModelAssetClassIdGet");
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
| **modelAssetClassId** | **UUID**| The ID of the model asset class to get. | |

### Return type

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of a particular model asset class |  -  |

<a name="modelAssetClassModelAssetClassIdPost"></a>
# **modelAssetClassModelAssetClassIdPost**
> modelAssetClassModelAssetClassIdPost(modelAssetClassId, modelAssetClassDetails)

Updates model asset class objects

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID modelAssetClassId = UUID.randomUUID(); // UUID | The ID of the model asset class to update.
    ModelAssetClassDetails modelAssetClassDetails = new ModelAssetClassDetails(); // ModelAssetClassDetails | Use this endpoint change model asset class name and to add or remove a model asset class target. <br /><br /> * Only the model asset class name is required for the model asset class object. <br /> * Only the symbol id is required for the symbol object in the model asset class target object. <br /> * To remove all model asset class targets, set the model asset class target as an empty array
    try {
      apiInstance.modelAssetClassModelAssetClassIdPost(modelAssetClassId, modelAssetClassDetails);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelAssetClassModelAssetClassIdPost");
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
| **modelAssetClassId** | **UUID**| The ID of the model asset class to update. | |
| **modelAssetClassDetails** | [**ModelAssetClassDetails**](ModelAssetClassDetails.md)| Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array | |

### Return type

null (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updates model asset class with data from request body. |  -  |

<a name="modelAssetClassPost"></a>
# **modelAssetClassPost**
> ModelAssetClassDetails modelAssetClassPost()

Create a new model asset class

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    try {
      ModelAssetClassDetails result = apiInstance.modelAssetClassPost();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelAssetClassPost");
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

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A new asset class is created. |  -  |

<a name="modelPortfolioGet"></a>
# **modelPortfolioGet**
> List&lt;ModelPortfolioDetails&gt; modelPortfolioGet()

List of model portfolio

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    try {
      List<ModelPortfolioDetails> result = apiInstance.modelPortfolioGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelPortfolioGet");
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

[**List&lt;ModelPortfolioDetails&gt;**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all model portfolio objects for the authenticated user. |  -  |

<a name="modelPortfolioModelPortfolioIdDelete"></a>
# **modelPortfolioModelPortfolioIdDelete**
> modelPortfolioModelPortfolioIdDelete(modelPortfolioId)

Deletes a model portfolio

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID modelPortfolioId = UUID.randomUUID(); // UUID | The ID of the model portfolio to delete.
    try {
      apiInstance.modelPortfolioModelPortfolioIdDelete(modelPortfolioId);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelPortfolioModelPortfolioIdDelete");
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
| **modelPortfolioId** | **UUID**| The ID of the model portfolio to delete. | |

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
| **204** | No content |  -  |

<a name="modelPortfolioModelPortfolioIdGet"></a>
# **modelPortfolioModelPortfolioIdGet**
> ModelPortfolioDetails modelPortfolioModelPortfolioIdGet(modelPortfolioId)

Get details of a model portfolio

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID modelPortfolioId = UUID.randomUUID(); // UUID | The ID of the model portfolio to get.
    try {
      ModelPortfolioDetails result = apiInstance.modelPortfolioModelPortfolioIdGet(modelPortfolioId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelPortfolioModelPortfolioIdGet");
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
| **modelPortfolioId** | **UUID**| The ID of the model portfolio to get. | |

### Return type

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of a particular model portfolio. |  -  |

<a name="modelPortfolioModelPortfolioIdPost"></a>
# **modelPortfolioModelPortfolioIdPost**
> modelPortfolioModelPortfolioIdPost(modelPortfolioId, modelPortfolioDetails)

Updates model portfolio object

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID modelPortfolioId = UUID.randomUUID(); // UUID | The ID of the model portfolio to update.
    ModelPortfolioDetails modelPortfolioDetails = new ModelPortfolioDetails(); // ModelPortfolioDetails | Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. <br /><br /> * The model portfolio name and model portfolio model type is required. <br /> * The model portfolio model type must be either 0 or 1. [0 -> Securities based, 1 -> Asset Class based] <br /><br /> * If the model portfolio type is 0, the model portfolio asset class must be an empty array. <br /> * If the model portfolio type is 1, the model portfolio security must be an empty array. <br /><br /> * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object <br /> * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object <br /><br /> * To remove all model portfolio securities or model portfolio asset class, set then to an empty array
    try {
      apiInstance.modelPortfolioModelPortfolioIdPost(modelPortfolioId, modelPortfolioDetails);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelPortfolioModelPortfolioIdPost");
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
| **modelPortfolioId** | **UUID**| The ID of the model portfolio to update. | |
| **modelPortfolioDetails** | [**ModelPortfolioDetails**](ModelPortfolioDetails.md)| Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array | |

### Return type

null (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updates model portfolio object with data from request body. |  -  |

<a name="modelPortfolioPost"></a>
# **modelPortfolioPost**
> ModelPortfolioDetails modelPortfolioPost()

Creates a new model portfolio

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    try {
      ModelPortfolioDetails result = apiInstance.modelPortfolioPost();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modelPortfolioPost");
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

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A new model portfolio is created. |  -  |

<a name="portfolioGroupsGet"></a>
# **portfolioGroupsGet**
> List&lt;PortfolioGroup&gt; portfolioGroupsGet(userId, userSecret)

List all portfolio groups

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    try {
      List<PortfolioGroup> result = apiInstance.portfolioGroupsGet(userId, userSecret);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsGet");
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

[**List&lt;PortfolioGroup&gt;**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all PortfolioGroup objects for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdAccountsGet"></a>
# **portfolioGroupsPortfolioGroupIdAccountsGet**
> List&lt;Account&gt; portfolioGroupsPortfolioGroupIdAccountsGet(portfolioGroupId)

Get all accounts associated with a portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which the accounts are linked.
    try {
      List<Account> result = apiInstance.portfolioGroupsPortfolioGroupIdAccountsGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdAccountsGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which the accounts are linked. | |

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
| **200** | Accounts linked to portfolio group |  -  |
| **0** | Unexpected error |  -  |

<a name="portfolioGroupsPortfolioGroupIdBalancesGet"></a>
# **portfolioGroupsPortfolioGroupIdBalancesGet**
> List&lt;Balance&gt; portfolioGroupsPortfolioGroupIdBalancesGet(portfolioGroupId)

Get sum of cash balances in portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<Balance> result = apiInstance.portfolioGroupsPortfolioGroupIdBalancesGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdBalancesGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to create the target asset. | |

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
| **200** | Sum of cash balances across accounts in portfolio group by currency |  -  |
| **400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
| **404** | The specified portfolioGroupId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet**
> Trade portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet(portfolioGroupId, calculatedTradeId, tradeId)

Return details of a specific trade before it&#39;s placed

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // UUID | The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // UUID | The ID of trade object
    try {
      Trade result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet(portfolioGroupId, calculatedTradeId, tradeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet");
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

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch**
> Trade portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch(portfolioGroupId, calculatedTradeId, tradeId, trade)

Modify units of a trade before it is placed

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // UUID | The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // UUID | The ID of trade object
    Trade trade = new Trade(); // Trade | 
    try {
      Trade result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch(portfolioGroupId, calculatedTradeId, tradeId, trade);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch");
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

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeIdGet"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeIdGet**
> List&lt;Trade&gt; portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeIdGet(portfolioGroupId, calculatedTradeId, tradeId)

Return an individual trade

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // UUID | The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // UUID | The ID of trade object
    try {
      List<Trade> result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeIdGet(portfolioGroupId, calculatedTradeId, tradeId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdTradeIdGet");
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

[**List&lt;Trade&gt;**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trade objects |  -  |

<a name="portfolioGroupsPortfolioGroupIdCalculatedtradesGet"></a>
# **portfolioGroupsPortfolioGroupIdCalculatedtradesGet**
> CalculatedTrade portfolioGroupsPortfolioGroupIdCalculatedtradesGet(portfolioGroupId)

List of trades to make to rebalance portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to perform rebalancing calculations
    try {
      CalculatedTrade result = apiInstance.portfolioGroupsPortfolioGroupIdCalculatedtradesGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdCalculatedtradesGet");
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

### Return type

[**CalculatedTrade**](CalculatedTrade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Calculated trades to make |  -  |

<a name="portfolioGroupsPortfolioGroupIdDelete"></a>
# **portfolioGroupsPortfolioGroupIdDelete**
> PortfolioGroup portfolioGroupsPortfolioGroupIdDelete(portfolioGroupId)

Remove a target portfolio.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to delete.
    try {
      PortfolioGroup result = apiInstance.portfolioGroupsPortfolioGroupIdDelete(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdDelete");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to delete. | |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The PortfolioGroup object which was deleted. |  -  |
| **400** | The specified portfolioGroupId is invalid (not a UUID string). |  -  |
| **404** | The specified portfolioGroupId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdExcludedassetsGet"></a>
# **portfolioGroupsPortfolioGroupIdExcludedassetsGet**
> List&lt;ExcludedAsset&gt; portfolioGroupsPortfolioGroupIdExcludedassetsGet(portfolioGroupId)

Get an array of excluded assets associated with a portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which the excluded assets are linked.
    try {
      List<ExcludedAsset> result = apiInstance.portfolioGroupsPortfolioGroupIdExcludedassetsGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdExcludedassetsGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which the excluded assets are linked. | |

### Return type

[**List&lt;ExcludedAsset&gt;**](ExcludedAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Array of excluded assets linked to portfolio group |  -  |
| **0** | Unexpected error |  -  |

<a name="portfolioGroupsPortfolioGroupIdExcludedassetsPost"></a>
# **portfolioGroupsPortfolioGroupIdExcludedassetsPost**
> ExcludedAsset portfolioGroupsPortfolioGroupIdExcludedassetsPost(portfolioGroupId, universalSymbol)

Adds an asset to exclude to a portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to exclude an asset.
    UniversalSymbol universalSymbol = new UniversalSymbol(); // UniversalSymbol | 
    try {
      ExcludedAsset result = apiInstance.portfolioGroupsPortfolioGroupIdExcludedassetsPost(portfolioGroupId, universalSymbol);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdExcludedassetsPost");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to exclude an asset. | |
| **universalSymbol** | [**UniversalSymbol**](UniversalSymbol.md)|  | [optional] |

### Return type

[**ExcludedAsset**](ExcludedAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An asset is excluded from calculations in portfolio group. |  -  |

<a name="portfolioGroupsPortfolioGroupIdExcludedassetsSymbolIdDelete"></a>
# **portfolioGroupsPortfolioGroupIdExcludedassetsSymbolIdDelete**
> portfolioGroupsPortfolioGroupIdExcludedassetsSymbolIdDelete(portfolioGroupId, symbolId)

Unexclude an asset from a portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to unexclude an asset.
    UUID symbolId = UUID.randomUUID(); // UUID | The ID of the excluded asset Symbol to delete.
    try {
      apiInstance.portfolioGroupsPortfolioGroupIdExcludedassetsSymbolIdDelete(portfolioGroupId, symbolId);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdExcludedassetsSymbolIdDelete");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to unexclude an asset. | |
| **symbolId** | **UUID**| The ID of the excluded asset Symbol to delete. | |

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
| **200** | Excluded asset deleted |  -  |

<a name="portfolioGroupsPortfolioGroupIdGet"></a>
# **portfolioGroupsPortfolioGroupIdGet**
> PortfolioGroup portfolioGroupsPortfolioGroupIdGet(portfolioGroupId)

Get details of a target portfolio

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to get.
    try {
      PortfolioGroup result = apiInstance.portfolioGroupsPortfolioGroupIdGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to get. | |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully gets a target portfolio |  -  |
| **0** | Unexpected error |  -  |

<a name="portfolioGroupsPortfolioGroupIdImportPost"></a>
# **portfolioGroupsPortfolioGroupIdImportPost**
> List&lt;TargetAsset&gt; portfolioGroupsPortfolioGroupIdImportPost(portfolioGroupId)

Import target allocation based on portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<TargetAsset> result = apiInstance.portfolioGroupsPortfolioGroupIdImportPost(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdImportPost");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to create the target asset. | |

### Return type

[**List&lt;TargetAsset&gt;**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Portfolio group target allocation has been updated |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdInfoGet"></a>
# **portfolioGroupsPortfolioGroupIdInfoGet**
> PortfolioGroupInfo portfolioGroupsPortfolioGroupIdInfoGet(portfolioGroupId)

Return a whole bunch of relevant information relating to a portfolio group.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to create the target asset.
    try {
      PortfolioGroupInfo result = apiInstance.portfolioGroupsPortfolioGroupIdInfoGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdInfoGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to create the target asset. | |

### Return type

[**PortfolioGroupInfo**](PortfolioGroupInfo.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Portfolio group target allocation has been updated |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdPatch"></a>
# **portfolioGroupsPortfolioGroupIdPatch**
> PortfolioGroup portfolioGroupsPortfolioGroupIdPatch(portfolioGroupId, requestBody)

Update an existing target portfolio.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to update.
    Map<String, Object> requestBody = null; // Map<String, Object> | 
    try {
      PortfolioGroup result = apiInstance.portfolioGroupsPortfolioGroupIdPatch(portfolioGroupId, requestBody);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdPatch");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to update. | |
| **requestBody** | [**Map&lt;String, Object&gt;**](Object.md)|  | |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The PortfolioGroup object which was updated. |  -  |
| **400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
| **404** | The specified portfolioGroupId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdPositionsGet"></a>
# **portfolioGroupsPortfolioGroupIdPositionsGet**
> List&lt;PortfolioGroupPosition&gt; portfolioGroupsPortfolioGroupIdPositionsGet(portfolioGroupId)

Get total of each postions owned in portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<PortfolioGroupPosition> result = apiInstance.portfolioGroupsPortfolioGroupIdPositionsGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdPositionsGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to create the target asset. | |

### Return type

[**List&lt;PortfolioGroupPosition&gt;**](PortfolioGroupPosition.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Totals of each postions owned in portfolio group |  -  |
| **400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
| **404** | The specified portfolioGroupId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdSettingsGet"></a>
# **portfolioGroupsPortfolioGroupIdSettingsGet**
> PortfolioGroupSettings portfolioGroupsPortfolioGroupIdSettingsGet(portfolioGroupId)

Get portfolio group settings

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to get the settings.
    try {
      PortfolioGroupSettings result = apiInstance.portfolioGroupsPortfolioGroupIdSettingsGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdSettingsGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to get the settings. | |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Settings of portfolio group |  -  |
| **0** | Unexpected error |  -  |

<a name="portfolioGroupsPortfolioGroupIdSettingsPatch"></a>
# **portfolioGroupsPortfolioGroupIdSettingsPatch**
> PortfolioGroupSettings portfolioGroupsPortfolioGroupIdSettingsPatch(portfolioGroupId)

Updates portfolio group settings

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to patch the settings.
    try {
      PortfolioGroupSettings result = apiInstance.portfolioGroupsPortfolioGroupIdSettingsPatch(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdSettingsPatch");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to patch the settings. | |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Settings of portfolio group |  -  |
| **0** | Unexpected error |  -  |

<a name="portfolioGroupsPortfolioGroupIdSymbolsPost"></a>
# **portfolioGroupsPortfolioGroupIdSymbolsPost**
> List&lt;UniversalSymbol&gt; portfolioGroupsPortfolioGroupIdSymbolsPost(portfolioGroupId, symbolQuery)

Search for symbols limited to brokerages under the specified portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup to search under
    SymbolQuery symbolQuery = new SymbolQuery(); // SymbolQuery | 
    try {
      List<UniversalSymbol> result = apiInstance.portfolioGroupsPortfolioGroupIdSymbolsPost(portfolioGroupId, symbolQuery);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdSymbolsPost");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup to search under | |
| **symbolQuery** | [**SymbolQuery**](SymbolQuery.md)|  | [optional] |

### Return type

[**List&lt;UniversalSymbol&gt;**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of UniversalSymbol objects which match the specified substring |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdTargetsGet"></a>
# **portfolioGroupsPortfolioGroupIdTargetsGet**
> List&lt;TargetAsset&gt; portfolioGroupsPortfolioGroupIdTargetsGet(portfolioGroupId)

Get all target assets under the specified PortfolioGroup.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<TargetAsset> result = apiInstance.portfolioGroupsPortfolioGroupIdTargetsGet(portfolioGroupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdTargetsGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to create the target asset. | |

### Return type

[**List&lt;TargetAsset&gt;**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All target assets owned by the specified PortfolioGroup. |  -  |
| **400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
| **404** | The specified portfolioGroupId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdTargetsPost"></a>
# **portfolioGroupsPortfolioGroupIdTargetsPost**
> List&lt;TargetAsset&gt; portfolioGroupsPortfolioGroupIdTargetsPost(portfolioGroupId, targetAsset)

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to create the target asset.
    List<TargetAsset> targetAsset = Arrays.asList(); // List<TargetAsset> | 
    try {
      List<TargetAsset> result = apiInstance.portfolioGroupsPortfolioGroupIdTargetsPost(portfolioGroupId, targetAsset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdTargetsPost");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to create the target asset. | |
| **targetAsset** | [**List&lt;TargetAsset&gt;**](TargetAsset.md)|  | [optional] |

### Return type

[**List&lt;TargetAsset&gt;**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A new target asset or set of target assets is created. |  -  |
| **400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
| **404** | The specified portfolioGroupId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdDelete"></a>
# **portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdDelete**
> TargetAsset portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdDelete(portfolioGroupId, targetAssetId)

Remove a TargetAsset.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to remove the target asset.
    UUID targetAssetId = UUID.randomUUID(); // UUID | The ID of the TargetAsset to delete.
    try {
      TargetAsset result = apiInstance.portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdDelete(portfolioGroupId, targetAssetId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdDelete");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to remove the target asset. | |
| **targetAssetId** | **UUID**| The ID of the TargetAsset to delete. | |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The TargetAsset object which was deleted. |  -  |
| **400** | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid. |  -  |
| **404** | The specified portfolioGroupId or targetAssetId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdGet"></a>
# **portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdGet**
> TargetAsset portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdGet(portfolioGroupId, targetAssetId)

Get a specific target from a portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to get the target asset.
    UUID targetAssetId = UUID.randomUUID(); // UUID | The ID of the TargetAsset to get.
    try {
      TargetAsset result = apiInstance.portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdGet(portfolioGroupId, targetAssetId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdGet");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to get the target asset. | |
| **targetAssetId** | **UUID**| The ID of the TargetAsset to get. | |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully get target asset. |  -  |
| **0** | Unexpected errors |  -  |

<a name="portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdPatch"></a>
# **portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdPatch**
> TargetAsset portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdPatch(portfolioGroupId, targetAssetId, targetAsset)

Update a TargetAsset under the specified PortfolioGroup.

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    UUID portfolioGroupId = UUID.randomUUID(); // UUID | The ID of the PortfolioGroup under which to patch the target asset.
    UUID targetAssetId = UUID.randomUUID(); // UUID | The ID of the TargetAsset to patch.
    TargetAsset targetAsset = new TargetAsset(); // TargetAsset | 
    try {
      TargetAsset result = apiInstance.portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdPatch(portfolioGroupId, targetAssetId, targetAsset);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPortfolioGroupIdTargetsTargetAssetIdPatch");
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
| **portfolioGroupId** | **UUID**| The ID of the PortfolioGroup under which to patch the target asset. | |
| **targetAssetId** | **UUID**| The ID of the TargetAsset to patch. | |
| **targetAsset** | [**TargetAsset**](TargetAsset.md)|  | |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The target asset is updated. |  -  |
| **400** | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid. |  -  |
| **404** | The specified portfolioGroupId or targetAssetId was not found. |  -  |
| **0** | Unexpected error. |  -  |

<a name="portfolioGroupsPost"></a>
# **portfolioGroupsPost**
> List&lt;PortfolioGroup&gt; portfolioGroupsPost(userId, userSecret, requestBody)

Create new portfolio group

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.PortfolioManagementApi;

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

    PortfolioManagementApi apiInstance = new PortfolioManagementApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    Map<String, Object> requestBody = null; // Map<String, Object> | 
    try {
      List<PortfolioGroup> result = apiInstance.portfolioGroupsPost(userId, userSecret, requestBody);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#portfolioGroupsPost");
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
| **requestBody** | [**Map&lt;String, Object&gt;**](Object.md)|  | |

### Return type

[**List&lt;PortfolioGroup&gt;**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A new PortfolioGroup is created. |  -  |
| **400** | The input data is missing or invalid. |  -  |
| **0** | Unexpected error. |  -  |

