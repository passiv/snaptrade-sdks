<a name="__pageTop"></a>
# snaptrade_client.apis.tags.portfolio_management_api.PortfolioManagementApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_portfolio_excluded_asset**](#add_portfolio_excluded_asset) | **post** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group
[**create**](#create) | **post** /portfolioGroups | Create new portfolio group
[**create_asset_class**](#create_asset_class) | **post** /modelAssetClass | Create a new model asset class
[**create_model_portfolio**](#create_model_portfolio) | **post** /modelPortfolio | Creates a new model portfolio
[**delete_asset_class**](#delete_asset_class) | **delete** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class
[**delete_excluded_asset**](#delete_excluded_asset) | **delete** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group
[**delete_model_portfolio_by_id**](#delete_model_portfolio_by_id) | **delete** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio
[**delete_portfoli**](#delete_portfoli) | **delete** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio.
[**delete_portfolio_target_by_id**](#delete_portfolio_target_by_id) | **delete** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset.
[**detail_asset_class**](#detail_asset_class) | **get** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class
[**get_calculated_trade_by_id**](#get_calculated_trade_by_id) | **get** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade
[**get_model_details_by_id**](#get_model_details_by_id) | **get** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio
[**get_portfolio_balances**](#get_portfolio_balances) | **get** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group
[**get_portfolio_details_by_id**](#get_portfolio_details_by_id) | **get** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio
[**get_portfolio_info**](#get_portfolio_info) | **get** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group.
[**get_portfolio_settings**](#get_portfolio_settings) | **get** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings
[**get_portfolio_target_by_id**](#get_portfolio_target_by_id) | **get** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group
[**get_portfolio_targets**](#get_portfolio_targets) | **get** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup.
[**get_portoflio_excluded_assets**](#get_portoflio_excluded_assets) | **get** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\
[**import_model_portfolio**](#import_model_portfolio) | **post** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group
[**list**](#list) | **get** /portfolioGroups | List all portfolio groups
[**list_asset_classes**](#list_asset_classes) | **get** /modelAssetClass | List of model asset class
[**list_calculated_trades**](#list_calculated_trades) | **get** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group
[**list_model_portfolio**](#list_model_portfolio) | **get** /modelPortfolio | List of model portfolio
[**list_portfolio_accounts**](#list_portfolio_accounts) | **get** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group
[**modify_model_portfolio_by_id**](#modify_model_portfolio_by_id) | **post** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object
[**save_portfolio**](#save_portfolio) | **patch** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio.
[**search_portfolio_symbols**](#search_portfolio_symbols) | **post** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group
[**set_portfolio_targets**](#set_portfolio_targets) | **post** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
[**update_asset_class**](#update_asset_class) | **post** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects
[**update_portfolio_settings**](#update_portfolio_settings) | **patch** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings
[**update_portfolio_target_by_id**](#update_portfolio_target_by_id) | **patch** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup.

# **add_portfolio_excluded_asset**

Adds an asset to exclude to a portfolio group

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
    # Adds an asset to exclude to a portfolio group
    add_portfolio_excluded_asset_response = (
        snaptrade.portfolio_management.add_portfolio_excluded_asset(
            portfolio_group_id="portfolioGroupId_example",  # required
            id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
            symbol="VAB.TO",  # optional
            raw_symbol="VAB",  # optional
            description="VANGUARD CDN AGGREGATE BOND INDEX ETF",  # optional
            currency={
                "id": "87b24961-b51e-4db8-9226-f198f6518a89",
                "code": "USD",
                "name": "US Dollar",
            },  # optional
            exchange={
                "id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
                "code": "TSX",
                "mic_code": "XTSE",
                "name": "Toronto Stock Exchange",
                "timezone": "America/New_York",
                "start_time": "09:30:00",
                "close_time": "57600",
                "suffix": ".TO",
            },  # optional
            type={
                "id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
                "code": "cs",
                "description": "Common Stock",
                "is_supported": True,
            },  # optional
            currencies=[
                {
                    "id": "87b24961-b51e-4db8-9226-f198f6518a89",
                    "code": "USD",
                    "name": "US Dollar",
                }
            ],  # optional
        )
    )
    pprint(add_portfolio_excluded_asset_response.body)
    pprint(add_portfolio_excluded_asset_response.body["symbol"])
    pprint(add_portfolio_excluded_asset_response.headers)
    pprint(add_portfolio_excluded_asset_response.status)
    pprint(add_portfolio_excluded_asset_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.add_portfolio_excluded_asset: %s\n"
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
[**UniversalSymbol**](../../models/UniversalSymbol.md) |  | 


### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#add_portfolio_excluded_asset.ApiResponseFor200) | An asset is excluded from calculations in portfolio group.

#### add_portfolio_excluded_asset.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ExcludedAsset**](../../models/ExcludedAsset.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **create**

Create new portfolio group

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
    # Create new portfolio group
    create_response = snaptrade.portfolio_management.create(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
        name="Combined Retirement Portfolio",  # optional
    )
    pprint(create_response.body)
    pprint(create_response.body["id"])
    pprint(create_response.body["name"])
    pprint(create_response.headers)
    pprint(create_response.status)
    pprint(create_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.create: %s\n" % e)
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
[**PortfolioGroup**](../../models/PortfolioGroup.md) |  | 


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
200 | [ApiResponseFor200](#create.ApiResponseFor200) | A new PortfolioGroup is created.
400 | [ApiResponseFor400](#create.ApiResponseFor400) | The input data is missing or invalid.
default | [ApiResponseForDefault](#create.ApiResponseForDefault) | Unexpected error.

#### create.ApiResponseFor200
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
[**PortfolioGroup**](../../models/PortfolioGroup.md) | [**PortfolioGroup**](../../models/PortfolioGroup.md) | [**PortfolioGroup**](../../models/PortfolioGroup.md) |  | 

#### create.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### create.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **create_asset_class**

Create a new model asset class

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
    # Create a new model asset class
    create_asset_class_response = snaptrade.portfolio_management.create_asset_class(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(create_asset_class_response.body)
    pprint(create_asset_class_response.body["model_asset_class"])
    pprint(create_asset_class_response.body["model_asset_class_target"])
    pprint(create_asset_class_response.headers)
    pprint(create_asset_class_response.status)
    pprint(create_asset_class_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.create_asset_class: %s\n" % e)
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
200 | [ApiResponseFor200](#create_asset_class.ApiResponseFor200) | A new asset class is created.

#### create_asset_class.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ModelAssetClassDetails**](../../models/ModelAssetClassDetails.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **create_model_portfolio**

Creates a new model portfolio

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
    # Creates a new model portfolio
    create_model_portfolio_response = (
        snaptrade.portfolio_management.create_model_portfolio()
    )
    pprint(create_model_portfolio_response.body)
    pprint(create_model_portfolio_response.body["model_portfolio"])
    pprint(create_model_portfolio_response.body["model_portfolio_security"])
    pprint(create_model_portfolio_response.body["model_portfolio_asset_class"])
    pprint(create_model_portfolio_response.headers)
    pprint(create_model_portfolio_response.status)
    pprint(create_model_portfolio_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.create_model_portfolio: %s\n" % e
    )
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
200 | [ApiResponseFor200](#create_model_portfolio.ApiResponseFor200) | A new model portfolio is created.

#### create_model_portfolio.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ModelPortfolioDetails**](../../models/ModelPortfolioDetails.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **delete_asset_class**

Deletes a model asset class

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
    # Deletes a model asset class
    snaptrade.portfolio_management.delete_asset_class(
        model_asset_class_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
    )
    pprint(delete_asset_class_response.headers)
    pprint(delete_asset_class_response.status)
    pprint(delete_asset_class_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.delete_asset_class: %s\n" % e)
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
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
modelAssetClassId | ModelAssetClassIdSchema | | 

# ModelAssetClassIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
204 | [ApiResponseFor204](#delete_asset_class.ApiResponseFor204) | No content

#### delete_asset_class.ApiResponseFor204
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **delete_excluded_asset**

Unexclude an asset from a portfolio group

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
    # Unexclude an asset from a portfolio group
    snaptrade.portfolio_management.delete_excluded_asset(
        portfolio_group_id="portfolioGroupId_example",  # required
        symbol_id="symbolId_example",  # required
    )
    pprint(delete_excluded_asset_response.headers)
    pprint(delete_excluded_asset_response.status)
    pprint(delete_excluded_asset_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.delete_excluded_asset: %s\n" % e
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
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 
symbolId | SymbolIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# SymbolIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#delete_excluded_asset.ApiResponseFor200) | Excluded asset deleted

#### delete_excluded_asset.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **delete_model_portfolio_by_id**

Deletes a model portfolio

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
    # Deletes a model portfolio
    snaptrade.portfolio_management.delete_model_portfolio_by_id(
        model_portfolio_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
    )
    pprint(delete_model_portfolio_by_id_response.headers)
    pprint(delete_model_portfolio_by_id_response.status)
    pprint(delete_model_portfolio_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.delete_model_portfolio_by_id: %s\n"
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
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
modelPortfolioId | ModelPortfolioIdSchema | | 

# ModelPortfolioIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
204 | [ApiResponseFor204](#delete_model_portfolio_by_id.ApiResponseFor204) | No content

#### delete_model_portfolio_by_id.ApiResponseFor204
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **delete_portfoli**

Remove a target portfolio.

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
    # Remove a target portfolio.
    delete_portfoli_response = snaptrade.portfolio_management.delete_portfoli(
        portfolio_group_id="portfolioGroupId_example",  # required
    )
    pprint(delete_portfoli_response.body)
    pprint(delete_portfoli_response.body["id"])
    pprint(delete_portfoli_response.body["name"])
    pprint(delete_portfoli_response.headers)
    pprint(delete_portfoli_response.status)
    pprint(delete_portfoli_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.delete_portfoli: %s\n" % e)
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#delete_portfoli.ApiResponseFor200) | The PortfolioGroup object which was deleted.
400 | [ApiResponseFor400](#delete_portfoli.ApiResponseFor400) | The specified portfolioGroupId is invalid (not a UUID string).
404 | [ApiResponseFor404](#delete_portfoli.ApiResponseFor404) | The specified portfolioGroupId was not found.
default | [ApiResponseForDefault](#delete_portfoli.ApiResponseForDefault) | Unexpected error.

#### delete_portfoli.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**PortfolioGroup**](../../models/PortfolioGroup.md) |  | 


#### delete_portfoli.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### delete_portfoli.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### delete_portfoli.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **delete_portfolio_target_by_id**

Remove a TargetAsset.

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
    # Remove a TargetAsset.
    delete_portfolio_target_by_id_response = (
        snaptrade.portfolio_management.delete_portfolio_target_by_id(
            portfolio_group_id="portfolioGroupId_example",  # required
            target_asset_id="targetAssetId_example",  # required
        )
    )
    pprint(delete_portfolio_target_by_id_response.body)
    pprint(delete_portfolio_target_by_id_response.body["id"])
    pprint(delete_portfolio_target_by_id_response.body["symbol"])
    pprint(delete_portfolio_target_by_id_response.body["percent"])
    pprint(delete_portfolio_target_by_id_response.body["is_supported"])
    pprint(delete_portfolio_target_by_id_response.body["is_excluded"])
    pprint(delete_portfolio_target_by_id_response.body["meta"])
    pprint(delete_portfolio_target_by_id_response.headers)
    pprint(delete_portfolio_target_by_id_response.status)
    pprint(delete_portfolio_target_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.delete_portfolio_target_by_id: %s\n"
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
portfolioGroupId | PortfolioGroupIdSchema | | 
targetAssetId | TargetAssetIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# TargetAssetIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#delete_portfolio_target_by_id.ApiResponseFor200) | The TargetAsset object which was deleted.
400 | [ApiResponseFor400](#delete_portfolio_target_by_id.ApiResponseFor400) | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid.
404 | [ApiResponseFor404](#delete_portfolio_target_by_id.ApiResponseFor404) | The specified portfolioGroupId or targetAssetId was not found.
default | [ApiResponseForDefault](#delete_portfolio_target_by_id.ApiResponseForDefault) | Unexpected error.

#### delete_portfolio_target_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**TargetAsset**](../../models/TargetAsset.md) |  | 


#### delete_portfolio_target_by_id.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### delete_portfolio_target_by_id.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### delete_portfolio_target_by_id.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **detail_asset_class**

Get details of a model asset class

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
    # Get details of a model asset class
    detail_asset_class_response = snaptrade.portfolio_management.detail_asset_class(
        model_asset_class_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(detail_asset_class_response.body)
    pprint(detail_asset_class_response.body["model_asset_class"])
    pprint(detail_asset_class_response.body["model_asset_class_target"])
    pprint(detail_asset_class_response.headers)
    pprint(detail_asset_class_response.status)
    pprint(detail_asset_class_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.detail_asset_class: %s\n" % e)
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
modelAssetClassId | ModelAssetClassIdSchema | | 

# ModelAssetClassIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#detail_asset_class.ApiResponseFor200) | Details of a particular model asset class

#### detail_asset_class.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ModelAssetClassDetails**](../../models/ModelAssetClassDetails.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_calculated_trade_by_id**

Return an individual trade

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
    # Return an individual trade
    get_calculated_trade_by_id_response = (
        snaptrade.portfolio_management.get_calculated_trade_by_id(
            portfolio_group_id="portfolioGroupId_example",  # required
            calculated_trade_id="calculatedTradeId_example",  # required
            trade_id="TradeId_example",  # required
        )
    )
    pprint(get_calculated_trade_by_id_response.body)
    pprint(get_calculated_trade_by_id_response.body["id"])
    pprint(get_calculated_trade_by_id_response.body["account"])
    pprint(get_calculated_trade_by_id_response.body["symbol"])
    pprint(get_calculated_trade_by_id_response.body["universal_symbol"])
    pprint(get_calculated_trade_by_id_response.body["action"])
    pprint(get_calculated_trade_by_id_response.body["units"])
    pprint(get_calculated_trade_by_id_response.body["price"])
    pprint(get_calculated_trade_by_id_response.body["sequence"])
    pprint(get_calculated_trade_by_id_response.headers)
    pprint(get_calculated_trade_by_id_response.status)
    pprint(get_calculated_trade_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_calculated_trade_by_id: %s\n"
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
portfolioGroupId | PortfolioGroupIdSchema | | 
calculatedTradeId | CalculatedTradeIdSchema | | 
TradeId | TradeIdSchema | | 

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
200 | [ApiResponseFor200](#get_calculated_trade_by_id.ApiResponseFor200) | Trade objects

#### get_calculated_trade_by_id.ApiResponseFor200
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
[**Trade**](../../models/Trade.md) | [**Trade**](../../models/Trade.md) | [**Trade**](../../models/Trade.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_model_details_by_id**

Get details of a model portfolio

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
    # Get details of a model portfolio
    get_model_details_by_id_response = (
        snaptrade.portfolio_management.get_model_details_by_id(
            model_portfolio_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
        )
    )
    pprint(get_model_details_by_id_response.body)
    pprint(get_model_details_by_id_response.body["model_portfolio"])
    pprint(get_model_details_by_id_response.body["model_portfolio_security"])
    pprint(get_model_details_by_id_response.body["model_portfolio_asset_class"])
    pprint(get_model_details_by_id_response.headers)
    pprint(get_model_details_by_id_response.status)
    pprint(get_model_details_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_model_details_by_id: %s\n"
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
modelPortfolioId | ModelPortfolioIdSchema | | 

# ModelPortfolioIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_model_details_by_id.ApiResponseFor200) | Details of a particular model portfolio.

#### get_model_details_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ModelPortfolioDetails**](../../models/ModelPortfolioDetails.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portfolio_balances**

Get sum of cash balances in portfolio group

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
    # Get sum of cash balances in portfolio group
    get_portfolio_balances_response = (
        snaptrade.portfolio_management.get_portfolio_balances(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(get_portfolio_balances_response.body)
    pprint(get_portfolio_balances_response.body["currency"])
    pprint(get_portfolio_balances_response.body["cash"])
    pprint(get_portfolio_balances_response.headers)
    pprint(get_portfolio_balances_response.status)
    pprint(get_portfolio_balances_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_portfolio_balances: %s\n" % e
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_portfolio_balances.ApiResponseFor200) | Sum of cash balances across accounts in portfolio group by currency
400 | [ApiResponseFor400](#get_portfolio_balances.ApiResponseFor400) | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid.
404 | [ApiResponseFor404](#get_portfolio_balances.ApiResponseFor404) | The specified portfolioGroupId was not found.
default | [ApiResponseForDefault](#get_portfolio_balances.ApiResponseForDefault) | Unexpected error.

#### get_portfolio_balances.ApiResponseFor200
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
[**Balance**](../../models/Balance.md) | [**Balance**](../../models/Balance.md) | [**Balance**](../../models/Balance.md) |  | 

#### get_portfolio_balances.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### get_portfolio_balances.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### get_portfolio_balances.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portfolio_details_by_id**

Get details of a target portfolio

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
    # Get details of a target portfolio
    get_portfolio_details_by_id_response = (
        snaptrade.portfolio_management.get_portfolio_details_by_id(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(get_portfolio_details_by_id_response.body)
    pprint(get_portfolio_details_by_id_response.body["id"])
    pprint(get_portfolio_details_by_id_response.body["name"])
    pprint(get_portfolio_details_by_id_response.headers)
    pprint(get_portfolio_details_by_id_response.status)
    pprint(get_portfolio_details_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_portfolio_details_by_id: %s\n"
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
accept_content_types | typing.Tuple[str] | default is ('*/*', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_portfolio_details_by_id.ApiResponseFor200) | Successfully gets a target portfolio
default | [ApiResponseForDefault](#get_portfolio_details_by_id.ApiResponseForDefault) | Unexpected error

#### get_portfolio_details_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBody, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBody
Type | Description  | Notes
------------- | ------------- | -------------
[**PortfolioGroup**](../../models/PortfolioGroup.md) |  | 


#### get_portfolio_details_by_id.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portfolio_info**

Return a whole bunch of relevant information relating to a portfolio group.

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
    # Return a whole bunch of relevant information relating to a portfolio group.
    get_portfolio_info_response = snaptrade.portfolio_management.get_portfolio_info(
        portfolio_group_id="portfolioGroupId_example",  # required
    )
    pprint(get_portfolio_info_response.body)
    pprint(get_portfolio_info_response.body["symbols"])
    pprint(get_portfolio_info_response.body["quotable_symbols"])
    pprint(get_portfolio_info_response.body["balances"])
    pprint(get_portfolio_info_response.body["positions"])
    pprint(get_portfolio_info_response.body["target_positions"])
    pprint(get_portfolio_info_response.body["ideal_positions"])
    pprint(get_portfolio_info_response.body["excluded_positions"])
    pprint(get_portfolio_info_response.body["calculated_trades"])
    pprint(get_portfolio_info_response.body["brokerage_authorizations"])
    pprint(get_portfolio_info_response.body["accuracy"])
    pprint(get_portfolio_info_response.body["settings"])
    pprint(get_portfolio_info_response.headers)
    pprint(get_portfolio_info_response.status)
    pprint(get_portfolio_info_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.get_portfolio_info: %s\n" % e)
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_portfolio_info.ApiResponseFor200) | Portfolio group target allocation has been updated
default | [ApiResponseForDefault](#get_portfolio_info.ApiResponseForDefault) | Unexpected error.

#### get_portfolio_info.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**PortfolioGroupInfo**](../../models/PortfolioGroupInfo.md) |  | 


#### get_portfolio_info.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portfolio_settings**

Get portfolio group settings

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
    # Get portfolio group settings
    get_portfolio_settings_response = (
        snaptrade.portfolio_management.get_portfolio_settings(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(get_portfolio_settings_response.body)
    pprint(get_portfolio_settings_response.body["buy_only"])
    pprint(get_portfolio_settings_response.body["cash_optimizer"])
    pprint(get_portfolio_settings_response.body["notify_frequency"])
    pprint(get_portfolio_settings_response.body["drift_threshold"])
    pprint(get_portfolio_settings_response.body["preferred_currency"])
    pprint(get_portfolio_settings_response.headers)
    pprint(get_portfolio_settings_response.status)
    pprint(get_portfolio_settings_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_portfolio_settings: %s\n" % e
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_portfolio_settings.ApiResponseFor200) | Settings of portfolio group
default | [ApiResponseForDefault](#get_portfolio_settings.ApiResponseForDefault) | Unexpected error

#### get_portfolio_settings.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**PortfolioGroupSettings**](../../models/PortfolioGroupSettings.md) |  | 


#### get_portfolio_settings.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portfolio_target_by_id**

Get a specific target from a portfolio group

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
    # Get a specific target from a portfolio group
    get_portfolio_target_by_id_response = (
        snaptrade.portfolio_management.get_portfolio_target_by_id(
            portfolio_group_id="portfolioGroupId_example",  # required
            target_asset_id="targetAssetId_example",  # required
        )
    )
    pprint(get_portfolio_target_by_id_response.body)
    pprint(get_portfolio_target_by_id_response.body["id"])
    pprint(get_portfolio_target_by_id_response.body["symbol"])
    pprint(get_portfolio_target_by_id_response.body["percent"])
    pprint(get_portfolio_target_by_id_response.body["is_supported"])
    pprint(get_portfolio_target_by_id_response.body["is_excluded"])
    pprint(get_portfolio_target_by_id_response.body["meta"])
    pprint(get_portfolio_target_by_id_response.headers)
    pprint(get_portfolio_target_by_id_response.status)
    pprint(get_portfolio_target_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_portfolio_target_by_id: %s\n"
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
accept_content_types | typing.Tuple[str] | default is ('*/*', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 
targetAssetId | TargetAssetIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# TargetAssetIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_portfolio_target_by_id.ApiResponseFor200) | Successfully get target asset.
default | [ApiResponseForDefault](#get_portfolio_target_by_id.ApiResponseForDefault) | Unexpected errors

#### get_portfolio_target_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBody, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBody
Type | Description  | Notes
------------- | ------------- | -------------
[**TargetAsset**](../../models/TargetAsset.md) |  | 


#### get_portfolio_target_by_id.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portfolio_targets**

Get all target assets under the specified PortfolioGroup.

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
    # Get all target assets under the specified PortfolioGroup.
    get_portfolio_targets_response = (
        snaptrade.portfolio_management.get_portfolio_targets(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(get_portfolio_targets_response.body)
    pprint(get_portfolio_targets_response.body["id"])
    pprint(get_portfolio_targets_response.body["symbol"])
    pprint(get_portfolio_targets_response.body["percent"])
    pprint(get_portfolio_targets_response.body["is_supported"])
    pprint(get_portfolio_targets_response.body["is_excluded"])
    pprint(get_portfolio_targets_response.body["meta"])
    pprint(get_portfolio_targets_response.headers)
    pprint(get_portfolio_targets_response.status)
    pprint(get_portfolio_targets_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_portfolio_targets: %s\n" % e
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_portfolio_targets.ApiResponseFor200) | All target assets owned by the specified PortfolioGroup.
400 | [ApiResponseFor400](#get_portfolio_targets.ApiResponseFor400) | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid.
404 | [ApiResponseFor404](#get_portfolio_targets.ApiResponseFor404) | The specified portfolioGroupId was not found.
default | [ApiResponseForDefault](#get_portfolio_targets.ApiResponseForDefault) | Unexpected error.

#### get_portfolio_targets.ApiResponseFor200
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
[**TargetAsset**](../../models/TargetAsset.md) | [**TargetAsset**](../../models/TargetAsset.md) | [**TargetAsset**](../../models/TargetAsset.md) |  | 

#### get_portfolio_targets.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### get_portfolio_targets.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### get_portfolio_targets.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portoflio_excluded_assets**

Get an array of excluded assets associated with a portfolio group\\

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
    # Get an array of excluded assets associated with a portfolio group\\
    get_portoflio_excluded_assets_response = (
        snaptrade.portfolio_management.get_portoflio_excluded_assets(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(get_portoflio_excluded_assets_response.body)
    pprint(get_portoflio_excluded_assets_response.body["symbol"])
    pprint(get_portoflio_excluded_assets_response.headers)
    pprint(get_portoflio_excluded_assets_response.status)
    pprint(get_portoflio_excluded_assets_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.get_portoflio_excluded_assets: %s\n"
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#get_portoflio_excluded_assets.ApiResponseFor200) | Array of excluded assets linked to portfolio group
default | [ApiResponseForDefault](#get_portoflio_excluded_assets.ApiResponseForDefault) | Unexpected error

#### get_portoflio_excluded_assets.ApiResponseFor200
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
[**ExcludedAsset**](../../models/ExcludedAsset.md) | [**ExcludedAsset**](../../models/ExcludedAsset.md) | [**ExcludedAsset**](../../models/ExcludedAsset.md) |  | 

#### get_portoflio_excluded_assets.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **import_model_portfolio**

Import target allocation based on portfolio group

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
    # Import target allocation based on portfolio group
    import_model_portfolio_response = (
        snaptrade.portfolio_management.import_model_portfolio(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(import_model_portfolio_response.body)
    pprint(import_model_portfolio_response.body["id"])
    pprint(import_model_portfolio_response.body["symbol"])
    pprint(import_model_portfolio_response.body["percent"])
    pprint(import_model_portfolio_response.body["is_supported"])
    pprint(import_model_portfolio_response.body["is_excluded"])
    pprint(import_model_portfolio_response.body["meta"])
    pprint(import_model_portfolio_response.headers)
    pprint(import_model_portfolio_response.status)
    pprint(import_model_portfolio_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.import_model_portfolio: %s\n" % e
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#import_model_portfolio.ApiResponseFor200) | Portfolio group target allocation has been updated
default | [ApiResponseForDefault](#import_model_portfolio.ApiResponseForDefault) | Unexpected error.

#### import_model_portfolio.ApiResponseFor200
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
[**TargetAsset**](../../models/TargetAsset.md) | [**TargetAsset**](../../models/TargetAsset.md) | [**TargetAsset**](../../models/TargetAsset.md) |  | 

#### import_model_portfolio.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list**

List all portfolio groups

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
    # List all portfolio groups
    list_response = snaptrade.portfolio_management.list(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(list_response.body)
    pprint(list_response.body["id"])
    pprint(list_response.body["name"])
    pprint(list_response.headers)
    pprint(list_response.status)
    pprint(list_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.list: %s\n" % e)
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
200 | [ApiResponseFor200](#list.ApiResponseFor200) | A list of all PortfolioGroup objects for the authenticated user.
default | [ApiResponseForDefault](#list.ApiResponseForDefault) | Unexpected error.

#### list.ApiResponseFor200
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
[**PortfolioGroup**](../../models/PortfolioGroup.md) | [**PortfolioGroup**](../../models/PortfolioGroup.md) | [**PortfolioGroup**](../../models/PortfolioGroup.md) |  | 

#### list.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_asset_classes**

List of model asset class

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
    # List of model asset class
    list_asset_classes_response = snaptrade.portfolio_management.list_asset_classes(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(list_asset_classes_response.body)
    pprint(list_asset_classes_response.body["model_asset_class"])
    pprint(list_asset_classes_response.body["model_asset_class_target"])
    pprint(list_asset_classes_response.headers)
    pprint(list_asset_classes_response.status)
    pprint(list_asset_classes_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.list_asset_classes: %s\n" % e)
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
200 | [ApiResponseFor200](#list_asset_classes.ApiResponseFor200) | A list of all model asset class objects for the authenticated user.

#### list_asset_classes.ApiResponseFor200
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
[**ModelAssetClassDetails**](../../models/ModelAssetClassDetails.md) | [**ModelAssetClassDetails**](../../models/ModelAssetClassDetails.md) | [**ModelAssetClassDetails**](../../models/ModelAssetClassDetails.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_calculated_trades**

List of trades to make to rebalance portfolio group

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
    # List of trades to make to rebalance portfolio group
    list_calculated_trades_response = (
        snaptrade.portfolio_management.list_calculated_trades(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(list_calculated_trades_response.body)
    pprint(list_calculated_trades_response.body["id"])
    pprint(list_calculated_trades_response.body["trades"])
    pprint(list_calculated_trades_response.headers)
    pprint(list_calculated_trades_response.status)
    pprint(list_calculated_trades_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.list_calculated_trades: %s\n" % e
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#list_calculated_trades.ApiResponseFor200) | Calculated trades to make

#### list_calculated_trades.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**CalculatedTrade**](../../models/CalculatedTrade.md) |  | 


### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_model_portfolio**

List of model portfolio

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
    # List of model portfolio
    list_model_portfolio_response = (
        snaptrade.portfolio_management.list_model_portfolio()
    )
    pprint(list_model_portfolio_response.body)
    pprint(list_model_portfolio_response.body["model_portfolio"])
    pprint(list_model_portfolio_response.body["model_portfolio_security"])
    pprint(list_model_portfolio_response.body["model_portfolio_asset_class"])
    pprint(list_model_portfolio_response.headers)
    pprint(list_model_portfolio_response.status)
    pprint(list_model_portfolio_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.list_model_portfolio: %s\n" % e
    )
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
200 | [ApiResponseFor200](#list_model_portfolio.ApiResponseFor200) | A list of all model portfolio objects for the authenticated user.

#### list_model_portfolio.ApiResponseFor200
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
[**ModelPortfolioDetails**](../../models/ModelPortfolioDetails.md) | [**ModelPortfolioDetails**](../../models/ModelPortfolioDetails.md) | [**ModelPortfolioDetails**](../../models/ModelPortfolioDetails.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_portfolio_accounts**

Get all accounts associated with a portfolio group

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
    # Get all accounts associated with a portfolio group
    list_portfolio_accounts_response = (
        snaptrade.portfolio_management.list_portfolio_accounts(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(list_portfolio_accounts_response.body)
    pprint(list_portfolio_accounts_response.body["id"])
    pprint(list_portfolio_accounts_response.body["brokerage_authorization"])
    pprint(list_portfolio_accounts_response.body["portfolio_group"])
    pprint(list_portfolio_accounts_response.body["name"])
    pprint(list_portfolio_accounts_response.body["number"])
    pprint(list_portfolio_accounts_response.body["institution_name"])
    pprint(list_portfolio_accounts_response.body["created_date"])
    pprint(list_portfolio_accounts_response.body["meta"])
    pprint(list_portfolio_accounts_response.body["cash_restrictions"])
    pprint(list_portfolio_accounts_response.body["sync_status"])
    pprint(list_portfolio_accounts_response.headers)
    pprint(list_portfolio_accounts_response.status)
    pprint(list_portfolio_accounts_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.list_portfolio_accounts: %s\n"
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
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#list_portfolio_accounts.ApiResponseFor200) | Accounts linked to portfolio group
default | [ApiResponseForDefault](#list_portfolio_accounts.ApiResponseForDefault) | Unexpected error

#### list_portfolio_accounts.ApiResponseFor200
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

#### list_portfolio_accounts.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **modify_model_portfolio_by_id**

Updates model portfolio object

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
    # Updates model portfolio object
    snaptrade.portfolio_management.modify_model_portfolio_by_id(
        model_portfolio_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
        model_portfolio={
            "id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
            "name": "Passiv 5x Aggressive Growth Fund",
            "model_type": -1,
        },  # optional
        model_portfolio_security=[
            {
                "percent": 100,
            }
        ],  # optional
        model_portfolio_asset_class=[
            {
                "percent": 100,
            }
        ],  # optional
    )
    pprint(modify_model_portfolio_by_id_response.headers)
    pprint(modify_model_portfolio_by_id_response.status)
    pprint(modify_model_portfolio_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.modify_model_portfolio_by_id: %s\n"
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
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ModelPortfolioDetails**](../../models/ModelPortfolioDetails.md) |  | 


### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
modelPortfolioId | ModelPortfolioIdSchema | | 

# ModelPortfolioIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#modify_model_portfolio_by_id.ApiResponseFor200) | Updates model portfolio object with data from request body.

#### modify_model_portfolio_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **save_portfolio**

Update an existing target portfolio.

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
    # Update an existing target portfolio.
    save_portfolio_response = snaptrade.portfolio_management.save_portfolio(
        portfolio_group_id="portfolioGroupId_example",  # required
        id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
        name="Combined Retirement Portfolio",  # optional
    )
    pprint(save_portfolio_response.body)
    pprint(save_portfolio_response.body["id"])
    pprint(save_portfolio_response.body["name"])
    pprint(save_portfolio_response.headers)
    pprint(save_portfolio_response.status)
    pprint(save_portfolio_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.save_portfolio: %s\n" % e)
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
[**PortfolioGroup**](../../models/PortfolioGroup.md) |  | 


### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#save_portfolio.ApiResponseFor200) | The PortfolioGroup object which was updated.
400 | [ApiResponseFor400](#save_portfolio.ApiResponseFor400) | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid.
404 | [ApiResponseFor404](#save_portfolio.ApiResponseFor404) | The specified portfolioGroupId was not found.
default | [ApiResponseForDefault](#save_portfolio.ApiResponseForDefault) | Unexpected error.

#### save_portfolio.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**PortfolioGroup**](../../models/PortfolioGroup.md) |  | 


#### save_portfolio.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### save_portfolio.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### save_portfolio.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **search_portfolio_symbols**

Search for symbols limited to brokerages under the specified portfolio group

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
    # Search for symbols limited to brokerages under the specified portfolio group
    search_portfolio_symbols_response = (
        snaptrade.portfolio_management.search_portfolio_symbols(
            portfolio_group_id="portfolioGroupId_example",  # required
            substring="apple",  # optional
        )
    )
    pprint(search_portfolio_symbols_response.body)
    pprint(search_portfolio_symbols_response.body["id"])
    pprint(search_portfolio_symbols_response.body["symbol"])
    pprint(search_portfolio_symbols_response.body["raw_symbol"])
    pprint(search_portfolio_symbols_response.body["description"])
    pprint(search_portfolio_symbols_response.body["currency"])
    pprint(search_portfolio_symbols_response.body["exchange"])
    pprint(search_portfolio_symbols_response.body["type"])
    pprint(search_portfolio_symbols_response.body["currencies"])
    pprint(search_portfolio_symbols_response.headers)
    pprint(search_portfolio_symbols_response.status)
    pprint(search_portfolio_symbols_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.search_portfolio_symbols: %s\n"
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
[**SymbolQuery**](../../models/SymbolQuery.md) |  | 


### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#search_portfolio_symbols.ApiResponseFor200) | A list of UniversalSymbol objects which match the specified substring
default | [ApiResponseForDefault](#search_portfolio_symbols.ApiResponseForDefault) | Unexpected error.

#### search_portfolio_symbols.ApiResponseFor200
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

#### search_portfolio_symbols.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **set_portfolio_targets**

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

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
    # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
    set_portfolio_targets_response = (
        snaptrade.portfolio_management.set_portfolio_targets(
            body=[
                {
                    "id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
                    "percent": 90,
                    "is_supported": True,
                    "is_excluded": True,
                }
            ],  # optional
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(set_portfolio_targets_response.body)
    pprint(set_portfolio_targets_response.headers)
    pprint(set_portfolio_targets_response.status)
    pprint(set_portfolio_targets_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.set_portfolio_targets: %s\n" % e
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
[**TargetAssetList**](../../models/TargetAssetList.md) |  | 


### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#set_portfolio_targets.ApiResponseFor200) | A new target asset or set of target assets is created.
400 | [ApiResponseFor400](#set_portfolio_targets.ApiResponseFor400) | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid.
404 | [ApiResponseFor404](#set_portfolio_targets.ApiResponseFor404) | The specified portfolioGroupId was not found.
default | [ApiResponseForDefault](#set_portfolio_targets.ApiResponseForDefault) | Unexpected error.

#### set_portfolio_targets.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**TargetAssetList**](../../models/TargetAssetList.md) |  | 


#### set_portfolio_targets.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### set_portfolio_targets.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### set_portfolio_targets.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **update_asset_class**

Updates model asset class objects

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
    # Updates model asset class objects
    snaptrade.portfolio_management.update_asset_class(
        model_asset_class_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        model_asset_class={
            "id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
            "name": "Bonds",
        },  # optional
        model_asset_class_target=[{}],  # optional
    )
    pprint(update_asset_class_response.headers)
    pprint(update_asset_class_response.status)
    pprint(update_asset_class_response.round_trip_time)
except ApiException as e:
    print("Exception when calling PortfolioManagementApi.update_asset_class: %s\n" % e)
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
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**ModelAssetClassDetails**](../../models/ModelAssetClassDetails.md) |  | 


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
modelAssetClassId | ModelAssetClassIdSchema | | 

# ModelAssetClassIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#update_asset_class.ApiResponseFor200) | Updates model asset class with data from request body.

#### update_asset_class.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **update_portfolio_settings**

Updates portfolio group settings

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
    # Updates portfolio group settings
    update_portfolio_settings_response = (
        snaptrade.portfolio_management.update_portfolio_settings(
            portfolio_group_id="portfolioGroupId_example",  # required
        )
    )
    pprint(update_portfolio_settings_response.body)
    pprint(update_portfolio_settings_response.body["buy_only"])
    pprint(update_portfolio_settings_response.body["cash_optimizer"])
    pprint(update_portfolio_settings_response.body["notify_frequency"])
    pprint(update_portfolio_settings_response.body["drift_threshold"])
    pprint(update_portfolio_settings_response.body["preferred_currency"])
    pprint(update_portfolio_settings_response.headers)
    pprint(update_portfolio_settings_response.status)
    pprint(update_portfolio_settings_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.update_portfolio_settings: %s\n"
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
accept_content_types | typing.Tuple[str] | default is ('*/*', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#update_portfolio_settings.ApiResponseFor200) | Settings of portfolio group
default | [ApiResponseForDefault](#update_portfolio_settings.ApiResponseForDefault) | Unexpected error

#### update_portfolio_settings.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBody, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBody
Type | Description  | Notes
------------- | ------------- | -------------
[**PortfolioGroupSettings**](../../models/PortfolioGroupSettings.md) |  | 


#### update_portfolio_settings.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **update_portfolio_target_by_id**

Update a TargetAsset under the specified PortfolioGroup.

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
    # Update a TargetAsset under the specified PortfolioGroup.
    update_portfolio_target_by_id_response = (
        snaptrade.portfolio_management.update_portfolio_target_by_id(
            portfolio_group_id="portfolioGroupId_example",  # required
            target_asset_id="targetAssetId_example",  # required
            id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
            symbol={
                "id": "2bcd7cc3-e922-4976-bce1-9858296801c3",
                "symbol": "VAB.TO",
                "raw_symbol": "VAB",
                "description": "VANGUARD CDN AGGREGATE BOND INDEX ETF",
            },  # optional
            percent=90,  # optional
            is_supported=True,  # optional
            is_excluded=True,  # optional
        )
    )
    pprint(update_portfolio_target_by_id_response.body)
    pprint(update_portfolio_target_by_id_response.body["id"])
    pprint(update_portfolio_target_by_id_response.body["symbol"])
    pprint(update_portfolio_target_by_id_response.body["percent"])
    pprint(update_portfolio_target_by_id_response.body["is_supported"])
    pprint(update_portfolio_target_by_id_response.body["is_excluded"])
    pprint(update_portfolio_target_by_id_response.body["meta"])
    pprint(update_portfolio_target_by_id_response.headers)
    pprint(update_portfolio_target_by_id_response.status)
    pprint(update_portfolio_target_by_id_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling PortfolioManagementApi.update_portfolio_target_by_id: %s\n"
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
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
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
[**TargetAsset**](../../models/TargetAsset.md) |  | 


### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
portfolioGroupId | PortfolioGroupIdSchema | | 
targetAssetId | TargetAssetIdSchema | | 

# PortfolioGroupIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

# TargetAssetIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str, uuid.UUID,  | str,  |  | value must be a uuid

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#update_portfolio_target_by_id.ApiResponseFor200) | The target asset is updated.
400 | [ApiResponseFor400](#update_portfolio_target_by_id.ApiResponseFor400) | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid.
404 | [ApiResponseFor404](#update_portfolio_target_by_id.ApiResponseFor404) | The specified portfolioGroupId or targetAssetId was not found.
default | [ApiResponseForDefault](#update_portfolio_target_by_id.ApiResponseForDefault) | Unexpected error.

#### update_portfolio_target_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**TargetAsset**](../../models/TargetAsset.md) |  | 


#### update_portfolio_target_by_id.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### update_portfolio_target_by_id.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### update_portfolio_target_by_id.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

