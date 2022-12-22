# snaptrade_client.TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_account_id_orders_cancel_post**](TradingApi.md#accounts_account_id_orders_cancel_post) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
[**accounts_account_id_orders_get**](TradingApi.md#accounts_account_id_orders_get) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account
[**accounts_account_id_quotes_get**](TradingApi.md#accounts_account_id_quotes_get) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
[**portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_impact_get**](TradingApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_impact_get) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio
[**portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get**](TradingApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it&#39;s placed
[**portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch**](TradingApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed
[**portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_place_orders_post**](TradingApi.md#portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_place_orders_post) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series
[**trade_impact_post**](TradingApi.md#trade_impact_post) | **POST** /trade/impact | Check impact of trades on account.
[**trade_oco_post**](TradingApi.md#trade_oco_post) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
[**trade_trade_id_post**](TradingApi.md#trade_trade_id_post) | **POST** /trade/{tradeId} | Place order


# **accounts_account_id_orders_cancel_post**
> AccountOrderRecord accounts_account_id_orders_cancel_post(user_id, user_secret, account_id, body)

Cancel open order in account

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.model.account_order_record import AccountOrderRecord
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
    api_instance = trading_api.TradingApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    body = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | 

    # example passing only required values which don't have defaults set
    try:
        # Cancel open order in account
        api_response = api_instance.accounts_account_id_orders_cancel_post(user_id, user_secret, account_id, body)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->accounts_account_id_orders_cancel_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **body** | **str**|  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Order Record of canceled order |  -  |
**400** | Unable to cancel open order. Please verify status in brokerage account |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accounts_account_id_orders_get**
> [AccountOrderRecord] accounts_account_id_orders_get(user_id, user_secret, account_id)

Get all history of orders placed in account

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.account_order_record import AccountOrderRecord
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
    api_instance = trading_api.TradingApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    state = "all" # str | defaults value is set to \"all\" (optional)

    # example passing only required values which don't have defaults set
    try:
        # Get all history of orders placed in account
        api_response = api_instance.accounts_account_id_orders_get(user_id, user_secret, account_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->accounts_account_id_orders_get: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get all history of orders placed in account
        api_response = api_instance.accounts_account_id_orders_get(user_id, user_secret, account_id, state=state)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->accounts_account_id_orders_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **state** | **str**| defaults value is set to \&quot;all\&quot; | [optional]

### Return type

[**[AccountOrderRecord]**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List all orders in account |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accounts_account_id_quotes_get**
> SymbolsQuotes accounts_account_id_quotes_get(user_id, user_secret, symbols, account_id)

Get symbol quotes

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.symbols_quotes import SymbolsQuotes
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
    api_instance = trading_api.TradingApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    symbols = "symbols_example" # str | List of universal_symbol_id or tickers to get quotes for.
    account_id = "accountId_example" # str | The ID of the account to get quotes.
    use_ticker = True # bool | Should be set to True if providing tickers. (optional)

    # example passing only required values which don't have defaults set
    try:
        # Get symbol quotes
        api_response = api_instance.accounts_account_id_quotes_get(user_id, user_secret, symbols, account_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->accounts_account_id_quotes_get: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get symbol quotes
        api_response = api_instance.accounts_account_id_quotes_get(user_id, user_secret, symbols, account_id, use_ticker=use_ticker)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->accounts_account_id_quotes_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **symbols** | **str**| List of universal_symbol_id or tickers to get quotes for. |
 **account_id** | **str**| The ID of the account to get quotes. |
 **use_ticker** | **bool**| Should be set to True if providing tickers. | [optional]

### Return type

[**SymbolsQuotes**](SymbolsQuotes.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns quotes object with different prices |  -  |
**500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_impact_get**
> [TradeImpact] portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_impact_get(portfolio_group_id, calculated_trade_id)

Return the impact of placing a series of trades on the portfolio

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.trade_impact import TradeImpact
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
    api_instance = trading_api.TradingApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to perform rebalancing calculations
    calculated_trade_id = "calculatedTradeId_example" # str | The ID of calculated trade to get account impact

    # example passing only required values which don't have defaults set
    try:
        # Return the impact of placing a series of trades on the portfolio
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_impact_get(portfolio_group_id, calculated_trade_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_impact_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to perform rebalancing calculations |
 **calculated_trade_id** | **str**| The ID of calculated trade to get account impact |

### Return type

[**[TradeImpact]**](TradeImpact.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Impact of trades to make |  -  |

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
from snaptrade_client.api import trading_api
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
    api_instance = trading_api.TradingApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to perform rebalancing calculations
    calculated_trade_id = "calculatedTradeId_example" # str | The ID of calculated trade to get account impact
    trade_id = "tradeId_example" # str | The ID of trade object

    # example passing only required values which don't have defaults set
    try:
        # Return details of a specific trade before it's placed
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get(portfolio_group_id, calculated_trade_id, trade_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_get: %s\n" % e)
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
from snaptrade_client.api import trading_api
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
    api_instance = trading_api.TradingApi(api_client)
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
        print("Exception when calling TradingApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Modify units of a trade before it is placed
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch(portfolio_group_id, calculated_trade_id, trade_id, trade=trade)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_modify_trade_id_patch: %s\n" % e)
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

# **portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_place_orders_post**
> [TradeExecutionStatus] portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_place_orders_post(portfolio_group_id, calculated_trade_id)

Place orders for the CalculatedTrades in series

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.trade_execution_status import TradeExecutionStatus
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
    api_instance = trading_api.TradingApi(api_client)
    portfolio_group_id = "portfolioGroupId_example" # str | The ID of the PortfolioGroup to perform rebalancing calculations
    calculated_trade_id = "calculatedTradeId_example" # str | The ID of calculated trade to get account impact

    # example passing only required values which don't have defaults set
    try:
        # Place orders for the CalculatedTrades in series
        api_response = api_instance.portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_place_orders_post(portfolio_group_id, calculated_trade_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->portfolio_groups_portfolio_group_id_calculatedtrades_calculated_trade_id_place_orders_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_group_id** | **str**| The ID of the PortfolioGroup to perform rebalancing calculations |
 **calculated_trade_id** | **str**| The ID of calculated trade to get account impact |

### Return type

[**[TradeExecutionStatus]**](TradeExecutionStatus.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Return trade execution statuses for all trades submitted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trade_impact_post**
> ManualTradeAndImpact trade_impact_post(user_id, user_secret, manual_trade_form)

Check impact of trades on account.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.model.manual_trade_and_impact import ManualTradeAndImpact
from snaptrade_client.model.model403_failed_request_response import Model403FailedRequestResponse
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
    api_instance = trading_api.TradingApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
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
        # Check impact of trades on account.
        api_response = api_instance.trade_impact_post(user_id, user_secret, manual_trade_form)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->trade_impact_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **manual_trade_form** | [**ManualTradeForm**](ManualTradeForm.md)|  |

### Return type

[**ManualTradeAndImpact**](ManualTradeAndImpact.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Return trade object and it&#39;s impact on the account |  -  |
**400** | Missing or wrong data format provided in request body |  -  |
**403** | User does not have permissions to place trades |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trade_oco_post**
> AccountOrderRecord trade_oco_post(user_id, user_secret, trade_oco_post_request)

Place a OCO (One Cancels Other) order

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.model.trade_oco_post_request import TradeOcoPostRequest
from snaptrade_client.model.account_order_record import AccountOrderRecord
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
    api_instance = trading_api.TradingApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    trade_oco_post_request = TradeOcoPostRequest(
        first_trade_id=None,
        second_trade_id=None,
    ) # TradeOcoPostRequest | 

    # example passing only required values which don't have defaults set
    try:
        # Place a OCO (One Cancels Other) order
        api_response = api_instance.trade_oco_post(user_id, user_secret, trade_oco_post_request)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->trade_oco_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **trade_oco_post_request** | [**TradeOcoPostRequest**](TradeOcoPostRequest.md)|  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Status of order placed |  -  |
**400** | Failed to submit order to broker |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trade_trade_id_post**
> AccountOrderRecord trade_trade_id_post(trade_id, user_id, user_secret)

Place order

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import trading_api
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.model.account_order_record import AccountOrderRecord
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
    api_instance = trading_api.TradingApi(api_client)
    trade_id = "tradeId_example" # str | The ID of trade object obtained from trade/impact endpoint
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 

    # example passing only required values which don't have defaults set
    try:
        # Place order
        api_response = api_instance.trade_trade_id_post(trade_id, user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling TradingApi->trade_trade_id_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trade_id** | **str**| The ID of trade object obtained from trade/impact endpoint |
 **user_id** | **str**|  |
 **user_secret** | **str**|  |

### Return type

[**AccountOrderRecord**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Status of order placed |  -  |
**400** | Failed to submit order to broker |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

