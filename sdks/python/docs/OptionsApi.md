# snaptrade_client.OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_account_id_options_chain_get**](OptionsApi.md#accounts_account_id_options_chain_get) | **GET** /accounts/{accountId}/options_chain | Get the options chain
[**accounts_account_id_options_get**](OptionsApi.md#accounts_account_id_options_get) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
[**accounts_account_id_options_search_get**](OptionsApi.md#accounts_account_id_options_search_get) | **GET** /accounts/{accountId}/options_search | Search for more specific option quotes from option chain. Date is required but can filter by min, max or min-max.
[**accounts_account_id_strategy_impact_post**](OptionsApi.md#accounts_account_id_strategy_impact_post) | **POST** /accounts/{accountId}/strategy_impact | Get a strategies impact on the account
[**accounts_account_id_strategy_place_post**](OptionsApi.md#accounts_account_id_strategy_place_post) | **POST** /accounts/{accountId}/strategy_place | Place the strategy order; impact not required but the StrategyOrderQuotes object is
[**accounts_account_id_strategy_quotes_post**](OptionsApi.md#accounts_account_id_strategy_quotes_post) | **POST** /accounts/{accountId}/strategy_quotes | Get a price quote for a strategy


# **accounts_account_id_options_chain_get**
> OptionChain accounts_account_id_options_chain_get(user_id, user_secret, account_id, symbol)

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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    symbol = "symbol_example" # str | brokerage symbol to get quotes for.

    # example passing only required values which don't have defaults set
    try:
        # Get the options chain
        api_response = api_instance.accounts_account_id_options_chain_get(user_id, user_secret, account_id, symbol)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_options_chain_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **symbol** | **str**| brokerage symbol to get quotes for. |

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

# **accounts_account_id_options_get**
> OptionsHoldings accounts_account_id_options_get(user_id, user_secret, account_id)

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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.

    # example passing only required values which don't have defaults set
    try:
        # Get the options holdings in the account
        api_response = api_instance.accounts_account_id_options_get(user_id, user_secret, account_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_options_get: %s\n" % e)
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

# **accounts_account_id_options_search_get**
> OptionChain accounts_account_id_options_search_get(user_id, user_secret, account_id, date)

Search for more specific option quotes from option chain. Date is required but can filter by min, max or min-max.

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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    date = "Date_example" # str | The date of the options you are searching for. Will return closest date that has not passed. Format- [YYYY-MM-DD]
    min_strike = 1 # int | The minimum strike price for the desired contract (optional)
    max_strike = 1 # int | The max strike price for the desired contract (optional)

    # example passing only required values which don't have defaults set
    try:
        # Search for more specific option quotes from option chain. Date is required but can filter by min, max or min-max.
        api_response = api_instance.accounts_account_id_options_search_get(user_id, user_secret, account_id, date)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_options_search_get: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search for more specific option quotes from option chain. Date is required but can filter by min, max or min-max.
        api_response = api_instance.accounts_account_id_options_search_get(user_id, user_secret, account_id, date, min_strike=min_strike, max_strike=max_strike)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_options_search_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **date** | **str**| The date of the options you are searching for. Will return closest date that has not passed. Format- [YYYY-MM-DD] |
 **min_strike** | **int**| The minimum strike price for the desired contract | [optional]
 **max_strike** | **int**| The max strike price for the desired contract | [optional]

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
**200** | A successful query |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accounts_account_id_strategy_impact_post**
> StrategyImpact accounts_account_id_strategy_impact_post(user_id, user_secret, account_id, strategy_quotes_record, body)

Get a strategies impact on the account

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.strategy_impact import StrategyImpact
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    strategy_quotes_record = {} # {str: (bool, date, datetime, dict, float, int, list, str, none_type)} | The strategy quotes record returned from the strategy_quotes endpoint
    body = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | 
    strike_price = 1 # int | The strike price, only needed if the order is a limit order (optional)
    primary_route = "primary_route_example" # str | The desired route for the order, default is \"AUTO\" (optional)
    secondar_route = "secondar_route_example" # str | The desired secondary route for the order, default is \"AUTO\" (optional)

    # example passing only required values which don't have defaults set
    try:
        # Get a strategies impact on the account
        api_response = api_instance.accounts_account_id_strategy_impact_post(user_id, user_secret, account_id, strategy_quotes_record, body)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_strategy_impact_post: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get a strategies impact on the account
        api_response = api_instance.accounts_account_id_strategy_impact_post(user_id, user_secret, account_id, strategy_quotes_record, body, strike_price=strike_price, primary_route=primary_route, secondar_route=secondar_route)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_strategy_impact_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **strategy_quotes_record** | [**{str: (bool, date, datetime, dict, float, int, list, str, none_type)}**](bool, date, datetime, dict, float, int, list, str, none_type.md)| The strategy quotes record returned from the strategy_quotes endpoint |
 **body** | **str**|  |
 **strike_price** | **int**| The strike price, only needed if the order is a limit order | [optional]
 **primary_route** | **str**| The desired route for the order, default is \&quot;AUTO\&quot; | [optional]
 **secondar_route** | **str**| The desired secondary route for the order, default is \&quot;AUTO\&quot; | [optional]

### Return type

[**StrategyImpact**](StrategyImpact.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Impact of option strategy on user account |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accounts_account_id_strategy_place_post**
> StrategyOrderPlace accounts_account_id_strategy_place_post(user_id, user_secret, strategy_order, strike_price, account_id, body)

Place the strategy order; impact not required but the StrategyOrderQuotes object is

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.strategy_order_place import StrategyOrderPlace
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    strategy_order = 1635790389 # int | 
    strike_price = 1635790389 # int | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    body = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | 
    primary_route = 1635790389 # int |  (optional)
    secondary_route = 1635790389 # int |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Place the strategy order; impact not required but the StrategyOrderQuotes object is
        api_response = api_instance.accounts_account_id_strategy_place_post(user_id, user_secret, strategy_order, strike_price, account_id, body)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_strategy_place_post: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Place the strategy order; impact not required but the StrategyOrderQuotes object is
        api_response = api_instance.accounts_account_id_strategy_place_post(user_id, user_secret, strategy_order, strike_price, account_id, body, primary_route=primary_route, secondary_route=secondary_route)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_strategy_place_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **strategy_order** | **int**|  |
 **strike_price** | **int**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **body** | **str**|  |
 **primary_route** | **int**|  | [optional]
 **secondary_route** | **int**|  | [optional]

### Return type

[**StrategyOrderPlace**](StrategyOrderPlace.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order Record of canceled order |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accounts_account_id_strategy_quotes_post**
> bool, date, datetime, dict, float, int, list, str, none_type accounts_account_id_strategy_quotes_post(user_id, user_secret, legs, strategy, time_in_force, order_type, account_id, manual_trade_form)

Get a price quote for a strategy

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import options_api
from snaptrade_client.model.manual_trade_form import ManualTradeForm
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
    api_instance = options_api.OptionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    legs = 1635790389 # int | 
    strategy = "strategy_example" # str | 
    time_in_force = "time_in_force_example" # str | 
    order_type = "order_type_example" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    manual_trade_form = ManualTradeForm(
        account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
        action=Action("BUY"),
        order_type=OrderType("Limit"),
        price=31.33,
        stop=31.33,
        time_in_force=TimeInForce("Day"),
        units=3.14,
        universal_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    ) # ManualTradeForm | 

    # example passing only required values which don't have defaults set
    try:
        # Get a price quote for a strategy
        api_response = api_instance.accounts_account_id_strategy_quotes_post(user_id, user_secret, legs, strategy, time_in_force, order_type, account_id, manual_trade_form)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling OptionsApi->accounts_account_id_strategy_quotes_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **legs** | **int**|  |
 **strategy** | **str**|  |
 **time_in_force** | **str**|  |
 **order_type** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **manual_trade_form** | [**ManualTradeForm**](ManualTradeForm.md)|  |

### Return type

**bool, date, datetime, dict, float, int, list, str, none_type**

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

