# snaptrade_client.PortfolioManagementApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**model_asset_class_get**](PortfolioManagementApi.md#model_asset_class_get) | **GET** /modelAssetClass | List of model asset class
[**model_asset_class_model_asset_class_id_delete**](PortfolioManagementApi.md#model_asset_class_model_asset_class_id_delete) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class
[**model_asset_class_model_asset_class_id_get**](PortfolioManagementApi.md#model_asset_class_model_asset_class_id_get) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class
[**model_asset_class_model_asset_class_id_post**](PortfolioManagementApi.md#model_asset_class_model_asset_class_id_post) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects
[**model_asset_class_post**](PortfolioManagementApi.md#model_asset_class_post) | **POST** /modelAssetClass | Create a new model asset class
[**model_portfolio_get**](PortfolioManagementApi.md#model_portfolio_get) | **GET** /modelPortfolio | List of model portfolio
[**model_portfolio_model_portfolio_id_delete**](PortfolioManagementApi.md#model_portfolio_model_portfolio_id_delete) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio
[**model_portfolio_model_portfolio_id_get**](PortfolioManagementApi.md#model_portfolio_model_portfolio_id_get) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio
[**model_portfolio_model_portfolio_id_post**](PortfolioManagementApi.md#model_portfolio_model_portfolio_id_post) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object
[**model_portfolio_post**](PortfolioManagementApi.md#model_portfolio_post) | **POST** /modelPortfolio | Creates a new model portfolio
[**portfolio_groups_get**](PortfolioManagementApi.md#portfolio_groups_get) | **GET** /portfolioGroups | List all portfolio groups
[**portfolio_groups_portfolio_group_id_accounts_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_accounts_get) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group
[**portfolio_groups_portfolio_group_id_balances_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_balances_get) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group
[**portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed
[**portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed
[**portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_trade_id_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_trade_id_get) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade
[**portfolio_groups_portfolio_group_id_calculatedtrades_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_get) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group
[**portfolio_groups_portfolio_group_id_delete**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_delete) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio.
[**portfolio_groups_portfolio_group_id_excludedassets_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_excludedassets_get) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group
[**portfolio_groups_portfolio_group_id_excludedassets_post**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_excludedassets_post) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group
[**portfolio_groups_portfolio_group_id_excludedassets_symbol_id_delete**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_excludedassets_symbol_id_delete) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group
[**portfolio_groups_portfolio_group_id_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_get) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio
[**portfolio_groups_portfolio_group_id_import_post**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_import_post) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group
[**portfolio_groups_portfolio_group_id_info_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_info_get) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group.
[**portfolio_groups_portfolio_group_id_patch**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_patch) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio.
[**portfolio_groups_portfolio_group_id_positions_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_positions_get) | **GET** /portfolioGroups/{portfolioGroupId}/positions | Get total of each postions owned in portfolio group
[**portfolio_groups_portfolio_group_id_settings_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_settings_get) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings
[**portfolio_groups_portfolio_group_id_settings_patch**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_settings_patch) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings
[**portfolio_groups_portfolio_group_id_symbols_post**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_symbols_post) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group
[**portfolio_groups_portfolio_group_id_targets_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_targets_get) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup.
[**portfolio_groups_portfolio_group_id_targets_post**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_targets_post) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
[**portfolio_groups_portfolio_group_id_targets_target_asset_id_delete**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_targets_target_asset_id_delete) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset.
[**portfolio_groups_portfolio_group_id_targets_target_asset_id_get**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_targets_target_asset_id_get) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group
[**portfolio_groups_portfolio_group_id_targets_target_asset_id_patch**](PortfolioManagementApi.md#portfolio_groups_portfolio_group_id_targets_target_asset_id_patch) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup.
[**portfolio_groups_post**](PortfolioManagementApi.md#portfolio_groups_post) | **POST** /portfolioGroups | Create new portfolio group


# **model_asset_class_get**
> [ModelAssetClassDetails] model_asset_class_get()

List of model asset class

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_asset_class_details import ModelAssetClassDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of model asset class
        api_response = api_instance.model_asset_class_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_asset_class_get: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[ModelAssetClassDetails]**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all model asset class objects for the authenticated user. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_asset_class_model_asset_class_id_delete**
> model_asset_class_model_asset_class_id_delete(model_asset_class_id)

Deletes a model asset class

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the model asset class to delete.

    # example passing only required values which don't have defaults set
    try:
        # Deletes a model asset class
        api_instance.model_asset_class_model_asset_class_id_delete(model_asset_class_id)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_asset_class_model_asset_class_id_delete: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_asset_class_id** | **str**| The ID of the model asset class to delete. |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_asset_class_model_asset_class_id_get**
> ModelAssetClassDetails model_asset_class_model_asset_class_id_get(model_asset_class_id)

Get details of a model asset class

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_asset_class_details import ModelAssetClassDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the model asset class to get.

    # example passing only required values which don't have defaults set
    try:
        # Get details of a model asset class
        api_response = api_instance.model_asset_class_model_asset_class_id_get(model_asset_class_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_asset_class_model_asset_class_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_asset_class_id** | **str**| The ID of the model asset class to get. |

### Return type

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Details of a particular model asset class |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_asset_class_model_asset_class_id_post**
> model_asset_class_model_asset_class_id_post(model_asset_class_id, model_asset_class_details)

Updates model asset class objects

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_asset_class_details import ModelAssetClassDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    model_asset_class_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the model asset class to update.
    model_asset_class_details = ModelAssetClassDetails(
        model_asset_class=ModelAssetClass(),
        model_asset_class_target=[
            ModelAssetClassTarget(),
        ],
    ) # ModelAssetClassDetails | Use this endpoint change model asset class name and to add or remove a model asset class target. <br /><br /> * Only the model asset class name is required for the model asset class object. <br /> * Only the symbol id is required for the symbol object in the model asset class target object. <br /> * To remove all model asset class targets, set the model asset class target as an empty array

    # example passing only required values which don't have defaults set
    try:
        # Updates model asset class objects
        api_instance.model_asset_class_model_asset_class_id_post(model_asset_class_id, model_asset_class_details)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_asset_class_model_asset_class_id_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_asset_class_id** | **str**| The ID of the model asset class to update. |
 **model_asset_class_details** | [**ModelAssetClassDetails**](ModelAssetClassDetails.md)| Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updates model asset class with data from request body. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_asset_class_post**
> ModelAssetClassDetails model_asset_class_post()

Create a new model asset class

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_asset_class_details import ModelAssetClassDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Create a new model asset class
        api_response = api_instance.model_asset_class_post()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_asset_class_post: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelAssetClassDetails**](ModelAssetClassDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new asset class is created. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_portfolio_get**
> [ModelPortfolioDetails] model_portfolio_get()

List of model portfolio

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_portfolio_details import ModelPortfolioDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of model portfolio
        api_response = api_instance.model_portfolio_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_portfolio_get: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[ModelPortfolioDetails]**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all model portfolio objects for the authenticated user. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_portfolio_model_portfolio_id_delete**
> model_portfolio_model_portfolio_id_delete(model_portfolio_id)

Deletes a model portfolio

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the model portfolio to delete.

    # example passing only required values which don't have defaults set
    try:
        # Deletes a model portfolio
        api_instance.model_portfolio_model_portfolio_id_delete(model_portfolio_id)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_portfolio_model_portfolio_id_delete: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_portfolio_id** | **str**| The ID of the model portfolio to delete. |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_portfolio_model_portfolio_id_get**
> ModelPortfolioDetails model_portfolio_model_portfolio_id_get(model_portfolio_id)

Get details of a model portfolio

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_portfolio_details import ModelPortfolioDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the model portfolio to get.

    # example passing only required values which don't have defaults set
    try:
        # Get details of a model portfolio
        api_response = api_instance.model_portfolio_model_portfolio_id_get(model_portfolio_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_portfolio_model_portfolio_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_portfolio_id** | **str**| The ID of the model portfolio to get. |

### Return type

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Details of a particular model portfolio. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_portfolio_model_portfolio_id_post**
> model_portfolio_model_portfolio_id_post(model_portfolio_id, model_portfolio_details)

Updates model portfolio object

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_portfolio_details import ModelPortfolioDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    model_portfolio_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the model portfolio to update.
    model_portfolio_details = ModelPortfolioDetails(
        model_portfolio=ModelPortfolio(),
        model_portfolio_security=[
            ModelPortfolioSecurity(),
        ],
        model_portfolio_asset_class=[
            ModelPortfolioAssetClass(),
        ],
    ) # ModelPortfolioDetails | Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. <br /><br /> * The model portfolio name and model portfolio model type is required. <br /> * The model portfolio model type must be either 0 or 1. [0 -> Securities based, 1 -> Asset Class based] <br /><br /> * If the model portfolio type is 0, the model portfolio asset class must be an empty array. <br /> * If the model portfolio type is 1, the model portfolio security must be an empty array. <br /><br /> * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object <br /> * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object <br /><br /> * To remove all model portfolio securities or model portfolio asset class, set then to an empty array

    # example passing only required values which don't have defaults set
    try:
        # Updates model portfolio object
        api_instance.model_portfolio_model_portfolio_id_post(model_portfolio_id, model_portfolio_details)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_portfolio_model_portfolio_id_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_portfolio_id** | **str**| The ID of the model portfolio to update. |
 **model_portfolio_details** | [**ModelPortfolioDetails**](ModelPortfolioDetails.md)| Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updates model portfolio object with data from request body. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **model_portfolio_post**
> ModelPortfolioDetails model_portfolio_post()

Creates a new model portfolio

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.model_portfolio_details import ModelPortfolioDetails
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Creates a new model portfolio
        api_response = api_instance.model_portfolio_post()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->model_portfolio_post: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelPortfolioDetails**](ModelPortfolioDetails.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new model portfolio is created. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_get**
> [PortfolioGroup] portfolio_groups_get(user_id, user_secret)

List all portfolio groups

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group import PortfolioGroup
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 

    # example passing only required values which don't have defaults set
    try:
        # List all portfolio groups
        api_response = api_instance.portfolio_groups_get(user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |

### Return type

[**[PortfolioGroup]**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all PortfolioGroup objects for the authenticated user. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_accounts_get**
> [Account] portfolio_groups_portfolio_group_id_accounts_get(portfolio_group_id)

Get all accounts associated with a portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.account import Account
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which the accounts are linked.

    # example passing only required values which don't have defaults set
    try:
        # Get all accounts associated with a portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_accounts_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_accounts_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which the accounts are linked. |

### Return type

[**[Account]**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Accounts linked to portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_balances_get**
> [Balance] portfolio_groups_portfolio_group_id_balances_get(portfolio_group_id)

Get sum of cash balances in portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.balance import Balance
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to create the target asset.

    # example passing only required values which don't have defaults set
    try:
        # Get sum of cash balances in portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_balances_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_balances_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to create the target asset. |

### Return type

[**[Balance]**](Balance.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sum of cash balances across accounts in portfolio group by currency |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get**
> Trade portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get(portfolio_group_id, calculated_trade_id, trade_id)

Return details of a specific trade before it's placed

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.trade import Trade
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to perform rebalancing calculations
    calculated_trade_id = "calculatedTradeId_example" # str | The ID of calculated trade to get account impact
    trade_id = "tradeId_example" # str | The ID of trade object

    # example passing only required values which don't have defaults set
    try:
        # Return details of a specific trade before it's placed
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get(portfolio_group_id, calculated_trade_id, trade_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to perform rebalancing calculations |
 **calculated_trade_id** | **str**| The ID of calculated trade to get account impact |
 **trade_id** | **str**| The ID of trade object |

### Return type

[**Trade**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Trade object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch**
> Trade portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch(portfolio_group_id, calculated_trade_id, trade_id)

Modify units of a trade before it is placed

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.trade import Trade
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to perform rebalancing calculations
    calculated_trade_id = "calculatedTradeId_example" # str | The ID of calculated trade to get account impact
    trade_id = "tradeId_example" # str | The ID of trade object
    trade = Trade(
        id="2bcd7cc3-e922-4976-bce1-9858296801c3",
        account=Account(),
        symbol=BrokerageSymbol(),
        universal_symbol=UniversalSymbol(
            id="2bcd7cc3-e922-4976-bce1-9858296801c3",
            symbol="VAB.TO",
            raw_symbol="VAB",
            description="VANGUARD CDN AGGREGATE BOND INDEX ETF",
            currency=Currency(),
            exchange=Exchange(),
            type=SecurityType(),
            currencies=[
                Currency(),
            ],
        ),
        action="BUY",
        units=6,
        price=24.81,
        sequence=1,
    ) # Trade |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Modify units of a trade before it is placed
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch(portfolio_group_id, calculated_trade_id, trade_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Modify units of a trade before it is placed
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch(portfolio_group_id, calculated_trade_id, trade_id, trade=trade)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to perform rebalancing calculations |
 **calculated_trade_id** | **str**| The ID of calculated trade to get account impact |
 **trade_id** | **str**| The ID of trade object |
 **trade** | [**Trade**](Trade.md)|  | [optional]

### Return type

[**Trade**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Modified trade object |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_trade_id_get**
> [Trade] portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_trade_id_get(portfolio_group_id, calculated_trade_id, trade_id)

Return an individual trade

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.trade import Trade
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to perform rebalancing calculations
    calculated_trade_id = "calculatedTradeId_example" # str | The ID of calculated trade to get account impact
    trade_id = "TradeId_example" # str | The ID of trade object

    # example passing only required values which don't have defaults set
    try:
        # Return an individual trade
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_trade_id_get(portfolio_group_id, calculated_trade_id, trade_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_trade_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to perform rebalancing calculations |
 **calculated_trade_id** | **str**| The ID of calculated trade to get account impact |
 **trade_id** | **str**| The ID of trade object |

### Return type

[**[Trade]**](Trade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Trade objects |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_calculatedtrades_get**
> CalculatedTrade portfolio_groups_portfolio_group_id_calculatedtrades_get(portfolio_group_id)

List of trades to make to rebalance portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.calculated_trade import CalculatedTrade
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to perform rebalancing calculations

    # example passing only required values which don't have defaults set
    try:
        # List of trades to make to rebalance portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_calculatedtrades_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to perform rebalancing calculations |

### Return type

[**CalculatedTrade**](CalculatedTrade.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Calculated trades to make |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_delete**
> PortfolioGroup portfolio_groups_portfolio_group_id_delete(portfolio_group_id)

Remove a target portfolio.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group import PortfolioGroup
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to delete.

    # example passing only required values which don't have defaults set
    try:
        # Remove a target portfolio.
        api_response = api_instance.portfolio_groups_portfolio_group_id_delete(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_delete: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to delete. |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The PortfolioGroup object which was deleted. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string). |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_excludedassets_get**
> [ExcludedAsset] portfolio_groups_portfolio_group_id_excludedassets_get(portfolio_group_id)

Get an array of excluded assets associated with a portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.excluded_asset import ExcludedAsset
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which the excluded assets are linked.

    # example passing only required values which don't have defaults set
    try:
        # Get an array of excluded assets associated with a portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_excludedassets_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_excludedassets_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which the excluded assets are linked. |

### Return type

[**[ExcludedAsset]**](ExcludedAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Array of excluded assets linked to portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_excludedassets_post**
> ExcludedAsset portfolio_groups_portfolio_group_id_excludedassets_post(portfolio_group_id)

Adds an asset to exclude to a portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.universal_symbol import UniversalSymbol
from snaptrade_client.model.excluded_asset import ExcludedAsset
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to exclude an asset.
    universal_symbol = UniversalSymbol(
        id="2bcd7cc3-e922-4976-bce1-9858296801c3",
        symbol="VAB.TO",
        raw_symbol="VAB",
        description="VANGUARD CDN AGGREGATE BOND INDEX ETF",
        currency=Currency(),
        exchange=Exchange(),
        type=SecurityType(),
        currencies=[
            Currency(),
        ],
    ) # UniversalSymbol |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Adds an asset to exclude to a portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_excludedassets_post(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_excludedassets_post: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Adds an asset to exclude to a portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_excludedassets_post(portfolio_group_id, universal_symbol=universal_symbol)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_excludedassets_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to exclude an asset. |
 **universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md)|  | [optional]

### Return type

[**ExcludedAsset**](ExcludedAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An asset is excluded from calculations in portfolio group. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_excludedassets_symbol_id_delete**
> portfolio_groups_portfolio_group_id_excludedassets_symbol_id_delete(portfolio_group_id, symbol_id)

Unexclude an asset from a portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to unexclude an asset.
    symbol_id = "symbolId_example" # str | The ID of the excluded asset Symbol to delete.

    # example passing only required values which don't have defaults set
    try:
        # Unexclude an asset from a portfolio group
        api_instance.portfolio_groups_portfolio_group_id_excludedassets_symbol_id_delete(portfolio_group_id, symbol_id)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_excludedassets_symbol_id_delete: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to unexclude an asset. |
 **symbol_id** | **str**| The ID of the excluded asset Symbol to delete. |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Excluded asset deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_get**
> PortfolioGroup portfolio_groups_portfolio_group_id_get(portfolio_group_id)

Get details of a target portfolio

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group import PortfolioGroup
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to get.

    # example passing only required values which don't have defaults set
    try:
        # Get details of a target portfolio
        api_response = api_instance.portfolio_groups_portfolio_group_id_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to get. |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully gets a target portfolio |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_import_post**
> [TargetAsset] portfolio_groups_portfolio_group_id_import_post(portfolio_group_id)

Import target allocation based on portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.target_asset import TargetAsset
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to create the target asset.

    # example passing only required values which don't have defaults set
    try:
        # Import target allocation based on portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_import_post(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_import_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to create the target asset. |

### Return type

[**[TargetAsset]**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Portfolio group target allocation has been updated |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_info_get**
> PortfolioGroupInfo portfolio_groups_portfolio_group_id_info_get(portfolio_group_id)

Return a whole bunch of relevant information relating to a portfolio group.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group_info import PortfolioGroupInfo
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to create the target asset.

    # example passing only required values which don't have defaults set
    try:
        # Return a whole bunch of relevant information relating to a portfolio group.
        api_response = api_instance.portfolio_groups_portfolio_group_id_info_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_info_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to create the target asset. |

### Return type

[**PortfolioGroupInfo**](PortfolioGroupInfo.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Portfolio group target allocation has been updated |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_patch**
> PortfolioGroup portfolio_groups_portfolio_group_id_patch(portfolio_group_id, portfolio_group)

Update an existing target portfolio.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group import PortfolioGroup
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to update.
    portfolio_group = PortfolioGroup() # PortfolioGroup | 

    # example passing only required values which don't have defaults set
    try:
        # Update an existing target portfolio.
        api_response = api_instance.portfolio_groups_portfolio_group_id_patch(portfolio_group_id, portfolio_group)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_patch: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to update. |
 **portfolio_group** | [**PortfolioGroup**](PortfolioGroup.md)|  |

### Return type

[**PortfolioGroup**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The PortfolioGroup object which was updated. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_positions_get**
> [PortfolioGroupPosition] portfolio_groups_portfolio_group_id_positions_get(portfolio_group_id)

Get total of each postions owned in portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group_position import PortfolioGroupPosition
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to create the target asset.

    # example passing only required values which don't have defaults set
    try:
        # Get total of each postions owned in portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_positions_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_positions_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to create the target asset. |

### Return type

[**[PortfolioGroupPosition]**](PortfolioGroupPosition.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Totals of each postions owned in portfolio group |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_settings_get**
> PortfolioGroupSettings portfolio_groups_portfolio_group_id_settings_get(portfolio_group_id)

Get portfolio group settings

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group_settings import PortfolioGroupSettings
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to get the settings.

    # example passing only required values which don't have defaults set
    try:
        # Get portfolio group settings
        api_response = api_instance.portfolio_groups_portfolio_group_id_settings_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_settings_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to get the settings. |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Settings of portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_settings_patch**
> PortfolioGroupSettings portfolio_groups_portfolio_group_id_settings_patch(portfolio_group_id)

Updates portfolio group settings

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group_settings import PortfolioGroupSettings
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to patch the settings.

    # example passing only required values which don't have defaults set
    try:
        # Updates portfolio group settings
        api_response = api_instance.portfolio_groups_portfolio_group_id_settings_patch(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_settings_patch: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to patch the settings. |

### Return type

[**PortfolioGroupSettings**](PortfolioGroupSettings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Settings of portfolio group |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_symbols_post**
> [UniversalSymbol] portfolio_groups_portfolio_group_id_symbols_post(portfolio_group_id)

Search for symbols limited to brokerages under the specified portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.universal_symbol import UniversalSymbol
from snaptrade_client.model.symbol_query import SymbolQuery
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to search under
    symbol_query = SymbolQuery(
        substring="apple",
    ) # SymbolQuery |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Search for symbols limited to brokerages under the specified portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_symbols_post(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_symbols_post: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search for symbols limited to brokerages under the specified portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_symbols_post(portfolio_group_id, symbol_query=symbol_query)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_symbols_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to search under |
 **symbol_query** | [**SymbolQuery**](SymbolQuery.md)|  | [optional]

### Return type

[**[UniversalSymbol]**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of UniversalSymbol objects which match the specified substring |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_targets_get**
> [TargetAsset] portfolio_groups_portfolio_group_id_targets_get(portfolio_group_id)

Get all target assets under the specified PortfolioGroup.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.target_asset import TargetAsset
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to create the target asset.

    # example passing only required values which don't have defaults set
    try:
        # Get all target assets under the specified PortfolioGroup.
        api_response = api_instance.portfolio_groups_portfolio_group_id_targets_get(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_targets_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to create the target asset. |

### Return type

[**[TargetAsset]**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All target assets owned by the specified PortfolioGroup. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_targets_post**
> TargetAssetList portfolio_groups_portfolio_group_id_targets_post(portfolio_group_id)

Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.target_asset_list import TargetAssetList
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to create the target asset.
    target_asset_list = TargetAssetList([
        TargetAsset(
            id="2bcd7cc3-e922-4976-bce1-9858296801c3",
            symbol=UniversalSymbol(
                id="2bcd7cc3-e922-4976-bce1-9858296801c3",
                symbol="VAB.TO",
                raw_symbol="VAB",
                description="VANGUARD CDN AGGREGATE BOND INDEX ETF",
                currency=Currency(),
                exchange=Exchange(),
                type=SecurityType(),
                currencies=[
                    Currency(),
                ],
            ),
            percent=Percent(90),
            is_supported=True,
            is_excluded=True,
            meta={},
        ),
    ]) # TargetAssetList |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
        api_response = api_instance.portfolio_groups_portfolio_group_id_targets_post(portfolio_group_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_targets_post: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
        api_response = api_instance.portfolio_groups_portfolio_group_id_targets_post(portfolio_group_id, target_asset_list=target_asset_list)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_targets_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to create the target asset. |
 **target_asset_list** | [**TargetAssetList**](TargetAssetList.md)|  | [optional]

### Return type

[**TargetAssetList**](TargetAssetList.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new target asset or set of target assets is created. |  -  |
**400** | The specified portfolioGroupId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_targets_target_asset_id_delete**
> TargetAsset portfolio_groups_portfolio_group_id_targets_target_asset_id_delete(portfolio_group_id, target_asset_id)

Remove a TargetAsset.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.target_asset import TargetAsset
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to remove the target asset.
    target_asset_id = "targetAssetId_example" # str | The ID of the TargetAsset to delete.

    # example passing only required values which don't have defaults set
    try:
        # Remove a TargetAsset.
        api_response = api_instance.portfolio_groups_portfolio_group_id_targets_target_asset_id_delete(portfolio_group_id, target_asset_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_targets_target_asset_id_delete: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to remove the target asset. |
 **target_asset_id** | **str**| The ID of the TargetAsset to delete. |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The TargetAsset object which was deleted. |  -  |
**400** | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId or targetAssetId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_targets_target_asset_id_get**
> TargetAsset portfolio_groups_portfolio_group_id_targets_target_asset_id_get(portfolio_group_id, target_asset_id)

Get a specific target from a portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.target_asset import TargetAsset
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to get the target asset.
    target_asset_id = "targetAssetId_example" # str | The ID of the TargetAsset to get.

    # example passing only required values which don't have defaults set
    try:
        # Get a specific target from a portfolio group
        api_response = api_instance.portfolio_groups_portfolio_group_id_targets_target_asset_id_get(portfolio_group_id, target_asset_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_targets_target_asset_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to get the target asset. |
 **target_asset_id** | **str**| The ID of the TargetAsset to get. |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully get target asset. |  -  |
**0** | Unexpected errors |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_targets_target_asset_id_patch**
> TargetAsset portfolio_groups_portfolio_group_id_targets_target_asset_id_patch(portfolio_group_id, target_asset_id, target_asset)

Update a TargetAsset under the specified PortfolioGroup.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.target_asset import TargetAsset
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup under which to patch the target asset.
    target_asset_id = "targetAssetId_example" # str | The ID of the TargetAsset to patch.
    target_asset = TargetAsset(
        id="2bcd7cc3-e922-4976-bce1-9858296801c3",
        symbol=UniversalSymbol(
            id="2bcd7cc3-e922-4976-bce1-9858296801c3",
            symbol="VAB.TO",
            raw_symbol="VAB",
            description="VANGUARD CDN AGGREGATE BOND INDEX ETF",
            currency=Currency(),
            exchange=Exchange(),
            type=SecurityType(),
            currencies=[
                Currency(),
            ],
        ),
        percent=Percent(90),
        is_supported=True,
        is_excluded=True,
        meta={},
    ) # TargetAsset | 

    # example passing only required values which don't have defaults set
    try:
        # Update a TargetAsset under the specified PortfolioGroup.
        api_response = api_instance.portfolio_groups_portfolio_group_id_targets_target_asset_id_patch(portfolio_group_id, target_asset_id, target_asset)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_portfolio_group_id_targets_target_asset_id_patch: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup under which to patch the target asset. |
 **target_asset_id** | **str**| The ID of the TargetAsset to patch. |
 **target_asset** | [**TargetAsset**](TargetAsset.md)|  |

### Return type

[**TargetAsset**](TargetAsset.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The target asset is updated. |  -  |
**400** | The specified portfolioGroupId or targetAssetId is invalid (not a UUID string) or the input data is invalid. |  -  |
**404** | The specified portfolioGroupId or targetAssetId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_post**
> [PortfolioGroup] portfolio_groups_post(user_id, user_secret, portfolio_group)

Create new portfolio group

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import portfolio_management_api
from snaptrade_client.model.portfolio_group import PortfolioGroup
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

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
    api_instance = portfolio_management_api.PortfolioManagementApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    portfolio_group = PortfolioGroup() # PortfolioGroup | 

    # example passing only required values which don't have defaults set
    try:
        # Create new portfolio group
        api_response = api_instance.portfolio_groups_post(user_id, user_secret, portfolio_group)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling PortfolioManagementApi->portfolio_groups_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **portfolio_group** | [**PortfolioGroup**](PortfolioGroup.md)|  |

### Return type

[**[PortfolioGroup]**](PortfolioGroup.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A new PortfolioGroup is created. |  -  |
**400** | The input data is missing or invalid. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

