# OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOptionStrategy**](OptionsApi.md#getOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
[**getOptionsChain**](OptionsApi.md#getOptionsChain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
[**getOptionsStrategyQuote**](OptionsApi.md#getOptionsStrategyQuote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
[**listOptionHoldings**](OptionsApi.md#listOptionHoldings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
[**placeOptionStrategy**](OptionsApi.md#placeOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage


# **getOptionStrategy**
> StrategyQuotes getOptionStrategy(optionsGetOptionStrategyRequest)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.options.getOptionStrategy({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accountId': "accountId_example",
    'requestBody': {
        "underlying_symbol_id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "strategy_type": "CUSTOM",
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optionsGetOptionStrategyRequest** | **OptionsGetOptionStrategyRequest**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined


### Return type

**StrategyQuotes**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order Quotes |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOptionsChain**
> Array<OptionChainInner> getOptionsChain()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.options.getOptionsChain({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accountId': "accountId_example",
    'symbol': "symbol_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined
 **symbol** | [**string**] | Universal symbol ID if symbol | defaults to undefined


### Return type

**Array<OptionChainInner>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of all Options available for the brokerage symbol |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOptionsStrategyQuote**
> StrategyQuotes getOptionsStrategyQuote()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.options.getOptionsStrategyQuote({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accountId': "accountId_example",
    'optionStrategyId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined
 **optionStrategyId** | [**string**] | Option strategy id obtained from response when creating option strategy object | defaults to undefined


### Return type

**StrategyQuotes**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order Quotes |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listOptionHoldings**
> OptionsHoldings listOptionHoldings()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.options.listOptionHoldings({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accountId': "accountId_example",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined


### Return type

**OptionsHoldings**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The option holdings in the account |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **placeOptionStrategy**
> StrategyOrderRecord placeOptionStrategy(optionsPlaceOptionStrategyRequest)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.options.placeOptionStrategy({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accountId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    'optionStrategyId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    'requestBody': {
        "order_type": "Limit",
        "time_in_force": "DAY",
        "price": 31.33,
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optionsPlaceOptionStrategyRequest** | **OptionsPlaceOptionStrategyRequest**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined
 **optionStrategyId** | [**string**] | Option strategy id obtained from response when creating option strategy object | defaults to undefined


### Return type

**StrategyOrderRecord**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Status of strategy order placed |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


