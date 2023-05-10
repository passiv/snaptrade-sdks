<a name="__pageTop"></a>
# snaptrade_client.apis.tags.reference_data_api.ReferenceDataApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_currency_exchange_rate_pair**](#get_currency_exchange_rate_pair) | **get** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
[**get_partner_info**](#get_partner_info) | **get** /snapTrade/partners | Get metadata related to Snaptrade partner
[**get_security_types**](#get_security_types) | **get** /securityTypes | List of all security types.
[**get_stock_exchanges**](#get_stock_exchanges) | **get** /exchanges | Return list of stock exchanges on Passiv and their suffixes
[**get_symbols**](#get_symbols) | **post** /symbols | Search for symbols
[**get_symbols_by_ticker**](#get_symbols_by_ticker) | **get** /symbols/{ticker} | Get details of a symbol by the ticker
[**list_all_brokerage_authorization_type**](#list_all_brokerage_authorization_type) | **get** /brokerageAuthorizationTypes | List of all brokerage authorization types
[**list_all_brokerages**](#list_all_brokerages) | **get** /brokerages | List of all brokerages.
[**list_all_currencies**](#list_all_currencies) | **get** /currencies | List of all supported currencies
[**list_all_currencies_rates**](#list_all_currencies_rates) | **get** /currencies/rates | Return the exchange rates of all supported currencies
[**symbol_search_user_account**](#symbol_search_user_account) | **post** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring

# **get_currency_exchange_rate_pair**

Return the exchange rate of a currency pair

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
    # Return the exchange rate of a currency pair
    get_currency_exchange_rate_pair_response = (
        snaptrade.reference_data.get_currency_exchange_rate_pair(
            currency_pair="currencyPair_example",  # required
        )
    )
    pprint(get_currency_exchange_rate_pair_response.body)
    pprint(get_currency_exchange_rate_pair_response.body["src"])
    pprint(get_currency_exchange_rate_pair_response.body["dst"])
    pprint(get_currency_exchange_rate_pair_response.body["exchange_rate"])
    pprint(get_currency_exchange_rate_pair_response.headers)
    pprint(get_currency_exchange_rate_pair_response.status)
    pprint(get_currency_exchange_rate_pair_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ReferenceDataApi.get_currency_exchange_rate_pair: %s\n"
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
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
currencyPair | CurrencyPairSchema | | 

# CurrencyPairSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_currency_exchange_rate_pair.ApiResponseFor200) | A list of all exchange rates pairs for supported currencies

#### get_currency_exchange_rate_pair.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ExchangeRatePairs**](../../models/ExchangeRatePairs.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_partner_info**

Get metadata related to Snaptrade partner

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
    # Get metadata related to Snaptrade partner
    get_partner_info_response = snaptrade.reference_data.get_partner_info()
    pprint(get_partner_info_response.body)
    pprint(get_partner_info_response.body["redirect_uri"])
    pprint(get_partner_info_response.body["allowed_brokerages"])
    pprint(get_partner_info_response.body["name"])
    pprint(get_partner_info_response.body["slug"])
    pprint(get_partner_info_response.body["logo_url"])
    pprint(get_partner_info_response.body["pin_required"])
    pprint(get_partner_info_response.body["can_access_trades"])
    pprint(get_partner_info_response.body["can_access_holdings"])
    pprint(get_partner_info_response.body["can_access_account_history"])
    pprint(get_partner_info_response.body["can_access_reference_data"])
    pprint(get_partner_info_response.body["can_access_portfolio_management"])
    pprint(get_partner_info_response.body["can_access_orders"])
    pprint(get_partner_info_response.headers)
    pprint(get_partner_info_response.status)
    pprint(get_partner_info_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.get_partner_info: %s\n" % e)
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
200 | [ApiResponseFor200](#get_partner_info.ApiResponseFor200) | Successfully obtained encrypted JWT data. See description on how to object JWT token
400 | [ApiResponseFor400](#get_partner_info.ApiResponseFor400) | Bad Request
401 | [ApiResponseFor401](#get_partner_info.ApiResponseFor401) | Unauthorized
404 | [ApiResponseFor404](#get_partner_info.ApiResponseFor404) | Not Found
500 | [ApiResponseFor500](#get_partner_info.ApiResponseFor500) | Unexpected Error

#### get_partner_info.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**PartnerData**](../../models/PartnerData.md) |  | 


#### get_partner_info.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model400FailedRequestResponse**](../../models/Model400FailedRequestResponse.md) |  | 


#### get_partner_info.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model401FailedRequestResponse**](../../models/Model401FailedRequestResponse.md) |  | 


#### get_partner_info.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Model404FailedRequestResponse**](../../models/Model404FailedRequestResponse.md) |  | 


#### get_partner_info.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_security_types**

List of all security types.

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
    # List of all security types.
    get_security_types_response = snaptrade.reference_data.get_security_types()
    pprint(get_security_types_response.body)
    pprint(get_security_types_response.body["id"])
    pprint(get_security_types_response.body["code"])
    pprint(get_security_types_response.body["description"])
    pprint(get_security_types_response.body["is_supported"])
    pprint(get_security_types_response.headers)
    pprint(get_security_types_response.status)
    pprint(get_security_types_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.get_security_types: %s\n" % e)
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
200 | [ApiResponseFor200](#get_security_types.ApiResponseFor200) | A list of all defined Security Type objects.
default | [ApiResponseForDefault](#get_security_types.ApiResponseForDefault) | Unexpected error.

#### get_security_types.ApiResponseFor200
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
[**SecurityType**](../../models/SecurityType.md) | [**SecurityType**](../../models/SecurityType.md) | [**SecurityType**](../../models/SecurityType.md) |  | 

#### get_security_types.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_stock_exchanges**

Return list of stock exchanges on Passiv and their suffixes

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
    # Return list of stock exchanges on Passiv and their suffixes
    get_stock_exchanges_response = snaptrade.reference_data.get_stock_exchanges()
    pprint(get_stock_exchanges_response.body)
    pprint(get_stock_exchanges_response.body["id"])
    pprint(get_stock_exchanges_response.body["code"])
    pprint(get_stock_exchanges_response.body["mic_code"])
    pprint(get_stock_exchanges_response.body["name"])
    pprint(get_stock_exchanges_response.body["timezone"])
    pprint(get_stock_exchanges_response.body["start_time"])
    pprint(get_stock_exchanges_response.body["close_time"])
    pprint(get_stock_exchanges_response.body["suffix"])
    pprint(get_stock_exchanges_response.headers)
    pprint(get_stock_exchanges_response.status)
    pprint(get_stock_exchanges_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.get_stock_exchanges: %s\n" % e)
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
200 | [ApiResponseFor200](#get_stock_exchanges.ApiResponseFor200) | A list of all supported stock exchanges

#### get_stock_exchanges.ApiResponseFor200
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
[**Exchange**](../../models/Exchange.md) | [**Exchange**](../../models/Exchange.md) | [**Exchange**](../../models/Exchange.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_symbols**

Search for symbols

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
    # Search for symbols
    get_symbols_response = snaptrade.reference_data.get_symbols(
        substring="apple",  # optional
    )
    pprint(get_symbols_response.body)
    pprint(get_symbols_response.body["id"])
    pprint(get_symbols_response.body["symbol"])
    pprint(get_symbols_response.body["raw_symbol"])
    pprint(get_symbols_response.body["description"])
    pprint(get_symbols_response.body["currency"])
    pprint(get_symbols_response.body["exchange"])
    pprint(get_symbols_response.body["type"])
    pprint(get_symbols_response.body["currencies"])
    pprint(get_symbols_response.headers)
    pprint(get_symbols_response.status)
    pprint(get_symbols_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.get_symbols: %s\n" % e)
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
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**SymbolQuery**](../../models/SymbolQuery.md) |  | 


### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_symbols.ApiResponseFor200) | A list of UniversalSymbol objects which match the specified substring
default | [ApiResponseForDefault](#get_symbols.ApiResponseForDefault) | Unexpected error.

#### get_symbols.ApiResponseFor200
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
[**UniversalSymbol**](../../models/UniversalSymbol.md) | [**UniversalSymbol**](../../models/UniversalSymbol.md) | [**UniversalSymbol**](../../models/UniversalSymbol.md) |  | 

#### get_symbols.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_symbols_by_ticker**

Get details of a symbol by the ticker

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
    # Get details of a symbol by the ticker
    get_symbols_by_ticker_response = snaptrade.reference_data.get_symbols_by_ticker(
        ticker="ticker_example",  # required
        symbol_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",  # optional
    )
    pprint(get_symbols_by_ticker_response.body)
    pprint(get_symbols_by_ticker_response.body["id"])
    pprint(get_symbols_by_ticker_response.body["symbol"])
    pprint(get_symbols_by_ticker_response.body["raw_symbol"])
    pprint(get_symbols_by_ticker_response.body["description"])
    pprint(get_symbols_by_ticker_response.body["currency"])
    pprint(get_symbols_by_ticker_response.body["exchange"])
    pprint(get_symbols_by_ticker_response.body["type"])
    pprint(get_symbols_by_ticker_response.body["currencies"])
    pprint(get_symbols_by_ticker_response.headers)
    pprint(get_symbols_by_ticker_response.status)
    pprint(get_symbols_by_ticker_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.get_symbols_by_ticker: %s\n" % e)
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
symbolId | SymbolIdSchema | | optional


# SymbolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ticker | TickerSchema | | 

# TickerSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_symbols_by_ticker.ApiResponseFor200) | Successfully gets a symbol
404 | [ApiResponseFor404](#get_symbols_by_ticker.ApiResponseFor404) | No symbol with the specified ticker found.
default | [ApiResponseForDefault](#get_symbols_by_ticker.ApiResponseForDefault) | Unexpected error

#### get_symbols_by_ticker.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBody, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBody
Type | Description  | Notes
------------- | ------------- | -------------
[**UniversalSymbol**](../../models/UniversalSymbol.md) |  | 


#### get_symbols_by_ticker.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### get_symbols_by_ticker.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_brokerage_authorization_type**

List of all brokerage authorization types

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
    # List of all brokerage authorization types
    list_all_brokerage_authorization_type_response = (
        snaptrade.reference_data.list_all_brokerage_authorization_type(
            brokerage="QUESTRADE,ALPACA",  # optional
        )
    )
    pprint(list_all_brokerage_authorization_type_response.body)
    pprint(list_all_brokerage_authorization_type_response.body["id"])
    pprint(list_all_brokerage_authorization_type_response.body["type"])
    pprint(list_all_brokerage_authorization_type_response.body["auth_type"])
    pprint(list_all_brokerage_authorization_type_response.body["brokerage"])
    pprint(list_all_brokerage_authorization_type_response.headers)
    pprint(list_all_brokerage_authorization_type_response.status)
    pprint(list_all_brokerage_authorization_type_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ReferenceDataApi.list_all_brokerage_authorization_type: %s\n"
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
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
brokerage | BrokerageSchema | | optional


# BrokerageSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#list_all_brokerage_authorization_type.ApiResponseFor200) | A list of all defined Brokerage Authorization Type objects.
default | [ApiResponseForDefault](#list_all_brokerage_authorization_type.ApiResponseForDefault) | Unexpected error.

#### list_all_brokerage_authorization_type.ApiResponseFor200
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
[**BrokerageAuthorizationTypeReadOnly**](../../models/BrokerageAuthorizationTypeReadOnly.md) | [**BrokerageAuthorizationTypeReadOnly**](../../models/BrokerageAuthorizationTypeReadOnly.md) | [**BrokerageAuthorizationTypeReadOnly**](../../models/BrokerageAuthorizationTypeReadOnly.md) |  | 

#### list_all_brokerage_authorization_type.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_brokerages**

List of all brokerages.

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
    # List of all brokerages.
    list_all_brokerages_response = snaptrade.reference_data.list_all_brokerages()
    pprint(list_all_brokerages_response.body)
    pprint(list_all_brokerages_response.body["id"])
    pprint(list_all_brokerages_response.body["name"])
    pprint(list_all_brokerages_response.body["display_name"])
    pprint(list_all_brokerages_response.body["description"])
    pprint(list_all_brokerages_response.body["aws_s3_logo_url"])
    pprint(list_all_brokerages_response.body["slug"])
    pprint(list_all_brokerages_response.body["url"])
    pprint(list_all_brokerages_response.body["enabled"])
    pprint(list_all_brokerages_response.body["maintenance_mode"])
    pprint(list_all_brokerages_response.body["allows_fractional_units"])
    pprint(list_all_brokerages_response.body["allows_trading"])
    pprint(list_all_brokerages_response.body["has_reporting"])
    pprint(list_all_brokerages_response.body["is_real_time_connection"])
    pprint(list_all_brokerages_response.body["allows_trading_through_snaptrade_api"])
    pprint(list_all_brokerages_response.body["is_scraping_integration"])
    pprint(list_all_brokerages_response.body["default_currency"])
    pprint(list_all_brokerages_response.body["brokerage_type"])
    pprint(list_all_brokerages_response.body["exchanges"])
    pprint(list_all_brokerages_response.headers)
    pprint(list_all_brokerages_response.status)
    pprint(list_all_brokerages_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.list_all_brokerages: %s\n" % e)
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
200 | [ApiResponseFor200](#list_all_brokerages.ApiResponseFor200) | A list of all defined Brokerage objects.
default | [ApiResponseForDefault](#list_all_brokerages.ApiResponseForDefault) | Unexpected error.

#### list_all_brokerages.ApiResponseFor200
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
[**Brokerage**](../../models/Brokerage.md) | [**Brokerage**](../../models/Brokerage.md) | [**Brokerage**](../../models/Brokerage.md) |  | 

#### list_all_brokerages.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_currencies**

List of all supported currencies

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
    # List of all supported currencies
    list_all_currencies_response = snaptrade.reference_data.list_all_currencies()
    pprint(list_all_currencies_response.body)
    pprint(list_all_currencies_response.body["id"])
    pprint(list_all_currencies_response.body["code"])
    pprint(list_all_currencies_response.body["name"])
    pprint(list_all_currencies_response.headers)
    pprint(list_all_currencies_response.status)
    pprint(list_all_currencies_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.list_all_currencies: %s\n" % e)
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
200 | [ApiResponseFor200](#list_all_currencies.ApiResponseFor200) | A list of all supported currencies.
default | [ApiResponseForDefault](#list_all_currencies.ApiResponseForDefault) | Unexpected error.

#### list_all_currencies.ApiResponseFor200
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
[**Currency**](../../models/Currency.md) | [**Currency**](../../models/Currency.md) | [**Currency**](../../models/Currency.md) |  | 

#### list_all_currencies.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_currencies_rates**

Return the exchange rates of all supported currencies

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
    # Return the exchange rates of all supported currencies
    list_all_currencies_rates_response = (
        snaptrade.reference_data.list_all_currencies_rates()
    )
    pprint(list_all_currencies_rates_response.body)
    pprint(list_all_currencies_rates_response.body["src"])
    pprint(list_all_currencies_rates_response.body["dst"])
    pprint(list_all_currencies_rates_response.body["exchange_rate"])
    pprint(list_all_currencies_rates_response.headers)
    pprint(list_all_currencies_rates_response.status)
    pprint(list_all_currencies_rates_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ReferenceDataApi.list_all_currencies_rates: %s\n" % e)
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
200 | [ApiResponseFor200](#list_all_currencies_rates.ApiResponseFor200) | A list of all exchange rates pairs for supported currencies

#### list_all_currencies_rates.ApiResponseFor200
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
[**ExchangeRatePairs**](../../models/ExchangeRatePairs.md) | [**ExchangeRatePairs**](../../models/ExchangeRatePairs.md) | [**ExchangeRatePairs**](../../models/ExchangeRatePairs.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **symbol_search_user_account**

Search for symbols that are supported by a brokerage account using a substring

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
    # Search for symbols that are supported by a brokerage account using a substring
    symbol_search_user_account_response = (
        snaptrade.reference_data.symbol_search_user_account(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
            substring="apple",  # optional
        )
    )
    pprint(symbol_search_user_account_response.body)
    pprint(symbol_search_user_account_response.body["id"])
    pprint(symbol_search_user_account_response.body["symbol"])
    pprint(symbol_search_user_account_response.body["raw_symbol"])
    pprint(symbol_search_user_account_response.body["description"])
    pprint(symbol_search_user_account_response.body["currency"])
    pprint(symbol_search_user_account_response.body["exchange"])
    pprint(symbol_search_user_account_response.body["type"])
    pprint(symbol_search_user_account_response.body["currencies"])
    pprint(symbol_search_user_account_response.headers)
    pprint(symbol_search_user_account_response.status)
    pprint(symbol_search_user_account_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ReferenceDataApi.symbol_search_user_account: %s\n" % e
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
body | typing.Union[SchemaForRequestBodyApplicationJson, Unset] | optional, default is unset |
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('*/*', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**SymbolQuery**](../../models/SymbolQuery.md) |  | 


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
200 | [ApiResponseFor200](#symbol_search_user_account.ApiResponseFor200) | Array of universal symbol supported by account based on substring sent it
default | [ApiResponseForDefault](#symbol_search_user_account.ApiResponseForDefault) | Unexpected error

#### symbol_search_user_account.ApiResponseFor200
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
[**UniversalSymbol**](../../models/UniversalSymbol.md) | [**UniversalSymbol**](../../models/UniversalSymbol.md) | [**UniversalSymbol**](../../models/UniversalSymbol.md) |  | 

#### symbol_search_user_account.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

