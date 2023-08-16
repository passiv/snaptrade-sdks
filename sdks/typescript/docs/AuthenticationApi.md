# AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSnapTradeUser**](AuthenticationApi.md#deleteSnapTradeUser) | **DELETE** /snapTrade/deleteUser | Delete SnapTrade user
[**getUserJWT**](AuthenticationApi.md#getUserJWT) | **GET** /snapTrade/encryptedJWT | Generate encrypted JWT token
[**listSnapTradeUsers**](AuthenticationApi.md#listSnapTradeUsers) | **GET** /snapTrade/listUsers | List SnapTrade users
[**loginSnapTradeUser**](AuthenticationApi.md#loginSnapTradeUser) | **POST** /snapTrade/login | Login user &amp; generate connection link
[**registerSnapTradeUser**](AuthenticationApi.md#registerSnapTradeUser) | **POST** /snapTrade/registerUser | Create SnapTrade user


# **deleteSnapTradeUser**

#### **DELETE** /snapTrade/deleteUser


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const deleteSnapTradeUserResponse =
  await snaptrade.authentication.deleteSnapTradeUser({
    userId: "John.doe@snaptrade.com",
  });

console.log(deleteSnapTradeUserResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined


### Return type

**DeleteUserResponse**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Delete successful |  -  |
**400** | Bad Request |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getUserJWT**

#### **GET** /snapTrade/encryptedJWT


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const getUserJWTResponse = await snaptrade.authentication.getUserJWT({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
});

console.log(getUserJWTResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**EncryptedResponse**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully obtained encrypted JWT data. See description on how to object JWT token |  -  |
**400** | Bad Request |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSnapTradeUsers**

#### **GET** /snapTrade/listUsers


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const listSnapTradeUsersResponse =
  await snaptrade.authentication.listSnapTradeUsers();

console.log(listSnapTradeUsersResponse);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<string>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully generated a list of users |  -  |
**400** | Bad Request. Could be caused by various reasons. Error message is provided in response |  -  |
**404** | Invalid SnapTrade Client ID provided in query |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **loginSnapTradeUser**

#### **POST** /snapTrade/login


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const loginSnapTradeUserResponse =
  await snaptrade.authentication.loginSnapTradeUser({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    broker: "ALPACA",
    immediate_redirect: true,
    custom_redirect: "https://snaptrade.com",
    reconnect: "8b5f262d-4bb9-365d-888a-202bd3b15fa1",
    connection_type: "read",
  });

console.log(loginSnapTradeUserResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **snapTradeLoginUserRequestBody** | **SnapTradeLoginUserRequestBody**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**AuthenticationLoginSnapTradeUser200Response**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Login successful. Redirect user to provided URI in response |  -  |
**400** | Bad Request |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **registerSnapTradeUser**

#### **POST** /snapTrade/registerUser


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
  // basePath: "https://api.snaptrade.com/api/v1",
  consumerKey: "YOUR_CONSUMER_KEY",
  clientId: "YOUR_CLIENT_ID",
});

const registerSnapTradeUserResponse =
  await snaptrade.authentication.registerSnapTradeUser({
    user_id: "snaptrade-user-123",
    rsa_public_key:
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC7vbqajDw4o6gJy8UtmIbkcpnkO3Kwc4qsEnSZp/TR+fQi62F79RHWmwKOtFmwteURgLbj7D/WGuNLGOfa/2vse3G2eHnHl5CB8ruRX9fBl/KgwCVr2JaEuUm66bBQeP5XeBotdR4cvX38uPYivCDdPjJ1QWPdspTBKcxeFbccDw==",
  });

console.log(registerSnapTradeUserResponse);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **snapTradeRegisterUserRequestBody** | **SnapTradeRegisterUserRequestBody**|  |


### Return type

**UserIDandSecret**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully registered user |  -  |
**400** | Bad Request. Could be caused by various reasons. Error message is provided in response |  -  |
**404** | Invalid SnapTrade Client ID provided in query |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


