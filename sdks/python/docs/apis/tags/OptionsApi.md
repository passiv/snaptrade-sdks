# snaptrade_client.options

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_option_strategy**](#get_option_strategy) | **post** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
[**get_options_chain**](#get_options_chain) | **get** /accounts/{accountId}/optionsChain | Get the options chain
[**get_options_strategy_quote**](#get_options_strategy_quote) | **get** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
[**list_option_holdings**](#list_option_holdings) | **get** /accounts/{accountId}/options | Get the options holdings in the account
[**place_option_strategy**](#place_option_strategy) | **post** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage

# **get_option_strategy**

Creates an option strategy object that will be used to place an option strategy order

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Creates an option strategy object that will be used to place an option strategy order
    get_option_strategy_response = snaptrade.options.get_option_strategy(
        underlying_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
        legs=[
            {
                "action": "BUY_TO_OPEN",
                "option_symbol_id": "SPY220819P00200000",
                "quantity": 1,
            }
        ],  # required
        strategy_type="CUSTOM",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="accountId_example",  # required
    )
    pprint(get_option_strategy_response.body)
    pprint(get_option_strategy_response.body["strategy"])
    pprint(get_option_strategy_response.body["open_price"])
    pprint(get_option_strategy_response.body["bid_price"])
    pprint(get_option_strategy_response.body["ask_price"])
    pprint(get_option_strategy_response.body["volatility"])
    pprint(get_option_strategy_response.body["greek"])
    pprint(get_option_strategy_response.headers)
    pprint(get_option_strategy_response.status)
    pprint(get_option_strategy_response.round_trip_time)
except ApiException as e:
    print("Exception when calling OptionsApi.get_option_strategy: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_options_chain**

Get the options chain

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get the options chain
    get_options_chain_response = snaptrade.options.get_options_chain(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="accountId_example",  # required
        symbol="symbol_example",  # required
    )
    pprint(get_options_chain_response.body)
    pprint(get_options_chain_response.headers)
    pprint(get_options_chain_response.status)
    pprint(get_options_chain_response.round_trip_time)
except ApiException as e:
    print("Exception when calling OptionsApi.get_options_chain: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_options_strategy_quote**

Get latest market data of option strategy

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get latest market data of option strategy
    get_options_strategy_quote_response = snaptrade.options.get_options_strategy_quote(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="accountId_example",  # required
        option_strategy_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
    )
    pprint(get_options_strategy_quote_response.body)
    pprint(get_options_strategy_quote_response.body["strategy"])
    pprint(get_options_strategy_quote_response.body["open_price"])
    pprint(get_options_strategy_quote_response.body["bid_price"])
    pprint(get_options_strategy_quote_response.body["ask_price"])
    pprint(get_options_strategy_quote_response.body["volatility"])
    pprint(get_options_strategy_quote_response.body["greek"])
    pprint(get_options_strategy_quote_response.headers)
    pprint(get_options_strategy_quote_response.status)
    pprint(get_options_strategy_quote_response.round_trip_time)
except ApiException as e:
    print("Exception when calling OptionsApi.get_options_strategy_quote: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_option_holdings**

Get the options holdings in the account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get the options holdings in the account
    list_option_holdings_response = snaptrade.options.list_option_holdings(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="accountId_example",  # required
    )
    pprint(list_option_holdings_response.body)
    pprint(list_option_holdings_response.body["symbol"])
    pprint(list_option_holdings_response.body["price"])
    pprint(list_option_holdings_response.body["units"])
    pprint(list_option_holdings_response.body["currency"])
    pprint(list_option_holdings_response.body["average_purchase_price"])
    pprint(list_option_holdings_response.body["open_pnl"])
    pprint(list_option_holdings_response.body["fractional_units"])
    pprint(list_option_holdings_response.headers)
    pprint(list_option_holdings_response.status)
    pprint(list_option_holdings_response.round_trip_time)
except ApiException as e:
    print("Exception when calling OptionsApi.list_option_holdings: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_option_strategy**

Place an option strategy order on the brokerage

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Place an option strategy order on the brokerage
    place_option_strategy_response = snaptrade.options.place_option_strategy(
        order_type="Limit",  # required
        time_in_force="DAY",  # required
        price=31.33,  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
        option_strategy_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
    )
    pprint(place_option_strategy_response.body)
    pprint(place_option_strategy_response.body["strategy"])
    pprint(place_option_strategy_response.body["status"])
    pprint(place_option_strategy_response.body["filled_quantity"])
    pprint(place_option_strategy_response.body["open_quantity"])
    pprint(place_option_strategy_response.body["closed_quantity"])
    pprint(place_option_strategy_response.body["order_type"])
    pprint(place_option_strategy_response.body["time_in_force"])
    pprint(place_option_strategy_response.body["limit_price"])
    pprint(place_option_strategy_response.body["execution_price"])
    pprint(place_option_strategy_response.body["time_placed"])
    pprint(place_option_strategy_response.body["time_updated"])
    pprint(place_option_strategy_response.headers)
    pprint(place_option_strategy_response.status)
    pprint(place_option_strategy_response.round_trip_time)
except ApiException as e:
    print("Exception when calling OptionsApi.place_option_strategy: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

