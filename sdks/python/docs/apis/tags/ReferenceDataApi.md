# snaptrade_client.reference_data

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_currency_exchange_rate_pair**](#get_currency_exchange_rate_pair) | **get** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
[**get_partner_info**](#get_partner_info) | **get** /snapTrade/partners | Get metadata related to Snaptrade partner
[**get_security_types**](#get_security_types) | **get** /securityTypes | List of all security types.
[**get_stock_exchanges**](#get_stock_exchanges) | **get** /exchanges | List exchanges
[**get_symbols**](#get_symbols) | **post** /symbols | Search for symbols
[**get_symbols_by_ticker**](#get_symbols_by_ticker) | **get** /symbols/{ticker} | Get details of a symbol by the ticker
[**list_all_brokerage_authorization_type**](#list_all_brokerage_authorization_type) | **get** /brokerageAuthorizationTypes | List of all brokerage authorization types
[**list_all_brokerages**](#list_all_brokerages) | **get** /brokerages | List brokerages
[**list_all_currencies**](#list_all_currencies) | **get** /currencies | List currencies
[**list_all_currencies_rates**](#list_all_currencies_rates) | **get** /currencies/rates | List currency exchange rates
[**symbol_search_user_account**](#symbol_search_user_account) | **post** /accounts/{accountId}/symbols | Search for symbols available in an account

# **get_currency_exchange_rate_pair**

Return the exchange rate of a currency pair

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_partner_info**

Get metadata related to Snaptrade partner

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_security_types**

List of all security types.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_stock_exchanges**

List exchanges

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List exchanges
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_symbols**

Search for symbols

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
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
    pprint(get_symbols_response.body["currency"])
    pprint(get_symbols_response.body["type"])
    pprint(get_symbols_response.body["currencies"])
    pprint(get_symbols_response.body["description"])
    pprint(get_symbols_response.body["exchange"])
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_symbols_by_ticker**

Get details of a symbol by the ticker

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
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
    pprint(get_symbols_by_ticker_response.body["currency"])
    pprint(get_symbols_by_ticker_response.body["type"])
    pprint(get_symbols_by_ticker_response.body["currencies"])
    pprint(get_symbols_by_ticker_response.body["description"])
    pprint(get_symbols_by_ticker_response.body["exchange"])
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_brokerage_authorization_type**

List of all brokerage authorization types

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_brokerages**

List brokerages

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List brokerages
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_currencies**

List currencies

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List currencies
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_all_currencies_rates**

List currency exchange rates

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List currency exchange rates
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **symbol_search_user_account**

Search for symbols available in an account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Search for symbols available in an account
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
    pprint(symbol_search_user_account_response.body["currency"])
    pprint(symbol_search_user_account_response.body["type"])
    pprint(symbol_search_user_account_response.body["currencies"])
    pprint(symbol_search_user_account_response.body["description"])
    pprint(symbol_search_user_account_response.body["exchange"])
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

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

