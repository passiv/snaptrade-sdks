# snaptrade_client.OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_option_strategy**](OptionsApi.md#get_option_strategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
[**get_options_chain**](OptionsApi.md#get_options_chain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
[**get_options_strategy_quote**](OptionsApi.md#get_options_strategy_quote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
[**list_option_holdings**](OptionsApi.md#list_option_holdings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
[**place_option_strategy**](OptionsApi.md#place_option_strategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage


# **get_option_strategy**
> StrategyQuotes get_option_strategy(user_id, user_secret, account_id, options_get_option_strategy_request)

Creates an option strategy object that will be used to place an option strategy order

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.strategy_quotes import StrategyQuotes
from snaptrade_client.model.options_get_option_strategy_request import OptionsGetOptionStrategyRequest
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    options_get_option_strategy_request = OptionsGetOptionStrategyRequest(
        underlying_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
        legs=[
            OptionLeg(),
        ],
        strategy_type="CUSTOM",
    ) # OptionsGetOptionStrategyRequest | 

    # example passing only required values which don't have defaults set
    try:
        # Creates an option strategy object that will be used to place an option strategy order
        api_response = api_instance.get_option_strategy(user_id, user_secret, account_id, options_get_option_strategy_request)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->get_option_strategy: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **options_get_option_strategy_request** | [**OptionsGetOptionStrategyRequest**](OptionsGetOptionStrategyRequest.md)|  |

### Return type

[**StrategyQuotes**](StrategyQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order Quotes |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_options_chain**
> OptionChain get_options_chain(user_id, user_secret, account_id, symbol)

Get the options chain

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.option_chain import OptionChain
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    symbol = "symbol_example" # str | Universal symbol ID if symbol

    # example passing only required values which don't have defaults set
    try:
        # Get the options chain
        api_response = api_instance.get_options_chain(user_id, user_secret, account_id, symbol)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->get_options_chain: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **symbol** | **str**| Universal symbol ID if symbol |

### Return type

[**OptionChain**](OptionChain.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of all Options available for the brokerage symbol |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_options_strategy_quote**
> StrategyQuotes get_options_strategy_quote(user_id, user_secret, account_id, option_strategy_id)

Get latest market data of option strategy

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.strategy_quotes import StrategyQuotes
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    option_strategy_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | Option strategy id obtained from response when creating option strategy object

    # example passing only required values which don't have defaults set
    try:
        # Get latest market data of option strategy
        api_response = api_instance.get_options_strategy_quote(user_id, user_secret, account_id, option_strategy_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->get_options_strategy_quote: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **option_strategy_id** | **str**| Option strategy id obtained from response when creating option strategy object |

### Return type

[**StrategyQuotes**](StrategyQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order Quotes |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_option_holdings**
> OptionsHoldings list_option_holdings(user_id, user_secret, account_id)

Get the options holdings in the account

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.options_holdings import OptionsHoldings
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.

    # example passing only required values which don't have defaults set
    try:
        # Get the options holdings in the account
        api_response = api_instance.list_option_holdings(user_id, user_secret, account_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->list_option_holdings: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |

### Return type

[**OptionsHoldings**](OptionsHoldings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The option holdings in the account |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **place_option_strategy**
> StrategyOrderRecord place_option_strategy(user_id, user_secret, account_id, option_strategy_id, options_place_option_strategy_request)

Place an option strategy order on the brokerage

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.strategy_order_record import StrategyOrderRecord
from snaptrade_client.model.options_place_option_strategy_request import OptionsPlaceOptionStrategyRequest
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the account get positions.
    option_strategy_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | Option strategy id obtained from response when creating option strategy object
    options_place_option_strategy_request = OptionsPlaceOptionStrategyRequest(
        order_type="Limit",
        time_in_force="DAY",
        price=31.33,
    ) # OptionsPlaceOptionStrategyRequest | 

    # example passing only required values which don't have defaults set
    try:
        # Place an option strategy order on the brokerage
        api_response = api_instance.place_option_strategy(user_id, user_secret, account_id, option_strategy_id, options_place_option_strategy_request)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->place_option_strategy: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **option_strategy_id** | **str**| Option strategy id obtained from response when creating option strategy object |
 **options_place_option_strategy_request** | [**OptionsPlaceOptionStrategyRequest**](OptionsPlaceOptionStrategyRequest.md)|  |

### Return type

[**StrategyOrderRecord**](StrategyOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Status of strategy order placed |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

