<a name="__pageTop"></a>
# snaptrade_client.apis.tags.authentication_api.AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_snap_trade_user**](#delete_snap_trade_user) | **delete** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
[**get_user_jwt**](#get_user_jwt) | **get** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user&#x27;s local device
[**list_snap_trade_users**](#list_snap_trade_users) | **get** /snapTrade/listUsers | Get a list of all SnapTrade users you&#x27;ve registered on our platform
[**login_snap_trade_user**](#login_snap_trade_user) | **post** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
[**register_snap_trade_user**](#register_snap_trade_user) | **post** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations

# **delete_snap_trade_user**
<a name="delete_snap_trade_user"></a>
> DeleteUserResponse delete_snap_trade_user(user_id)

Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
    delete_snap_trade_user_response = snaptrade.authentication.delete_snap_trade_user(
        user_id="John.doe@snaptrade.com",
    )
    pprint(delete_snap_trade_user_response.body)
    pprint(delete_snap_trade_user_response.body["status"])
    pprint(delete_snap_trade_user_response.body["user_id"])
    pprint(delete_snap_trade_user_response.headers)
    pprint(delete_snap_trade_user_response.status)
    pprint(delete_snap_trade_user_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.delete_snap_trade_user: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
userId | UserIdSchema | | 


# UserIdSchema

SnapTrade User ID

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User ID | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#delete_snap_trade_user.ApiResponseFor200) | Delete successful
400 | [ApiResponseFor400](#delete_snap_trade_user.ApiResponseFor400) | Bad Request
403 | [ApiResponseFor403](#delete_snap_trade_user.ApiResponseFor403) | Forbidden
404 | [ApiResponseFor404](#delete_snap_trade_user.ApiResponseFor404) | Not Found
500 | [ApiResponseFor500](#delete_snap_trade_user.ApiResponseFor500) | Unexpected Error

#### delete_snap_trade_user.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**DeleteUserResponse**](../../models/DeleteUserResponse.md) |  | 


#### delete_snap_trade_user.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### delete_snap_trade_user.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model403FailedRequestResponse**](../../models/Model403FailedRequestResponse.md) |  | 


#### delete_snap_trade_user.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model404FailedRequestResponse**](../../models/Model404FailedRequestResponse.md) |  | 


#### delete_snap_trade_user.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_jwt**
<a name="get_user_jwt"></a>
> EncryptedResponse get_user_jwt(user_iduser_secret)

Obtains an encrypted JWT tokens that should be decrypted on a user&#x27;s local device

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Obtains an encrypted JWT tokens that should be decrypted on a user's local device
    get_user_jwt_response = snaptrade.authentication.get_user_jwt(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
    )
    pprint(get_user_jwt_response.headers)
    pprint(get_user_jwt_response.status)
    pprint(get_user_jwt_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.get_user_jwt: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
userId | UserIdSchema | | 
userSecret | UserSecretSchema | | 


# UserIdSchema

SnapTrade User ID

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User ID | 

# UserSecretSchema

SnapTrade User Secret (generated when registering user)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User Secret (generated when registering user) | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_user_jwt.ApiResponseFor200) | Successfully obtained encrypted JWT data. See description on how to object JWT token
400 | [ApiResponseFor400](#get_user_jwt.ApiResponseFor400) | Bad Request
403 | [ApiResponseFor403](#get_user_jwt.ApiResponseFor403) | Forbidden
404 | [ApiResponseFor404](#get_user_jwt.ApiResponseFor404) | Not Found
500 | [ApiResponseFor500](#get_user_jwt.ApiResponseFor500) | Unexpected Error

#### get_user_jwt.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**EncryptedResponse**](../../models/EncryptedResponse.md) |  | 


#### get_user_jwt.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### get_user_jwt.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model403FailedRequestResponse**](../../models/Model403FailedRequestResponse.md) |  | 


#### get_user_jwt.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model404FailedRequestResponse**](../../models/Model404FailedRequestResponse.md) |  | 


#### get_user_jwt.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_snap_trade_users**
<a name="list_snap_trade_users"></a>
> UserList list_snap_trade_users()

Get a list of all SnapTrade users you&#x27;ve registered on our platform

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get a list of all SnapTrade users you've registered on our platform
    list_snap_trade_users_response = snaptrade.authentication.list_snap_trade_users()
    pprint(list_snap_trade_users_response.body)
    pprint(list_snap_trade_users_response.headers)
    pprint(list_snap_trade_users_response.status)
    pprint(list_snap_trade_users_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.list_snap_trade_users: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#list_snap_trade_users.ApiResponseFor200) | Successfully generated a list of users
400 | [ApiResponseFor400](#list_snap_trade_users.ApiResponseFor400) | Bad Request. Could be caused by various reasons. Error message is provided in response
404 | [ApiResponseFor404](#list_snap_trade_users.ApiResponseFor404) | Invalid SnapTrade Client ID provided in query
500 | [ApiResponseFor500](#list_snap_trade_users.ApiResponseFor500) | Unexpected error

#### list_snap_trade_users.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**UserList**](../../models/UserList.md) |  | 


#### list_snap_trade_users.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### list_snap_trade_users.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model404FailedRequestResponse**](../../models/Model404FailedRequestResponse.md) |  | 


#### list_snap_trade_users.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **login_snap_trade_user**
<a name="login_snap_trade_user"></a>
> bool, date, datetime, dict, float, int, list, str, none_type login_snap_trade_user(user_iduser_secret)

Generate a redirect URI to securely login a user to the SnapTrade Connection Portal

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
    login_snap_trade_user_response = snaptrade.authentication.login_snap_trade_user(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
        broker="ALPACA",
        immediate_redirect=True,
        custom_redirect="https://passiv.com",
        reconnect="8b5f262d-4bb9-365d-888a-202bd3b15fa1",
        connection_type="read",
    )
    pprint(login_snap_trade_user_response.headers)
    pprint(login_snap_trade_user_response.status)
    pprint(login_snap_trade_user_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.login_snap_trade_user: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson, Unset] | optional, default is unset |
query_params | RequestQueryParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**SnapTradeLoginUserRequestBody**](../../models/SnapTradeLoginUserRequestBody.md) |  | 


### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
userId | UserIdSchema | | 
userSecret | UserSecretSchema | | 


# UserIdSchema

SnapTrade User ID

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User ID | 

# UserSecretSchema

SnapTrade User Secret (generated when registering user)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade User Secret (generated when registering user) | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#login_snap_trade_user.ApiResponseFor200) | Login successful. Redirect user to provided URI in response
400 | [ApiResponseFor400](#login_snap_trade_user.ApiResponseFor400) | Bad Request
403 | [ApiResponseFor403](#login_snap_trade_user.ApiResponseFor403) | Forbidden
404 | [ApiResponseFor404](#login_snap_trade_user.ApiResponseFor404) | Not Found
500 | [ApiResponseFor500](#login_snap_trade_user.ApiResponseFor500) | Unexpected Error

#### login_snap_trade_user.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### oneOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[LoginRedirectURI](../../models/LoginRedirectURI.md) | [**LoginRedirectURI**](../../models/LoginRedirectURI.md) | [**LoginRedirectURI**](../../models/LoginRedirectURI.md) |  | 
[EncryptedResponse](../../models/EncryptedResponse.md) | [**EncryptedResponse**](../../models/EncryptedResponse.md) | [**EncryptedResponse**](../../models/EncryptedResponse.md) |  | 

#### login_snap_trade_user.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### login_snap_trade_user.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model403FailedRequestResponse**](../../models/Model403FailedRequestResponse.md) |  | 


#### login_snap_trade_user.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model404FailedRequestResponse**](../../models/Model404FailedRequestResponse.md) |  | 


#### login_snap_trade_user.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **register_snap_trade_user**
<a name="register_snap_trade_user"></a>
> UserIDandSecret register_snap_trade_user(snap_trade_register_user_request_body)

Register user with SnapTrade in order to create secure brokerage authorizations

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Register user with SnapTrade in order to create secure brokerage authorizations
    register_snap_trade_user_response = snaptrade.authentication.register_snap_trade_user(
        user_id="snaptrade-user-123",
        rsa_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC7vbqajDw4o6gJy8UtmIbkcpnkO3Kwc4qsEnSZp/TR+fQi62F79RHWmwKOtFmwteURgLbj7D/WGuNLGOfa/2vse3G2eHnHl5CB8ruRX9fBl/KgwCVr2JaEuUm66bBQeP5XeBotdR4cvX38uPYivCDdPjJ1QWPdspTBKcxeFbccDw==",
    )
    pprint(register_snap_trade_user_response.body)
    pprint(register_snap_trade_user_response.body["user_id"])
    pprint(register_snap_trade_user_response.body["user_secret"])
    pprint(register_snap_trade_user_response.headers)
    pprint(register_snap_trade_user_response.status)
    pprint(register_snap_trade_user_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.register_snap_trade_user: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**SnapTradeRegisterUserRequestBody**](../../models/SnapTradeRegisterUserRequestBody.md) |  | 


### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#register_snap_trade_user.ApiResponseFor200) | Successfully registered user
400 | [ApiResponseFor400](#register_snap_trade_user.ApiResponseFor400) | Bad Request. Could be caused by various reasons. Error message is provided in response
404 | [ApiResponseFor404](#register_snap_trade_user.ApiResponseFor404) | Invalid SnapTrade Client ID provided in query
500 | [ApiResponseFor500](#register_snap_trade_user.ApiResponseFor500) | Unexpected error

#### register_snap_trade_user.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**UserIDandSecret**](../../models/UserIDandSecret.md) |  | 


#### register_snap_trade_user.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### register_snap_trade_user.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model404FailedRequestResponse**](../../models/Model404FailedRequestResponse.md) |  | 


#### register_snap_trade_user.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

