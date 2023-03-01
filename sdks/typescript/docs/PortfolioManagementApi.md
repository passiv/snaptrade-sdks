# PortfolioManagementApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPortfolioExcludedAsset**](PortfolioManagementApi.md#addPortfolioExcludedAsset) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group
[**create**](PortfolioManagementApi.md#create) | **POST** /portfolioGroups | Create new portfolio group
[**createAssetClass**](PortfolioManagementApi.md#createAssetClass) | **POST** /modelAssetClass | Create a new model asset class
[**createModelPortfolio**](PortfolioManagementApi.md#createModelPortfolio) | **POST** /modelPortfolio | Creates a new model portfolio
[**deleteAssetClass**](PortfolioManagementApi.md#deleteAssetClass) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class
[**deleteExcludedAsset**](PortfolioManagementApi.md#deleteExcludedAsset) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group
[**deleteModelPortfolioById**](PortfolioManagementApi.md#deleteModelPortfolioById) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio
[**deletePortfoli**](PortfolioManagementApi.md#deletePortfoli) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio.
[**deletePortfolioTargetById**](PortfolioManagementApi.md#deletePortfolioTargetById) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset.
[**detailAssetClass**](PortfolioManagementApi.md#detailAssetClass) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class
[**getCalculatedTradeById**](PortfolioManagementApi.md#getCalculatedTradeById) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade
[**getModelDetailsById**](PortfolioManagementApi.md#getModelDetailsById) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio
[**getPortfolioBalances**](PortfolioManagementApi.md#getPortfolioBalances) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group
[**getPortfolioDetailsById**](PortfolioManagementApi.md#getPortfolioDetailsById) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio
[**getPortfolioInfo**](PortfolioManagementApi.md#getPortfolioInfo) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group.
[**getPortfolioPositions**](PortfolioManagementApi.md#getPortfolioPositions) | **GET** /portfolioGroups/{portfolioGroupId}/positions | Get total of each postions owned in portfolio group
[**getPortfolioSettings**](PortfolioManagementApi.md#getPortfolioSettings) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings
[**getPortfolioTargetById**](PortfolioManagementApi.md#getPortfolioTargetById) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group
[**getPortfolioTargets**](PortfolioManagementApi.md#getPortfolioTargets) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup.
[**getPortoflioExcludedAssets**](PortfolioManagementApi.md#getPortoflioExcludedAssets) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\
[**importModelPortfolio**](PortfolioManagementApi.md#importModelPortfolio) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group
[**list**](PortfolioManagementApi.md#list) | **GET** /portfolioGroups | List all portfolio groups
[**listAssetClasses**](PortfolioManagementApi.md#listAssetClasses) | **GET** /modelAssetClass | List of model asset class
[**listCalculatedTrades**](PortfolioManagementApi.md#listCalculatedTrades) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group
[**listModelPortfolio**](PortfolioManagementApi.md#listModelPortfolio) | **GET** /modelPortfolio | List of model portfolio
[**listPortfolioAccounts**](PortfolioManagementApi.md#listPortfolioAccounts) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group
[**modifyModelPortfolioById**](PortfolioManagementApi.md#modifyModelPortfolioById) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object
[**savePortfolio**](PortfolioManagementApi.md#savePortfolio) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio.
[**searchPortfolioSymbols**](PortfolioManagementApi.md#searchPortfolioSymbols) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group
[**setPortfolioTargets**](PortfolioManagementApi.md#setPortfolioTargets) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
[**updateAssetClass**](PortfolioManagementApi.md#updateAssetClass) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects
[**updatePortfolioSettings**](PortfolioManagementApi.md#updatePortfolioSettings) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings
[**updatePortfolioTargetById**](PortfolioManagementApi.md#updatePortfolioTargetById) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup.


# **addPortfolioExcludedAsset**
> ExcludedAsset addPortfolioExcludedAsset()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.addPortfolioExcludedAsset({
    'portfolioGroupId': "portfolioGroupId_example",
    'requestBody': {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'symbol': "VAB.TO",
        'raw_symbol': "VAB",
        'description': "VANGUARD CDN AGGREGATE BOND INDEX ETF",
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **universalSymbol** | **UniversalSymbol**|  |
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to exclude an asset. | defaults to undefined


### Return type

**ExcludedAsset**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An asset is excluded from calculations in portfolio group. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **create**
> Array<PortfolioGroup> create(requestBody)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.create({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'requestBody': {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'name': "Combined Retirement Portfolio",
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | **{ [key: string]: any; }**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**Array<PortfolioGroup>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new PortfolioGroup is created. |  -  |
**400** | The input data is missing or invalid. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAssetClass**
> ModelAssetClassDetails createAssetClass()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.createAssetClass()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**ModelAssetClassDetails**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new asset class is created. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createModelPortfolio**
> ModelPortfolioDetails createModelPortfolio()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.createModelPortfolio()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**ModelPortfolioDetails**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new model portfolio is created. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteAssetClass**
> deleteAssetClass()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.deleteAssetClass({
    'modelAssetClassId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelAssetClassId** | [**string**] | The ID of the model asset class to delete. | defaults to undefined


### Return type

void (empty response body)

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteExcludedAsset**
> deleteExcludedAsset()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.deleteExcludedAsset({
    'portfolioGroupId': "portfolioGroupId_example",
    'symbolId': "symbolId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to unexclude an asset. | defaults to undefined
 **symbolId** | [**string**] | The ID of the excluded asset Symbol to delete. | defaults to undefined


### Return type

void (empty response body)

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Excluded asset deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteModelPortfolioById**
> deleteModelPortfolioById()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.deleteModelPortfolioById({
    'modelPortfolioId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelPortfolioId** | [**string**] | The ID of the model portfolio to delete. | defaults to undefined


### Return type

void (empty response body)

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deletePortfoli**
> PortfolioGroup deletePortfoli()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.deletePortfoli({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup to delete. | defaults to undefined


### Return type

**PortfolioGroup**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The PortfolioGroup object which was deleted. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string). |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deletePortfolioTargetById**
> TargetAsset deletePortfolioTargetById()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.deletePortfolioTargetById({
    'portfolioGroupId': "portfolioGroupId_example",
    'targetAssetId': "targetAssetId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to remove the target asset. | defaults to undefined
 **targetAssetId** | [**string**] | The ID of the TargetAsset to delete. | defaults to undefined


### Return type

**TargetAsset**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The TargetAsset object which was deleted. |  -  |
**400** | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId or targetAssetId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **detailAssetClass**
> ModelAssetClassDetails detailAssetClass()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.detailAssetClass({
    'modelAssetClassId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelAssetClassId** | [**string**] | The ID of the model asset class to get. | defaults to undefined


### Return type

**ModelAssetClassDetails**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Details of a particular model asset class |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCalculatedTradeById**
> Array<Trade> getCalculatedTradeById()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getCalculatedTradeById({
    'portfolioGroupId': "portfolioGroupId_example",
    'calculatedTradeId': "calculatedTradeId_example",
    'tradeId': "TradeId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup to perform rebalancing calculations | defaults to undefined
 **calculatedTradeId** | [**string**] | The ID of calculated trade to get account impact | defaults to undefined
 **tradeId** | [**string**] | The ID of trade object | defaults to undefined


### Return type

**Array<Trade>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Trade objects |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getModelDetailsById**
> ModelPortfolioDetails getModelDetailsById()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getModelDetailsById({
    'modelPortfolioId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelPortfolioId** | [**string**] | The ID of the model portfolio to get. | defaults to undefined


### Return type

**ModelPortfolioDetails**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Details of a particular model portfolio. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortfolioBalances**
> Array<Balance> getPortfolioBalances()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortfolioBalances({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to create the target asset. | defaults to undefined


### Return type

**Array<Balance>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sum of cash balances across accounts in portfolio group by currency |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortfolioDetailsById**
> PortfolioGroup getPortfolioDetailsById()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortfolioDetailsById({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup to get. | defaults to undefined


### Return type

**PortfolioGroup**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully gets a target portfolio |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortfolioInfo**
> PortfolioGroupInfo getPortfolioInfo()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortfolioInfo({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to create the target asset. | defaults to undefined


### Return type

**PortfolioGroupInfo**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Portfolio group target allocation has been updated |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortfolioPositions**
> Array<PortfolioGroupPosition> getPortfolioPositions()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortfolioPositions({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to create the target asset. | defaults to undefined


### Return type

**Array<PortfolioGroupPosition>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Totals of each postions owned in portfolio group |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortfolioSettings**
> PortfolioGroupSettings getPortfolioSettings()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortfolioSettings({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to get the settings. | defaults to undefined


### Return type

**PortfolioGroupSettings**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Settings of portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortfolioTargetById**
> TargetAsset getPortfolioTargetById()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortfolioTargetById({
    'portfolioGroupId': "portfolioGroupId_example",
    'targetAssetId': "targetAssetId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to get the target asset. | defaults to undefined
 **targetAssetId** | [**string**] | The ID of the TargetAsset to get. | defaults to undefined


### Return type

**TargetAsset**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully get target asset. |  -  |
**0** | Unexpected errors |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortfolioTargets**
> Array<TargetAsset> getPortfolioTargets()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortfolioTargets({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to create the target asset. | defaults to undefined


### Return type

**Array<TargetAsset>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All target assets owned by the specified PortfolioGroup. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPortoflioExcludedAssets**
> Array<ExcludedAsset> getPortoflioExcludedAssets()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.getPortoflioExcludedAssets({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which the excluded assets are linked. | defaults to undefined


### Return type

**Array<ExcludedAsset>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Array of excluded assets linked to portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **importModelPortfolio**
> Array<TargetAsset> importModelPortfolio()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.importModelPortfolio({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to create the target asset. | defaults to undefined


### Return type

**Array<TargetAsset>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Portfolio group target allocation has been updated |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **list**
> Array<PortfolioGroup> list()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.list({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**Array<PortfolioGroup>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all PortfolioGroup objects for the authenticated user. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAssetClasses**
> Array<ModelAssetClassDetails> listAssetClasses()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.listAssetClasses()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<ModelAssetClassDetails>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all model asset class objects for the authenticated user. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCalculatedTrades**
> CalculatedTrade listCalculatedTrades()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.listCalculatedTrades({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup to perform rebalancing calculations | defaults to undefined


### Return type

**CalculatedTrade**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Calculated trades to make |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listModelPortfolio**
> Array<ModelPortfolioDetails> listModelPortfolio()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.listModelPortfolio()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<ModelPortfolioDetails>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all model portfolio objects for the authenticated user. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPortfolioAccounts**
> Array<Account> listPortfolioAccounts()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.listPortfolioAccounts({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which the accounts are linked. | defaults to undefined


### Return type

**Array<Account>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Accounts linked to portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **modifyModelPortfolioById**
> modifyModelPortfolioById(modelPortfolioDetails)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.modifyModelPortfolioById({
    'modelPortfolioId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    'requestBody': {
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelPortfolioDetails** | **ModelPortfolioDetails**| Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array |
 **modelPortfolioId** | [**string**] | The ID of the model portfolio to update. | defaults to undefined


### Return type

void (empty response body)

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updates model portfolio object with data from request body. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **savePortfolio**
> PortfolioGroup savePortfolio(requestBody)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.savePortfolio({
    'portfolioGroupId': "portfolioGroupId_example",
    'requestBody': {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'name': "Combined Retirement Portfolio",
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | **{ [key: string]: any; }**|  |
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup to update. | defaults to undefined


### Return type

**PortfolioGroup**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The PortfolioGroup object which was updated. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **searchPortfolioSymbols**
> Array<UniversalSymbol> searchPortfolioSymbols()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.searchPortfolioSymbols({
    'portfolioGroupId': "portfolioGroupId_example",
    'requestBody': {
        'substring': "apple",
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolQuery** | **SymbolQuery**|  |
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup to search under | defaults to undefined


### Return type

**Array<UniversalSymbol>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of UniversalSymbol objects which match the specified substring |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **setPortfolioTargets**
> Array<TargetAsset> setPortfolioTargets()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.setPortfolioTargets({
    'portfolioGroupId': "portfolioGroupId_example",
    'requestBody': [
        {
            'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
            'percent': 90,
            'is_supported': true,
            'is_excluded': true,
        }
    ],
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetAsset** | **Array<TargetAsset>**|  |
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to create the target asset. | defaults to undefined


### Return type

**Array<TargetAsset>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new target asset or set of target assets is created. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateAssetClass**
> updateAssetClass(modelAssetClassDetails)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.updateAssetClass({
    'modelAssetClassId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    'requestBody': {
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelAssetClassDetails** | **ModelAssetClassDetails**| Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array |
 **modelAssetClassId** | [**string**] | The ID of the model asset class to update. | defaults to undefined


### Return type

void (empty response body)

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updates model asset class with data from request body. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePortfolioSettings**
> PortfolioGroupSettings updatePortfolioSettings()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.updatePortfolioSettings({
    'portfolioGroupId': "portfolioGroupId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to patch the settings. | defaults to undefined


### Return type

**PortfolioGroupSettings**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Settings of portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePortfolioTargetById**
> TargetAsset updatePortfolioTargetById(targetAsset)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.portfolioManagement.updatePortfolioTargetById({
    'portfolioGroupId': "portfolioGroupId_example",
    'targetAssetId': "targetAssetId_example",
    'requestBody': {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'percent': 90,
        'is_supported': true,
        'is_excluded': true,
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetAsset** | **TargetAsset**|  |
 **portfolioGroupId** | [**string**] | The ID of the PortfolioGroup under which to patch the target asset. | defaults to undefined
 **targetAssetId** | [**string**] | The ID of the TargetAsset to patch. | defaults to undefined


### Return type

**TargetAsset**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The target asset is updated. |  -  |
**400** | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId or targetAssetId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


