<a name="__pageTop"></a>
# snaptrade_client.apis.tags.connections_api.ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail_brokerage_authorization**](#detail_brokerage_authorization) | **get** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user
[**list_brokerage_authorizations**](#list_brokerage_authorizations) | **get** /authorizations | List all brokerage authorizations for the user
[**remove_brokerage_authorization**](#remove_brokerage_authorization) | **delete** /authorizations/{authorizationId} | Remove a brokerage authorization.
[**session_events**](#session_events) | **get** /sessionEvents | List all session events for the partner

# **detail_brokerage_authorization**
<a name="detail_brokerage_authorization"></a>
> BrokerageAuthorization detail_brokerage_authorization(authorization_iduser_iduser_secret)

Get detail of a specific brokerage authorizations for the user

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
    # Get detail of a specific brokerage authorizations for the user
    detail_brokerage_authorization_response = (
        snaptrade.connections.detail_brokerage_authorization(
            authorization_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
            user_id="John.doe@snaptrade.com",
            user_secret="USERSECRET123",
        )
    )
    pprint(detail_brokerage_authorization_response.body)
    pprint(detail_brokerage_authorization_response.body["id"])
    pprint(detail_brokerage_authorization_response.body["created_date"])
    pprint(detail_brokerage_authorization_response.body["updated_date"])
    pprint(detail_brokerage_authorization_response.body["brokerage"])
    pprint(detail_brokerage_authorization_response.body["name"])
    pprint(detail_brokerage_authorization_response.body["type"])
    pprint(detail_brokerage_authorization_response.body["disabled"])
    pprint(detail_brokerage_authorization_response.body["disabled_date"])
    pprint(detail_brokerage_authorization_response.body["meta"])
    pprint(detail_brokerage_authorization_response.headers)
    pprint(detail_brokerage_authorization_response.status)
    pprint(detail_brokerage_authorization_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ConnectionsApi.detail_brokerage_authorization: %s\n" % e
    )
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
path_params | RequestPathParams | |
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

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
authorizationId | AuthorizationIdSchema | | 

# AuthorizationIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#detail_brokerage_authorization.ApiResponseFor200) | Authorization object for the authenticated user.
default | [ApiResponseForDefault](#detail_brokerage_authorization.ApiResponseForDefault) | Unexpected error.

#### detail_brokerage_authorization.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**BrokerageAuthorization**](../../models/BrokerageAuthorization.md) |  | 


#### detail_brokerage_authorization.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_brokerage_authorizations**
<a name="list_brokerage_authorizations"></a>
> [BrokerageAuthorization] list_brokerage_authorizations(user_iduser_secret)

List all brokerage authorizations for the user

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
    # List all brokerage authorizations for the user
    list_brokerage_authorizations_response = (
        snaptrade.connections.list_brokerage_authorizations(
            user_id="John.doe@snaptrade.com",
            user_secret="USERSECRET123",
        )
    )
    pprint(list_brokerage_authorizations_response.body)
    pprint(list_brokerage_authorizations_response.body["id"])
    pprint(list_brokerage_authorizations_response.body["created_date"])
    pprint(list_brokerage_authorizations_response.body["updated_date"])
    pprint(list_brokerage_authorizations_response.body["brokerage"])
    pprint(list_brokerage_authorizations_response.body["name"])
    pprint(list_brokerage_authorizations_response.body["type"])
    pprint(list_brokerage_authorizations_response.body["disabled"])
    pprint(list_brokerage_authorizations_response.body["disabled_date"])
    pprint(list_brokerage_authorizations_response.body["meta"])
    pprint(list_brokerage_authorizations_response.headers)
    pprint(list_brokerage_authorizations_response.status)
    pprint(list_brokerage_authorizations_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ConnectionsApi.list_brokerage_authorizations: %s\n" % e
    )
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
200 | [ApiResponseFor200](#list_brokerage_authorizations.ApiResponseFor200) | A list of all Authorization objects for the authenticated user.
default | [ApiResponseForDefault](#list_brokerage_authorizations.ApiResponseForDefault) | Unexpected error.

#### list_brokerage_authorizations.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**BrokerageAuthorization**](../../models/BrokerageAuthorization.md) | [**BrokerageAuthorization**](../../models/BrokerageAuthorization.md) | [**BrokerageAuthorization**](../../models/BrokerageAuthorization.md) |  | 

#### list_brokerage_authorizations.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **remove_brokerage_authorization**
<a name="remove_brokerage_authorization"></a>
> remove_brokerage_authorization(authorization_iduser_iduser_secret)

Remove a brokerage authorization.

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
    # Remove a brokerage authorization.
    snaptrade.connections.remove_brokerage_authorization(
        authorization_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
    )
    pprint(remove_brokerage_authorization_response.headers)
    pprint(remove_brokerage_authorization_response.status)
    pprint(remove_brokerage_authorization_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ConnectionsApi.remove_brokerage_authorization: %s\n" % e
    )
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
path_params | RequestPathParams | |
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

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
authorizationId | AuthorizationIdSchema | | 

# AuthorizationIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
204 | [ApiResponseFor204](#remove_brokerage_authorization.ApiResponseFor204) | Brokerage authorization object has been successfully deleted
400 | [ApiResponseFor400](#remove_brokerage_authorization.ApiResponseFor400) | The specified authorizationId is invalid (not a UUID string).
404 | [ApiResponseFor404](#remove_brokerage_authorization.ApiResponseFor404) | The specified authorizationId was not found.
default | [ApiResponseForDefault](#remove_brokerage_authorization.ApiResponseForDefault) | Unexpected error.

#### remove_brokerage_authorization.ApiResponseFor204
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### remove_brokerage_authorization.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### remove_brokerage_authorization.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### remove_brokerage_authorization.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **session_events**
<a name="session_events"></a>
> [bool, date, datetime, dict, float, int, list, str, none_type] session_events(partner_client_id)

List all session events for the partner

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
    # List all session events for the partner
    session_events_response = snaptrade.connections.session_events(
        partner_client_id="PASSIVTEST",
        user_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
        session_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    )
    pprint(session_events_response.headers)
    pprint(session_events_response.status)
    pprint(session_events_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ConnectionsApi.session_events: %s\n" % e)
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
PartnerClientId | PartnerClientIdSchema | | 
userId | UserIdSchema | | optional
sessionId | SessionIdSchema | | optional


# PartnerClientIdSchema

SnapTrade Client ID (generated and provided to partner by Passiv)

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | SnapTrade Client ID (generated and provided to partner by Passiv) | 

# UserIdSchema

Comma seperated list of account IDs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Comma seperated list of account IDs | 

# SessionIdSchema

Comma seperated list of account IDs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  | Comma seperated list of account IDs | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#session_events.ApiResponseFor200) | A list of all Session Events for the Partner.
default | [ApiResponseForDefault](#session_events.ApiResponseForDefault) | Unexpected error.

#### session_events.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | 

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### anyOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[SessionEvent](../../models/SessionEvent.md) | [**SessionEvent**](../../models/SessionEvent.md) | [**SessionEvent**](../../models/SessionEvent.md) |  | 

#### session_events.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

