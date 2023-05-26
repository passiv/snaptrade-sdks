<a name="__pageTop"></a>
# snaptrade_client.apis.tags.account_information_api.AccountInformationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_user_holdings**](#get_all_user_holdings) | **get** /holdings | List all accounts for the user, plus balances and positions for each account.
[**get_user_account_balance**](#get_user_account_balance) | **get** /accounts/{accountId}/balances | Get all cash balances of an investment account
[**get_user_account_details**](#get_user_account_details) | **get** /accounts/{accountId} | Return details of a specific investment account
[**get_user_account_orders**](#get_user_account_orders) | **get** /accounts/{accountId}/orders | Get all history of orders placed in account
[**get_user_account_positions**](#get_user_account_positions) | **get** /accounts/{accountId}/positions | Get all positions of an investment account
[**get_user_holdings**](#get_user_holdings) | **get** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
[**list_user_accounts**](#list_user_accounts) | **get** /accounts | List all investment accounts for the user
[**update_user_account**](#update_user_account) | **put** /accounts/{accountId} | Update details of an investment account

# **get_all_user_holdings**

List all accounts for the user, plus balances and positions for each account.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List all accounts for the user, plus balances and positions for each account.
    get_all_user_holdings_response = (
        snaptrade.account_information.get_all_user_holdings(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631",  # optional
        )
    )
    pprint(get_all_user_holdings_response.body)
    pprint(get_all_user_holdings_response.body["account"])
    pprint(get_all_user_holdings_response.body["balances"])
    pprint(get_all_user_holdings_response.body["positions"])
    pprint(get_all_user_holdings_response.body["total_value"])
    pprint(get_all_user_holdings_response.headers)
    pprint(get_all_user_holdings_response.status)
    pprint(get_all_user_holdings_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_all_user_holdings: %s\n" % e
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
brokerage_authorizations | BrokerageAuthorizationsSchema | | optional


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

# BrokerageAuthorizationsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_all_user_holdings.ApiResponseFor200) | Returns list of accounts and holdings
400 | [ApiResponseFor400](#get_all_user_holdings.ApiResponseFor400) | Bad Request
403 | [ApiResponseFor403](#get_all_user_holdings.ApiResponseFor403) | Forbidden
500 | [ApiResponseFor500](#get_all_user_holdings.ApiResponseFor500) | Unexpected Error

#### get_all_user_holdings.ApiResponseFor200
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
[**AccountHoldings**](../../models/AccountHoldings.md) | [**AccountHoldings**](../../models/AccountHoldings.md) | [**AccountHoldings**](../../models/AccountHoldings.md) |  | 

#### get_all_user_holdings.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### get_all_user_holdings.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model403FailedRequestResponse**](../../models/Model403FailedRequestResponse.md) |  | 


#### get_all_user_holdings.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_balance**

Get all cash balances of an investment account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get all cash balances of an investment account
    get_user_account_balance_response = (
        snaptrade.account_information.get_user_account_balance(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
        )
    )
    pprint(get_user_account_balance_response.body)
    pprint(get_user_account_balance_response.body["currency"])
    pprint(get_user_account_balance_response.body["cash"])
    pprint(get_user_account_balance_response.headers)
    pprint(get_user_account_balance_response.status)
    pprint(get_user_account_balance_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_balance: %s\n"
        % e
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
accept_content_types | typing.Tuple[str] | default is ('*/*', ) | Tells the server the content type(s) that are accepted by the client
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
accountId | AccountIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_user_account_balance.ApiResponseFor200) | List of all balances in investment account
default | [ApiResponseForDefault](#get_user_account_balance.ApiResponseForDefault) | Unexpected error

#### get_user_account_balance.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBody, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBody

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Balance**](../../models/Balance.md) | [**Balance**](../../models/Balance.md) | [**Balance**](../../models/Balance.md) |  | 

#### get_user_account_balance.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_details**

Return details of a specific investment account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Return details of a specific investment account
    get_user_account_details_response = (
        snaptrade.account_information.get_user_account_details(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
        )
    )
    pprint(get_user_account_details_response.body)
    pprint(get_user_account_details_response.body["id"])
    pprint(get_user_account_details_response.body["brokerage_authorization"])
    pprint(get_user_account_details_response.body["portfolio_group"])
    pprint(get_user_account_details_response.body["name"])
    pprint(get_user_account_details_response.body["number"])
    pprint(get_user_account_details_response.body["institution_name"])
    pprint(get_user_account_details_response.body["created_date"])
    pprint(get_user_account_details_response.body["meta"])
    pprint(get_user_account_details_response.body["cash_restrictions"])
    pprint(get_user_account_details_response.body["sync_status"])
    pprint(get_user_account_details_response.headers)
    pprint(get_user_account_details_response.status)
    pprint(get_user_account_details_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_details: %s\n"
        % e
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
accountId | AccountIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_user_account_details.ApiResponseFor200) | Details of a specific investment account
default | [ApiResponseForDefault](#get_user_account_details.ApiResponseForDefault) | Unexpected error

#### get_user_account_details.ApiResponseFor200
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
[**Account**](../../models/Account.md) | [**Account**](../../models/Account.md) | [**Account**](../../models/Account.md) |  | 

#### get_user_account_details.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_orders**

Get all history of orders placed in account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get all history of orders placed in account
    get_user_account_orders_response = (
        snaptrade.account_information.get_user_account_orders(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
            state="all",  # optional
        )
    )
    pprint(get_user_account_orders_response.body)
    pprint(get_user_account_orders_response.body["brokerage_order_id"])
    pprint(get_user_account_orders_response.body["status"])
    pprint(get_user_account_orders_response.body["symbol"])
    pprint(get_user_account_orders_response.body["universal_symbol"])
    pprint(get_user_account_orders_response.body["option_symbol"])
    pprint(get_user_account_orders_response.body["action"])
    pprint(get_user_account_orders_response.body["total_quantity"])
    pprint(get_user_account_orders_response.body["open_quantity"])
    pprint(get_user_account_orders_response.body["canceled_quantity"])
    pprint(get_user_account_orders_response.body["filled_quantity"])
    pprint(get_user_account_orders_response.body["execution_price"])
    pprint(get_user_account_orders_response.body["limit_price"])
    pprint(get_user_account_orders_response.body["stop_price"])
    pprint(get_user_account_orders_response.body["order_type"])
    pprint(get_user_account_orders_response.body["time_in_force"])
    pprint(get_user_account_orders_response.body["time_placed"])
    pprint(get_user_account_orders_response.body["time_updated"])
    pprint(get_user_account_orders_response.body["expiry_date"])
    pprint(get_user_account_orders_response.headers)
    pprint(get_user_account_orders_response.status)
    pprint(get_user_account_orders_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_orders: %s\n" % e
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
state | StateSchema | | optional


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

# StateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["all", "open", "executed", ] 

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
accountId | AccountIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_user_account_orders.ApiResponseFor200) | List all orders in account
500 | [ApiResponseFor500](#get_user_account_orders.ApiResponseFor500) | Unexpected error

#### get_user_account_orders.ApiResponseFor200
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
[**AccountOrderRecord**](../../models/AccountOrderRecord.md) | [**AccountOrderRecord**](../../models/AccountOrderRecord.md) | [**AccountOrderRecord**](../../models/AccountOrderRecord.md) |  | 

#### get_user_account_orders.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_positions**

Get all positions of an investment account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get all positions of an investment account
    get_user_account_positions_response = (
        snaptrade.account_information.get_user_account_positions(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
        )
    )
    pprint(get_user_account_positions_response.body)
    pprint(get_user_account_positions_response.body["symbol"])
    pprint(get_user_account_positions_response.body["units"])
    pprint(get_user_account_positions_response.body["price"])
    pprint(get_user_account_positions_response.body["open_pnl"])
    pprint(get_user_account_positions_response.body["fractional_units"])
    pprint(get_user_account_positions_response.body["average_purchase_price"])
    pprint(get_user_account_positions_response.headers)
    pprint(get_user_account_positions_response.status)
    pprint(get_user_account_positions_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_positions: %s\n"
        % e
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
accept_content_types | typing.Tuple[str] | default is ('*/*', ) | Tells the server the content type(s) that are accepted by the client
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
accountId | AccountIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_user_account_positions.ApiResponseFor200) | List all positions in investment account
default | [ApiResponseForDefault](#get_user_account_positions.ApiResponseForDefault) | Unexpected error

#### get_user_account_positions.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBody, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBody

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Position**](../../models/Position.md) | [**Position**](../../models/Position.md) | [**Position**](../../models/Position.md) |  | 

#### get_user_account_positions.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_holdings**

List balances, positions and orders for the specified account.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List balances, positions and orders for the specified account.
    get_user_holdings_response = snaptrade.account_information.get_user_holdings(
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(get_user_holdings_response.body)
    pprint(get_user_holdings_response.body["account"])
    pprint(get_user_holdings_response.body["balances"])
    pprint(get_user_holdings_response.body["positions"])
    pprint(get_user_holdings_response.body["orders"])
    pprint(get_user_holdings_response.body["total_value"])
    pprint(get_user_holdings_response.headers)
    pprint(get_user_holdings_response.status)
    pprint(get_user_holdings_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AccountInformationApi.get_user_holdings: %s\n" % e)
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
accountId | AccountIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_user_holdings.ApiResponseFor200) | Returns holdings for the account
400 | [ApiResponseFor400](#get_user_holdings.ApiResponseFor400) | Bad Request
403 | [ApiResponseFor403](#get_user_holdings.ApiResponseFor403) | Forbidden
500 | [ApiResponseFor500](#get_user_holdings.ApiResponseFor500) | Unexpected Error

#### get_user_holdings.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountHoldingsAccount**](../../models/AccountHoldingsAccount.md) |  | 


#### get_user_holdings.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### get_user_holdings.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model403FailedRequestResponse**](../../models/Model403FailedRequestResponse.md) |  | 


#### get_user_holdings.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_user_accounts**

List all investment accounts for the user

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List all investment accounts for the user
    list_user_accounts_response = snaptrade.account_information.list_user_accounts(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(list_user_accounts_response.body)
    pprint(list_user_accounts_response.body["id"])
    pprint(list_user_accounts_response.body["brokerage_authorization"])
    pprint(list_user_accounts_response.body["portfolio_group"])
    pprint(list_user_accounts_response.body["name"])
    pprint(list_user_accounts_response.body["number"])
    pprint(list_user_accounts_response.body["institution_name"])
    pprint(list_user_accounts_response.body["created_date"])
    pprint(list_user_accounts_response.body["meta"])
    pprint(list_user_accounts_response.body["cash_restrictions"])
    pprint(list_user_accounts_response.body["sync_status"])
    pprint(list_user_accounts_response.headers)
    pprint(list_user_accounts_response.status)
    pprint(list_user_accounts_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AccountInformationApi.list_user_accounts: %s\n" % e)
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
200 | [ApiResponseFor200](#list_user_accounts.ApiResponseFor200) | A list of all Account objects for the authenticated user.
default | [ApiResponseForDefault](#list_user_accounts.ApiResponseForDefault) | Unexpected error.

#### list_user_accounts.ApiResponseFor200
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
[**Account**](../../models/Account.md) | [**Account**](../../models/Account.md) | [**Account**](../../models/Account.md) |  | 

#### list_user_accounts.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **update_user_account**

Update details of an investment account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Update details of an investment account
    update_user_account_response = snaptrade.account_information.update_user_account(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="accountId_example",  # required
    )
    pprint(update_user_account_response.body)
    pprint(update_user_account_response.body["id"])
    pprint(update_user_account_response.body["brokerage_authorization"])
    pprint(update_user_account_response.body["portfolio_group"])
    pprint(update_user_account_response.body["name"])
    pprint(update_user_account_response.body["number"])
    pprint(update_user_account_response.body["institution_name"])
    pprint(update_user_account_response.body["created_date"])
    pprint(update_user_account_response.body["meta"])
    pprint(update_user_account_response.body["cash_restrictions"])
    pprint(update_user_account_response.body["sync_status"])
    pprint(update_user_account_response.headers)
    pprint(update_user_account_response.status)
    pprint(update_user_account_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AccountInformationApi.update_user_account: %s\n" % e)
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
accountId | AccountIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#update_user_account.ApiResponseFor200) | Successfully updated details of an investment account
default | [ApiResponseForDefault](#update_user_account.ApiResponseForDefault) | Unexpected error

#### update_user_account.ApiResponseFor200
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
[**Account**](../../models/Account.md) | [**Account**](../../models/Account.md) | [**Account**](../../models/Account.md) |  | 

#### update_user_account.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

