# AccountInformationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllUserHoldings**](AccountInformationApi.md#getAllUserHoldings) | **GET** /holdings | List all accounts for the user, plus balances and positions for each account.
[**getUserAccountBalance**](AccountInformationApi.md#getUserAccountBalance) | **GET** /accounts/{accountId}/balances | Get all cash balances of an investment account
[**getUserAccountDetails**](AccountInformationApi.md#getUserAccountDetails) | **GET** /accounts/{accountId} | Return details of a specific investment account
[**getUserAccountOrders**](AccountInformationApi.md#getUserAccountOrders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account
[**getUserAccountPositions**](AccountInformationApi.md#getUserAccountPositions) | **GET** /accounts/{accountId}/positions | Get all positions of an investment account
[**getUserHoldings**](AccountInformationApi.md#getUserHoldings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
[**listUserAccounts**](AccountInformationApi.md#listUserAccounts) | **GET** /accounts | List all investment accounts for the user
[**updateUserAccount**](AccountInformationApi.md#updateUserAccount) | **PUT** /accounts/{accountId} | Update details of an investment account


# **getAllUserHoldings**
> Array<AccountHoldings> getAllUserHoldings()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.getAllUserHoldings({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'brokerageAuthorizations': "917c8734-8470-4a3e-a18f-57c3f2ee6631",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **brokerageAuthorizations** | [**string**] | Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations). | (optional) defaults to undefined


### Return type

**Array<AccountHoldings>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns list of accounts and holdings |  -  |
**400** | Bad Request |  -  |
**403** | Forbidden |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getUserAccountBalance**
> Array<Balance> getUserAccountBalance()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.getUserAccountBalance({
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

**Array<Balance>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of all balances in investment account |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getUserAccountDetails**
> Array<Account> getUserAccountDetails()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.getUserAccountDetails({
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
 **accountId** | [**string**] | The ID of the account to get detail of. | defaults to undefined


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
**200** | Details of a specific investment account |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getUserAccountOrders**
> Array<AccountOrderRecord> getUserAccountOrders()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.getUserAccountOrders({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accountId': "accountId_example",
    'state': "all",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accountId** | [**string**] | The ID of the account get positions. | defaults to undefined
 **state** | 'all', 'open', 'executed' | defaults value is set to \"all\" | (optional) defaults to undefined


### Return type

**Array<AccountOrderRecord>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List all orders in account |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getUserAccountPositions**
> Array<Position> getUserAccountPositions()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.getUserAccountPositions({
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

**Array<Position>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List all positions in investment account |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getUserHoldings**
> AccountHoldings getUserHoldings()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.getUserHoldings({
    'accountId': "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | [**string**] | The ID of the account to fetch holdings for. | defaults to undefined
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**AccountHoldings**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns holdings for the account |  -  |
**400** | Bad Request |  -  |
**403** | Forbidden |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listUserAccounts**
> Array<Account> listUserAccounts()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.listUserAccounts({
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

**Array<Account>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all Account objects for the authenticated user. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateUserAccount**
> Array<Account> updateUserAccount()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.accountInformation.updateUserAccount({
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
 **accountId** | [**string**] | The ID of the account to update. | defaults to undefined


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
**200** | Successfully updated details of an investment account |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

