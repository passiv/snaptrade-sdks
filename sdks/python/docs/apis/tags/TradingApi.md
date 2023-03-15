<a name="__pageTop"></a>
# snaptrade_client.apis.tags.trading_api.TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_user_account_order**](#cancel_user_account_order) | **post** /accounts/{accountId}/orders/cancel | Cancel open order in account
[**get_calculated_trade_impact_by_id**](#get_calculated_trade_impact_by_id) | **get** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#x27;s placed
[**get_calculated_trades_impact**](#get_calculated_trades_impact) | **get** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio
[**get_order_impact**](#get_order_impact) | **post** /trade/impact | Check impact of trades on account.
[**get_user_account_quotes**](#get_user_account_quotes) | **get** /accounts/{accountId}/quotes | Get symbol quotes
[**modify_calculated_trade_by_id**](#modify_calculated_trade_by_id) | **patch** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed
[**place_calculated_trades**](#place_calculated_trades) | **post** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series
[**place_force_order**](#place_force_order) | **post** /trade/place | Place a trade with NO validation.
[**place_oco_order**](#place_oco_order) | **post** /trade/oco | Place a OCO (One Cancels Other) order
[**place_order**](#place_order) | **post** /trade/{tradeId} | Place order

# **cancel_user_account_order**
<a name="cancel_user_account_order"></a>
> AccountOrderRecord cancel_user_account_order(user_iduser_secretaccount_idany_type)

Cancel open order in account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Cancel open order in account
cancel_user_account_order_response = snaptrade.trading.cancel_user_account_order(
    path_params = {
        'accountId': "accountId_example",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = {
        "brokerage_order_id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
)
try:
    pprint(cancel_user_account_order_response.body["brokerage_order_id"])
    pprint(cancel_user_account_order_response.body["status"])
    pprint(cancel_user_account_order_response.body["symbol"])
    pprint(cancel_user_account_order_response.body["universal_symbol"])
    pprint(cancel_user_account_order_response.body["action"])
    pprint(cancel_user_account_order_response.body["total_quantity"])
    pprint(cancel_user_account_order_response.body["open_quantity"])
    pprint(cancel_user_account_order_response.body["canceled_quantity"])
    pprint(cancel_user_account_order_response.body["filled_quantity"])
    pprint(cancel_user_account_order_response.body["execution_price"])
    pprint(cancel_user_account_order_response.body["limit_price"])
    pprint(cancel_user_account_order_response.body["stop_price"])
    pprint(cancel_user_account_order_response.body["order_type"])
    pprint(cancel_user_account_order_response.body["time_in_force"])
    pprint(cancel_user_account_order_response.body["time_placed"])
    pprint(cancel_user_account_order_response.body["time_updated"])
    pprint(cancel_user_account_order_response.body["expiry_date"])
    pprint(cancel_user_account_order_response.headers)
    pprint(cancel_user_account_order_response.status)
except ApiException as e:
    print("Exception when calling AccountOrderRecord.cancel_user_account_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
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
**brokerage_order_id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
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

# AccountIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#cancel_user_account_order.ApiResponseFor200) | Order Record of canceled order
400 | [ApiResponseFor400](#cancel_user_account_order.ApiResponseFor400) | Unable to cancel open order. Please verify status in brokerage account
500 | [ApiResponseFor500](#cancel_user_account_order.ApiResponseFor500) | Unexpected error

#### cancel_user_account_order.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountOrderRecord**](../../models/AccountOrderRecord.md) |  | 


#### cancel_user_account_order.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### cancel_user_account_order.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_calculated_trade_impact_by_id**
<a name="get_calculated_trade_impact_by_id"></a>
> Trade get_calculated_trade_impact_by_id(portfolio_group_idcalculated_trade_idtrade_id)

Return details of a specific trade before it's placed

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Return details of a specific trade before it's placed
get_calculated_trade_impact_by_id_response = snaptrade.trading.get_calculated_trade_impact_by_id(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'calculatedTradeId': "calculatedTradeId_example",
        'tradeId': "tradeId_example",
    },
)
try:
    pprint(get_calculated_trade_impact_by_id_response.body["id"])
    pprint(get_calculated_trade_impact_by_id_response.body["account"])
    pprint(get_calculated_trade_impact_by_id_response.body["symbol"])
    pprint(get_calculated_trade_impact_by_id_response.body["universal_symbol"])
    pprint(get_calculated_trade_impact_by_id_response.body["action"])
    pprint(get_calculated_trade_impact_by_id_response.body["units"])
    pprint(get_calculated_trade_impact_by_id_response.body["price"])
    pprint(get_calculated_trade_impact_by_id_response.body["sequence"])
    pprint(get_calculated_trade_impact_by_id_response.headers)
    pprint(get_calculated_trade_impact_by_id_response.status)
except ApiException as e:
    print("Exception when calling Trade.get_calculated_trade_impact_by_id: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 
calculatedTradeId | CalculatedTradeIdSchema | | 
tradeId | TradeIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# CalculatedTradeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# TradeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_calculated_trade_impact_by_id.ApiResponseFor200) | Trade object

#### get_calculated_trade_impact_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Trade**](../../models/Trade.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_calculated_trades_impact**
<a name="get_calculated_trades_impact"></a>
> [TradeImpact] get_calculated_trades_impact(portfolio_group_idcalculated_trade_id)

Return the impact of placing a series of trades on the portfolio

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Return the impact of placing a series of trades on the portfolio
get_calculated_trades_impact_response = snaptrade.trading.get_calculated_trades_impact(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'calculatedTradeId': "calculatedTradeId_example",
    },
)
try:
    pprint(get_calculated_trades_impact_response.body["account"])
    pprint(get_calculated_trades_impact_response.body["currency"])
    pprint(get_calculated_trades_impact_response.body["remaining_cash"])
    pprint(get_calculated_trades_impact_response.body["estimated_commissions"])
    pprint(get_calculated_trades_impact_response.body["forex_fees"])
    pprint(get_calculated_trades_impact_response.headers)
    pprint(get_calculated_trades_impact_response.status)
except ApiException as e:
    print("Exception when calling TradeImpact.get_calculated_trades_impact: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 
calculatedTradeId | CalculatedTradeIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# CalculatedTradeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_calculated_trades_impact.ApiResponseFor200) | Impact of trades to make

#### get_calculated_trades_impact.ApiResponseFor200
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
[**TradeImpact**](../../models/TradeImpact.md) | [**TradeImpact**](../../models/TradeImpact.md) | [**TradeImpact**](../../models/TradeImpact.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_order_impact**
<a name="get_order_impact"></a>
> ManualTradeAndImpact get_order_impact(user_iduser_secretmanual_trade_form)

Check impact of trades on account.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Check impact of trades on account.
get_order_impact_response = snaptrade.trading.get_order_impact(
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = {
        "account_id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "action": "BUY",
        "order_type": "Limit",
        "price": 31.33,
        "stop": 31.33,
        "time_in_force": "Day",
        "universal_symbol_id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
)
try:
    pprint(get_order_impact_response.body["trade"])
    pprint(get_order_impact_response.body["trade_impacts"])
    pprint(get_order_impact_response.body["combined_remaining_balance"])
    pprint(get_order_impact_response.headers)
    pprint(get_order_impact_response.status)
except ApiException as e:
    print("Exception when calling ManualTradeAndImpact.get_order_impact: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
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
[**ManualTradeForm**](../../models/ManualTradeForm.md) |  | 


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
200 | [ApiResponseFor200](#get_order_impact.ApiResponseFor200) | Return trade object and it&#x27;s impact on the account
400 | [ApiResponseFor400](#get_order_impact.ApiResponseFor400) | Missing or wrong data format provided in request body
403 | [ApiResponseFor403](#get_order_impact.ApiResponseFor403) | User does not have permissions to place trades
500 | [ApiResponseFor500](#get_order_impact.ApiResponseFor500) | Unexpected Error

#### get_order_impact.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ManualTradeAndImpact**](../../models/ManualTradeAndImpact.md) |  | 


#### get_order_impact.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### get_order_impact.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model403FailedRequestResponse**](../../models/Model403FailedRequestResponse.md) |  | 


#### get_order_impact.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_quotes**
<a name="get_user_account_quotes"></a>
> SymbolsQuotes get_user_account_quotes(user_iduser_secretsymbolsaccount_id)

Get symbol quotes

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Get symbol quotes
get_user_account_quotes_response = snaptrade.trading.get_user_account_quotes(
    path_params = {
        'accountId': "accountId_example",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
        'symbols': "symbols_example",
        'use_ticker': True,
    },
)
try:
    pprint(get_user_account_quotes_response.body["symbol"])
    pprint(get_user_account_quotes_response.body["bid_price"])
    pprint(get_user_account_quotes_response.body["ask_price"])
    pprint(get_user_account_quotes_response.body["last_trade_price"])
    pprint(get_user_account_quotes_response.body["bid_size"])
    pprint(get_user_account_quotes_response.body["ask_size"])
    pprint(get_user_account_quotes_response.headers)
    pprint(get_user_account_quotes_response.status)
except ApiException as e:
    print("Exception when calling SymbolsQuotes.get_user_account_quotes: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
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
symbols | SymbolsSchema | | 
use_ticker | UseTickerSchema | | optional


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

# SymbolsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# UseTickerSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | 

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
200 | [ApiResponseFor200](#get_user_account_quotes.ApiResponseFor200) | Returns quotes object with different prices
500 | [ApiResponseFor500](#get_user_account_quotes.ApiResponseFor500) | Unexpected error

#### get_user_account_quotes.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**SymbolsQuotes**](../../models/SymbolsQuotes.md) |  | 


#### get_user_account_quotes.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **modify_calculated_trade_by_id**
<a name="modify_calculated_trade_by_id"></a>
> Trade modify_calculated_trade_by_id(portfolio_group_idcalculated_trade_idtrade_id)

Modify units of a trade before it is placed

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Modify units of a trade before it is placed
modify_calculated_trade_by_id_response = snaptrade.trading.modify_calculated_trade_by_id(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'calculatedTradeId': "calculatedTradeId_example",
        'tradeId': "tradeId_example",
    },
    body = {
        "id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "action": "BUY",
        "units": 6,
        "price": 24.81,
        "sequence": 1,
    },
)
try:
    pprint(modify_calculated_trade_by_id_response.body["id"])
    pprint(modify_calculated_trade_by_id_response.body["account"])
    pprint(modify_calculated_trade_by_id_response.body["symbol"])
    pprint(modify_calculated_trade_by_id_response.body["universal_symbol"])
    pprint(modify_calculated_trade_by_id_response.body["action"])
    pprint(modify_calculated_trade_by_id_response.body["units"])
    pprint(modify_calculated_trade_by_id_response.body["price"])
    pprint(modify_calculated_trade_by_id_response.body["sequence"])
    pprint(modify_calculated_trade_by_id_response.headers)
    pprint(modify_calculated_trade_by_id_response.status)
except ApiException as e:
    print("Exception when calling Trade.modify_calculated_trade_by_id: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson, Unset] | optional, default is unset |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Trade**](../../models/Trade.md) |  | 


### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 
calculatedTradeId | CalculatedTradeIdSchema | | 
tradeId | TradeIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# CalculatedTradeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# TradeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#modify_calculated_trade_by_id.ApiResponseFor200) | Modified trade object

#### modify_calculated_trade_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Trade**](../../models/Trade.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_calculated_trades**
<a name="place_calculated_trades"></a>
> [TradeExecutionStatus] place_calculated_trades(portfolio_group_idcalculated_trade_id)

Place orders for the CalculatedTrades in series

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Place orders for the CalculatedTrades in series
place_calculated_trades_response = snaptrade.trading.place_calculated_trades(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'calculatedTradeId': "calculatedTradeId_example",
    },
)
try:
    pprint(place_calculated_trades_response.body["symbol"])
    pprint(place_calculated_trades_response.body["universal_symbol"])
    pprint(place_calculated_trades_response.body["trade"])
    pprint(place_calculated_trades_response.body["state"])
    pprint(place_calculated_trades_response.body["filled_units"])
    pprint(place_calculated_trades_response.body["action"])
    pprint(place_calculated_trades_response.body["price"])
    pprint(place_calculated_trades_response.body["commissions"])
    pprint(place_calculated_trades_response.body["meta"])
    pprint(place_calculated_trades_response.headers)
    pprint(place_calculated_trades_response.status)
except ApiException as e:
    print("Exception when calling TradeExecutionStatus.place_calculated_trades: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 
calculatedTradeId | CalculatedTradeIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# CalculatedTradeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#place_calculated_trades.ApiResponseFor200) | Return trade execution statuses for all trades submitted

#### place_calculated_trades.ApiResponseFor200
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
[**TradeExecutionStatus**](../../models/TradeExecutionStatus.md) | [**TradeExecutionStatus**](../../models/TradeExecutionStatus.md) | [**TradeExecutionStatus**](../../models/TradeExecutionStatus.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_force_order**
<a name="place_force_order"></a>
> AccountOrderRecord place_force_order(user_iduser_secretmanual_trade_form)

Place a trade with NO validation.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Place a trade with NO validation.
place_force_order_response = snaptrade.trading.place_force_order(
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = {
        "account_id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
        "action": "BUY",
        "order_type": "Limit",
        "price": 31.33,
        "stop": 31.33,
        "time_in_force": "Day",
        "universal_symbol_id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
)
try:
    pprint(place_force_order_response.body["brokerage_order_id"])
    pprint(place_force_order_response.body["status"])
    pprint(place_force_order_response.body["symbol"])
    pprint(place_force_order_response.body["universal_symbol"])
    pprint(place_force_order_response.body["action"])
    pprint(place_force_order_response.body["total_quantity"])
    pprint(place_force_order_response.body["open_quantity"])
    pprint(place_force_order_response.body["canceled_quantity"])
    pprint(place_force_order_response.body["filled_quantity"])
    pprint(place_force_order_response.body["execution_price"])
    pprint(place_force_order_response.body["limit_price"])
    pprint(place_force_order_response.body["stop_price"])
    pprint(place_force_order_response.body["order_type"])
    pprint(place_force_order_response.body["time_in_force"])
    pprint(place_force_order_response.body["time_placed"])
    pprint(place_force_order_response.body["time_updated"])
    pprint(place_force_order_response.body["expiry_date"])
    pprint(place_force_order_response.headers)
    pprint(place_force_order_response.status)
except ApiException as e:
    print("Exception when calling AccountOrderRecord.place_force_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
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
[**ManualTradeForm**](../../models/ManualTradeForm.md) |  | 


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
200 | [ApiResponseFor200](#place_force_order.ApiResponseFor200) | Trade sucessfully placed
400 | [ApiResponseFor400](#place_force_order.ApiResponseFor400) | Trade could not be placed
403 | [ApiResponseFor403](#place_force_order.ApiResponseFor403) | User does not have permissions to place trades
500 | [ApiResponseFor500](#place_force_order.ApiResponseFor500) | Unexpected Error

#### place_force_order.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountOrderRecord**](../../models/AccountOrderRecord.md) |  | 


#### place_force_order.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### place_force_order.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model403FailedRequestResponse**](../../models/Model403FailedRequestResponse.md) |  | 


#### place_force_order.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_oco_order**
<a name="place_oco_order"></a>
> AccountOrderRecord place_oco_order(user_iduser_secretany_type)

Place a OCO (One Cancels Other) order

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Place a OCO (One Cancels Other) order
place_oco_order_response = snaptrade.trading.place_oco_order(
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = {
    },
)
try:
    pprint(place_oco_order_response.body["brokerage_order_id"])
    pprint(place_oco_order_response.body["status"])
    pprint(place_oco_order_response.body["symbol"])
    pprint(place_oco_order_response.body["universal_symbol"])
    pprint(place_oco_order_response.body["action"])
    pprint(place_oco_order_response.body["total_quantity"])
    pprint(place_oco_order_response.body["open_quantity"])
    pprint(place_oco_order_response.body["canceled_quantity"])
    pprint(place_oco_order_response.body["filled_quantity"])
    pprint(place_oco_order_response.body["execution_price"])
    pprint(place_oco_order_response.body["limit_price"])
    pprint(place_oco_order_response.body["stop_price"])
    pprint(place_oco_order_response.body["order_type"])
    pprint(place_oco_order_response.body["time_in_force"])
    pprint(place_oco_order_response.body["time_placed"])
    pprint(place_oco_order_response.body["time_updated"])
    pprint(place_oco_order_response.body["expiry_date"])
    pprint(place_oco_order_response.headers)
    pprint(place_oco_order_response.status)
except ApiException as e:
    print("Exception when calling AccountOrderRecord.place_oco_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
query_params | RequestQueryParams | |
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
**first_trade_id** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | The ID of first trade object obtained from trade/impact endpoint | [optional] 
**second_trade_id** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | The ID of second trade object obtained from trade/impact endpoint | [optional] 
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

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#place_oco_order.ApiResponseFor200) | Status of order placed
400 | [ApiResponseFor400](#place_oco_order.ApiResponseFor400) | Failed to submit order to broker
500 | [ApiResponseFor500](#place_oco_order.ApiResponseFor500) | Unexpected Error

#### place_oco_order.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountOrderRecord**](../../models/AccountOrderRecord.md) |  | 


#### place_oco_order.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### place_oco_order.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_order**
<a name="place_order"></a>
> AccountOrderRecord place_order(trade_iduser_iduser_secret)

Place order

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade

snaptrade = SnapTrade(
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host = "https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

# Place order
place_order_response = snaptrade.trading.place_order(
    path_params = {
        'tradeId': "tradeId_example",
    },
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
)
try:
    pprint(place_order_response.body["brokerage_order_id"])
    pprint(place_order_response.body["status"])
    pprint(place_order_response.body["symbol"])
    pprint(place_order_response.body["universal_symbol"])
    pprint(place_order_response.body["action"])
    pprint(place_order_response.body["total_quantity"])
    pprint(place_order_response.body["open_quantity"])
    pprint(place_order_response.body["canceled_quantity"])
    pprint(place_order_response.body["filled_quantity"])
    pprint(place_order_response.body["execution_price"])
    pprint(place_order_response.body["limit_price"])
    pprint(place_order_response.body["stop_price"])
    pprint(place_order_response.body["order_type"])
    pprint(place_order_response.body["time_in_force"])
    pprint(place_order_response.body["time_placed"])
    pprint(place_order_response.body["time_updated"])
    pprint(place_order_response.body["expiry_date"])
    pprint(place_order_response.headers)
    pprint(place_order_response.status)
except ApiException as e:
    print("Exception when calling AccountOrderRecord.place_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
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
tradeId | TradeIdSchema | | 

# TradeIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#place_order.ApiResponseFor200) | Status of order placed
400 | [ApiResponseFor400](#place_order.ApiResponseFor400) | Failed to submit order to broker
500 | [ApiResponseFor500](#place_order.ApiResponseFor500) | Unexpected Error

#### place_order.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**AccountOrderRecord**](../../models/AccountOrderRecord.md) |  | 


#### place_order.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### place_order.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

