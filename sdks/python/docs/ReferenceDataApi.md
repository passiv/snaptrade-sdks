# snaptrade_client.ReferenceDataApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_currency_exchange_rate_pair**](ReferenceDataApi.md#get_currency_exchange_rate_pair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
[**get_partner_info**](ReferenceDataApi.md#get_partner_info) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
[**get_security_types**](ReferenceDataApi.md#get_security_types) | **GET** /securityTypes | List of all security types.
[**get_stock_exchanges**](ReferenceDataApi.md#get_stock_exchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes
[**get_symbols**](ReferenceDataApi.md#get_symbols) | **POST** /symbols | Search for symbols
[**get_symbols_by_ticker**](ReferenceDataApi.md#get_symbols_by_ticker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
[**list_all_brokerage_authorization_type**](ReferenceDataApi.md#list_all_brokerage_authorization_type) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
[**list_all_brokerages**](ReferenceDataApi.md#list_all_brokerages) | **GET** /brokerages | List of all brokerages.
[**list_all_currencies**](ReferenceDataApi.md#list_all_currencies) | **GET** /currencies | List of all supported currencies
[**list_all_currencies_rates**](ReferenceDataApi.md#list_all_currencies_rates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies
[**symbol_search_user_account**](ReferenceDataApi.md#symbol_search_user_account) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring


# **get_currency_exchange_rate_pair**
> ExchangeRatePairs get_currency_exchange_rate_pair(currency_pair)

Return the exchange rate of a currency pair

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.exchange_rate_pairs import ExchangeRatePairs
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    currency_pair = "currencyPair_example" # str | A currency pair based on currency code for example, {CAD-USD}

    # example passing only required values which don't have defaults set
    try:
        # Return the exchange rate of a currency pair
        api_response = api_instance.get_currency_exchange_rate_pair(currency_pair)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->get_currency_exchange_rate_pair: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_pair** | **str**| A currency pair based on currency code for example, {CAD-USD} |

### Return type

[**ExchangeRatePairs**](ExchangeRatePairs.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_partner_info**
> PartnerData get_partner_info()

Get metadata related to Snaptrade partner

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.model404_failed_request_response import Model404FailedRequestResponse
from snaptrade_client.model.model401_failed_request_response import Model401FailedRequestResponse
from snaptrade_client.model.partner_data import PartnerData
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get metadata related to Snaptrade partner
        api_response = api_instance.get_partner_info()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->get_partner_info: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**PartnerData**](PartnerData.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully obtained encrypted JWT data. See description on how to object JWT token |  -  |
**400** | Bad Request |  -  |
**401** | Unauthorized |  -  |
**404** | Not Found |  -  |
**500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_security_types**
> [SecurityType] get_security_types()

List of all security types.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.security_type import SecurityType
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of all security types.
        api_response = api_instance.get_security_types()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->get_security_types: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[SecurityType]**](SecurityType.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all defined Security Type objects. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_stock_exchanges**
> [Exchange] get_stock_exchanges()

Return list of stock exchanges on Passiv and their suffixes

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.exchange import Exchange
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Return list of stock exchanges on Passiv and their suffixes
        api_response = api_instance.get_stock_exchanges()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->get_stock_exchanges: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[Exchange]**](Exchange.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all supported stock exchanges |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_symbols**
> [UniversalSymbol] get_symbols()

Search for symbols

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.universal_symbol import UniversalSymbol
from snaptrade_client.model.symbol_query import SymbolQuery
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    symbol_query = SymbolQuery(
        substring="apple",
    ) # SymbolQuery |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search for symbols
        api_response = api_instance.get_symbols(symbol_query=symbol_query)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->get_symbols: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **get_symbols_by_ticker**
> UniversalSymbol get_symbols_by_ticker(ticker)

Get details of a symbol by the ticker

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.universal_symbol import UniversalSymbol
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    ticker = "ticker_example" # str | The ticker of the UniversalSymbol to get.
    symbol_id = "symbolId_example" # str | OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. (optional)

    # example passing only required values which don't have defaults set
    try:
        # Get details of a symbol by the ticker
        api_response = api_instance.get_symbols_by_ticker(ticker)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->get_symbols_by_ticker: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get details of a symbol by the ticker
        api_response = api_instance.get_symbols_by_ticker(ticker, symbol_id=symbol_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->get_symbols_by_ticker: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **str**| The ticker of the UniversalSymbol to get. |
 **symbol_id** | **str**| OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get. | [optional]

### Return type

[**UniversalSymbol**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully gets a symbol |  -  |
**404** | No symbol with the specified ticker found. |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_all_brokerage_authorization_type**
> [BrokerageAuthorizationTypeReadOnly] list_all_brokerage_authorization_type()

List of all brokerage authorization types

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.brokerage_authorization_type_read_only import BrokerageAuthorizationTypeReadOnly
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    brokerage = "QUESTRADE,ALPACA" # str | Comma separated value of brokerage slugs (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # List of all brokerage authorization types
        api_response = api_instance.list_all_brokerage_authorization_type(brokerage=brokerage)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->list_all_brokerage_authorization_type: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brokerage** | **str**| Comma separated value of brokerage slugs | [optional]

### Return type

[**[BrokerageAuthorizationTypeReadOnly]**](BrokerageAuthorizationTypeReadOnly.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all defined Brokerage Authorization Type objects. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_all_brokerages**
> [Brokerage] list_all_brokerages()

List of all brokerages.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.brokerage import Brokerage
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of all brokerages.
        api_response = api_instance.list_all_brokerages()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->list_all_brokerages: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[Brokerage]**](Brokerage.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all defined Brokerage objects. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_all_currencies**
> [Currency] list_all_currencies()

List of all supported currencies

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.currency import Currency
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of all supported currencies
        api_response = api_instance.list_all_currencies()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->list_all_currencies: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[Currency]**](Currency.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all supported currencies. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_all_currencies_rates**
> [ExchangeRatePairs] list_all_currencies_rates()

Return the exchange rates of all supported currencies

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.exchange_rate_pairs import ExchangeRatePairs
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Return the exchange rates of all supported currencies
        api_response = api_instance.list_all_currencies_rates()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->list_all_currencies_rates: %s\n" % e)
```


### Parameters
This endpoint does not need any parameter.

### Return type

[**[ExchangeRatePairs]**](ExchangeRatePairs.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all exchange rates pairs for supported currencies |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **symbol_search_user_account**
> [UniversalSymbol] symbol_search_user_account(user_id, user_secret, account_id)

Search for symbols that are supported by a brokerage account using a substring

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import reference_data_api
from snaptrade_client.model.universal_symbol import UniversalSymbol
from snaptrade_client.model.symbol_query import SymbolQuery
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    account_id = "accountId_example" # str | The ID of the account get positions.
    symbol_query = SymbolQuery(
        substring="apple",
    ) # SymbolQuery |  (optional)

    # example passing only required values which don't have defaults set
    try:
        # Search for symbols that are supported by a brokerage account using a substring
        api_response = api_instance.symbol_search_user_account(user_id, user_secret, account_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->symbol_search_user_account: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search for symbols that are supported by a brokerage account using a substring
        api_response = api_instance.symbol_search_user_account(user_id, user_secret, account_id, symbol_query=symbol_query)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->symbol_search_user_account: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **account_id** | **str**| The ID of the account get positions. |
 **symbol_query** | [**SymbolQuery**](SymbolQuery.md)|  | [optional]

### Return type

[**[UniversalSymbol]**](UniversalSymbol.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Array of universal symbol supported by account based on substring sent it |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

