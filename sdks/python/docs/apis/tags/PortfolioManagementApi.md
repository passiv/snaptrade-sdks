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
[**get_portfolio_positions**](#get_portfolio_positions) | **get** /portfolioGroups/{portfolioGroupId}/positions | Get total of each postions owned in portfolio group
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
<a name="add_portfolio_excluded_asset"></a>
> ExcludedAsset add_portfolio_excluded_asset(portfolio_group_id)

Adds an asset to exclude to a portfolio group

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

# Adds an asset to exclude to a portfolio group
response = snaptrade.portfolio_management.add_portfolio_excluded_asset(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
    body = {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'symbol': "VAB.TO",
        'raw_symbol': "VAB",
        'description': "VANGUARD CDN AGGREGATE BOND INDEX ETF",
    },
)
pprint(response)
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
<a name="create"></a>
> [PortfolioGroup] create(user_iduser_secretportfolio_group)

Create new portfolio group

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

# Create new portfolio group
response = snaptrade.portfolio_management.create(
    query_params = {
        'userId': "John.doe@snaptrade.com",
        'userSecret': "USERSECRET123",
    },
    body = {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'name': "Combined Retirement Portfolio",
    },
)
pprint(response)
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
[**PortfolioGroup**]({{complexTypePrefix}}PortfolioGroup.md) | [**PortfolioGroup**]({{complexTypePrefix}}PortfolioGroup.md) | [**PortfolioGroup**]({{complexTypePrefix}}PortfolioGroup.md) |  | 

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
<a name="create_asset_class"></a>
> ModelAssetClassDetails create_asset_class()

Create a new model asset class

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

# Create a new model asset class
response = snaptrade.portfolio_management.create_asset_class()
pprint(response)
```
### Parameters
This endpoint does not need any parameter.

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
<a name="create_model_portfolio"></a>
> ModelPortfolioDetails create_model_portfolio()

Creates a new model portfolio

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

# Creates a new model portfolio
response = snaptrade.portfolio_management.create_model_portfolio()
pprint(response)
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
<a name="delete_asset_class"></a>
> delete_asset_class(model_asset_class_id)

Deletes a model asset class

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

# Deletes a model asset class
snaptrade.portfolio_management.delete_asset_class(
    path_params = {
        'modelAssetClassId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
)
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
<a name="delete_excluded_asset"></a>
> delete_excluded_asset(portfolio_group_idsymbol_id)

Unexclude an asset from a portfolio group

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

# Unexclude an asset from a portfolio group
snaptrade.portfolio_management.delete_excluded_asset(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'symbolId': "symbolId_example",
    },
)
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
<a name="delete_model_portfolio_by_id"></a>
> delete_model_portfolio_by_id(model_portfolio_id)

Deletes a model portfolio

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

# Deletes a model portfolio
snaptrade.portfolio_management.delete_model_portfolio_by_id(
    path_params = {
        'modelPortfolioId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
)
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
<a name="delete_portfoli"></a>
> PortfolioGroup delete_portfoli(portfolio_group_id)

Remove a target portfolio.

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

# Remove a target portfolio.
response = snaptrade.portfolio_management.delete_portfoli(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
<a name="delete_portfolio_target_by_id"></a>
> TargetAsset delete_portfolio_target_by_id(portfolio_group_idtarget_asset_id)

Remove a TargetAsset.

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

# Remove a TargetAsset.
response = snaptrade.portfolio_management.delete_portfolio_target_by_id(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'targetAssetId': "targetAssetId_example",
    },
)
pprint(response)
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
<a name="detail_asset_class"></a>
> ModelAssetClassDetails detail_asset_class(model_asset_class_id)

Get details of a model asset class

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

# Get details of a model asset class
response = snaptrade.portfolio_management.detail_asset_class(
    path_params = {
        'modelAssetClassId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
)
pprint(response)
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
<a name="get_calculated_trade_by_id"></a>
> [Trade] get_calculated_trade_by_id(portfolio_group_idcalculated_trade_idtrade_id)

Return an individual trade

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

# Return an individual trade
response = snaptrade.portfolio_management.get_calculated_trade_by_id(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'calculatedTradeId': "calculatedTradeId_example",
        'TradeId': "TradeId_example",
    },
)
pprint(response)
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
[**Trade**]({{complexTypePrefix}}Trade.md) | [**Trade**]({{complexTypePrefix}}Trade.md) | [**Trade**]({{complexTypePrefix}}Trade.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_model_details_by_id**
<a name="get_model_details_by_id"></a>
> ModelPortfolioDetails get_model_details_by_id(model_portfolio_id)

Get details of a model portfolio

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

# Get details of a model portfolio
response = snaptrade.portfolio_management.get_model_details_by_id(
    path_params = {
        'modelPortfolioId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
)
pprint(response)
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
<a name="get_portfolio_balances"></a>
> [Balance] get_portfolio_balances(portfolio_group_id)

Get sum of cash balances in portfolio group

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

# Get sum of cash balances in portfolio group
response = snaptrade.portfolio_management.get_portfolio_balances(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
[**Balance**]({{complexTypePrefix}}Balance.md) | [**Balance**]({{complexTypePrefix}}Balance.md) | [**Balance**]({{complexTypePrefix}}Balance.md) |  | 

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
<a name="get_portfolio_details_by_id"></a>
> PortfolioGroup get_portfolio_details_by_id(portfolio_group_id)

Get details of a target portfolio

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

# Get details of a target portfolio
response = snaptrade.portfolio_management.get_portfolio_details_by_id(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
<a name="get_portfolio_info"></a>
> PortfolioGroupInfo get_portfolio_info(portfolio_group_id)

Return a whole bunch of relevant information relating to a portfolio group.

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

# Return a whole bunch of relevant information relating to a portfolio group.
response = snaptrade.portfolio_management.get_portfolio_info(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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

# **get_portfolio_positions**
<a name="get_portfolio_positions"></a>
> [PortfolioGroupPosition] get_portfolio_positions(portfolio_group_id)

Get total of each postions owned in portfolio group

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

# Get total of each postions owned in portfolio group
response = snaptrade.portfolio_management.get_portfolio_positions(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
200 | [ApiResponseFor200](#get_portfolio_positions.ApiResponseFor200) | Totals of each postions owned in portfolio group
400 | [ApiResponseFor400](#get_portfolio_positions.ApiResponseFor400) | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid.
404 | [ApiResponseFor404](#get_portfolio_positions.ApiResponseFor404) | The specified portfolioGroupId was not found.
default | [ApiResponseForDefault](#get_portfolio_positions.ApiResponseForDefault) | Unexpected error.

#### get_portfolio_positions.ApiResponseFor200
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
[**PortfolioGroupPosition**]({{complexTypePrefix}}PortfolioGroupPosition.md) | [**PortfolioGroupPosition**]({{complexTypePrefix}}PortfolioGroupPosition.md) | [**PortfolioGroupPosition**]({{complexTypePrefix}}PortfolioGroupPosition.md) |  | 

#### get_portfolio_positions.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### get_portfolio_positions.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### get_portfolio_positions.ApiResponseForDefault
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_portfolio_settings**
<a name="get_portfolio_settings"></a>
> PortfolioGroupSettings get_portfolio_settings(portfolio_group_id)

Get portfolio group settings

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

# Get portfolio group settings
response = snaptrade.portfolio_management.get_portfolio_settings(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
<a name="get_portfolio_target_by_id"></a>
> TargetAsset get_portfolio_target_by_id(portfolio_group_idtarget_asset_id)

Get a specific target from a portfolio group

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

# Get a specific target from a portfolio group
response = snaptrade.portfolio_management.get_portfolio_target_by_id(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'targetAssetId': "targetAssetId_example",
    },
)
pprint(response)
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
<a name="get_portfolio_targets"></a>
> [TargetAsset] get_portfolio_targets(portfolio_group_id)

Get all target assets under the specified PortfolioGroup.

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

# Get all target assets under the specified PortfolioGroup.
response = snaptrade.portfolio_management.get_portfolio_targets(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
[**TargetAsset**]({{complexTypePrefix}}TargetAsset.md) | [**TargetAsset**]({{complexTypePrefix}}TargetAsset.md) | [**TargetAsset**]({{complexTypePrefix}}TargetAsset.md) |  | 

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
<a name="get_portoflio_excluded_assets"></a>
> [ExcludedAsset] get_portoflio_excluded_assets(portfolio_group_id)

Get an array of excluded assets associated with a portfolio group\\

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

# Get an array of excluded assets associated with a portfolio group\\
response = snaptrade.portfolio_management.get_portoflio_excluded_assets(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
[**ExcludedAsset**]({{complexTypePrefix}}ExcludedAsset.md) | [**ExcludedAsset**]({{complexTypePrefix}}ExcludedAsset.md) | [**ExcludedAsset**]({{complexTypePrefix}}ExcludedAsset.md) |  | 

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
<a name="import_model_portfolio"></a>
> [TargetAsset] import_model_portfolio(portfolio_group_id)

Import target allocation based on portfolio group

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

# Import target allocation based on portfolio group
response = snaptrade.portfolio_management.import_model_portfolio(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
[**TargetAsset**]({{complexTypePrefix}}TargetAsset.md) | [**TargetAsset**]({{complexTypePrefix}}TargetAsset.md) | [**TargetAsset**]({{complexTypePrefix}}TargetAsset.md) |  | 

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
<a name="list"></a>
> [PortfolioGroup] list(user_iduser_secret)

List all portfolio groups

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

# List all portfolio groups
response = snaptrade.portfolio_management.list(
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
[**PortfolioGroup**]({{complexTypePrefix}}PortfolioGroup.md) | [**PortfolioGroup**]({{complexTypePrefix}}PortfolioGroup.md) | [**PortfolioGroup**]({{complexTypePrefix}}PortfolioGroup.md) |  | 

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
<a name="list_asset_classes"></a>
> [ModelAssetClassDetails] list_asset_classes()

List of model asset class

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

# List of model asset class
response = snaptrade.portfolio_management.list_asset_classes()
pprint(response)
```
### Parameters
This endpoint does not need any parameter.

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
[**ModelAssetClassDetails**]({{complexTypePrefix}}ModelAssetClassDetails.md) | [**ModelAssetClassDetails**]({{complexTypePrefix}}ModelAssetClassDetails.md) | [**ModelAssetClassDetails**]({{complexTypePrefix}}ModelAssetClassDetails.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_calculated_trades**
<a name="list_calculated_trades"></a>
> CalculatedTrade list_calculated_trades(portfolio_group_id)

List of trades to make to rebalance portfolio group

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

# List of trades to make to rebalance portfolio group
response = snaptrade.portfolio_management.list_calculated_trades(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
<a name="list_model_portfolio"></a>
> [ModelPortfolioDetails] list_model_portfolio()

List of model portfolio

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

# List of model portfolio
response = snaptrade.portfolio_management.list_model_portfolio()
pprint(response)
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
[**ModelPortfolioDetails**]({{complexTypePrefix}}ModelPortfolioDetails.md) | [**ModelPortfolioDetails**]({{complexTypePrefix}}ModelPortfolioDetails.md) | [**ModelPortfolioDetails**]({{complexTypePrefix}}ModelPortfolioDetails.md) |  | 

### Authorization

[PartnerClientId](../../../README.md#PartnerClientId), [PartnerSignature](../../../README.md#PartnerSignature), [PartnerTimestamp](../../../README.md#PartnerTimestamp)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_portfolio_accounts**
<a name="list_portfolio_accounts"></a>
> [Account] list_portfolio_accounts(portfolio_group_id)

Get all accounts associated with a portfolio group

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

# Get all accounts associated with a portfolio group
response = snaptrade.portfolio_management.list_portfolio_accounts(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
[**Account**]({{complexTypePrefix}}Account.md) | [**Account**]({{complexTypePrefix}}Account.md) | [**Account**]({{complexTypePrefix}}Account.md) |  | 

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
<a name="modify_model_portfolio_by_id"></a>
> modify_model_portfolio_by_id(model_portfolio_idmodel_portfolio_details)

Updates model portfolio object

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

# Updates model portfolio object
snaptrade.portfolio_management.modify_model_portfolio_by_id(
    path_params = {
        'modelPortfolioId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
    body = {
    },
)
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
<a name="save_portfolio"></a>
> PortfolioGroup save_portfolio(portfolio_group_idportfolio_group)

Update an existing target portfolio.

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

# Update an existing target portfolio.
response = snaptrade.portfolio_management.save_portfolio(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
    body = {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'name': "Combined Retirement Portfolio",
    },
)
pprint(response)
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
<a name="search_portfolio_symbols"></a>
> [UniversalSymbol] search_portfolio_symbols(portfolio_group_id)

Search for symbols limited to brokerages under the specified portfolio group

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

# Search for symbols limited to brokerages under the specified portfolio group
response = snaptrade.portfolio_management.search_portfolio_symbols(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
    body = {
        'substring': "apple",
    },
)
pprint(response)
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
[**UniversalSymbol**]({{complexTypePrefix}}UniversalSymbol.md) | [**UniversalSymbol**]({{complexTypePrefix}}UniversalSymbol.md) | [**UniversalSymbol**]({{complexTypePrefix}}UniversalSymbol.md) |  | 

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
<a name="set_portfolio_targets"></a>
> TargetAssetList set_portfolio_targets(portfolio_group_id)

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

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

# Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
response = snaptrade.portfolio_management.set_portfolio_targets(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
    body = [
        {
            'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
            'percent': 90,
            'is_supported': True,
            'is_excluded': True,
        }
    ],
)
pprint(response)
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
<a name="update_asset_class"></a>
> update_asset_class(model_asset_class_idmodel_asset_class_details)

Updates model asset class objects

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

# Updates model asset class objects
snaptrade.portfolio_management.update_asset_class(
    path_params = {
        'modelAssetClassId': "2bcd7cc3-e922-4976-bce1-9858296801c3",
    },
    body = {
    },
)
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
[**ModelAssetClassDetails**](../../models/ModelAssetClassDetails.md) |  | 


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
<a name="update_portfolio_settings"></a>
> PortfolioGroupSettings update_portfolio_settings(portfolio_group_id)

Updates portfolio group settings

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

# Updates portfolio group settings
response = snaptrade.portfolio_management.update_portfolio_settings(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
    },
)
pprint(response)
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
<a name="update_portfolio_target_by_id"></a>
> TargetAsset update_portfolio_target_by_id(portfolio_group_idtarget_asset_idtarget_asset)

Update a TargetAsset under the specified PortfolioGroup.

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

# Update a TargetAsset under the specified PortfolioGroup.
response = snaptrade.portfolio_management.update_portfolio_target_by_id(
    path_params = {
        'portfolioGroupId': "portfolioGroupId_example",
        'targetAssetId': "targetAssetId_example",
    },
    body = {
        'id': "2bcd7cc3-e922-4976-bce1-9858296801c3",
        'percent': 90,
        'is_supported': True,
        'is_excluded': True,
    },
)
pprint(response)
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
