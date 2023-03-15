# ReferenceDataApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrencyExchangeRatePair**](ReferenceDataApi.md#getCurrencyExchangeRatePair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
[**getPartnerInfo**](ReferenceDataApi.md#getPartnerInfo) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
[**getSecurityTypes**](ReferenceDataApi.md#getSecurityTypes) | **GET** /securityTypes | List of all security types.
[**getStockExchanges**](ReferenceDataApi.md#getStockExchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes
[**getSymbols**](ReferenceDataApi.md#getSymbols) | **POST** /symbols | Search for symbols
[**getSymbolsByTicker**](ReferenceDataApi.md#getSymbolsByTicker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
[**listAllBrokerageAuthorizationType**](ReferenceDataApi.md#listAllBrokerageAuthorizationType) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
[**listAllBrokerages**](ReferenceDataApi.md#listAllBrokerages) | **GET** /brokerages | List of all brokerages.
[**listAllCurrencies**](ReferenceDataApi.md#listAllCurrencies) | **GET** /currencies | List of all supported currencies
[**listAllCurrenciesRates**](ReferenceDataApi.md#listAllCurrenciesRates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies
[**symbolSearchUserAccount**](ReferenceDataApi.md#symbolSearchUserAccount) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring


# **getCurrencyExchangeRatePair**

#### **GET** /currencies/rates/{currencyPair}


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const getCurrencyExchangeRatePairResponse = await snaptrade.referenceData.getCurrencyExchangeRatePair({
        "currencyPair": "currencyPair_example",
    })

console.log(getCurrencyExchangeRatePairResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyPair** | [**string**] | A currency pair based on currency code for example, {CAD-USD} | defaults to undefined


### Return type

**ExchangeRatePairs**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPartnerInfo**

#### **GET** /snapTrade/partners


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const getPartnerInfoResponse = await snaptrade.referenceData.getPartnerInfo()

console.log(getPartnerInfoResponse)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**PartnerData**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully obtained encrypted JWT data. See description on how to object JWT token |  -  |
**400** | Bad Request |  -  |
**401** | Unauthorized |  -  |
**404** | Not Found |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSecurityTypes**

#### **GET** /securityTypes


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const getSecurityTypesResponse = await snaptrade.referenceData.getSecurityTypes()

console.log(getSecurityTypesResponse)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<SecurityType>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all defined Security Type objects. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStockExchanges**

#### **GET** /exchanges


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const getStockExchangesResponse = await snaptrade.referenceData.getStockExchanges()

console.log(getStockExchangesResponse)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<Exchange>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all supported stock exchanges |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSymbols**

#### **POST** /symbols


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const getSymbolsResponse = await snaptrade.referenceData.getSymbols({
        "substring": "apple",
    })

console.log(getSymbolsResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolQuery** | **SymbolQuery**|  |


### Return type

**Array<UniversalSymbol>**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of UniversalSymbol objects which match the specified substring |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSymbolsByTicker**

#### **GET** /symbols/{ticker}


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const getSymbolsByTickerResponse = await snaptrade.referenceData.getSymbolsByTicker({
        "ticker": "ticker_example",
    })

console.log(getSymbolsByTickerResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | [**string**] | The ticker of the UniversalSymbol to get. | defaults to undefined
 **symbolId** | [**string**] | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. | (optional) defaults to undefined


### Return type

**UniversalSymbol**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully gets a symbol |  -  |
**404** | No symbol with the specified ticker found. |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAllBrokerageAuthorizationType**

#### **GET** /brokerageAuthorizationTypes


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const listAllBrokerageAuthorizationTypeResponse = await snaptrade.referenceData.listAllBrokerageAuthorizationType({
        "brokerage": "QUESTRADE,ALPACA",
    })

console.log(listAllBrokerageAuthorizationTypeResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brokerage** | [**string**] | Comma separated value of brokerage slugs | (optional) defaults to undefined


### Return type

**Array<BrokerageAuthorizationTypeReadOnly>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all defined Brokerage Authorization Type objects. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAllBrokerages**

#### **GET** /brokerages


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const listAllBrokeragesResponse = await snaptrade.referenceData.listAllBrokerages()

console.log(listAllBrokeragesResponse)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<Brokerage>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all defined Brokerage objects. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAllCurrencies**

#### **GET** /currencies


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const listAllCurrenciesResponse = await snaptrade.referenceData.listAllCurrencies()

console.log(listAllCurrenciesResponse)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<Currency>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all supported currencies. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAllCurrenciesRates**

#### **GET** /currencies/rates


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const listAllCurrenciesRatesResponse = await snaptrade.referenceData.listAllCurrenciesRates()

console.log(listAllCurrenciesRatesResponse)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<ExchangeRatePairs>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **symbolSearchUserAccount**

#### **POST** /accounts/{accountId}/symbols


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const symbolSearchUserAccountResponse = await snaptrade.referenceData.symbolSearchUserAccount({
        "user_id": "John.doe@snaptrade.com",
        "user_secret": "USERSECRET123",
        "accountId": "accountId_example",
        "substring": "apple",
    })

console.log(symbolSearchUserAccountResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbolQuery** | **SymbolQuery**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined


### Return type

**Array<UniversalSymbol>**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Array of universal symbol supported by account based on substring sent it |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


