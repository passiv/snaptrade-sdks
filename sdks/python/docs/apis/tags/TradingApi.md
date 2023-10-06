# snaptrade_client.trading

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_user_account_order**](#cancel_user_account_order) | **post** /accounts/{accountId}/orders/cancel | Cancel open order in account
[**get_order_impact**](#get_order_impact) | **post** /trade/impact | Check impact of trades on account.
[**get_user_account_quotes**](#get_user_account_quotes) | **get** /accounts/{accountId}/quotes | Get symbol quotes
[**place_force_order**](#place_force_order) | **post** /trade/place | Place a trade with NO validation.
[**place_oco_order**](#place_oco_order) | **post** /trade/oco | Place a OCO (One Cancels Other) order
[**place_order**](#place_order) | **post** /trade/{tradeId} | Place order

# **cancel_user_account_order**

Cancel open order in account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Cancel open order in account
    cancel_user_account_order_response = snaptrade.trading.cancel_user_account_order(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="accountId_example",  # required
        brokerage_order_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
    )
    pprint(cancel_user_account_order_response.body)
    pprint(cancel_user_account_order_response.body["brokerage_order_id"])
    pprint(cancel_user_account_order_response.body["status"])
    pprint(cancel_user_account_order_response.body["symbol"])
    pprint(cancel_user_account_order_response.body["universal_symbol"])
    pprint(cancel_user_account_order_response.body["option_symbol"])
    pprint(cancel_user_account_order_response.body["action"])
    pprint(cancel_user_account_order_response.body["total_quantity"])
    pprint(cancel_user_account_order_response.body["open_quantity"])
    pprint(cancel_user_account_order_response.body["canceled_quantity"])
    pprint(cancel_user_account_order_response.body["filled_quantity"])
    pprint(cancel_user_account_order_response.body["execution_price"])
    pprint(cancel_user_account_order_response.body["limit_price"])
    pprint(cancel_user_account_order_response.body["stop_price"])
    pprint(cancel_user_account_order_response.body["order_type"])
    pprint(cancel_user_account_order_response.body["time_in_force"])
    pprint(cancel_user_account_order_response.body["time_placed"])
    pprint(cancel_user_account_order_response.body["time_updated"])
    pprint(cancel_user_account_order_response.body["expiry_date"])
    pprint(cancel_user_account_order_response.headers)
    pprint(cancel_user_account_order_response.status)
    pprint(cancel_user_account_order_response.round_trip_time)
except ApiException as e:
    print("Exception when calling TradingApi.cancel_user_account_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_order_impact**

Check impact of trades on account.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Check impact of trades on account.
    get_order_impact_response = snaptrade.trading.get_order_impact(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
        action="BUY",  # optional
        order_type="Limit",  # optional
        price=31.33,  # optional
        stop=31.33,  # optional
        time_in_force="Day",  # optional
        units=3.14,  # optional
        universal_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
    )
    pprint(get_order_impact_response.body)
    pprint(get_order_impact_response.body["trade"])
    pprint(get_order_impact_response.body["trade_impacts"])
    pprint(get_order_impact_response.body["combined_remaining_balance"])
    pprint(get_order_impact_response.headers)
    pprint(get_order_impact_response.status)
    pprint(get_order_impact_response.round_trip_time)
except ApiException as e:
    print("Exception when calling TradingApi.get_order_impact: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_quotes**

Get symbol quotes

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get symbol quotes
    get_user_account_quotes_response = snaptrade.trading.get_user_account_quotes(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        symbols="symbols_example",  # required
        account_id="accountId_example",  # required
        use_ticker=True,  # optional
    )
    pprint(get_user_account_quotes_response.body)
    pprint(get_user_account_quotes_response.headers)
    pprint(get_user_account_quotes_response.status)
    pprint(get_user_account_quotes_response.round_trip_time)
except ApiException as e:
    print("Exception when calling TradingApi.get_user_account_quotes: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_force_order**

Place a trade with NO validation.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Place a trade with NO validation.
    place_force_order_response = snaptrade.trading.place_force_order(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
        action="BUY",  # optional
        order_type="Limit",  # optional
        price=31.33,  # optional
        stop=31.33,  # optional
        time_in_force="Day",  # optional
        units=3.14,  # optional
        universal_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # optional
    )
    pprint(place_force_order_response.body)
    pprint(place_force_order_response.body["brokerage_order_id"])
    pprint(place_force_order_response.body["status"])
    pprint(place_force_order_response.body["symbol"])
    pprint(place_force_order_response.body["universal_symbol"])
    pprint(place_force_order_response.body["option_symbol"])
    pprint(place_force_order_response.body["action"])
    pprint(place_force_order_response.body["total_quantity"])
    pprint(place_force_order_response.body["open_quantity"])
    pprint(place_force_order_response.body["canceled_quantity"])
    pprint(place_force_order_response.body["filled_quantity"])
    pprint(place_force_order_response.body["execution_price"])
    pprint(place_force_order_response.body["limit_price"])
    pprint(place_force_order_response.body["stop_price"])
    pprint(place_force_order_response.body["order_type"])
    pprint(place_force_order_response.body["time_in_force"])
    pprint(place_force_order_response.body["time_placed"])
    pprint(place_force_order_response.body["time_updated"])
    pprint(place_force_order_response.body["expiry_date"])
    pprint(place_force_order_response.headers)
    pprint(place_force_order_response.status)
    pprint(place_force_order_response.round_trip_time)
except ApiException as e:
    print("Exception when calling TradingApi.place_force_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_oco_order**

Place a OCO (One Cancels Other) order

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Place a OCO (One Cancels Other) order
    place_oco_order_response = snaptrade.trading.place_oco_order(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        first_trade_id=None,  # optional
        second_trade_id=None,  # optional
    )
    pprint(place_oco_order_response.body)
    pprint(place_oco_order_response.body["brokerage_order_id"])
    pprint(place_oco_order_response.body["status"])
    pprint(place_oco_order_response.body["symbol"])
    pprint(place_oco_order_response.body["universal_symbol"])
    pprint(place_oco_order_response.body["option_symbol"])
    pprint(place_oco_order_response.body["action"])
    pprint(place_oco_order_response.body["total_quantity"])
    pprint(place_oco_order_response.body["open_quantity"])
    pprint(place_oco_order_response.body["canceled_quantity"])
    pprint(place_oco_order_response.body["filled_quantity"])
    pprint(place_oco_order_response.body["execution_price"])
    pprint(place_oco_order_response.body["limit_price"])
    pprint(place_oco_order_response.body["stop_price"])
    pprint(place_oco_order_response.body["order_type"])
    pprint(place_oco_order_response.body["time_in_force"])
    pprint(place_oco_order_response.body["time_placed"])
    pprint(place_oco_order_response.body["time_updated"])
    pprint(place_oco_order_response.body["expiry_date"])
    pprint(place_oco_order_response.headers)
    pprint(place_oco_order_response.status)
    pprint(place_oco_order_response.round_trip_time)
except ApiException as e:
    print("Exception when calling TradingApi.place_oco_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **place_order**

Place order

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Place order
    place_order_response = snaptrade.trading.place_order(
        trade_id="tradeId_example",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(place_order_response.body)
    pprint(place_order_response.body["brokerage_order_id"])
    pprint(place_order_response.body["status"])
    pprint(place_order_response.body["symbol"])
    pprint(place_order_response.body["universal_symbol"])
    pprint(place_order_response.body["option_symbol"])
    pprint(place_order_response.body["action"])
    pprint(place_order_response.body["total_quantity"])
    pprint(place_order_response.body["open_quantity"])
    pprint(place_order_response.body["canceled_quantity"])
    pprint(place_order_response.body["filled_quantity"])
    pprint(place_order_response.body["execution_price"])
    pprint(place_order_response.body["limit_price"])
    pprint(place_order_response.body["stop_price"])
    pprint(place_order_response.body["order_type"])
    pprint(place_order_response.body["time_in_force"])
    pprint(place_order_response.body["time_placed"])
    pprint(place_order_response.body["time_updated"])
    pprint(place_order_response.body["expiry_date"])
    pprint(place_order_response.headers)
    pprint(place_order_response.status)
    pprint(place_order_response.round_trip_time)
except ApiException as e:
    print("Exception when calling TradingApi.place_order: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

