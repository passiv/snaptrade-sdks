# snaptrade_client.AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_snap_trade_user**](AuthenticationApi.md#delete_snap_trade_user) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
[**get_user_jwt**](AuthenticationApi.md#get_user_jwt) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user&#39;s local device
[**list_snap_trade_users**](AuthenticationApi.md#list_snap_trade_users) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you&#39;ve registered on our platform
[**login_snap_trade_user**](AuthenticationApi.md#login_snap_trade_user) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
[**register_snap_trade_user**](AuthenticationApi.md#register_snap_trade_user) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations


# **delete_snap_trade_user**
> DeleteUserResponse delete_snap_trade_user(user_id)

Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import authentication_api
from snaptrade_client.model.model404_failed_request_response import Model404FailedRequestResponse
from snaptrade_client.model.delete_user_response import DeleteUserResponse
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.model.model403_failed_request_response import Model403FailedRequestResponse
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration.api_key['PartnerClientId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = authentication_api.AuthenticationApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 

    # example passing only required values which don't have defaults set
    try:
        # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
        api_response = api_instance.delete_snap_trade_user(user_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling AuthenticationApi->delete_snap_trade_user: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |

### Return type

[**DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_jwt**
> EncryptedResponse get_user_jwt(user_id, user_secret)

Obtains an encrypted JWT tokens that should be decrypted on a user's local device

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import authentication_api
from snaptrade_client.model.model404_failed_request_response import Model404FailedRequestResponse
from snaptrade_client.model.encrypted_response import EncryptedResponse
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.model.model403_failed_request_response import Model403FailedRequestResponse
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration.api_key['PartnerClientId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = authentication_api.AuthenticationApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 

    # example passing only required values which don't have defaults set
    try:
        # Obtains an encrypted JWT tokens that should be decrypted on a user's local device
        api_response = api_instance.get_user_jwt(user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling AuthenticationApi->get_user_jwt: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |

### Return type

[**EncryptedResponse**](EncryptedResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_snap_trade_users**
> UserList list_snap_trade_users()

Get a list of all SnapTrade users you've registered on our platform

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import authentication_api
from snaptrade_client.model.model404_failed_request_response import Model404FailedRequestResponse
from snaptrade_client.model.user_list import UserList
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration.api_key['PartnerClientId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = authentication_api.AuthenticationApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get a list of all SnapTrade users you've registered on our platform
        api_response = api_instance.list_snap_trade_users()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling AuthenticationApi->list_snap_trade_users: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**UserList**](UserList.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login_snap_trade_user**
> AuthenticationLoginSnapTradeUser200Response login_snap_trade_user(user_id, user_secret)

Generate a redirect URI to securely login a user to the SnapTrade Connection Portal

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import authentication_api
from snaptrade_client.model.model404_failed_request_response import Model404FailedRequestResponse
from snaptrade_client.model.snap_trade_login_user_request_body import SnapTradeLoginUserRequestBody
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.model.authentication_login_snap_trade_user200_response import AuthenticationLoginSnapTradeUser200Response
from snaptrade_client.model.model403_failed_request_response import Model403FailedRequestResponse
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration.api_key['PartnerClientId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = authentication_api.AuthenticationApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    snap_trade_login_user_request_body = SnapTradeLoginUserRequestBody(
        broker="ALPACA",
        immediate_redirect=True,
        custom_redirect="https://passiv.com",
        reconnect="8b5f262d-4bb9-365d-888a-202bd3b15fa1",
        connection_type="read",
    ) # SnapTradeLoginUserRequestBody |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
        api_response = api_instance.login_snap_trade_user(user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling AuthenticationApi->login_snap_trade_user: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
        api_response = api_instance.login_snap_trade_user(user_id, user_secret, snap_trade_login_user_request_body=snap_trade_login_user_request_body)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling AuthenticationApi->login_snap_trade_user: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **snap_trade_login_user_request_body** | [**SnapTradeLoginUserRequestBody**](SnapTradeLoginUserRequestBody.md)|  | [optional]

### Return type

[**AuthenticationLoginSnapTradeUser200Response**](AuthenticationLoginSnapTradeUser200Response.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register_snap_trade_user**
> UserIDandSecret register_snap_trade_user(snap_trade_register_user_request_body)

Register user with SnapTrade in order to create secure brokerage authorizations

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import authentication_api
from snaptrade_client.model.model404_failed_request_response import Model404FailedRequestResponse
from snaptrade_client.model.user_i_dand_secret import UserIDandSecret
from snaptrade_client.model.snap_trade_register_user_request_body import SnapTradeRegisterUserRequestBody
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration.api_key['PartnerClientId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = authentication_api.AuthenticationApi(api_client)
    snap_trade_register_user_request_body = SnapTradeRegisterUserRequestBody(
        user_id="snaptrade-user-123",
        rsa_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC7vbqajDw4o6gJy8UtmIbkcpnkO3Kwc4qsEnSZp/TR+fQi62F79RHWmwKOtFmwteURgLbj7D/WGuNLGOfa/2vse3G2eHnHl5CB8ruRX9fBl/KgwCVr2JaEuUm66bBQeP5XeBotdR4cvX38uPYivCDdPjJ1QWPdspTBKcxeFbccDw==",
    ) # SnapTradeRegisterUserRequestBody | 

    # example passing only required values which don't have defaults set
    try:
        # Register user with SnapTrade in order to create secure brokerage authorizations
        api_response = api_instance.register_snap_trade_user(snap_trade_register_user_request_body)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling AuthenticationApi->register_snap_trade_user: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **snap_trade_register_user_request_body** | [**SnapTradeRegisterUserRequestBody**](SnapTradeRegisterUserRequestBody.md)|  |

### Return type

[**UserIDandSecret**](UserIDandSecret.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

