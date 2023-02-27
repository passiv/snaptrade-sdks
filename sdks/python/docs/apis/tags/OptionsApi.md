<a name="__pageTop"></a>
# snaptrade_client.apis.tags.options_api.OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_option_strategy**](#get_option_strategy) | **post** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
[**get_options_chain**](#get_options_chain) | **get** /accounts/{accountId}/optionsChain | Get the options chain
[**get_options_strategy_quote**](#get_options_strategy_quote) | **get** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
[**list_option_holdings**](#list_option_holdings) | **get** /accounts/{accountId}/options | Get the options holdings in the account
[**place_option_strategy**](#place_option_strategy) | **post** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage

# **get_option_strategy**
<a name="get_option_strategy"></a>
> StrategyQuotes get_option_strategy(user_iduser_secretaccount_idany_type)

Creates an option strategy object that will be used to place an option strategy order

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
        # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
        # See configuration.py for a list of all supported configuration parameters.
        host = "https://api.snaptrade.com/api/v1",
    
        # Configure API key authorization: PartnerClientId
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerClientId': 'Bearer'}
    
        # Configure API key authorization: PartnerSignature
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerSignature': 'Bearer'}
    
        # Configure API key authorization: PartnerTimestamp
        api_key = 'YOUR_API_KEY'
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerTimestamp': 'Bearer'}
)

# Creates an option strategy object that will be used to place an option strategy order
response = snaptrade.options.get_option_strategy(
    path_params = {
        'accountId': "accountId_example",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = 
        'underlying_symbol_id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'strategy_type': "CUSTOM",
    ,
)
pprint(response)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**[legs](#legs)** | list, tuple,  | tuple,  |  | 
**strategy_type** | str,  | str,  |  | must be one of ["CUSTOM", ] 
**underlying_symbol_id** | str, uuid.UUID,  | str,  |  | value must be a uuid
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# legs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**OptionLeg**]({{complexTypePrefix}}OptionLeg.md) | [**OptionLeg**]({{complexTypePrefix}}OptionLeg.md) | [**OptionLeg**]({{complexTypePrefix}}OptionLeg.md) |  | 

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
200 | [ApiResponseFor200](#get_option_strategy.ApiResponseFor200) | Order Quotes
500 | [ApiResponseFor500](#get_option_strategy.ApiResponseFor500) | Unexpected error

#### get_option_strategy.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**StrategyQuotes**](../../models/StrategyQuotes.md) |  | 


#### get_option_strategy.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_options_chain**
<a name="get_options_chain"></a>
> OptionChain get_options_chain(user_iduser_secretaccount_idsymbol)

Get the options chain

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
        # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
        # See configuration.py for a list of all supported configuration parameters.
        host = "https://api.snaptrade.com/api/v1",
    
        # Configure API key authorization: PartnerClientId
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerClientId': 'Bearer'}
    
        # Configure API key authorization: PartnerSignature
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerSignature': 'Bearer'}
    
        # Configure API key authorization: PartnerTimestamp
        api_key = 'YOUR_API_KEY'
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerTimestamp': 'Bearer'}
)

# Get the options chain
response = snaptrade.options.get_options_chain(
    path_params = {
        'accountId': "accountId_example",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
        'symbol': "symbol_example",
    },
)
pprint(response)
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
symbol | SymbolSchema | | 


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

# SymbolSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

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
200 | [ApiResponseFor200](#get_options_chain.ApiResponseFor200) | List of all Options available for the brokerage symbol
500 | [ApiResponseFor500](#get_options_chain.ApiResponseFor500) | Unexpected error

#### get_options_chain.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OptionChain**](../../models/OptionChain.md) |  | 


#### get_options_chain.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_options_strategy_quote**
<a name="get_options_strategy_quote"></a>
> StrategyQuotes get_options_strategy_quote(user_iduser_secretaccount_idoption_strategy_id)

Get latest market data of option strategy

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
        # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
        # See configuration.py for a list of all supported configuration parameters.
        host = "https://api.snaptrade.com/api/v1",
    
        # Configure API key authorization: PartnerClientId
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerClientId': 'Bearer'}
    
        # Configure API key authorization: PartnerSignature
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerSignature': 'Bearer'}
    
        # Configure API key authorization: PartnerTimestamp
        api_key = 'YOUR_API_KEY'
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerTimestamp': 'Bearer'}
)

# Get latest market data of option strategy
response = snaptrade.options.get_options_strategy_quote(
    path_params = {
        'accountId': "accountId_example",
        'optionStrategyId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
)
pprint(response)
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
optionStrategyId | OptionStrategyIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# OptionStrategyIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_options_strategy_quote.ApiResponseFor200) | Order Quotes
500 | [ApiResponseFor500](#get_options_strategy_quote.ApiResponseFor500) | Unexpected error

#### get_options_strategy_quote.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**StrategyQuotes**](../../models/StrategyQuotes.md) |  | 


#### get_options_strategy_quote.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_option_holdings**
<a name="list_option_holdings"></a>
> OptionsHoldings list_option_holdings(user_iduser_secretaccount_id)

Get the options holdings in the account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
        # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
        # See configuration.py for a list of all supported configuration parameters.
        host = "https://api.snaptrade.com/api/v1",
    
        # Configure API key authorization: PartnerClientId
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerClientId': 'Bearer'}
    
        # Configure API key authorization: PartnerSignature
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerSignature': 'Bearer'}
    
        # Configure API key authorization: PartnerTimestamp
        api_key = 'YOUR_API_KEY'
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerTimestamp': 'Bearer'}
)

# Get the options holdings in the account
response = snaptrade.options.list_option_holdings(
    path_params = {
        'accountId': "accountId_example",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
)
pprint(response)
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
200 | [ApiResponseFor200](#list_option_holdings.ApiResponseFor200) | The option holdings in the account
500 | [ApiResponseFor500](#list_option_holdings.ApiResponseFor500) | Unexpected error

#### list_option_holdings.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**OptionsHoldings**](../../models/OptionsHoldings.md) |  | 


#### list_option_holdings.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_option_strategy**
<a name="place_option_strategy"></a>
> StrategyOrderRecord place_option_strategy(user_iduser_secretaccount_idoption_strategy_idany_type)

Place an option strategy order on the brokerage

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
        # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
        # See configuration.py for a list of all supported configuration parameters.
        host = "https://api.snaptrade.com/api/v1",
    
        # Configure API key authorization: PartnerClientId
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerClientId': 'Bearer'}
    
        # Configure API key authorization: PartnerSignature
        api_key = 'YOUR_API_KEY',
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerSignature': 'Bearer'}
    
        # Configure API key authorization: PartnerTimestamp
        api_key = 'YOUR_API_KEY'
    
        # Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
        # api_key_prefix = {'PartnerTimestamp': 'Bearer'}
)

# Place an option strategy order on the brokerage
response = snaptrade.options.place_option_strategy(
    path_params = {
        'accountId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'optionStrategyId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = 
        'order_type': "Limit",
        'time_in_force': "DAY",
        'price': 31.33,
    ,
)
pprint(response)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**time_in_force** | str,  | str,  |  | must be one of ["DAY", "GTC", ] 
**price** | decimal.Decimal, int, float,  | decimal.Decimal,  | Trade Price if limit or stop limit order | 
**order_type** | str,  | str,  |  | must be one of ["Limit", "Market", "NetDebit", "NetCredit", ] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

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
optionStrategyId | OptionStrategyIdSchema | | 

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# OptionStrategyIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#place_option_strategy.ApiResponseFor200) | Status of strategy order placed
500 | [ApiResponseFor500](#place_option_strategy.ApiResponseFor500) | Unexpected error

#### place_option_strategy.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**StrategyOrderRecord**](../../models/StrategyOrderRecord.md) |  | 


#### place_option_strategy.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)
