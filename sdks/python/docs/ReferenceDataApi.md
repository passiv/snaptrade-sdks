# snaptrade_client.ReferenceDataApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accounts_account_id_symbols_post**](ReferenceDataApi.md#accounts_account_id_symbols_post) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring
[**brokerage_authorization_types_get**](ReferenceDataApi.md#brokerage_authorization_types_get) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
[**brokerages_get**](ReferenceDataApi.md#brokerages_get) | **GET** /brokerages | List of all brokerages.
[**currencies_get**](ReferenceDataApi.md#currencies_get) | **GET** /currencies | List of all supported currencies
[**currencies_rates_currency_pair_get**](ReferenceDataApi.md#currencies_rates_currency_pair_get) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
[**currencies_rates_get**](ReferenceDataApi.md#currencies_rates_get) | **GET** /currencies/rates | Return the exchange rates of all supported currencies
[**exchanges_get**](ReferenceDataApi.md#exchanges_get) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes
[**security_types_get**](ReferenceDataApi.md#security_types_get) | **GET** /securityTypes | List of all security types.
[**snap_trade_partners_get**](ReferenceDataApi.md#snap_trade_partners_get) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
[**symbols_post**](ReferenceDataApi.md#symbols_post) | **POST** /symbols | Search for symbols
[**symbols_symbol_id_get**](ReferenceDataApi.md#symbols_symbol_id_get) | **GET** /symbols/{symbolId} | Get details of a symbol
[**symbols_ticker_get**](ReferenceDataApi.md#symbols_ticker_get) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker


# **accounts_account_id_symbols_post**
> [UniversalSymbol] accounts_account_id_symbols_post(user_id, user_secret, account_id)

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
        api_response = api_instance.accounts_account_id_symbols_post(user_id, user_secret, account_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->accounts_account_id_symbols_post: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search for symbols that are supported by a brokerage account using a substring
        api_response = api_instance.accounts_account_id_symbols_post(user_id, user_secret, account_id, symbol_query=symbol_query)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->accounts_account_id_symbols_post: %s\n" % e)
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

# **brokerage_authorization_types_get**
> [BrokerageAuthorizationTypeReadOnly] brokerage_authorization_types_get()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    brokerage = "QUESTRADE,ALPACA" # str | Comma separated value of brokerage slugs (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # List of all brokerage authorization types
        api_response = api_instance.brokerage_authorization_types_get(brokerage=brokerage)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->brokerage_authorization_types_get: %s\n" % e)
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

# **brokerages_get**
> [Brokerage] brokerages_get()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of all brokerages.
        api_response = api_instance.brokerages_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->brokerages_get: %s\n" % e)
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

# **currencies_get**
> [Currency] currencies_get()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of all supported currencies
        api_response = api_instance.currencies_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->currencies_get: %s\n" % e)
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

# **currencies_rates_currency_pair_get**
> ExchangeRatePairs currencies_rates_currency_pair_get(currency_pair)

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    currency_pair = "currencyPair_example" # str | A currency pair based on currency code for example, {CAD-USD}

    # example passing only required values which don't have defaults set
    try:
        # Return the exchange rate of a currency pair
        api_response = api_instance.currencies_rates_currency_pair_get(currency_pair)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->currencies_rates_currency_pair_get: %s\n" % e)
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

# **currencies_rates_get**
> [ExchangeRatePairs] currencies_rates_get()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Return the exchange rates of all supported currencies
        api_response = api_instance.currencies_rates_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->currencies_rates_get: %s\n" % e)
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

# **exchanges_get**
> [Exchange] exchanges_get()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Return list of stock exchanges on Passiv and their suffixes
        api_response = api_instance.exchanges_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->exchanges_get: %s\n" % e)
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

# **security_types_get**
> [SecurityType] security_types_get()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # List of all security types.
        api_response = api_instance.security_types_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->security_types_get: %s\n" % e)
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

# **snap_trade_partners_get**
> PartnerData snap_trade_partners_get()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get metadata related to Snaptrade partner
        api_response = api_instance.snap_trade_partners_get()
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->snap_trade_partners_get: %s\n" % e)
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

# **symbols_post**
> [UniversalSymbol] symbols_post()

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    symbol_query = SymbolQuery(
        substring="apple",
    ) # SymbolQuery |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search for symbols
        api_response = api_instance.symbols_post(symbol_query=symbol_query)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->symbols_post: %s\n" % e)
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

# **symbols_symbol_id_get**
> UniversalSymbol symbols_symbol_id_get(symbol_id)

Get details of a symbol

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    symbol_id = "symbolId_example" # str | The ID of the UniversalSymbol to get.

    # example passing only required values which don't have defaults set
    try:
        # Get details of a symbol
        api_response = api_instance.symbols_symbol_id_get(symbol_id)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->symbols_symbol_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **str**| The ID of the UniversalSymbol to get. |

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
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **symbols_ticker_get**
> UniversalSymbol symbols_ticker_get(ticker)

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
    api_instance = reference_data_api.ReferenceDataApi(api_client)
    ticker = "ticker_example" # str | The ticker of the UniversalSymbol to get.

    # example passing only required values which don't have defaults set
    try:
        # Get details of a symbol by the ticker
        api_response = api_instance.symbols_ticker_get(ticker)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ReferenceDataApi->symbols_ticker_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker** | **str**| The ticker of the UniversalSymbol to get. |

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

