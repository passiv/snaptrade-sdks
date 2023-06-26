# PortfolioManagementApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addPortfolioExcludedAsset**](PortfolioManagementApi.md#addPortfolioExcludedAsset) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group |
| [**create**](PortfolioManagementApi.md#create) | **POST** /portfolioGroups | Create new portfolio group |
| [**createAssetClass**](PortfolioManagementApi.md#createAssetClass) | **POST** /modelAssetClass | Create a new model asset class |
| [**createModelPortfolio**](PortfolioManagementApi.md#createModelPortfolio) | **POST** /modelPortfolio | Creates a new model portfolio |
| [**deleteAssetClass**](PortfolioManagementApi.md#deleteAssetClass) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class |
| [**deleteExcludedAsset**](PortfolioManagementApi.md#deleteExcludedAsset) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group |
| [**deleteModelPortfolioById**](PortfolioManagementApi.md#deleteModelPortfolioById) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio |
| [**deletePortfoli**](PortfolioManagementApi.md#deletePortfoli) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio. |
| [**deletePortfolioTargetById**](PortfolioManagementApi.md#deletePortfolioTargetById) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset. |
| [**detailAssetClass**](PortfolioManagementApi.md#detailAssetClass) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class |
| [**getCalculatedTradeById**](PortfolioManagementApi.md#getCalculatedTradeById) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade |
| [**getModelDetailsById**](PortfolioManagementApi.md#getModelDetailsById) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio |
| [**getPortfolioBalances**](PortfolioManagementApi.md#getPortfolioBalances) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group |
| [**getPortfolioDetailsById**](PortfolioManagementApi.md#getPortfolioDetailsById) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio |
| [**getPortfolioInfo**](PortfolioManagementApi.md#getPortfolioInfo) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group. |
| [**getPortfolioSettings**](PortfolioManagementApi.md#getPortfolioSettings) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings |
| [**getPortfolioTargetById**](PortfolioManagementApi.md#getPortfolioTargetById) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group |
| [**getPortfolioTargets**](PortfolioManagementApi.md#getPortfolioTargets) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup. |
| [**getPortoflioExcludedAssets**](PortfolioManagementApi.md#getPortoflioExcludedAssets) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\ |
| [**importModelPortfolio**](PortfolioManagementApi.md#importModelPortfolio) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group |
| [**list**](PortfolioManagementApi.md#list) | **GET** /portfolioGroups | List all portfolio groups |
| [**listAssetClasses**](PortfolioManagementApi.md#listAssetClasses) | **GET** /modelAssetClass | List of model asset class |
| [**listCalculatedTrades**](PortfolioManagementApi.md#listCalculatedTrades) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group |
| [**listModelPortfolio**](PortfolioManagementApi.md#listModelPortfolio) | **GET** /modelPortfolio | List of model portfolio |
| [**listPortfolioAccounts**](PortfolioManagementApi.md#listPortfolioAccounts) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group |
| [**modifyModelPortfolioById**](PortfolioManagementApi.md#modifyModelPortfolioById) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object |
| [**savePortfolio**](PortfolioManagementApi.md#savePortfolio) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio. |
| [**searchPortfolioSymbols**](PortfolioManagementApi.md#searchPortfolioSymbols) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group |
| [**setPortfolioTargets**](PortfolioManagementApi.md#setPortfolioTargets) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list. |
| [**updateAssetClass**](PortfolioManagementApi.md#updateAssetClass) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects |
| [**updatePortfolioSettings**](PortfolioManagementApi.md#updatePortfolioSettings) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings |
| [**updatePortfolioTargetById**](PortfolioManagementApi.md#updatePortfolioTargetById) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup. |


<a name="addPortfolioExcludedAsset"></a>
# **addPortfolioExcludedAsset**
> ExcludedAsset addPortfolioExcludedAsset(portfolioGroupId).universalSymbol(universalSymbol).execute();

Adds an asset to exclude to a portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to exclude an asset.
    UUID id = UUID.randomUUID();
    String symbol = "symbol_example";
    String rawSymbol = "rawSymbol_example";
    String description = "description_example";
    Currency currency = new Currency();
    Exchange exchange = new Exchange();
    SecurityType type = new SecurityType();
    List<Currency> currencies = Arrays.asList();
    try {
      ExcludedAsset result = client
              .portfolioManagement
              .addPortfolioExcludedAsset(portfolioGroupId)
              .id(id)
              .symbol(symbol)
              .rawSymbol(rawSymbol)
              .description(description)
              .currency(currency)
              .exchange(exchange)
              .type(type)
              .currencies(currencies)
              .execute();
      System.out.println(result);

      System.out.println(result.getSymbol());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#addPortfolioExcludedAsset");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ExcludedAsset> response = client
              .portfolioManagement
              .addPortfolioExcludedAsset(portfolioGroupId)
              .id(id)
              .symbol(symbol)
              .rawSymbol(rawSymbol)
              .description(description)
              .currency(currency)
              .exchange(exchange)
              .type(type)
              .currencies(currencies)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#addPortfolioExcludedAsset");
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

<a name="create"></a>
# **create**
> List&lt;PortfolioGroup&gt; create(userId, userSecret, requestBody).execute();

Create new portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID id = UUID.randomUUID();
    String name = "name_example";
    try {
      List<PortfolioGroup> result = client
              .portfolioManagement
              .create(userId, userSecret)
              .id(id)
              .name(name)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#create");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<PortfolioGroup>> response = client
              .portfolioManagement
              .create(userId, userSecret)
              .id(id)
              .name(name)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#create");
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

<a name="createAssetClass"></a>
# **createAssetClass**
> ModelAssetClassDetails createAssetClass(userId, userSecret).execute();

Create a new model asset class

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
      ModelAssetClassDetails result = client
              .portfolioManagement
              .createAssetClass(userId, userSecret)
              .execute();
      System.out.println(result);

      System.out.println(result.getModelAssetClass());

      System.out.println(result.getModelAssetClassTarget());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#createAssetClass");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ModelAssetClassDetails> response = client
              .portfolioManagement
              .createAssetClass(userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#createAssetClass");
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

<a name="createModelPortfolio"></a>
# **createModelPortfolio**
> ModelPortfolioDetails createModelPortfolio().execute();

Creates a new model portfolio

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
      ModelPortfolioDetails result = client
              .portfolioManagement
              .createModelPortfolio()
              .execute();
      System.out.println(result);

      System.out.println(result.getModelPortfolio());

      System.out.println(result.getModelPortfolioSecurity());

      System.out.println(result.getModelPortfolioAssetClass());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#createModelPortfolio");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ModelPortfolioDetails> response = client
              .portfolioManagement
              .createModelPortfolio()
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#createModelPortfolio");
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

<a name="deleteAssetClass"></a>
# **deleteAssetClass**
> deleteAssetClass(modelAssetClassId).execute();

Deletes a model asset class

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID modelAssetClassId = UUID.randomUUID(); // The ID of the model asset class to delete.
    try {
      client
              .portfolioManagement
              .deleteAssetClass(modelAssetClassId)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deleteAssetClass");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      client
              .portfolioManagement
              .deleteAssetClass(modelAssetClassId)
              .executeWithHttpInfo();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deleteAssetClass");
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

<a name="deleteExcludedAsset"></a>
# **deleteExcludedAsset**
> deleteExcludedAsset(portfolioGroupId, symbolId).execute();

Unexclude an asset from a portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to unexclude an asset.
    UUID symbolId = UUID.randomUUID(); // The ID of the excluded asset Symbol to delete.
    try {
      client
              .portfolioManagement
              .deleteExcludedAsset(portfolioGroupId, symbolId)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deleteExcludedAsset");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      client
              .portfolioManagement
              .deleteExcludedAsset(portfolioGroupId, symbolId)
              .executeWithHttpInfo();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deleteExcludedAsset");
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

<a name="deleteModelPortfolioById"></a>
# **deleteModelPortfolioById**
> deleteModelPortfolioById(modelPortfolioId).execute();

Deletes a model portfolio

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID modelPortfolioId = UUID.randomUUID(); // The ID of the model portfolio to delete.
    try {
      client
              .portfolioManagement
              .deleteModelPortfolioById(modelPortfolioId)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deleteModelPortfolioById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      client
              .portfolioManagement
              .deleteModelPortfolioById(modelPortfolioId)
              .executeWithHttpInfo();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deleteModelPortfolioById");
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

<a name="deletePortfoli"></a>
# **deletePortfoli**
> PortfolioGroup deletePortfoli(portfolioGroupId).execute();

Remove a target portfolio.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to delete.
    try {
      PortfolioGroup result = client
              .portfolioManagement
              .deletePortfoli(portfolioGroupId)
              .execute();
      System.out.println(result);

      System.out.println(result.getId());

      System.out.println(result.getName());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deletePortfoli");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PortfolioGroup> response = client
              .portfolioManagement
              .deletePortfoli(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deletePortfoli");
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

<a name="deletePortfolioTargetById"></a>
# **deletePortfolioTargetById**
> TargetAsset deletePortfolioTargetById(portfolioGroupId, targetAssetId).execute();

Remove a TargetAsset.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to remove the target asset.
    UUID targetAssetId = UUID.randomUUID(); // The ID of the TargetAsset to delete.
    try {
      TargetAsset result = client
              .portfolioManagement
              .deletePortfolioTargetById(portfolioGroupId, targetAssetId)
              .execute();
      System.out.println(result);

      System.out.println(result.getId());

      System.out.println(result.getSymbol());

      System.out.println(result.getPercent());

      System.out.println(result.getIsSupported());

      System.out.println(result.getIsExcluded());

      System.out.println(result.getMeta());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deletePortfolioTargetById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TargetAsset> response = client
              .portfolioManagement
              .deletePortfolioTargetById(portfolioGroupId, targetAssetId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#deletePortfolioTargetById");
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

<a name="detailAssetClass"></a>
# **detailAssetClass**
> ModelAssetClassDetails detailAssetClass(modelAssetClassId, userId, userSecret).execute();

Get details of a model asset class

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID modelAssetClassId = UUID.randomUUID(); // The ID of the model asset class to get.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    try {
      ModelAssetClassDetails result = client
              .portfolioManagement
              .detailAssetClass(modelAssetClassId, userId, userSecret)
              .execute();
      System.out.println(result);

      System.out.println(result.getModelAssetClass());

      System.out.println(result.getModelAssetClassTarget());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#detailAssetClass");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ModelAssetClassDetails> response = client
              .portfolioManagement
              .detailAssetClass(modelAssetClassId, userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#detailAssetClass");
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
| **modelAssetClassId** | **UUID**| The ID of the model asset class to get. | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |

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

<a name="getCalculatedTradeById"></a>
# **getCalculatedTradeById**
> List&lt;Trade&gt; getCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId).execute();

Return an individual trade

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to perform rebalancing calculations
    UUID calculatedTradeId = UUID.randomUUID(); // The ID of calculated trade to get account impact
    UUID tradeId = UUID.randomUUID(); // The ID of trade object
    try {
      List<Trade> result = client
              .portfolioManagement
              .getCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getCalculatedTradeById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Trade>> response = client
              .portfolioManagement
              .getCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getCalculatedTradeById");
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

<a name="getModelDetailsById"></a>
# **getModelDetailsById**
> ModelPortfolioDetails getModelDetailsById(modelPortfolioId).execute();

Get details of a model portfolio

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID modelPortfolioId = UUID.randomUUID(); // The ID of the model portfolio to get.
    try {
      ModelPortfolioDetails result = client
              .portfolioManagement
              .getModelDetailsById(modelPortfolioId)
              .execute();
      System.out.println(result);

      System.out.println(result.getModelPortfolio());

      System.out.println(result.getModelPortfolioSecurity());

      System.out.println(result.getModelPortfolioAssetClass());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getModelDetailsById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<ModelPortfolioDetails> response = client
              .portfolioManagement
              .getModelDetailsById(modelPortfolioId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getModelDetailsById");
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

<a name="getPortfolioBalances"></a>
# **getPortfolioBalances**
> List&lt;Balance&gt; getPortfolioBalances(portfolioGroupId).execute();

Get sum of cash balances in portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<Balance> result = client
              .portfolioManagement
              .getPortfolioBalances(portfolioGroupId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioBalances");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Balance>> response = client
              .portfolioManagement
              .getPortfolioBalances(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioBalances");
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

<a name="getPortfolioDetailsById"></a>
# **getPortfolioDetailsById**
> PortfolioGroup getPortfolioDetailsById(portfolioGroupId).execute();

Get details of a target portfolio

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to get.
    try {
      PortfolioGroup result = client
              .portfolioManagement
              .getPortfolioDetailsById(portfolioGroupId)
              .execute();
      System.out.println(result);

      System.out.println(result.getId());

      System.out.println(result.getName());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioDetailsById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PortfolioGroup> response = client
              .portfolioManagement
              .getPortfolioDetailsById(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioDetailsById");
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

<a name="getPortfolioInfo"></a>
# **getPortfolioInfo**
> PortfolioGroupInfo getPortfolioInfo(portfolioGroupId).execute();

Return a whole bunch of relevant information relating to a portfolio group.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to create the target asset.
    try {
      PortfolioGroupInfo result = client
              .portfolioManagement
              .getPortfolioInfo(portfolioGroupId)
              .execute();
      System.out.println(result);

      System.out.println(result.getSymbols());

      System.out.println(result.getQuotableSymbols());

      System.out.println(result.getBalances());

      System.out.println(result.getPositions());

      System.out.println(result.getTargetPositions());

      System.out.println(result.getIdealPositions());

      System.out.println(result.getExcludedPositions());

      System.out.println(result.getCalculatedTrades());

      System.out.println(result.getBrokerageAuthorizations());

      System.out.println(result.getAccuracy());

      System.out.println(result.getSettings());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioInfo");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PortfolioGroupInfo> response = client
              .portfolioManagement
              .getPortfolioInfo(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioInfo");
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

<a name="getPortfolioSettings"></a>
# **getPortfolioSettings**
> PortfolioGroupSettings getPortfolioSettings(portfolioGroupId).execute();

Get portfolio group settings

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to get the settings.
    try {
      PortfolioGroupSettings result = client
              .portfolioManagement
              .getPortfolioSettings(portfolioGroupId)
              .execute();
      System.out.println(result);

      System.out.println(result.getBuyOnly());

      System.out.println(result.getCashOptimizer());

      System.out.println(result.getNotifyFrequency());

      System.out.println(result.getDriftThreshold());

      System.out.println(result.getPreferredCurrency());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioSettings");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PortfolioGroupSettings> response = client
              .portfolioManagement
              .getPortfolioSettings(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioSettings");
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

<a name="getPortfolioTargetById"></a>
# **getPortfolioTargetById**
> TargetAsset getPortfolioTargetById(portfolioGroupId, targetAssetId).execute();

Get a specific target from a portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to get the target asset.
    UUID targetAssetId = UUID.randomUUID(); // The ID of the TargetAsset to get.
    try {
      TargetAsset result = client
              .portfolioManagement
              .getPortfolioTargetById(portfolioGroupId, targetAssetId)
              .execute();
      System.out.println(result);

      System.out.println(result.getId());

      System.out.println(result.getSymbol());

      System.out.println(result.getPercent());

      System.out.println(result.getIsSupported());

      System.out.println(result.getIsExcluded());

      System.out.println(result.getMeta());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioTargetById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TargetAsset> response = client
              .portfolioManagement
              .getPortfolioTargetById(portfolioGroupId, targetAssetId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioTargetById");
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

<a name="getPortfolioTargets"></a>
# **getPortfolioTargets**
> List&lt;TargetAsset&gt; getPortfolioTargets(portfolioGroupId).execute();

Get all target assets under the specified PortfolioGroup.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<TargetAsset> result = client
              .portfolioManagement
              .getPortfolioTargets(portfolioGroupId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioTargets");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<TargetAsset>> response = client
              .portfolioManagement
              .getPortfolioTargets(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortfolioTargets");
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

<a name="getPortoflioExcludedAssets"></a>
# **getPortoflioExcludedAssets**
> List&lt;ExcludedAsset&gt; getPortoflioExcludedAssets(portfolioGroupId).execute();

Get an array of excluded assets associated with a portfolio group\\

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which the excluded assets are linked.
    try {
      List<ExcludedAsset> result = client
              .portfolioManagement
              .getPortoflioExcludedAssets(portfolioGroupId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortoflioExcludedAssets");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<ExcludedAsset>> response = client
              .portfolioManagement
              .getPortoflioExcludedAssets(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#getPortoflioExcludedAssets");
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

<a name="importModelPortfolio"></a>
# **importModelPortfolio**
> List&lt;TargetAsset&gt; importModelPortfolio(portfolioGroupId).execute();

Import target allocation based on portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<TargetAsset> result = client
              .portfolioManagement
              .importModelPortfolio(portfolioGroupId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#importModelPortfolio");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<TargetAsset>> response = client
              .portfolioManagement
              .importModelPortfolio(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#importModelPortfolio");
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

<a name="list"></a>
# **list**
> List&lt;PortfolioGroup&gt; list(userId, userSecret).execute();

List all portfolio groups

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
      List<PortfolioGroup> result = client
              .portfolioManagement
              .list(userId, userSecret)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#list");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<PortfolioGroup>> response = client
              .portfolioManagement
              .list(userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#list");
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

<a name="listAssetClasses"></a>
# **listAssetClasses**
> List&lt;ModelAssetClassDetails&gt; listAssetClasses(userId, userSecret).execute();

List of model asset class

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
      List<ModelAssetClassDetails> result = client
              .portfolioManagement
              .listAssetClasses(userId, userSecret)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listAssetClasses");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<ModelAssetClassDetails>> response = client
              .portfolioManagement
              .listAssetClasses(userId, userSecret)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listAssetClasses");
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

<a name="listCalculatedTrades"></a>
# **listCalculatedTrades**
> CalculatedTrade listCalculatedTrades(portfolioGroupId).execute();

List of trades to make to rebalance portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to perform rebalancing calculations
    try {
      CalculatedTrade result = client
              .portfolioManagement
              .listCalculatedTrades(portfolioGroupId)
              .execute();
      System.out.println(result);

      System.out.println(result.getId());

      System.out.println(result.getTrades());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listCalculatedTrades");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<CalculatedTrade> response = client
              .portfolioManagement
              .listCalculatedTrades(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listCalculatedTrades");
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

<a name="listModelPortfolio"></a>
# **listModelPortfolio**
> List&lt;ModelPortfolioDetails&gt; listModelPortfolio().execute();

List of model portfolio

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
      List<ModelPortfolioDetails> result = client
              .portfolioManagement
              .listModelPortfolio()
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listModelPortfolio");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<ModelPortfolioDetails>> response = client
              .portfolioManagement
              .listModelPortfolio()
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listModelPortfolio");
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

<a name="listPortfolioAccounts"></a>
# **listPortfolioAccounts**
> List&lt;Account&gt; listPortfolioAccounts(portfolioGroupId).execute();

Get all accounts associated with a portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which the accounts are linked.
    try {
      List<Account> result = client
              .portfolioManagement
              .listPortfolioAccounts(portfolioGroupId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listPortfolioAccounts");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<Account>> response = client
              .portfolioManagement
              .listPortfolioAccounts(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#listPortfolioAccounts");
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

<a name="modifyModelPortfolioById"></a>
# **modifyModelPortfolioById**
> modifyModelPortfolioById(modelPortfolioId, modelPortfolioDetails).execute();

Updates model portfolio object

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID modelPortfolioId = UUID.randomUUID(); // The ID of the model portfolio to update.
    ModelPortfolio modelPortfolio = new ModelPortfolio();
    List<ModelPortfolioSecurity> modelPortfolioSecurity = Arrays.asList();
    List<ModelPortfolioAssetClass> modelPortfolioAssetClass = Arrays.asList();
    try {
      client
              .portfolioManagement
              .modifyModelPortfolioById(modelPortfolioId)
              .modelPortfolio(modelPortfolio)
              .modelPortfolioSecurity(modelPortfolioSecurity)
              .modelPortfolioAssetClass(modelPortfolioAssetClass)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modifyModelPortfolioById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      client
              .portfolioManagement
              .modifyModelPortfolioById(modelPortfolioId)
              .modelPortfolio(modelPortfolio)
              .modelPortfolioSecurity(modelPortfolioSecurity)
              .modelPortfolioAssetClass(modelPortfolioAssetClass)
              .executeWithHttpInfo();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#modifyModelPortfolioById");
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

<a name="savePortfolio"></a>
# **savePortfolio**
> PortfolioGroup savePortfolio(portfolioGroupId, requestBody).execute();

Update an existing target portfolio.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to update.
    UUID id = UUID.randomUUID();
    String name = "name_example";
    try {
      PortfolioGroup result = client
              .portfolioManagement
              .savePortfolio(portfolioGroupId)
              .id(id)
              .name(name)
              .execute();
      System.out.println(result);

      System.out.println(result.getId());

      System.out.println(result.getName());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#savePortfolio");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PortfolioGroup> response = client
              .portfolioManagement
              .savePortfolio(portfolioGroupId)
              .id(id)
              .name(name)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#savePortfolio");
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

<a name="searchPortfolioSymbols"></a>
# **searchPortfolioSymbols**
> List&lt;UniversalSymbol&gt; searchPortfolioSymbols(portfolioGroupId).symbolQuery(symbolQuery).execute();

Search for symbols limited to brokerages under the specified portfolio group

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup to search under
    String substring = "substring_example";
    try {
      List<UniversalSymbol> result = client
              .portfolioManagement
              .searchPortfolioSymbols(portfolioGroupId)
              .substring(substring)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#searchPortfolioSymbols");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<UniversalSymbol>> response = client
              .portfolioManagement
              .searchPortfolioSymbols(portfolioGroupId)
              .substring(substring)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#searchPortfolioSymbols");
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

<a name="setPortfolioTargets"></a>
# **setPortfolioTargets**
> List&lt;TargetAsset&gt; setPortfolioTargets(portfolioGroupId).targetAsset(targetAsset).execute();

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to create the target asset.
    try {
      List<TargetAsset> result = client
              .portfolioManagement
              .setPortfolioTargets(portfolioGroupId)
              .execute();
      System.out.println(result);

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#setPortfolioTargets");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<TargetAsset>> response = client
              .portfolioManagement
              .setPortfolioTargets(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#setPortfolioTargets");
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

<a name="updateAssetClass"></a>
# **updateAssetClass**
> updateAssetClass(modelAssetClassId, userId, userSecret, modelAssetClassDetails).execute();

Updates model asset class objects

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID modelAssetClassId = UUID.randomUUID(); // The ID of the model asset class to update.
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    ModelAssetClass modelAssetClass = new ModelAssetClass();
    List<ModelAssetClassTarget> modelAssetClassTarget = Arrays.asList();
    try {
      client
              .portfolioManagement
              .updateAssetClass(modelAssetClassId, userId, userSecret)
              .modelAssetClass(modelAssetClass)
              .modelAssetClassTarget(modelAssetClassTarget)
              .execute();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#updateAssetClass");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      client
              .portfolioManagement
              .updateAssetClass(modelAssetClassId, userId, userSecret)
              .modelAssetClass(modelAssetClass)
              .modelAssetClassTarget(modelAssetClassTarget)
              .executeWithHttpInfo();
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#updateAssetClass");
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
| **modelAssetClassId** | **UUID**| The ID of the model asset class to update. | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
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

<a name="updatePortfolioSettings"></a>
# **updatePortfolioSettings**
> PortfolioGroupSettings updatePortfolioSettings(portfolioGroupId).execute();

Updates portfolio group settings

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to patch the settings.
    try {
      PortfolioGroupSettings result = client
              .portfolioManagement
              .updatePortfolioSettings(portfolioGroupId)
              .execute();
      System.out.println(result);

      System.out.println(result.getBuyOnly());

      System.out.println(result.getCashOptimizer());

      System.out.println(result.getNotifyFrequency());

      System.out.println(result.getDriftThreshold());

      System.out.println(result.getPreferredCurrency());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#updatePortfolioSettings");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PortfolioGroupSettings> response = client
              .portfolioManagement
              .updatePortfolioSettings(portfolioGroupId)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#updatePortfolioSettings");
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

<a name="updatePortfolioTargetById"></a>
# **updatePortfolioTargetById**
> TargetAsset updatePortfolioTargetById(portfolioGroupId, targetAssetId, targetAsset).execute();

Update a TargetAsset under the specified PortfolioGroup.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.PortfolioManagementApi;
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
    UUID portfolioGroupId = UUID.randomUUID(); // The ID of the PortfolioGroup under which to patch the target asset.
    UUID targetAssetId = UUID.randomUUID(); // The ID of the TargetAsset to patch.
    UUID id = UUID.randomUUID();
    UniversalSymbol symbol = new UniversalSymbol();
    Double percent = 3.4D;
    Boolean isSupported = true;
    Boolean isExcluded = true;
    Map<String, Object> meta = new HashMap();
    try {
      TargetAsset result = client
              .portfolioManagement
              .updatePortfolioTargetById(portfolioGroupId, targetAssetId)
              .id(id)
              .symbol(symbol)
              .percent(percent)
              .isSupported(isSupported)
              .isExcluded(isExcluded)
              .meta(meta)
              .execute();
      System.out.println(result);

      System.out.println(result.getId());

      System.out.println(result.getSymbol());

      System.out.println(result.getPercent());

      System.out.println(result.getIsSupported());

      System.out.println(result.getIsExcluded());

      System.out.println(result.getMeta());

    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#updatePortfolioTargetById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<TargetAsset> response = client
              .portfolioManagement
              .updatePortfolioTargetById(portfolioGroupId, targetAssetId)
              .id(id)
              .symbol(symbol)
              .percent(percent)
              .isSupported(isSupported)
              .isExcluded(isExcluded)
              .meta(meta)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling PortfolioManagementApi#updatePortfolioTargetById");
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

