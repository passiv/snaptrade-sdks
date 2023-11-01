<div align="center">

[![Visit SnapTrade](https://raw.githubusercontent.com/passiv/snaptrade-sdks/HEAD/sdks/python/header.png)](https://snaptrade.com)

# SnapTrade

Connect brokerage accounts to your app for live positions and trading


[![PyPI](https://img.shields.io/badge/PyPI-v10.34.4-blue)](https://pypi.org/project/snaptrade-python-sdk/10.34.4)
[![README.md](https://img.shields.io/badge/README-Click%20Here-green)](https://github.com/passiv/snaptrade-sdks/tree/master/sdks/python#readme)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Table of Contents

<!-- toc -->

- [Requirements](#requirements)
- [Installing](#installing)
- [Getting Started](#getting-started)
- [Async](#async)
- [Reference](#reference)
  * [`snaptrade.account_information.get_all_user_holdings`](#snaptradeaccount_informationget_all_user_holdings)
  * [`snaptrade.account_information.get_user_account_balance`](#snaptradeaccount_informationget_user_account_balance)
  * [`snaptrade.account_information.get_user_account_details`](#snaptradeaccount_informationget_user_account_details)
  * [`snaptrade.account_information.get_user_account_orders`](#snaptradeaccount_informationget_user_account_orders)
  * [`snaptrade.account_information.get_user_account_positions`](#snaptradeaccount_informationget_user_account_positions)
  * [`snaptrade.account_information.get_user_holdings`](#snaptradeaccount_informationget_user_holdings)
  * [`snaptrade.account_information.list_user_accounts`](#snaptradeaccount_informationlist_user_accounts)
  * [`snaptrade.account_information.update_user_account`](#snaptradeaccount_informationupdate_user_account)
  * [`snaptrade.api_status.check`](#snaptradeapi_statuscheck)
  * [`snaptrade.authentication.delete_snap_trade_user`](#snaptradeauthenticationdelete_snap_trade_user)
  * [`snaptrade.authentication.get_user_jwt`](#snaptradeauthenticationget_user_jwt)
  * [`snaptrade.authentication.list_snap_trade_users`](#snaptradeauthenticationlist_snap_trade_users)
  * [`snaptrade.authentication.login_snap_trade_user`](#snaptradeauthenticationlogin_snap_trade_user)
  * [`snaptrade.authentication.register_snap_trade_user`](#snaptradeauthenticationregister_snap_trade_user)
  * [`snaptrade.connections.detail_brokerage_authorization`](#snaptradeconnectionsdetail_brokerage_authorization)
  * [`snaptrade.connections.list_brokerage_authorizations`](#snaptradeconnectionslist_brokerage_authorizations)
  * [`snaptrade.connections.remove_brokerage_authorization`](#snaptradeconnectionsremove_brokerage_authorization)
  * [`snaptrade.connections.session_events`](#snaptradeconnectionssession_events)
  * [`snaptrade.error_logs.list_user_errors`](#snaptradeerror_logslist_user_errors)
  * [`snaptrade.options.get_option_strategy`](#snaptradeoptionsget_option_strategy)
  * [`snaptrade.options.get_options_chain`](#snaptradeoptionsget_options_chain)
  * [`snaptrade.options.get_options_strategy_quote`](#snaptradeoptionsget_options_strategy_quote)
  * [`snaptrade.options.list_option_holdings`](#snaptradeoptionslist_option_holdings)
  * [`snaptrade.options.place_option_strategy`](#snaptradeoptionsplace_option_strategy)
  * [`snaptrade.reference_data.get_currency_exchange_rate_pair`](#snaptradereference_dataget_currency_exchange_rate_pair)
  * [`snaptrade.reference_data.get_partner_info`](#snaptradereference_dataget_partner_info)
  * [`snaptrade.reference_data.get_security_types`](#snaptradereference_dataget_security_types)
  * [`snaptrade.reference_data.get_stock_exchanges`](#snaptradereference_dataget_stock_exchanges)
  * [`snaptrade.reference_data.get_symbols`](#snaptradereference_dataget_symbols)
  * [`snaptrade.reference_data.get_symbols_by_ticker`](#snaptradereference_dataget_symbols_by_ticker)
  * [`snaptrade.reference_data.list_all_brokerage_authorization_type`](#snaptradereference_datalist_all_brokerage_authorization_type)
  * [`snaptrade.reference_data.list_all_brokerages`](#snaptradereference_datalist_all_brokerages)
  * [`snaptrade.reference_data.list_all_currencies`](#snaptradereference_datalist_all_currencies)
  * [`snaptrade.reference_data.list_all_currencies_rates`](#snaptradereference_datalist_all_currencies_rates)
  * [`snaptrade.reference_data.symbol_search_user_account`](#snaptradereference_datasymbol_search_user_account)
  * [`snaptrade.trading.cancel_user_account_order`](#snaptradetradingcancel_user_account_order)
  * [`snaptrade.trading.get_order_impact`](#snaptradetradingget_order_impact)
  * [`snaptrade.trading.get_user_account_quotes`](#snaptradetradingget_user_account_quotes)
  * [`snaptrade.trading.place_force_order`](#snaptradetradingplace_force_order)
  * [`snaptrade.trading.place_oco_order`](#snaptradetradingplace_oco_order)
  * [`snaptrade.trading.place_order`](#snaptradetradingplace_order)
  * [`snaptrade.transactions_and_reporting.get_activities`](#snaptradetransactions_and_reportingget_activities)
  * [`snaptrade.transactions_and_reporting.get_reporting_custom_range`](#snaptradetransactions_and_reportingget_reporting_custom_range)

<!-- tocstop -->

## Requirements

Python >=3.7

## Installing

```sh
pip install snaptrade-python-sdk==10.34.4
```

## Getting Started

```python
import os
import uuid
from pprint import pprint
from snaptrade_client import SnapTrade

# 1) Initialize a client with your clientID and consumerKey.
snaptrade = SnapTrade(
    consumer_key=os.environ["SNAPTRADE_CONSUMER_KEY"],
    client_id=os.environ["SNAPTRADE_CLIENT_ID"],
)

# 2) Check that the client is able to make a request to the API server.
api_response = snaptrade.api_status.check()
pprint(api_response.body)

# 3) Create a new user on SnapTrade
user_id = str(uuid.uuid4())
register_response = snaptrade.authentication.register_snap_trade_user(
    body={"userId": user_id}
)
pprint(register_response.body)

# Note: A user secret is only generated once. It's required to access
# resources for certain endpoints.
user_secret = register_response.body["userSecret"]

# 4) Get a redirect URI. Users will need this to connect
# their brokerage to the SnapTrade server.
redirect_uri = snaptrade.authentication.login_snap_trade_user(
    query_params={"userId": user_id, "userSecret": user_secret}
)
print(redirect_uri.body)


snaptrade.portfolio_management.create(
    query_params={"userId": user_id, "userSecret": user_secret},
    body={"id": str(uuid.uuid4()), "name": "MyPortfolio"},
)
res = snaptrade.portfolio_management.list(
    query_params={"userId": user_id, "userSecret": user_secret}
)
pprint(res.body)

# 5) Obtaining account holdings data
holdings = snaptrade.account_information.get_all_user_holdings(
    query_params={"userId": user_id, "userSecret": user_secret}
)
pprint(holdings.body)

# 6) Deleting a user
deleted_response = snaptrade.authentication.delete_snap_trade_user(
    query_params={"userId": user_id}
)
pprint(deleted_response.body)
```

## Async

`async` support is available by prepending `a` to any method.

```python
import asyncio
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)


async def main():
    try:
        # List all accounts for the user, plus balances, positions, and orders for each account.
        get_all_user_holdings_response = (
            await snaptrade.account_information.aget_all_user_holdings(
                user_id="John.doe@snaptrade.com",
                user_secret="USERSECRET123",
                brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631",
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
            "Exception when calling AccountInformationApi.get_all_user_holdings: %s\n"
            % e
        )
        pprint(e.body)
        pprint(e.headers)
        pprint(e.status)
        pprint(e.reason)
        pprint(e.round_trip_time)


asyncio.run(main())
```


## Reference
### `snaptrade.account_information.get_all_user_holdings`

List all accounts for the user, plus balances, positions, and orders for each account.

#### 🛠️ Usage

```python
get_all_user_holdings_response = snaptrade.account_information.get_all_user_holdings(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### brokerage_authorizations: `str`

Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations).

#### 🔄 Return

[AccountHoldings](./snaptrade_client/type/account_holdings.py)

#### 🌐 Endpoint

`/holdings` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_balance`

A list of account balances for the specified account (one per currency that the account holds).

#### 🛠️ Usage

```python
get_user_account_balance_response = (
    snaptrade.account_information.get_user_account_balance(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
        account_id="accountId_example",
    )
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to get balances.

#### 🔄 Return

[Balance](./snaptrade_client/type/balance.py)

#### 🌐 Endpoint

`/accounts/{accountId}/balances` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_details`

Return details of a specific investment account

#### 🛠️ Usage

```python
get_user_account_details_response = (
    snaptrade.account_information.get_user_account_details(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
        account_id="accountId_example",
    )
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to get detail of.

#### 🔄 Return

[Account](./snaptrade_client/type/account.py)

#### 🌐 Endpoint

`/accounts/{accountId}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_orders`

Fetch all recent orders from a user's account.

#### 🛠️ Usage

```python
get_user_account_orders_response = (
    snaptrade.account_information.get_user_account_orders(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
        account_id="accountId_example",
        state="all",
    )
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to get orders.

##### state: `str`

defaults value is set to \"all\"

#### 🔄 Return

[AccountOrderRecord](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint

`/accounts/{accountId}/orders` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_positions`

List account positions

#### 🛠️ Usage

```python
get_user_account_positions_response = (
    snaptrade.account_information.get_user_account_positions(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
        account_id="accountId_example",
    )
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to get positions.

#### 🔄 Return

[Position](./snaptrade_client/type/position.py)

#### 🌐 Endpoint

`/accounts/{accountId}/positions` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_holdings`

List balances, positions and orders for the specified account

#### 🛠️ Usage

```python
get_user_holdings_response = snaptrade.account_information.get_user_holdings(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
)
```

#### ⚙️ Parameters

##### account_id: `str`

The ID of the account to fetch holdings for.

##### user_id: `str`

##### user_secret: `str`

#### 🔄 Return

[AccountHoldingsAccount](./snaptrade_client/type/account_holdings_account.py)

#### 🌐 Endpoint

`/accounts/{accountId}/holdings` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.list_user_accounts`

List accounts

#### 🛠️ Usage

```python
list_user_accounts_response = snaptrade.account_information.list_user_accounts(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

#### 🔄 Return

[Account](./snaptrade_client/type/account.py)

#### 🌐 Endpoint

`/accounts` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.update_user_account`

Update details of an investment account

#### 🛠️ Usage

```python
update_user_account_response = snaptrade.account_information.update_user_account(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="accountId_example",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to update.

#### 🔄 Return

[Account](./snaptrade_client/type/account.py)

#### 🌐 Endpoint

`/accounts/{accountId}` `put`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.api_status.check`

Check whether the API is operational and verify timestamps.

#### 🛠️ Usage

```python
check_response = snaptrade.api_status.check()
```

#### 🔄 Return

[Status](./snaptrade_client/type/status.py)

#### 🌐 Endpoint

`/` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.delete_snap_trade_user`

Deletes a user you've registered over the SnapTrade API, and any data associated with them or their investment accounts.

#### 🛠️ Usage

```python
delete_snap_trade_user_response = snaptrade.authentication.delete_snap_trade_user(
    user_id="John.doe@snaptrade.com",
)
```

#### ⚙️ Parameters

##### user_id: `str`

#### 🔄 Return

[DeleteUserResponse](./snaptrade_client/type/delete_user_response.py)

#### 🌐 Endpoint

`/snapTrade/deleteUser` `delete`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.get_user_jwt`

Generate encrypted JWT token

#### 🛠️ Usage

```python
get_user_jwt_response = snaptrade.authentication.get_user_jwt(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

#### 🌐 Endpoint

`/snapTrade/encryptedJWT` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.list_snap_trade_users`

Returns a list of users you've registered over the SnapTrade API.

#### 🛠️ Usage

```python
list_snap_trade_users_response = snaptrade.authentication.list_snap_trade_users()
```

#### 🔄 Return

[UserList](./snaptrade_client/type/user_list.py)

#### 🌐 Endpoint

`/snapTrade/listUsers` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.login_snap_trade_user`

Logs in a SnapTrade user and returns an authenticated connection portal URL for them to use to connect a brokerage account.

#### 🛠️ Usage

```python
login_snap_trade_user_response = snaptrade.authentication.login_snap_trade_user(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    broker="ALPACA",
    immediate_redirect=True,
    custom_redirect="https://snaptrade.com",
    reconnect="8b5f262d-4bb9-365d-888a-202bd3b15fa1",
    connection_type="read",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### broker: `str`

Slug of the brokerage to connect the user to

##### immediate_redirect: `bool`

When set to True, user will be redirected back to the partner's site instead of the connection portal

##### custom_redirect: `str`

URL to redirect the user to after the user connects their brokerage account

##### reconnect: `str`

The UUID of the brokerage connection to be reconnected

##### connection_type: `str`

Sets whether the connection should be read or trade

#### ⚙️ Request Body

[`SnapTradeLoginUserRequestBody`](./snaptrade_client/type/snap_trade_login_user_request_body.py)
#### 🌐 Endpoint

`/snapTrade/login` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.register_snap_trade_user`

Create SnapTrade user

#### 🛠️ Usage

```python
register_snap_trade_user_response = snaptrade.authentication.register_snap_trade_user(
    user_id="snaptrade-user-123",
)
```

#### ⚙️ Parameters

##### user_id: `str`

SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it's unique to a user

#### ⚙️ Request Body

[`SnapTradeRegisterUserRequestBody`](./snaptrade_client/type/snap_trade_register_user_request_body.py)
#### 🔄 Return

[UserIDandSecret](./snaptrade_client/type/user_i_dand_secret.py)

#### 🌐 Endpoint

`/snapTrade/registerUser` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.detail_brokerage_authorization`

Get brokerage authorization details

#### 🛠️ Usage

```python
detail_brokerage_authorization_response = (
    snaptrade.connections.detail_brokerage_authorization(
        authorization_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
    )
)
```

#### ⚙️ Parameters

##### authorization_id: `str`

The ID of a brokerage authorization object.

##### user_id: `str`

##### user_secret: `str`

#### 🔄 Return

[BrokerageAuthorization](./snaptrade_client/type/brokerage_authorization.py)

#### 🌐 Endpoint

`/authorizations/{authorizationId}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.list_brokerage_authorizations`

List all brokerage authorizations for the user

#### 🛠️ Usage

```python
list_brokerage_authorizations_response = (
    snaptrade.connections.list_brokerage_authorizations(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
    )
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

#### 🔄 Return

[BrokerageAuthorization](./snaptrade_client/type/brokerage_authorization.py)

#### 🌐 Endpoint

`/authorizations` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.remove_brokerage_authorization`

Delete brokerage authorization

#### 🛠️ Usage

```python
snaptrade.connections.remove_brokerage_authorization(
    authorization_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
)
```

#### ⚙️ Parameters

##### authorization_id: `str`

The ID of the Authorization to delete.

##### user_id: `str`

##### user_secret: `str`

#### 🌐 Endpoint

`/authorizations/{authorizationId}` `delete`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.session_events`

List all session events for the partner

#### 🛠️ Usage

```python
session_events_response = snaptrade.connections.session_events(
    partner_client_id="SNAPTRADETEST",
    user_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    session_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
)
```

#### ⚙️ Parameters

##### partner_client_id: `str`

##### user_id: `str`

Optional comma seperated list of user IDs used to filter the request on specific users

##### session_id: `str`

Optional comma seperated list of session IDs used to filter the request on specific users

#### 🌐 Endpoint

`/sessionEvents` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.error_logs.list_user_errors`

Retrieve error logs on behalf of your SnapTrade users

#### 🛠️ Usage

```python
list_user_errors_response = snaptrade.error_logs.list_user_errors(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

#### 🔄 Return

[UserErrorLog](./snaptrade_client/type/user_error_log.py)

#### 🌐 Endpoint

`/snapTrade/listUserErrors` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.get_option_strategy`

Creates an option strategy object that will be used to place an option strategy order

#### 🛠️ Usage

```python
get_option_strategy_response = snaptrade.options.get_option_strategy(
    underlying_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    legs=[
        {
            "action": "BUY_TO_OPEN",
            "option_symbol_id": "SPY220819P00200000",
            "quantity": 1,
        }
    ],
    strategy_type="CUSTOM",
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="accountId_example",
)
```

#### ⚙️ Parameters

##### underlying_symbol_id: `str`

##### legs: List[[`OptionLeg`](./snaptrade_client/type/option_leg.py)]

##### strategy_type: `str`

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to create the option strategy object in.

#### ⚙️ Request Body

[`Any`](./snaptrade_client/type/typing_any.py)
#### 🔄 Return

[StrategyQuotes](./snaptrade_client/type/strategy_quotes.py)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.get_options_chain`

Get the options chain

#### 🛠️ Usage

```python
get_options_chain_response = snaptrade.options.get_options_chain(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="accountId_example",
    symbol="symbol_example",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to get the options chain from.

##### symbol: `str`

Universal symbol ID if symbol

#### 🔄 Return

[OptionChain](./snaptrade_client/type/option_chain.py)

#### 🌐 Endpoint

`/accounts/{accountId}/optionsChain` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.get_options_strategy_quote`

Get latest market data of option strategy

#### 🛠️ Usage

```python
get_options_strategy_quote_response = snaptrade.options.get_options_strategy_quote(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="accountId_example",
    option_strategy_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account the strategy will be placed in.

##### option_strategy_id: `str`

Option strategy id obtained from response when creating option strategy object

#### 🔄 Return

[StrategyQuotes](./snaptrade_client/type/strategy_quotes.py)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy/{optionStrategyId}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.list_option_holdings`

Get the options holdings in the account

#### 🛠️ Usage

```python
list_option_holdings_response = snaptrade.options.list_option_holdings(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="accountId_example",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to fetch options holdings for.

#### 🔄 Return

[OptionsPosition](./snaptrade_client/type/options_position.py)

#### 🌐 Endpoint

`/accounts/{accountId}/options` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.place_option_strategy`

Place an option strategy order on the brokerage

#### 🛠️ Usage

```python
place_option_strategy_response = snaptrade.options.place_option_strategy(
    order_type="Limit",
    time_in_force="Day",
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    option_strategy_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    price=31.33,
)
```

#### ⚙️ Parameters

##### order_type: [`OrderType`](./snaptrade_client/type/order_type.py)

##### time_in_force: [`TimeInForce`](./snaptrade_client/type/time_in_force.py)

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to execute the strategy in.

##### option_strategy_id: `str`

Option strategy id obtained from response when creating option strategy object

##### price: [`Price`](./snaptrade_client/type/price.py)

#### ⚙️ Request Body

[`Any`](./snaptrade_client/type/typing_any.py)
#### 🔄 Return

[StrategyOrderRecord](./snaptrade_client/type/strategy_order_record.py)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_currency_exchange_rate_pair`

Return the exchange rate of a currency pair

#### 🛠️ Usage

```python
get_currency_exchange_rate_pair_response = (
    snaptrade.reference_data.get_currency_exchange_rate_pair(
        currency_pair="currencyPair_example",
    )
)
```

#### ⚙️ Parameters

##### currency_pair: `str`

A currency pair based on currency code for example, {CAD-USD}

#### 🔄 Return

[ExchangeRatePairs](./snaptrade_client/type/exchange_rate_pairs.py)

#### 🌐 Endpoint

`/currencies/rates/{currencyPair}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_partner_info`

Get metadata related to Snaptrade partner

#### 🛠️ Usage

```python
get_partner_info_response = snaptrade.reference_data.get_partner_info()
```

#### 🔄 Return

[PartnerData](./snaptrade_client/type/partner_data.py)

#### 🌐 Endpoint

`/snapTrade/partners` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_security_types`

List security types available on SnapTrade.

#### 🛠️ Usage

```python
get_security_types_response = snaptrade.reference_data.get_security_types()
```

#### 🔄 Return

[SecurityType](./snaptrade_client/type/security_type.py)

#### 🌐 Endpoint

`/securityTypes` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_stock_exchanges`

List exchanges

#### 🛠️ Usage

```python
get_stock_exchanges_response = snaptrade.reference_data.get_stock_exchanges()
```

#### 🔄 Return

[Exchange](./snaptrade_client/type/exchange.py)

#### 🌐 Endpoint

`/exchanges` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_symbols`

Search for symbols

#### 🛠️ Usage

```python
get_symbols_response = snaptrade.reference_data.get_symbols(
    substring="apple",
)
```

#### ⚙️ Parameters

##### substring: `str`

#### ⚙️ Request Body

[`SymbolQuery`](./snaptrade_client/type/symbol_query.py)
#### 🔄 Return

[UniversalSymbol](./snaptrade_client/type/universal_symbol.py)

#### 🌐 Endpoint

`/symbols` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_symbols_by_ticker`

Get details of a symbol by the ticker

#### 🛠️ Usage

```python
get_symbols_by_ticker_response = snaptrade.reference_data.get_symbols_by_ticker(
    ticker="ticker_example",
    symbol_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
```

#### ⚙️ Parameters

##### ticker: `str`

The ticker of the UniversalSymbol to get.

##### symbol_id: `str`

OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get.

#### 🔄 Return

[UniversalSymbol](./snaptrade_client/type/universal_symbol.py)

#### 🌐 Endpoint

`/symbols/{ticker}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_brokerage_authorization_type`

List of all brokerage authorization types

#### 🛠️ Usage

```python
list_all_brokerage_authorization_type_response = (
    snaptrade.reference_data.list_all_brokerage_authorization_type(
        brokerage="QUESTRADE,ALPACA",
    )
)
```

#### ⚙️ Parameters

##### brokerage: `str`

Comma separated value of brokerage slugs

#### 🔄 Return

[BrokerageAuthorizationTypeReadOnly](./snaptrade_client/type/brokerage_authorization_type_read_only.py)

#### 🌐 Endpoint

`/brokerageAuthorizationTypes` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_brokerages`

List brokerages

#### 🛠️ Usage

```python
list_all_brokerages_response = snaptrade.reference_data.list_all_brokerages()
```

#### 🔄 Return

[Brokerage](./snaptrade_client/type/brokerage.py)

#### 🌐 Endpoint

`/brokerages` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_currencies`

List currencies

#### 🛠️ Usage

```python
list_all_currencies_response = snaptrade.reference_data.list_all_currencies()
```

#### 🔄 Return

[Currency](./snaptrade_client/type/currency.py)

#### 🌐 Endpoint

`/currencies` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_currencies_rates`

List currency exchange rates

#### 🛠️ Usage

```python
list_all_currencies_rates_response = (
    snaptrade.reference_data.list_all_currencies_rates()
)
```

#### 🔄 Return

[ExchangeRatePairs](./snaptrade_client/type/exchange_rate_pairs.py)

#### 🌐 Endpoint

`/currencies/rates` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.symbol_search_user_account`

Search for symbols available in an account

#### 🛠️ Usage

```python
symbol_search_user_account_response = (
    snaptrade.reference_data.symbol_search_user_account(
        user_id="John.doe@snaptrade.com",
        user_secret="USERSECRET123",
        account_id="accountId_example",
        substring="apple",
    )
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to search for symbols within.

##### substring: `str`

#### ⚙️ Request Body

[`SymbolQuery`](./snaptrade_client/type/symbol_query.py)
#### 🔄 Return

[UniversalSymbol](./snaptrade_client/type/universal_symbol.py)

#### 🌐 Endpoint

`/accounts/{accountId}/symbols` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.cancel_user_account_order`

Cancel open order in account

#### 🛠️ Usage

```python
cancel_user_account_order_response = snaptrade.trading.cancel_user_account_order(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="accountId_example",
    brokerage_order_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

The ID of the account to cancel the order in.

##### brokerage_order_id: `str`

#### ⚙️ Request Body

[`Any`](./snaptrade_client/type/typing_any.py)
The Order ID to be canceled

#### 🔄 Return

[AccountOrderRecord](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint

`/accounts/{accountId}/orders/cancel` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.get_order_impact`

Check impact of trades on account.

#### 🛠️ Usage

```python
get_order_impact_response = snaptrade.trading.get_order_impact(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    action="BUY",
    order_type="Limit",
    price=31.33,
    stop=31.33,
    time_in_force="Day",
    units=3.14,
    universal_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

##### action: [`Action`](./snaptrade_client/type/action.py)

##### order_type: [`OrderType`](./snaptrade_client/type/order_type.py)

##### price: [`Price`](./snaptrade_client/type/price.py)

##### stop: [`StopPrice`](./snaptrade_client/type/stop_price.py)

##### time_in_force: [`TimeInForce`](./snaptrade_client/type/time_in_force.py)

##### units: `Union[int, float]`

Trade Units

##### universal_symbol_id: `str`

#### ⚙️ Request Body

[`ManualTradeForm`](./snaptrade_client/type/manual_trade_form.py)
#### 🔄 Return

[ManualTradeAndImpact](./snaptrade_client/type/manual_trade_and_impact.py)

#### 🌐 Endpoint

`/trade/impact` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.get_user_account_quotes`

Get symbol quotes

#### 🛠️ Usage

```python
get_user_account_quotes_response = snaptrade.trading.get_user_account_quotes(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    symbols="symbols_example",
    account_id="accountId_example",
    use_ticker=True,
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### symbols: `str`

List of universal_symbol_id or tickers to get quotes for.

##### account_id: `str`

The ID of the account to get quotes.

##### use_ticker: `bool`

Should be set to True if providing tickers.

#### 🔄 Return

[SymbolsQuotes](./snaptrade_client/type/symbols_quotes.py)

#### 🌐 Endpoint

`/accounts/{accountId}/quotes` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_force_order`

Place a trade with NO validation.

#### 🛠️ Usage

```python
place_force_order_response = snaptrade.trading.place_force_order(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    action="BUY",
    order_type="Limit",
    price=31.33,
    stop=31.33,
    time_in_force="Day",
    units=3.14,
    universal_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### account_id: `str`

##### action: [`Action`](./snaptrade_client/type/action.py)

##### order_type: [`OrderType`](./snaptrade_client/type/order_type.py)

##### price: [`Price`](./snaptrade_client/type/price.py)

##### stop: [`StopPrice`](./snaptrade_client/type/stop_price.py)

##### time_in_force: [`TimeInForce`](./snaptrade_client/type/time_in_force.py)

##### units: `Union[int, float]`

Trade Units

##### universal_symbol_id: `str`

#### ⚙️ Request Body

[`ManualTradeForm`](./snaptrade_client/type/manual_trade_form.py)
#### 🔄 Return

[AccountOrderRecord](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint

`/trade/place` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_oco_order`

Place a OCO (One Cancels Other) order

#### 🛠️ Usage

```python
place_oco_order_response = snaptrade.trading.place_oco_order(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    first_trade_id=None,
    second_trade_id=None,
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### first_trade_id: [`Union[bool, date, datetime, dict, float, int, list, str, None]`](./snaptrade_client/type/typing_union_bool_date_datetime_dict_float_int_list_str_none.py)

The ID of first trade object obtained from trade/impact endpoint

##### second_trade_id: [`Union[bool, date, datetime, dict, float, int, list, str, None]`](./snaptrade_client/type/typing_union_bool_date_datetime_dict_float_int_list_str_none.py)

The ID of second trade object obtained from trade/impact endpoint

#### ⚙️ Request Body

[`Any`](./snaptrade_client/type/typing_any.py)
#### 🔄 Return

[AccountOrderRecord](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint

`/trade/oco` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_order`

Place order

#### 🛠️ Usage

```python
place_order_response = snaptrade.trading.place_order(
    trade_id="tradeId_example",
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
)
```

#### ⚙️ Parameters

##### trade_id: `str`

The ID of trade object obtained from trade/impact endpoint

##### user_id: `str`

##### user_secret: `str`

#### 🔄 Return

[AccountOrderRecord](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint

`/trade/{tradeId}` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.transactions_and_reporting.get_activities`

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for better performance

#### 🛠️ Usage

```python
get_activities_response = snaptrade.transactions_and_reporting.get_activities(
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    start_date="2022-01-24",
    end_date="2022-01-24",
    accounts="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    type="DIVIDEND",
)
```

#### ⚙️ Parameters

##### user_id: `str`

##### user_secret: `str`

##### start_date: `date`

##### end_date: `date`

##### accounts: `str`

Optional comma seperated list of account IDs used to filter the request on specific accounts

##### brokerage_authorizations: `str`

Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations

##### type: `str`

Optional comma seperated list of types to filter activities by. This is not an exhaustive list, if we fail to match to these types, we will return the raw description from the brokerage. Potential values include - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT

#### 🔄 Return

[UniversalActivity](./snaptrade_client/type/universal_activity.py)

#### 🌐 Endpoint

`/activities` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.transactions_and_reporting.get_reporting_custom_range`

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

#### 🛠️ Usage

```python
get_reporting_custom_range_response = snaptrade.transactions_and_reporting.get_reporting_custom_range(
    start_date="2022-01-24",
    end_date="2022-01-24",
    user_id="John.doe@snaptrade.com",
    user_secret="USERSECRET123",
    accounts="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    detailed=True,
    frequency="monthly",
)
```

#### ⚙️ Parameters

##### start_date: `date`

##### end_date: `date`

##### user_id: `str`

##### user_secret: `str`

##### accounts: `str`

Optional comma seperated list of account IDs used to filter the request on specific accounts

##### detailed: `bool`

Optional, increases frequency of data points for the total value and contribution charts if set to true

##### frequency: `str`

Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.

#### 🔄 Return

[PerformanceCustom](./snaptrade_client/type/performance_custom.py)

#### 🌐 Endpoint

`/performance/custom` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author
This Python package is automatically generated by [Konfig](https://konfigthis.com)
