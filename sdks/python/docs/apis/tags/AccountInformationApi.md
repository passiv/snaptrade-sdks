# snaptrade_client.account_information

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_user_holdings**](#get_all_user_holdings) | **get** /holdings | List all accounts for the user, plus balances, positions, and orders for each account.
[**get_user_account_balance**](#get_user_account_balance) | **get** /accounts/{accountId}/balances | List account balances
[**get_user_account_details**](#get_user_account_details) | **get** /accounts/{accountId} | Return details of a specific investment account
[**get_user_account_orders**](#get_user_account_orders) | **get** /accounts/{accountId}/orders | Get history of orders placed in account
[**get_user_account_positions**](#get_user_account_positions) | **get** /accounts/{accountId}/positions | List account positions
[**get_user_holdings**](#get_user_holdings) | **get** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
[**list_user_accounts**](#list_user_accounts) | **get** /accounts | List accounts
[**update_user_account**](#update_user_account) | **put** /accounts/{accountId} | Update details of an investment account

# **get_all_user_holdings**

List all accounts for the user, plus balances, positions, and orders for each account.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List all accounts for the user, plus balances, positions, and orders for each account.
    get_all_user_holdings_response = (
        snaptrade.account_information.get_all_user_holdings(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631",  # optional
        )
    )
    pprint(get_all_user_holdings_response.body)
    pprint(get_all_user_holdings_response.body["account"])
    pprint(get_all_user_holdings_response.body["balances"])
    pprint(get_all_user_holdings_response.body["positions"])
    pprint(get_all_user_holdings_response.body["total_value"])
    pprint(get_all_user_holdings_response.headers)
    pprint(get_all_user_holdings_response.status)
    pprint(get_all_user_holdings_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_all_user_holdings: %s\n" % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_balance**

List account balances

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List account balances
    get_user_account_balance_response = (
        snaptrade.account_information.get_user_account_balance(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
        )
    )
    pprint(get_user_account_balance_response.body)
    pprint(get_user_account_balance_response.body["currency"])
    pprint(get_user_account_balance_response.body["cash"])
    pprint(get_user_account_balance_response.headers)
    pprint(get_user_account_balance_response.status)
    pprint(get_user_account_balance_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_balance: %s\n"
        % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_details**

Return details of a specific investment account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Return details of a specific investment account
    get_user_account_details_response = (
        snaptrade.account_information.get_user_account_details(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
        )
    )
    pprint(get_user_account_details_response.body)
    pprint(get_user_account_details_response.body["id"])
    pprint(get_user_account_details_response.body["brokerage_authorization"])
    pprint(get_user_account_details_response.body["portfolio_group"])
    pprint(get_user_account_details_response.body["name"])
    pprint(get_user_account_details_response.body["number"])
    pprint(get_user_account_details_response.body["institution_name"])
    pprint(get_user_account_details_response.body["created_date"])
    pprint(get_user_account_details_response.body["meta"])
    pprint(get_user_account_details_response.body["cash_restrictions"])
    pprint(get_user_account_details_response.body["sync_status"])
    pprint(get_user_account_details_response.headers)
    pprint(get_user_account_details_response.status)
    pprint(get_user_account_details_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_details: %s\n"
        % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_orders**

Get history of orders placed in account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get history of orders placed in account
    get_user_account_orders_response = (
        snaptrade.account_information.get_user_account_orders(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
            state="all",  # optional
        )
    )
    pprint(get_user_account_orders_response.body)
    pprint(get_user_account_orders_response.body["brokerage_order_id"])
    pprint(get_user_account_orders_response.body["status"])
    pprint(get_user_account_orders_response.body["symbol"])
    pprint(get_user_account_orders_response.body["universal_symbol"])
    pprint(get_user_account_orders_response.body["option_symbol"])
    pprint(get_user_account_orders_response.body["action"])
    pprint(get_user_account_orders_response.body["total_quantity"])
    pprint(get_user_account_orders_response.body["open_quantity"])
    pprint(get_user_account_orders_response.body["canceled_quantity"])
    pprint(get_user_account_orders_response.body["filled_quantity"])
    pprint(get_user_account_orders_response.body["execution_price"])
    pprint(get_user_account_orders_response.body["limit_price"])
    pprint(get_user_account_orders_response.body["stop_price"])
    pprint(get_user_account_orders_response.body["order_type"])
    pprint(get_user_account_orders_response.body["time_in_force"])
    pprint(get_user_account_orders_response.body["time_placed"])
    pprint(get_user_account_orders_response.body["time_updated"])
    pprint(get_user_account_orders_response.body["expiry_date"])
    pprint(get_user_account_orders_response.headers)
    pprint(get_user_account_orders_response.status)
    pprint(get_user_account_orders_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_orders: %s\n" % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_account_positions**

List account positions

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List account positions
    get_user_account_positions_response = (
        snaptrade.account_information.get_user_account_positions(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            account_id="accountId_example",  # required
        )
    )
    pprint(get_user_account_positions_response.body)
    pprint(get_user_account_positions_response.body["symbol"])
    pprint(get_user_account_positions_response.body["units"])
    pprint(get_user_account_positions_response.body["price"])
    pprint(get_user_account_positions_response.body["open_pnl"])
    pprint(get_user_account_positions_response.body["fractional_units"])
    pprint(get_user_account_positions_response.body["average_purchase_price"])
    pprint(get_user_account_positions_response.headers)
    pprint(get_user_account_positions_response.status)
    pprint(get_user_account_positions_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling AccountInformationApi.get_user_account_positions: %s\n"
        % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_holdings**

List balances, positions and orders for the specified account.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List balances, positions and orders for the specified account.
    get_user_holdings_response = snaptrade.account_information.get_user_holdings(
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(get_user_holdings_response.body)
    pprint(get_user_holdings_response.body["account"])
    pprint(get_user_holdings_response.body["balances"])
    pprint(get_user_holdings_response.body["positions"])
    pprint(get_user_holdings_response.body["orders"])
    pprint(get_user_holdings_response.body["total_value"])
    pprint(get_user_holdings_response.headers)
    pprint(get_user_holdings_response.status)
    pprint(get_user_holdings_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AccountInformationApi.get_user_holdings: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_user_accounts**

List accounts

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List accounts
    list_user_accounts_response = snaptrade.account_information.list_user_accounts(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(list_user_accounts_response.body)
    pprint(list_user_accounts_response.body["id"])
    pprint(list_user_accounts_response.body["brokerage_authorization"])
    pprint(list_user_accounts_response.body["portfolio_group"])
    pprint(list_user_accounts_response.body["name"])
    pprint(list_user_accounts_response.body["number"])
    pprint(list_user_accounts_response.body["institution_name"])
    pprint(list_user_accounts_response.body["created_date"])
    pprint(list_user_accounts_response.body["meta"])
    pprint(list_user_accounts_response.body["cash_restrictions"])
    pprint(list_user_accounts_response.body["sync_status"])
    pprint(list_user_accounts_response.headers)
    pprint(list_user_accounts_response.status)
    pprint(list_user_accounts_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AccountInformationApi.list_user_accounts: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **update_user_account**

Update details of an investment account

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Update details of an investment account
    update_user_account_response = snaptrade.account_information.update_user_account(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        account_id="accountId_example",  # required
    )
    pprint(update_user_account_response.body)
    pprint(update_user_account_response.body["id"])
    pprint(update_user_account_response.body["brokerage_authorization"])
    pprint(update_user_account_response.body["portfolio_group"])
    pprint(update_user_account_response.body["name"])
    pprint(update_user_account_response.body["number"])
    pprint(update_user_account_response.body["institution_name"])
    pprint(update_user_account_response.body["created_date"])
    pprint(update_user_account_response.body["meta"])
    pprint(update_user_account_response.body["cash_restrictions"])
    pprint(update_user_account_response.body["sync_status"])
    pprint(update_user_account_response.headers)
    pprint(update_user_account_response.status)
    pprint(update_user_account_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AccountInformationApi.update_user_account: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

