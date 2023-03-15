# ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detailBrokerageAuthorization**](ConnectionsApi.md#detailBrokerageAuthorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user
[**listBrokerageAuthorizations**](ConnectionsApi.md#listBrokerageAuthorizations) | **GET** /authorizations | List all brokerage authorizations for the user
[**removeBrokerageAuthorization**](ConnectionsApi.md#removeBrokerageAuthorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization.


# **detailBrokerageAuthorization**

#### **GET** /authorizations/{authorizationId}


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const detailBrokerageAuthorizationResponse = await snaptrade.connections.detailBrokerageAuthorization({
        "authorizationId": "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "userId": "John.doe@snaptrade.com",
        "userSecret": "USERSECRET123",
    })

console.log(detailBrokerageAuthorizationResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | [**string**] | The ID of a brokerage authorization object. | defaults to undefined
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**BrokerageAuthorization**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Authorization object for the authenticated user. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBrokerageAuthorizations**

#### **GET** /authorizations


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const listBrokerageAuthorizationsResponse = await snaptrade.connections.listBrokerageAuthorizations({
        "userId": "John.doe@snaptrade.com",
        "userSecret": "USERSECRET123",
    })

console.log(listBrokerageAuthorizationsResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

**Array<BrokerageAuthorization>**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all Authorization objects for the authenticated user. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **removeBrokerageAuthorization**

#### **DELETE** /authorizations/{authorizationId}


### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const removeBrokerageAuthorizationResponse = await snaptrade.connections.removeBrokerageAuthorization({
        "authorizationId": "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "userId": "John.doe@snaptrade.com",
        "userSecret": "USERSECRET123",
    })

console.log(removeBrokerageAuthorizationResponse)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | [**string**] | The ID of the Authorization to delete. | defaults to undefined
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined


### Return type

void (empty response body)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Brokerage authorization object has been successfully deleted |  -  |
**400** | The specified authorizationId is invalid (not a UUID string). |  -  |
**404** | The specified authorizationId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


