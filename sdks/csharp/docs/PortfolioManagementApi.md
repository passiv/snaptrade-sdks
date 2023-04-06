# SnapTrade.Net.Api.PortfolioManagementApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AddPortfolioExcludedAsset**](PortfolioManagementApi.md#addportfolioexcludedasset) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group |
| [**Create**](PortfolioManagementApi.md#create) | **POST** /portfolioGroups | Create new portfolio group |
| [**CreateAssetClass**](PortfolioManagementApi.md#createassetclass) | **POST** /modelAssetClass | Create a new model asset class |
| [**CreateModelPortfolio**](PortfolioManagementApi.md#createmodelportfolio) | **POST** /modelPortfolio | Creates a new model portfolio |
| [**DeleteAssetClass**](PortfolioManagementApi.md#deleteassetclass) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class |
| [**DeleteExcludedAsset**](PortfolioManagementApi.md#deleteexcludedasset) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group |
| [**DeleteModelPortfolioById**](PortfolioManagementApi.md#deletemodelportfoliobyid) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio |
| [**DeletePortfoli**](PortfolioManagementApi.md#deleteportfoli) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio. |
| [**DeletePortfolioTargetById**](PortfolioManagementApi.md#deleteportfoliotargetbyid) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset. |
| [**DetailAssetClass**](PortfolioManagementApi.md#detailassetclass) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class |
| [**GetCalculatedTradeById**](PortfolioManagementApi.md#getcalculatedtradebyid) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade |
| [**GetModelDetailsById**](PortfolioManagementApi.md#getmodeldetailsbyid) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio |
| [**GetPortfolioBalances**](PortfolioManagementApi.md#getportfoliobalances) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group |
| [**GetPortfolioDetailsById**](PortfolioManagementApi.md#getportfoliodetailsbyid) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio |
| [**GetPortfolioInfo**](PortfolioManagementApi.md#getportfolioinfo) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group. |
| [**GetPortfolioPositions**](PortfolioManagementApi.md#getportfoliopositions) | **GET** /portfolioGroups/{portfolioGroupId}/positions | Get total of each postions owned in portfolio group |
| [**GetPortfolioSettings**](PortfolioManagementApi.md#getportfoliosettings) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings |
| [**GetPortfolioTargetById**](PortfolioManagementApi.md#getportfoliotargetbyid) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group |
| [**GetPortfolioTargets**](PortfolioManagementApi.md#getportfoliotargets) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup. |
| [**GetPortoflioExcludedAssets**](PortfolioManagementApi.md#getportoflioexcludedassets) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\ |
| [**ImportModelPortfolio**](PortfolioManagementApi.md#importmodelportfolio) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group |
| [**List**](PortfolioManagementApi.md#list) | **GET** /portfolioGroups | List all portfolio groups |
| [**ListAssetClasses**](PortfolioManagementApi.md#listassetclasses) | **GET** /modelAssetClass | List of model asset class |
| [**ListCalculatedTrades**](PortfolioManagementApi.md#listcalculatedtrades) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group |
| [**ListModelPortfolio**](PortfolioManagementApi.md#listmodelportfolio) | **GET** /modelPortfolio | List of model portfolio |
| [**ListPortfolioAccounts**](PortfolioManagementApi.md#listportfolioaccounts) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group |
| [**ModifyModelPortfolioById**](PortfolioManagementApi.md#modifymodelportfoliobyid) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object |
| [**SavePortfolio**](PortfolioManagementApi.md#saveportfolio) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio. |
| [**SearchPortfolioSymbols**](PortfolioManagementApi.md#searchportfoliosymbols) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group |
| [**SetPortfolioTargets**](PortfolioManagementApi.md#setportfoliotargets) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list. |
| [**UpdateAssetClass**](PortfolioManagementApi.md#updateassetclass) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects |
| [**UpdatePortfolioSettings**](PortfolioManagementApi.md#updateportfoliosettings) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings |
| [**UpdatePortfolioTargetById**](PortfolioManagementApi.md#updateportfoliotargetbyid) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup. |

<a name="addportfolioexcludedasset"></a>
# **AddPortfolioExcludedAsset**
> ExcludedAsset AddPortfolioExcludedAsset (Guid portfolioGroupId, UniversalSymbol universalSymbol = null)

Adds an asset to exclude to a portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class AddPortfolioExcludedAssetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to exclude an asset.
            var universalSymbol = new UniversalSymbol(); // UniversalSymbol |  (optional) 

            try
            {
                // Adds an asset to exclude to a portfolio group
                ExcludedAsset result = apiInstance.AddPortfolioExcludedAsset(portfolioGroupId, universalSymbol);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.AddPortfolioExcludedAsset: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AddPortfolioExcludedAssetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Adds an asset to exclude to a portfolio group
    ApiResponse<ExcludedAsset> response = apiInstance.AddPortfolioExcludedAssetWithHttpInfo(portfolioGroupId, universalSymbol);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.AddPortfolioExcludedAssetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to exclude an asset. |  |
| **universalSymbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="create"></a>
# **Create**
> List&lt;PortfolioGroup&gt; Create (string userId, string userSecret, Dictionary<string, Object> requestBody)

Create new portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var requestBody = new Dictionary<string, Object>(); // Dictionary<string, Object> | 

            try
            {
                // Create new portfolio group
                List<PortfolioGroup> result = apiInstance.Create(userId, userSecret, requestBody);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.Create: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create new portfolio group
    ApiResponse<List<PortfolioGroup>> response = apiInstance.CreateWithHttpInfo(userId, userSecret, requestBody);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.CreateWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **requestBody** | [**Dictionary&lt;string, Object&gt;**](Object.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="createassetclass"></a>
# **CreateAssetClass**
> ModelAssetClassDetails CreateAssetClass ()

Create a new model asset class

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CreateAssetClassExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);

            try
            {
                // Create a new model asset class
                ModelAssetClassDetails result = apiInstance.CreateAssetClass();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.CreateAssetClass: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateAssetClassWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create a new model asset class
    ApiResponse<ModelAssetClassDetails> response = apiInstance.CreateAssetClassWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.CreateAssetClassWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="createmodelportfolio"></a>
# **CreateModelPortfolio**
> ModelPortfolioDetails CreateModelPortfolio ()

Creates a new model portfolio

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class CreateModelPortfolioExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);

            try
            {
                // Creates a new model portfolio
                ModelPortfolioDetails result = apiInstance.CreateModelPortfolio();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.CreateModelPortfolio: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateModelPortfolioWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Creates a new model portfolio
    ApiResponse<ModelPortfolioDetails> response = apiInstance.CreateModelPortfolioWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.CreateModelPortfolioWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deleteassetclass"></a>
# **DeleteAssetClass**
> void DeleteAssetClass (Guid modelAssetClassId)

Deletes a model asset class

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DeleteAssetClassExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var modelAssetClassId = "modelAssetClassId_example";  // Guid | The ID of the model asset class to delete.

            try
            {
                // Deletes a model asset class
                apiInstance.DeleteAssetClass(modelAssetClassId);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.DeleteAssetClass: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeleteAssetClassWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Deletes a model asset class
    apiInstance.DeleteAssetClassWithHttpInfo(modelAssetClassId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.DeleteAssetClassWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **modelAssetClassId** | **Guid** | The ID of the model asset class to delete. |  |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deleteexcludedasset"></a>
# **DeleteExcludedAsset**
> void DeleteExcludedAsset (Guid portfolioGroupId, Guid symbolId)

Unexclude an asset from a portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DeleteExcludedAssetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to unexclude an asset.
            var symbolId = "symbolId_example";  // Guid | The ID of the excluded asset Symbol to delete.

            try
            {
                // Unexclude an asset from a portfolio group
                apiInstance.DeleteExcludedAsset(portfolioGroupId, symbolId);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.DeleteExcludedAsset: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeleteExcludedAssetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Unexclude an asset from a portfolio group
    apiInstance.DeleteExcludedAssetWithHttpInfo(portfolioGroupId, symbolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.DeleteExcludedAssetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to unexclude an asset. |  |
| **symbolId** | **Guid** | The ID of the excluded asset Symbol to delete. |  |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Excluded asset deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletemodelportfoliobyid"></a>
# **DeleteModelPortfolioById**
> void DeleteModelPortfolioById (Guid modelPortfolioId)

Deletes a model portfolio

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DeleteModelPortfolioByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var modelPortfolioId = "modelPortfolioId_example";  // Guid | The ID of the model portfolio to delete.

            try
            {
                // Deletes a model portfolio
                apiInstance.DeleteModelPortfolioById(modelPortfolioId);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.DeleteModelPortfolioById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeleteModelPortfolioByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Deletes a model portfolio
    apiInstance.DeleteModelPortfolioByIdWithHttpInfo(modelPortfolioId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.DeleteModelPortfolioByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **modelPortfolioId** | **Guid** | The ID of the model portfolio to delete. |  |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deleteportfoli"></a>
# **DeletePortfoli**
> PortfolioGroup DeletePortfoli (Guid portfolioGroupId)

Remove a target portfolio.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DeletePortfoliExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to delete.

            try
            {
                // Remove a target portfolio.
                PortfolioGroup result = apiInstance.DeletePortfoli(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.DeletePortfoli: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeletePortfoliWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Remove a target portfolio.
    ApiResponse<PortfolioGroup> response = apiInstance.DeletePortfoliWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.DeletePortfoliWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to delete. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deleteportfoliotargetbyid"></a>
# **DeletePortfolioTargetById**
> TargetAsset DeletePortfolioTargetById (Guid portfolioGroupId, Guid targetAssetId)

Remove a TargetAsset.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DeletePortfolioTargetByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to remove the target asset.
            var targetAssetId = "targetAssetId_example";  // Guid | The ID of the TargetAsset to delete.

            try
            {
                // Remove a TargetAsset.
                TargetAsset result = apiInstance.DeletePortfolioTargetById(portfolioGroupId, targetAssetId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.DeletePortfolioTargetById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeletePortfolioTargetByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Remove a TargetAsset.
    ApiResponse<TargetAsset> response = apiInstance.DeletePortfolioTargetByIdWithHttpInfo(portfolioGroupId, targetAssetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.DeletePortfolioTargetByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to remove the target asset. |  |
| **targetAssetId** | **Guid** | The ID of the TargetAsset to delete. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="detailassetclass"></a>
# **DetailAssetClass**
> ModelAssetClassDetails DetailAssetClass (Guid modelAssetClassId)

Get details of a model asset class

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DetailAssetClassExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var modelAssetClassId = "modelAssetClassId_example";  // Guid | The ID of the model asset class to get.

            try
            {
                // Get details of a model asset class
                ModelAssetClassDetails result = apiInstance.DetailAssetClass(modelAssetClassId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.DetailAssetClass: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DetailAssetClassWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get details of a model asset class
    ApiResponse<ModelAssetClassDetails> response = apiInstance.DetailAssetClassWithHttpInfo(modelAssetClassId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.DetailAssetClassWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **modelAssetClassId** | **Guid** | The ID of the model asset class to get. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcalculatedtradebyid"></a>
# **GetCalculatedTradeById**
> List&lt;Trade&gt; GetCalculatedTradeById (Guid portfolioGroupId, Guid calculatedTradeId, Guid tradeId)

Return an individual trade

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetCalculatedTradeByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to perform rebalancing calculations
            var calculatedTradeId = "calculatedTradeId_example";  // Guid | The ID of calculated trade to get account impact
            var tradeId = "tradeId_example";  // Guid | The ID of trade object

            try
            {
                // Return an individual trade
                List<Trade> result = apiInstance.GetCalculatedTradeById(portfolioGroupId, calculatedTradeId, tradeId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetCalculatedTradeById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetCalculatedTradeByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return an individual trade
    ApiResponse<List<Trade>> response = apiInstance.GetCalculatedTradeByIdWithHttpInfo(portfolioGroupId, calculatedTradeId, tradeId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetCalculatedTradeByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to perform rebalancing calculations |  |
| **calculatedTradeId** | **Guid** | The ID of calculated trade to get account impact |  |
| **tradeId** | **Guid** | The ID of trade object |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getmodeldetailsbyid"></a>
# **GetModelDetailsById**
> ModelPortfolioDetails GetModelDetailsById (Guid modelPortfolioId)

Get details of a model portfolio

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetModelDetailsByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var modelPortfolioId = "modelPortfolioId_example";  // Guid | The ID of the model portfolio to get.

            try
            {
                // Get details of a model portfolio
                ModelPortfolioDetails result = apiInstance.GetModelDetailsById(modelPortfolioId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetModelDetailsById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetModelDetailsByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get details of a model portfolio
    ApiResponse<ModelPortfolioDetails> response = apiInstance.GetModelDetailsByIdWithHttpInfo(modelPortfolioId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetModelDetailsByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **modelPortfolioId** | **Guid** | The ID of the model portfolio to get. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportfoliobalances"></a>
# **GetPortfolioBalances**
> List&lt;Balance&gt; GetPortfolioBalances (Guid portfolioGroupId)

Get sum of cash balances in portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortfolioBalancesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to create the target asset.

            try
            {
                // Get sum of cash balances in portfolio group
                List<Balance> result = apiInstance.GetPortfolioBalances(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioBalances: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortfolioBalancesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get sum of cash balances in portfolio group
    ApiResponse<List<Balance>> response = apiInstance.GetPortfolioBalancesWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioBalancesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to create the target asset. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportfoliodetailsbyid"></a>
# **GetPortfolioDetailsById**
> PortfolioGroup GetPortfolioDetailsById (Guid portfolioGroupId)

Get details of a target portfolio

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortfolioDetailsByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to get.

            try
            {
                // Get details of a target portfolio
                PortfolioGroup result = apiInstance.GetPortfolioDetailsById(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioDetailsById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortfolioDetailsByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get details of a target portfolio
    ApiResponse<PortfolioGroup> response = apiInstance.GetPortfolioDetailsByIdWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioDetailsByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to get. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportfolioinfo"></a>
# **GetPortfolioInfo**
> PortfolioGroupInfo GetPortfolioInfo (Guid portfolioGroupId)

Return a whole bunch of relevant information relating to a portfolio group.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortfolioInfoExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to create the target asset.

            try
            {
                // Return a whole bunch of relevant information relating to a portfolio group.
                PortfolioGroupInfo result = apiInstance.GetPortfolioInfo(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioInfo: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortfolioInfoWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return a whole bunch of relevant information relating to a portfolio group.
    ApiResponse<PortfolioGroupInfo> response = apiInstance.GetPortfolioInfoWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioInfoWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to create the target asset. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportfoliopositions"></a>
# **GetPortfolioPositions**
> List&lt;PortfolioGroupPosition&gt; GetPortfolioPositions (Guid portfolioGroupId)

Get total of each postions owned in portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortfolioPositionsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to create the target asset.

            try
            {
                // Get total of each postions owned in portfolio group
                List<PortfolioGroupPosition> result = apiInstance.GetPortfolioPositions(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioPositions: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortfolioPositionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get total of each postions owned in portfolio group
    ApiResponse<List<PortfolioGroupPosition>> response = apiInstance.GetPortfolioPositionsWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioPositionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to create the target asset. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportfoliosettings"></a>
# **GetPortfolioSettings**
> PortfolioGroupSettings GetPortfolioSettings (Guid portfolioGroupId)

Get portfolio group settings

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortfolioSettingsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to get the settings.

            try
            {
                // Get portfolio group settings
                PortfolioGroupSettings result = apiInstance.GetPortfolioSettings(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioSettings: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortfolioSettingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get portfolio group settings
    ApiResponse<PortfolioGroupSettings> response = apiInstance.GetPortfolioSettingsWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioSettingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to get the settings. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportfoliotargetbyid"></a>
# **GetPortfolioTargetById**
> TargetAsset GetPortfolioTargetById (Guid portfolioGroupId, Guid targetAssetId)

Get a specific target from a portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortfolioTargetByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to get the target asset.
            var targetAssetId = "targetAssetId_example";  // Guid | The ID of the TargetAsset to get.

            try
            {
                // Get a specific target from a portfolio group
                TargetAsset result = apiInstance.GetPortfolioTargetById(portfolioGroupId, targetAssetId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioTargetById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortfolioTargetByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get a specific target from a portfolio group
    ApiResponse<TargetAsset> response = apiInstance.GetPortfolioTargetByIdWithHttpInfo(portfolioGroupId, targetAssetId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioTargetByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to get the target asset. |  |
| **targetAssetId** | **Guid** | The ID of the TargetAsset to get. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportfoliotargets"></a>
# **GetPortfolioTargets**
> List&lt;TargetAsset&gt; GetPortfolioTargets (Guid portfolioGroupId)

Get all target assets under the specified PortfolioGroup.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortfolioTargetsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to create the target asset.

            try
            {
                // Get all target assets under the specified PortfolioGroup.
                List<TargetAsset> result = apiInstance.GetPortfolioTargets(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioTargets: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortfolioTargetsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all target assets under the specified PortfolioGroup.
    ApiResponse<List<TargetAsset>> response = apiInstance.GetPortfolioTargetsWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortfolioTargetsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to create the target asset. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getportoflioexcludedassets"></a>
# **GetPortoflioExcludedAssets**
> List&lt;ExcludedAsset&gt; GetPortoflioExcludedAssets (Guid portfolioGroupId)

Get an array of excluded assets associated with a portfolio group\\

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetPortoflioExcludedAssetsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which the excluded assets are linked.

            try
            {
                // Get an array of excluded assets associated with a portfolio group\\
                List<ExcludedAsset> result = apiInstance.GetPortoflioExcludedAssets(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.GetPortoflioExcludedAssets: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPortoflioExcludedAssetsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get an array of excluded assets associated with a portfolio group\\
    ApiResponse<List<ExcludedAsset>> response = apiInstance.GetPortoflioExcludedAssetsWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.GetPortoflioExcludedAssetsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which the excluded assets are linked. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="importmodelportfolio"></a>
# **ImportModelPortfolio**
> List&lt;TargetAsset&gt; ImportModelPortfolio (Guid portfolioGroupId)

Import target allocation based on portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ImportModelPortfolioExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to create the target asset.

            try
            {
                // Import target allocation based on portfolio group
                List<TargetAsset> result = apiInstance.ImportModelPortfolio(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.ImportModelPortfolio: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ImportModelPortfolioWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Import target allocation based on portfolio group
    ApiResponse<List<TargetAsset>> response = apiInstance.ImportModelPortfolioWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.ImportModelPortfolioWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to create the target asset. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="list"></a>
# **List**
> List&lt;PortfolioGroup&gt; List (string userId, string userSecret)

List all portfolio groups

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // List all portfolio groups
                List<PortfolioGroup> result = apiInstance.List(userId, userSecret);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.List: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all portfolio groups
    ApiResponse<List<PortfolioGroup>> response = apiInstance.ListWithHttpInfo(userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.ListWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listassetclasses"></a>
# **ListAssetClasses**
> List&lt;ModelAssetClassDetails&gt; ListAssetClasses ()

List of model asset class

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListAssetClassesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);

            try
            {
                // List of model asset class
                List<ModelAssetClassDetails> result = apiInstance.ListAssetClasses();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.ListAssetClasses: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListAssetClassesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of model asset class
    ApiResponse<List<ModelAssetClassDetails>> response = apiInstance.ListAssetClassesWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.ListAssetClassesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listcalculatedtrades"></a>
# **ListCalculatedTrades**
> CalculatedTrade ListCalculatedTrades (Guid portfolioGroupId)

List of trades to make to rebalance portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListCalculatedTradesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to perform rebalancing calculations

            try
            {
                // List of trades to make to rebalance portfolio group
                CalculatedTrade result = apiInstance.ListCalculatedTrades(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.ListCalculatedTrades: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListCalculatedTradesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of trades to make to rebalance portfolio group
    ApiResponse<CalculatedTrade> response = apiInstance.ListCalculatedTradesWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.ListCalculatedTradesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to perform rebalancing calculations |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listmodelportfolio"></a>
# **ListModelPortfolio**
> List&lt;ModelPortfolioDetails&gt; ListModelPortfolio ()

List of model portfolio

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListModelPortfolioExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);

            try
            {
                // List of model portfolio
                List<ModelPortfolioDetails> result = apiInstance.ListModelPortfolio();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.ListModelPortfolio: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListModelPortfolioWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List of model portfolio
    ApiResponse<List<ModelPortfolioDetails>> response = apiInstance.ListModelPortfolioWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.ListModelPortfolioWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listportfolioaccounts"></a>
# **ListPortfolioAccounts**
> List&lt;Account&gt; ListPortfolioAccounts (Guid portfolioGroupId)

Get all accounts associated with a portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListPortfolioAccountsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which the accounts are linked.

            try
            {
                // Get all accounts associated with a portfolio group
                List<Account> result = apiInstance.ListPortfolioAccounts(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.ListPortfolioAccounts: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListPortfolioAccountsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all accounts associated with a portfolio group
    ApiResponse<List<Account>> response = apiInstance.ListPortfolioAccountsWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.ListPortfolioAccountsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which the accounts are linked. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="modifymodelportfoliobyid"></a>
# **ModifyModelPortfolioById**
> void ModifyModelPortfolioById (Guid modelPortfolioId, ModelPortfolioDetails modelPortfolioDetails)

Updates model portfolio object

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ModifyModelPortfolioByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var modelPortfolioId = "modelPortfolioId_example";  // Guid | The ID of the model portfolio to update.
            var modelPortfolioDetails = new ModelPortfolioDetails(); // ModelPortfolioDetails | Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. <br /><br /> * The model portfolio name and model portfolio model type is required. <br /> * The model portfolio model type must be either 0 or 1. [0 -> Securities based, 1 -> Asset Class based] <br /><br /> * If the model portfolio type is 0, the model portfolio asset class must be an empty array. <br /> * If the model portfolio type is 1, the model portfolio security must be an empty array. <br /><br /> * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object <br /> * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object <br /><br /> * To remove all model portfolio securities or model portfolio asset class, set then to an empty array

            try
            {
                // Updates model portfolio object
                apiInstance.ModifyModelPortfolioById(modelPortfolioId, modelPortfolioDetails);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.ModifyModelPortfolioById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ModifyModelPortfolioByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Updates model portfolio object
    apiInstance.ModifyModelPortfolioByIdWithHttpInfo(modelPortfolioId, modelPortfolioDetails);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.ModifyModelPortfolioByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **modelPortfolioId** | **Guid** | The ID of the model portfolio to update. |  |
| **modelPortfolioDetails** | [**ModelPortfolioDetails**](ModelPortfolioDetails.md) | Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array |  |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updates model portfolio object with data from request body. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="saveportfolio"></a>
# **SavePortfolio**
> PortfolioGroup SavePortfolio (Guid portfolioGroupId, Dictionary<string, Object> requestBody)

Update an existing target portfolio.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class SavePortfolioExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to update.
            var requestBody = new Dictionary<string, Object>(); // Dictionary<string, Object> | 

            try
            {
                // Update an existing target portfolio.
                PortfolioGroup result = apiInstance.SavePortfolio(portfolioGroupId, requestBody);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.SavePortfolio: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SavePortfolioWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update an existing target portfolio.
    ApiResponse<PortfolioGroup> response = apiInstance.SavePortfolioWithHttpInfo(portfolioGroupId, requestBody);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.SavePortfolioWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to update. |  |
| **requestBody** | [**Dictionary&lt;string, Object&gt;**](Object.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchportfoliosymbols"></a>
# **SearchPortfolioSymbols**
> List&lt;UniversalSymbol&gt; SearchPortfolioSymbols (Guid portfolioGroupId, SymbolQuery symbolQuery = null)

Search for symbols limited to brokerages under the specified portfolio group

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class SearchPortfolioSymbolsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup to search under
            var symbolQuery = new SymbolQuery(); // SymbolQuery |  (optional) 

            try
            {
                // Search for symbols limited to brokerages under the specified portfolio group
                List<UniversalSymbol> result = apiInstance.SearchPortfolioSymbols(portfolioGroupId, symbolQuery);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.SearchPortfolioSymbols: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SearchPortfolioSymbolsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Search for symbols limited to brokerages under the specified portfolio group
    ApiResponse<List<UniversalSymbol>> response = apiInstance.SearchPortfolioSymbolsWithHttpInfo(portfolioGroupId, symbolQuery);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.SearchPortfolioSymbolsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup to search under |  |
| **symbolQuery** | [**SymbolQuery**](SymbolQuery.md) |  | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="setportfoliotargets"></a>
# **SetPortfolioTargets**
> List&lt;TargetAsset&gt; SetPortfolioTargets (Guid portfolioGroupId, List<TargetAsset> targetAsset = null)

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class SetPortfolioTargetsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to create the target asset.
            var targetAsset = new List<TargetAsset>(); // List<TargetAsset> |  (optional) 

            try
            {
                // Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
                List<TargetAsset> result = apiInstance.SetPortfolioTargets(portfolioGroupId, targetAsset);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.SetPortfolioTargets: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SetPortfolioTargetsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
    ApiResponse<List<TargetAsset>> response = apiInstance.SetPortfolioTargetsWithHttpInfo(portfolioGroupId, targetAsset);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.SetPortfolioTargetsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to create the target asset. |  |
| **targetAsset** | [**List&lt;TargetAsset&gt;**](TargetAsset.md) |  | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updateassetclass"></a>
# **UpdateAssetClass**
> void UpdateAssetClass (Guid modelAssetClassId, ModelAssetClassDetails modelAssetClassDetails)

Updates model asset class objects

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class UpdateAssetClassExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var modelAssetClassId = "modelAssetClassId_example";  // Guid | The ID of the model asset class to update.
            var modelAssetClassDetails = new ModelAssetClassDetails(); // ModelAssetClassDetails | Use this endpoint change model asset class name and to add or remove a model asset class target. <br /><br /> * Only the model asset class name is required for the model asset class object. <br /> * Only the symbol id is required for the symbol object in the model asset class target object. <br /> * To remove all model asset class targets, set the model asset class target as an empty array

            try
            {
                // Updates model asset class objects
                apiInstance.UpdateAssetClass(modelAssetClassId, modelAssetClassDetails);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.UpdateAssetClass: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateAssetClassWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Updates model asset class objects
    apiInstance.UpdateAssetClassWithHttpInfo(modelAssetClassId, modelAssetClassDetails);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.UpdateAssetClassWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **modelAssetClassId** | **Guid** | The ID of the model asset class to update. |  |
| **modelAssetClassDetails** | [**ModelAssetClassDetails**](ModelAssetClassDetails.md) | Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array |  |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updates model asset class with data from request body. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updateportfoliosettings"></a>
# **UpdatePortfolioSettings**
> PortfolioGroupSettings UpdatePortfolioSettings (Guid portfolioGroupId)

Updates portfolio group settings

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class UpdatePortfolioSettingsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to patch the settings.

            try
            {
                // Updates portfolio group settings
                PortfolioGroupSettings result = apiInstance.UpdatePortfolioSettings(portfolioGroupId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.UpdatePortfolioSettings: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdatePortfolioSettingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Updates portfolio group settings
    ApiResponse<PortfolioGroupSettings> response = apiInstance.UpdatePortfolioSettingsWithHttpInfo(portfolioGroupId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.UpdatePortfolioSettingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to patch the settings. |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updateportfoliotargetbyid"></a>
# **UpdatePortfolioTargetById**
> TargetAsset UpdatePortfolioTargetById (Guid portfolioGroupId, Guid targetAssetId, TargetAsset targetAsset)

Update a TargetAsset under the specified PortfolioGroup.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class UpdatePortfolioTargetByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new PortfolioManagementApi(config);
            var portfolioGroupId = "portfolioGroupId_example";  // Guid | The ID of the PortfolioGroup under which to patch the target asset.
            var targetAssetId = "targetAssetId_example";  // Guid | The ID of the TargetAsset to patch.
            var targetAsset = new TargetAsset(); // TargetAsset | 

            try
            {
                // Update a TargetAsset under the specified PortfolioGroup.
                TargetAsset result = apiInstance.UpdatePortfolioTargetById(portfolioGroupId, targetAssetId, targetAsset);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling PortfolioManagementApi.UpdatePortfolioTargetById: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdatePortfolioTargetByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update a TargetAsset under the specified PortfolioGroup.
    ApiResponse<TargetAsset> response = apiInstance.UpdatePortfolioTargetByIdWithHttpInfo(portfolioGroupId, targetAssetId, targetAsset);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PortfolioManagementApi.UpdatePortfolioTargetByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **portfolioGroupId** | **Guid** | The ID of the PortfolioGroup under which to patch the target asset. |  |
| **targetAssetId** | **Guid** | The ID of the TargetAsset to patch. |  |
| **targetAsset** | [**TargetAsset**](TargetAsset.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

