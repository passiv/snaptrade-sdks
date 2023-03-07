# AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSnapTradeUser**](AuthenticationApi.md#deleteSnapTradeUser) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
[**getUserJWT**](AuthenticationApi.md#getUserJWT) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user\&#39;s local device
[**listSnapTradeUsers**](AuthenticationApi.md#listSnapTradeUsers) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you\&#39;ve registered on our platform
[**loginSnapTradeUser**](AuthenticationApi.md#loginSnapTradeUser) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
[**registerSnapTradeUser**](AuthenticationApi.md#registerSnapTradeUser) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations


# **deleteSnapTradeUser**
> DeleteUserResponse deleteSnapTradeUser()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.authentication.deleteSnapTradeUser({
    'userId': "John.doe@snaptrade.com",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined


### Return type

**DeleteUserResponse**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> EncryptedResponse getUserJWT()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.authentication.getUserJWT({
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

**EncryptedResponse**

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
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSnapTradeUsers**
> Array<string> listSnapTradeUsers()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.authentication.listSnapTradeUsers()
console.log(response)

```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<string>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> AuthenticationLoginSnapTradeUser200Response loginSnapTradeUser()


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.authentication.loginSnapTradeUser({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'requestBody': {
        "broker": "ALPACA",
        "immediate_redirect": true,
        "custom_redirect": "https://passiv.com",
        "reconnect": "8b5f262d-4bb9-365d-888a-202bd3b15fa1",
        "connection_type": "read",
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **snapTradeLoginUserRequestBody** | **SnapTradeLoginUserRequestBody**|  |
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**AuthenticationLoginSnapTradeUser200Response**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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
> UserIDandSecret registerSnapTradeUser(snapTradeRegisterUserRequestBody)


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.authentication.registerSnapTradeUser({
    'requestBody': {
        "user_id": "snaptrade-user-123",
        "rsa_public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC7vbqajDw4o6gJy8UtmIbkcpnkO3Kwc4qsEnSZp/TR+fQi62F79RHWmwKOtFmwteURgLbj7D/WGuNLGOfa/2vse3G2eHnHl5CB8ruRX9fBl/KgwCVr2JaEuUm66bBQeP5XeBotdR4cvX38uPYivCDdPjJ1QWPdspTBKcxeFbccDw==",
    },
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **snapTradeRegisterUserRequestBody** | **SnapTradeRegisterUserRequestBody**|  |


### Return type

**UserIDandSecret**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

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


