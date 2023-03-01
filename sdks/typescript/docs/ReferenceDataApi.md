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
> ExchangeRatePairs getCurrencyExchangeRatePair()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.getCurrencyExchangeRatePair({
    'currencyPair': "currencyPair_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyPair** | [**string**] | A currency pair based on currency code for example, {CAD-USD} | defaults to undefined


### Return type

**ExchangeRatePairs**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPartnerInfo**
> PartnerData getPartnerInfo()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.getPartnerInfo()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**PartnerData**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> Array<SecurityType> getSecurityTypes()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.getSecurityTypes()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<SecurityType>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> Array<Exchange> getStockExchanges()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.getStockExchanges()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<Exchange>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all supported stock exchanges |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSymbols**
> Array<UniversalSymbol> getSymbols()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.getSymbols({
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

# **getSymbolsByTicker**
> UniversalSymbol getSymbolsByTicker()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.getSymbolsByTicker({
    'ticker': "ticker_example",
    'symbolId': "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | [**string**] | The ticker of the UniversalSymbol to get. | defaults to undefined
 **symbolId** | [**string**] | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. | (optional) defaults to undefined


### Return type

**UniversalSymbol**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> Array<BrokerageAuthorizationTypeReadOnly> listAllBrokerageAuthorizationType()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.listAllBrokerageAuthorizationType({
    'brokerage': "QUESTRADE,ALPACA",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brokerage** | [**string**] | Comma separated value of brokerage slugs | (optional) defaults to undefined


### Return type

**Array<BrokerageAuthorizationTypeReadOnly>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> Array<Brokerage> listAllBrokerages()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.listAllBrokerages()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<Brokerage>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> Array<Currency> listAllCurrencies()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.listAllCurrencies()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<Currency>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> Array<ExchangeRatePairs> listAllCurrenciesRates()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.listAllCurrenciesRates()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<ExchangeRatePairs>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **symbolSearchUserAccount**
> Array<UniversalSymbol> symbolSearchUserAccount()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
    apiKey: 'API_KEY',
})

const response = await snaptrade.referenceData.symbolSearchUserAccount({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accountId': "accountId_example",
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
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined


### Return type

**Array<UniversalSymbol>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Array of universal symbol supported by account based on substring sent it |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


