# TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelUserAccountOrder**](TradingApi.md#cancelUserAccountOrder) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
[**getOrderImpact**](TradingApi.md#getOrderImpact) | **POST** /trade/impact | Check impact of trades on account.
[**getUserAccountQuotes**](TradingApi.md#getUserAccountQuotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
[**placeForceOrder**](TradingApi.md#placeForceOrder) | **POST** /trade/place | Place a trade with NO validation.
[**placeOCOOrder**](TradingApi.md#placeOCOOrder) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
[**placeOrder**](TradingApi.md#placeOrder) | **POST** /trade/{tradeId} | Place order


# **cancelUserAccountOrder**

#### **POST** /accounts/{accountId}/orders/cancel


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const cancelUserAccountOrderResponse =
  await snaptrade.trading.cancelUserAccountOrder({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
    brokerage_order_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  });

console.log(cancelUserAccountOrderResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tradingCancelUserAccountOrderRequest** | **TradingCancelUserAccountOrderRequest**| The Order ID to be canceled |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined


### Return type

**AccountOrderRecord**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order Record of canceled order |  -  |
**400** | Unable to cancel open order. Please verify status in brokerage account |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderImpact**

#### **POST** /trade/impact


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const getOrderImpactResponse = await snaptrade.trading.getOrderImpact({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
  account_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  action: "BUY",
  order_type: "Limit",
  price: 31.33,
  stop: 31.33,
  time_in_force: "Day",
  universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
});

console.log(getOrderImpactResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manualTradeForm** | **ManualTradeForm**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**ManualTradeAndImpact**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Return trade object and it\&#39;s impact on the account |  -  |
**400** | Missing or wrong data format provided in request body |  -  |
**403** | User does not have permissions to place trades |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getUserAccountQuotes**

#### **GET** /accounts/{accountId}/quotes


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const getUserAccountQuotesResponse =
  await snaptrade.trading.getUserAccountQuotes({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    symbols: "symbols_example",
    accountId: "accountId_example",
  });

console.log(getUserAccountQuotesResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **symbols** | [**string**] | List of universal_symbol_id or tickers to get quotes for. | defaults to undefined
 **accountId** | [**string**] | The ID of the account to get quotes. | defaults to undefined
 **useTicker** | [**boolean**] | Should be set to True if providing tickers. | (optional) defaults to undefined


### Return type

**Array<SymbolsQuotesInner>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns quotes object with different prices |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **placeForceOrder**

#### **POST** /trade/place


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const placeForceOrderResponse = await snaptrade.trading.placeForceOrder({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
  account_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  action: "BUY",
  order_type: "Limit",
  price: 31.33,
  stop: 31.33,
  time_in_force: "Day",
  universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
});

console.log(placeForceOrderResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manualTradeForm** | **ManualTradeForm**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**AccountOrderRecord**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Trade sucessfully placed |  -  |
**400** | Trade could not be placed |  -  |
**403** | User does not have permissions to place trades |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **placeOCOOrder**

#### **POST** /trade/oco


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const placeOCOOrderResponse = await snaptrade.trading.placeOCOOrder({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
});

console.log(placeOCOOrderResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tradingPlaceOCOOrderRequest** | **TradingPlaceOCOOrderRequest**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**AccountOrderRecord**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Status of order placed |  -  |
**400** | Failed to submit order to broker |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **placeOrder**

#### **POST** /trade/{tradeId}


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const placeOrderResponse = await snaptrade.trading.placeOrder({
  tradeId: "tradeId_example",
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
});

console.log(placeOrderResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tradeId** | [**string**] | The ID of trade object obtained from trade/impact endpoint | defaults to undefined
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**AccountOrderRecord**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Status of order placed |  -  |
**400** | Failed to submit order to broker |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


