<div align="center">

[![Visit SnapTrade](https://raw.githubusercontent.com/passiv/snaptrade-sdks/HEAD/sdks/python/header.png)](https://snaptrade.com)

# SnapTrade<a id="snaptrade"></a>

Connect brokerage accounts to your app for live positions and trading


[![PyPI](https://img.shields.io/badge/PyPI-v11.0.117-blue)](https://pypi.org/project/snaptrade-python-sdk/11.0.117)
[![README.md](https://img.shields.io/badge/README-Click%20Here-green)](https://github.com/passiv/snaptrade-sdks/tree/master/sdks/python#readme)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Requirements](#requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
- [Async](#async)
- [Reference](#reference)
  * [`snaptrade.account_information.get_account_activities`](#snaptradeaccount_informationget_account_activities)
  * [`snaptrade.account_information.get_all_user_holdings`](#snaptradeaccount_informationget_all_user_holdings)
  * [`snaptrade.account_information.get_user_account_balance`](#snaptradeaccount_informationget_user_account_balance)
  * [`snaptrade.account_information.get_user_account_details`](#snaptradeaccount_informationget_user_account_details)
  * [`snaptrade.account_information.get_user_account_orders`](#snaptradeaccount_informationget_user_account_orders)
  * [`snaptrade.account_information.get_user_account_positions`](#snaptradeaccount_informationget_user_account_positions)
  * [`snaptrade.account_information.get_user_account_recent_orders`](#snaptradeaccount_informationget_user_account_recent_orders)
  * [`snaptrade.account_information.get_user_account_return_rates`](#snaptradeaccount_informationget_user_account_return_rates)
  * [`snaptrade.account_information.get_user_holdings`](#snaptradeaccount_informationget_user_holdings)
  * [`snaptrade.account_information.list_user_accounts`](#snaptradeaccount_informationlist_user_accounts)
  * [`snaptrade.account_information.update_user_account`](#snaptradeaccount_informationupdate_user_account)
  * [`snaptrade.api_status.check`](#snaptradeapi_statuscheck)
  * [`snaptrade.authentication.delete_snap_trade_user`](#snaptradeauthenticationdelete_snap_trade_user)
  * [`snaptrade.authentication.list_snap_trade_users`](#snaptradeauthenticationlist_snap_trade_users)
  * [`snaptrade.authentication.login_snap_trade_user`](#snaptradeauthenticationlogin_snap_trade_user)
  * [`snaptrade.authentication.register_snap_trade_user`](#snaptradeauthenticationregister_snap_trade_user)
  * [`snaptrade.authentication.reset_snap_trade_user_secret`](#snaptradeauthenticationreset_snap_trade_user_secret)
  * [`snaptrade.connections.detail_brokerage_authorization`](#snaptradeconnectionsdetail_brokerage_authorization)
  * [`snaptrade.connections.disable_brokerage_authorization`](#snaptradeconnectionsdisable_brokerage_authorization)
  * [`snaptrade.connections.list_brokerage_authorizations`](#snaptradeconnectionslist_brokerage_authorizations)
  * [`snaptrade.connections.refresh_brokerage_authorization`](#snaptradeconnectionsrefresh_brokerage_authorization)
  * [`snaptrade.connections.remove_brokerage_authorization`](#snaptradeconnectionsremove_brokerage_authorization)
  * [`snaptrade.connections.return_rates`](#snaptradeconnectionsreturn_rates)
  * [`snaptrade.connections.session_events`](#snaptradeconnectionssession_events)
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
  * [`snaptrade.reference_data.list_all_brokerage_instruments`](#snaptradereference_datalist_all_brokerage_instruments)
  * [`snaptrade.reference_data.list_all_brokerages`](#snaptradereference_datalist_all_brokerages)
  * [`snaptrade.reference_data.list_all_currencies`](#snaptradereference_datalist_all_currencies)
  * [`snaptrade.reference_data.list_all_currencies_rates`](#snaptradereference_datalist_all_currencies_rates)
  * [`snaptrade.reference_data.symbol_search_user_account`](#snaptradereference_datasymbol_search_user_account)
  * [`snaptrade.trading.cancel_order`](#snaptradetradingcancel_order)
  * [`snaptrade.trading.cancel_user_account_order`](#snaptradetradingcancel_user_account_order)
  * [`snaptrade.trading.get_cryptocurrency_pair_quote`](#snaptradetradingget_cryptocurrency_pair_quote)
  * [`snaptrade.trading.get_order_impact`](#snaptradetradingget_order_impact)
  * [`snaptrade.trading.get_user_account_quotes`](#snaptradetradingget_user_account_quotes)
  * [`snaptrade.trading.place_bracket_order`](#snaptradetradingplace_bracket_order)
  * [`snaptrade.trading.place_force_order`](#snaptradetradingplace_force_order)
  * [`snaptrade.trading.place_mleg_order`](#snaptradetradingplace_mleg_order)
  * [`snaptrade.trading.place_order`](#snaptradetradingplace_order)
  * [`snaptrade.trading.place_simple_order`](#snaptradetradingplace_simple_order)
  * [`snaptrade.trading.preview_simple_order`](#snaptradetradingpreview_simple_order)
  * [`snaptrade.trading.replace_order`](#snaptradetradingreplace_order)
  * [`snaptrade.trading.search_cryptocurrency_pair_instruments`](#snaptradetradingsearch_cryptocurrency_pair_instruments)
  * [`snaptrade.transactions_and_reporting.get_activities`](#snaptradetransactions_and_reportingget_activities)
  * [`snaptrade.transactions_and_reporting.get_reporting_custom_range`](#snaptradetransactions_and_reportingget_reporting_custom_range)

<!-- tocstop -->

## Requirements<a id="requirements"></a>

Python >=3.8

## Installation<a id="installation"></a>

```sh
pip install snaptrade-python-sdk==11.0.117
```

## Getting Started<a id="getting-started"></a>

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

## Async<a id="async"></a>

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
        # List account activities
        get_account_activities_response = (
            await snaptrade.account_information.aget_account_activities(
                account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
                user_id="snaptrade-user-123",
                user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
                start_date="2022-01-24",
                end_date="2022-01-24",
                offset=0,
                limit=1,
                type="BUY,SELL,DIVIDEND",
            )
        )
        pprint(get_account_activities_response.body)
        pprint(get_account_activities_response.body["data"])
        pprint(get_account_activities_response.body["pagination"])
        pprint(get_account_activities_response.headers)
        pprint(get_account_activities_response.status)
        pprint(get_account_activities_response.round_trip_time)
    except ApiException as e:
        print(
            "Exception when calling AccountInformationApi.get_account_activities: %s\n"
            % e
        )
        pprint(e.body)
        pprint(e.headers)
        pprint(e.status)
        pprint(e.reason)
        pprint(e.round_trip_time)


asyncio.run(main())
```


## Reference<a id="reference"></a>
### `snaptrade.account_information.get_account_activities`<a id="snaptradeaccount_informationget_account_activities"></a>

Returns all historical transactions for the specified account.

This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.

Transaction are returned in reverse chronological order, using the `trade_date` field.

The data returned here is always cached and refreshed once a day.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_account_activities_response = snaptrade.account_information.get_account_activities(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    start_date="2022-01-24",
    end_date="2022-01-24",
    offset=0,
    limit=1,
    type="BUY,SELL,DIVIDEND",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### start_date: `date`<a id="start_date-date"></a>

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### end_date: `date`<a id="end_date-date"></a>

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### offset: `int`<a id="offset-int"></a>

An integer that specifies the starting point of the paginated results. Default is 0.

##### limit: `int`<a id="limit-int"></a>

An integer that specifies the maximum number of transactions to return. Default of 1000.

##### type: `str`<a id="type-str"></a>

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 

#### 🔄 Return<a id="🔄-return"></a>

[`PaginatedUniversalActivity`](./snaptrade_client/type/paginated_universal_activity.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/activities` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_all_user_holdings`<a id="snaptradeaccount_informationget_all_user_holdings"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

**Deprecated, please use the account-specific holdings endpoint instead.**

List all accounts for the user, plus balances, positions, and orders for each
account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_all_user_holdings_response = snaptrade.account_information.get_all_user_holdings(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### brokerage_authorizations: `str`<a id="brokerage_authorizations-str"></a>

Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).

#### 🔄 Return<a id="🔄-return"></a>

[`AccountHoldings`](./snaptrade_client/type/account_holdings.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/holdings` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_balance`<a id="snaptradeaccount_informationget_user_account_balance"></a>

Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_account_balance_response = (
    snaptrade.account_information.get_user_account_balance(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Balance`](./snaptrade_client/type/balance.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/balances` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_details`<a id="snaptradeaccount_informationget_user_account_details"></a>

Returns account detail known to SnapTrade for the specified account.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_account_details_response = (
    snaptrade.account_information.get_user_account_details(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Account`](./snaptrade_client/type/account.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_orders`<a id="snaptradeaccount_informationget_user_account_orders"></a>

Returns a list of recent orders in the specified account.

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_account_orders_response = (
    snaptrade.account_information.get_user_account_orders(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
        state="all",
        days=30,
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### state: `str`<a id="state-str"></a>

defaults value is set to \"all\"

##### days: `int`<a id="days-int"></a>

Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.

#### 🔄 Return<a id="🔄-return"></a>

[`AccountOrderRecord`](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_positions`<a id="snaptradeaccount_informationget_user_account_positions"></a>

Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_account_positions_response = (
    snaptrade.account_information.get_user_account_positions(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Position`](./snaptrade_client/type/position.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/positions` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_recent_orders`<a id="snaptradeaccount_informationget_user_account_recent_orders"></a>

A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account.
This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders
Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days
By default only returns executed orders, but that can be changed by setting *only_executed* to false
**Please contact support for access as this endpoint is not enabled by default.**


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_account_recent_orders_response = (
    snaptrade.account_information.get_user_account_recent_orders(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
        only_executed=True,
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### only_executed: `bool`<a id="only_executed-bool"></a>

Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well

#### 🔄 Return<a id="🔄-return"></a>

[`RecentOrdersResponse`](./snaptrade_client/type/recent_orders_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/recentOrders` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_account_return_rates`<a id="snaptradeaccount_informationget_user_account_return_rates"></a>

Returns a list of rate of return percents for a given account. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_account_return_rates_response = (
    snaptrade.account_information.get_user_account_return_rates(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`RateOfReturnResponse`](./snaptrade_client/type/rate_of_return_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/returnRates` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.get_user_holdings`<a id="snaptradeaccount_informationget_user_holdings"></a>

Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_holdings_response = snaptrade.account_information.get_user_holdings(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`AccountHoldingsAccount`](./snaptrade_client/type/account_holdings_account.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/holdings` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.list_user_accounts`<a id="snaptradeaccount_informationlist_user_accounts"></a>

Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_user_accounts_response = snaptrade.account_information.list_user_accounts(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`Account`](./snaptrade_client/type/account.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.account_information.update_user_account`<a id="snaptradeaccount_informationupdate_user_account"></a>

Updates various properties of a specified account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
update_user_account_response = snaptrade.account_information.update_user_account(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="accountId_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

The ID of the account to update.

#### 🔄 Return<a id="🔄-return"></a>

[`Account`](./snaptrade_client/type/account.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}` `put`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.api_status.check`<a id="snaptradeapi_statuscheck"></a>

Check whether the API is operational and verify timestamps.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
check_response = snaptrade.api_status.check()
```

#### 🔄 Return<a id="🔄-return"></a>

[`Status`](./snaptrade_client/type/status.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.delete_snap_trade_user`<a id="snaptradeauthenticationdelete_snap_trade_user"></a>

Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
delete_snap_trade_user_response = snaptrade.authentication.delete_snap_trade_user(
    user_id="snaptrade-user-123",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`DeleteUserResponse`](./snaptrade_client/type/delete_user_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/deleteUser` `delete`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.list_snap_trade_users`<a id="snaptradeauthenticationlist_snap_trade_users"></a>

Returns a list of all registered user IDs. Please note that the response is not currently paginated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_snap_trade_users_response = snaptrade.authentication.list_snap_trade_users()
```

#### 🔄 Return<a id="🔄-return"></a>

[`UserList`](./snaptrade_client/type/user_list.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/listUsers` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.login_snap_trade_user`<a id="snaptradeauthenticationlogin_snap_trade_user"></a>

Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.

Please note that the returned URL expires in 5 minutes.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
login_snap_trade_user_response = snaptrade.authentication.login_snap_trade_user(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    broker="ALPACA",
    immediate_redirect=True,
    custom_redirect="https://snaptrade.com",
    reconnect="8b5f262d-4bb9-365d-888a-202bd3b15fa1",
    connection_type="read",
    connection_portal_version="v4",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### broker: `str`<a id="broker-str"></a>

Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.

##### immediate_redirect: `bool`<a id="immediate_redirect-bool"></a>

When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### custom_redirect: `str`<a id="custom_redirect-str"></a>

URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### reconnect: `str`<a id="reconnect-str"></a>

The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.

##### connection_type: `str`<a id="connection_type-str"></a>

Sets whether the connection should be read-only or trade-enabled. Defaults to read-only if not specified.

##### connection_portal_version: `str`<a id="connection_portal_version-str"></a>

Sets the connection portal version to render. Currently only v4 is supported and is the default. All other versions are deprecated and will automatically be set to v4.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SnapTradeLoginUserRequestBody`](./snaptrade_client/type/snap_trade_login_user_request_body.py)
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/login` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.register_snap_trade_user`<a id="snaptradeauthenticationregister_snap_trade_user"></a>

Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system.
Most SnapTrade operations require a user ID and user secret to be passed in as parameters.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
register_snap_trade_user_response = snaptrade.authentication.register_snap_trade_user(
    user_id="snaptrade-user-123",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SnapTradeRegisterUserRequestBody`](./snaptrade_client/type/snap_trade_register_user_request_body.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserIDandSecret`](./snaptrade_client/type/user_i_dand_secret.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/registerUser` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.authentication.reset_snap_trade_user_secret`<a id="snaptradeauthenticationreset_snap_trade_user_secret"></a>

Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
reset_snap_trade_user_secret_response = (
    snaptrade.authentication.reset_snap_trade_user_secret(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

##### user_secret: `str`<a id="user_secret-str"></a>

SnapTrade User Secret. This is a randomly generated string and should be stored securely. If compromised, please rotate it via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret).

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`UserIDandSecret`](./snaptrade_client/type/user_i_dand_secret.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UserIDandSecret`](./snaptrade_client/type/user_i_dand_secret.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/resetUserSecret` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.detail_brokerage_authorization`<a id="snaptradeconnectionsdetail_brokerage_authorization"></a>

Returns a single connection for the specified ID.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
detail_brokerage_authorization_response = (
    snaptrade.connections.detail_brokerage_authorization(
        authorization_id="87b24961-b51e-4db8-9226-f198f6518a89",
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `str`<a id="authorization_id-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`BrokerageAuthorization`](./snaptrade_client/type/brokerage_authorization.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.disable_brokerage_authorization`<a id="snaptradeconnectionsdisable_brokerage_authorization"></a>

Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections.
Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.

This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
disable_brokerage_authorization_response = (
    snaptrade.connections.disable_brokerage_authorization(
        authorization_id="87b24961-b51e-4db8-9226-f198f6518a89",
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `str`<a id="authorization_id-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`BrokerageAuthorizationDisabledConfirmation`](./snaptrade_client/type/brokerage_authorization_disabled_confirmation.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/disable` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.list_brokerage_authorizations`<a id="snaptradeconnectionslist_brokerage_authorizations"></a>

Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.

A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.

SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_brokerage_authorizations_response = (
    snaptrade.connections.list_brokerage_authorizations(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`BrokerageAuthorization`](./snaptrade_client/type/brokerage_authorization.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.refresh_brokerage_authorization`<a id="snaptradeconnectionsrefresh_brokerage_authorization"></a>

Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.
This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.

**Please contact support before use. Because of the cost of refreshing a connection, each call to this endpoint incurs a additional charge of $0.05**


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
refresh_brokerage_authorization_response = (
    snaptrade.connections.refresh_brokerage_authorization(
        authorization_id="87b24961-b51e-4db8-9226-f198f6518a89",
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `str`<a id="authorization_id-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`BrokerageAuthorizationRefreshConfirmation`](./snaptrade_client/type/brokerage_authorization_refresh_confirmation.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/refresh` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.remove_brokerage_authorization`<a id="snaptradeconnectionsremove_brokerage_authorization"></a>

Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
snaptrade.connections.remove_brokerage_authorization(
    authorization_id="87b24961-b51e-4db8-9226-f198f6518a89",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `str`<a id="authorization_id-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}` `delete`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.return_rates`<a id="snaptradeconnectionsreturn_rates"></a>

Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
return_rates_response = snaptrade.connections.return_rates(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    authorization_id="87b24961-b51e-4db8-9226-f198f6518a89",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### authorization_id: `str`<a id="authorization_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`RateOfReturnResponse`](./snaptrade_client/type/rate_of_return_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/returnRates` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.connections.session_events`<a id="snaptradeconnectionssession_events"></a>

Returns a list of session events associated with a user.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
session_events_response = snaptrade.connections.session_events(
    partner_client_id="SNAPTRADETEST",
    user_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    session_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### partner_client_id: `str`<a id="partner_client_id-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

Optional comma separated list of user IDs used to filter the request on specific users

##### session_id: `str`<a id="session_id-str"></a>

Optional comma separated list of session IDs used to filter the request on specific users

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/sessionEvents` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.get_option_strategy`<a id="snaptradeoptionsget_option_strategy"></a>

Creates an option strategy object that will be used to place an option strategy order.


#### 🛠️ Usage<a id="🛠️-usage"></a>

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
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="accountId_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### underlying_symbol_id: `str`<a id="underlying_symbol_id-str"></a>

##### legs: List[`OptionLeg`]<a id="legs-listoptionleg"></a>

##### strategy_type: `str`<a id="strategy_type-str"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

The ID of the account to create the option strategy object in.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`Any`](./snaptrade_client/type/typing_any.py)
#### 🔄 Return<a id="🔄-return"></a>

[`StrategyQuotes`](./snaptrade_client/type/strategy_quotes.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionStrategy` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.get_options_chain`<a id="snaptradeoptionsget_options_chain"></a>

Returns the option chain for the specified symbol in the specified account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_options_chain_response = snaptrade.options.get_options_chain(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="accountId_example",
    symbol="symbol_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

The ID of the account to get the options chain from.

##### symbol: `str`<a id="symbol-str"></a>

Universal symbol ID if symbol

#### 🔄 Return<a id="🔄-return"></a>

[`OptionChain`](./snaptrade_client/type/option_chain.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionsChain` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.get_options_strategy_quote`<a id="snaptradeoptionsget_options_strategy_quote"></a>

Returns a Strategy Quotes object which has latest market data of the specified option strategy.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_options_strategy_quote_response = snaptrade.options.get_options_strategy_quote(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="accountId_example",
    option_strategy_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

The ID of the account the strategy will be placed in.

##### option_strategy_id: `str`<a id="option_strategy_id-str"></a>

Option strategy id obtained from response when creating option strategy object

#### 🔄 Return<a id="🔄-return"></a>

[`StrategyQuotes`](./snaptrade_client/type/strategy_quotes.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionStrategy/{optionStrategyId}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.list_option_holdings`<a id="snaptradeoptionslist_option_holdings"></a>

Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_option_holdings_response = snaptrade.options.list_option_holdings(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`OptionsPosition`](./snaptrade_client/type/options_position.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/options` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.options.place_option_strategy`<a id="snaptradeoptionsplace_option_strategy"></a>

Places the option strategy order and returns the order record received from the brokerage.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
place_option_strategy_response = snaptrade.options.place_option_strategy(
    order_type="Market",
    time_in_force="Day",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    option_strategy_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    price=31.33,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### order_type: [`OrderTypeStrict`](./snaptrade_client/type/order_type_strict.py)<a id="order_type-ordertypestrictsnaptrade_clienttypeorder_type_strictpy"></a>

##### time_in_force: [`TimeInForceStrict`](./snaptrade_client/type/time_in_force_strict.py)<a id="time_in_force-timeinforcestrictsnaptrade_clienttypetime_in_force_strictpy"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

The ID of the account to execute the strategy in.

##### option_strategy_id: `str`<a id="option_strategy_id-str"></a>

Option strategy id obtained from response when creating option strategy object

##### price: [`Price`](./snaptrade_client/type/price.py)<a id="price-pricesnaptrade_clienttypepricepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`Any`](./snaptrade_client/type/typing_any.py)
#### 🔄 Return<a id="🔄-return"></a>

[`StrategyOrderRecord`](./snaptrade_client/type/strategy_order_record.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_currency_exchange_rate_pair`<a id="snaptradereference_dataget_currency_exchange_rate_pair"></a>

Returns an Exchange Rate Pair object for the specified Currency Pair.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_currency_exchange_rate_pair_response = (
    snaptrade.reference_data.get_currency_exchange_rate_pair(
        currency_pair="currencyPair_example",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### currency_pair: `str`<a id="currency_pair-str"></a>

A currency pair based on currency code for example, {CAD-USD}

#### 🔄 Return<a id="🔄-return"></a>

[`ExchangeRatePairs`](./snaptrade_client/type/exchange_rate_pairs.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies/rates/{currencyPair}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_partner_info`<a id="snaptradereference_dataget_partner_info"></a>

Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_partner_info_response = snaptrade.reference_data.get_partner_info()
```

#### 🔄 Return<a id="🔄-return"></a>

[`PartnerData`](./snaptrade_client/type/partner_data.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/partners` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_security_types`<a id="snaptradereference_dataget_security_types"></a>

Return all available security types supported by SnapTrade.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_security_types_response = snaptrade.reference_data.get_security_types()
```

#### 🔄 Return<a id="🔄-return"></a>

[`SecurityType`](./snaptrade_client/type/security_type.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/securityTypes` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_stock_exchanges`<a id="snaptradereference_dataget_stock_exchanges"></a>

Returns a list of all supported Exchanges.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_stock_exchanges_response = snaptrade.reference_data.get_stock_exchanges()
```

#### 🔄 Return<a id="🔄-return"></a>

[`Exchange`](./snaptrade_client/type/exchange.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/exchanges` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_symbols`<a id="snaptradereference_dataget_symbols"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_symbols_response = snaptrade.reference_data.get_symbols(
    substring="AAPL",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### substring: `str`<a id="substring-str"></a>

The search query for symbols.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SymbolQuery`](./snaptrade_client/type/symbol_query.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UniversalSymbol`](./snaptrade_client/type/universal_symbol.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.get_symbols_by_ticker`<a id="snaptradereference_dataget_symbols_by_ticker"></a>

Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on "Yahoo Finance Market Coverage and Data Delays"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_symbols_by_ticker_response = snaptrade.reference_data.get_symbols_by_ticker(
    query="query_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `str`<a id="query-str"></a>

The ticker or Universal Symbol ID to look up the symbol with.

#### 🔄 Return<a id="🔄-return"></a>

[`UniversalSymbol`](./snaptrade_client/type/universal_symbol.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols/{query}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_brokerage_authorization_type`<a id="snaptradereference_datalist_all_brokerage_authorization_type"></a>

Returns a list of all defined Brokerage authorization Type objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_all_brokerage_authorization_type_response = (
    snaptrade.reference_data.list_all_brokerage_authorization_type(
        brokerage="QUESTRADE,ALPACA",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage: `str`<a id="brokerage-str"></a>

Comma separated value of brokerage slugs

#### 🔄 Return<a id="🔄-return"></a>

[`BrokerageAuthorizationTypeReadOnly`](./snaptrade_client/type/brokerage_authorization_type_read_only.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerageAuthorizationTypes` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_brokerage_instruments`<a id="snaptradereference_datalist_all_brokerage_instruments"></a>

Returns a list of all brokerage instruments available for a given brokerage, optionally filtered by a search. Not all brokerages support this. The ones that don't will return an empty list.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_all_brokerage_instruments_response = (
    snaptrade.reference_data.list_all_brokerage_instruments(
        brokerage_id="87b24961-b51e-4db8-9226-f198f6518a89",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_id: `str`<a id="brokerage_id-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`BrokerageInstrumentsResponse`](./snaptrade_client/type/brokerage_instruments_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerages/{brokerageId}/instruments` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_brokerages`<a id="snaptradereference_datalist_all_brokerages"></a>

Returns a list of all defined Brokerage objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_all_brokerages_response = snaptrade.reference_data.list_all_brokerages()
```

#### 🔄 Return<a id="🔄-return"></a>

[`Brokerage`](./snaptrade_client/type/brokerage.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerages` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_currencies`<a id="snaptradereference_datalist_all_currencies"></a>

Returns a list of all defined Currency objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_all_currencies_response = snaptrade.reference_data.list_all_currencies()
```

#### 🔄 Return<a id="🔄-return"></a>

[`Currency`](./snaptrade_client/type/currency.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.list_all_currencies_rates`<a id="snaptradereference_datalist_all_currencies_rates"></a>

Returns a list of all Exchange Rate Pairs for all supported Currencies.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
list_all_currencies_rates_response = (
    snaptrade.reference_data.list_all_currencies_rates()
)
```

#### 🔄 Return<a id="🔄-return"></a>

[`ExchangeRatePairs`](./snaptrade_client/type/exchange_rate_pairs.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies/rates` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.reference_data.symbol_search_user_account`<a id="snaptradereference_datasymbol_search_user_account"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.

The search results are further limited to the symbols supported by the brokerage for which the account is under.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
symbol_search_user_account_response = (
    snaptrade.reference_data.symbol_search_user_account(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
        substring="AAPL",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### substring: `str`<a id="substring-str"></a>

The search query for symbols.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SymbolQuery`](./snaptrade_client/type/symbol_query.py)
#### 🔄 Return<a id="🔄-return"></a>

[`UniversalSymbol`](./snaptrade_client/type/universal_symbol.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/symbols` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.cancel_order`<a id="snaptradetradingcancel_order"></a>

Cancels an order in the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
cancel_order_response = snaptrade.trading.cancel_order(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    brokerage_order_id="66a033fa-da74-4fcf-b527-feefdec9257e",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### brokerage_order_id: `str`<a id="brokerage_order_id-str"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`Any`](./snaptrade_client/type/typing_any.py)
#### 🔄 Return<a id="🔄-return"></a>

[`CancelOrderResponse`](./snaptrade_client/type/cancel_order_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/cancel` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.cancel_user_account_order`<a id="snaptradetradingcancel_user_account_order"></a>

Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
cancel_user_account_order_response = snaptrade.trading.cancel_user_account_order(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    brokerage_order_id="66a033fa-da74-4fcf-b527-feefdec9257e",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### brokerage_order_id: `str`<a id="brokerage_order_id-str"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`Any`](./snaptrade_client/type/typing_any.py)
#### 🔄 Return<a id="🔄-return"></a>

[`AccountOrderRecord`](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders/cancel` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.get_cryptocurrency_pair_quote`<a id="snaptradetradingget_cryptocurrency_pair_quote"></a>

Gets a quote for the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_cryptocurrency_pair_quote_response = (
    snaptrade.trading.get_cryptocurrency_pair_quote(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
        instrument_symbol="BTC-USD",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### instrument_symbol: `str`<a id="instrument_symbol-str"></a>

#### 🔄 Return<a id="🔄-return"></a>

[`CryptocurrencyPairQuote`](./snaptrade_client/type/cryptocurrency_pair_quote.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.get_order_impact`<a id="snaptradetradingget_order_impact"></a>

Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_order_impact_response = snaptrade.trading.get_order_impact(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    action="BUY",
    universal_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    order_type="Market",
    time_in_force="Day",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    price=31.33,
    stop=31.33,
    units=10.5,
    notional_value=None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `str`<a id="account_id-str"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action: [`ActionStrict`](./snaptrade_client/type/action_strict.py)<a id="action-actionstrictsnaptrade_clienttypeaction_strictpy"></a>

##### universal_symbol_id: `str`<a id="universal_symbol_id-str"></a>

Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.

##### order_type: [`OrderTypeStrict`](./snaptrade_client/type/order_type_strict.py)<a id="order_type-ordertypestrictsnaptrade_clienttypeorder_type_strictpy"></a>

##### time_in_force: [`TimeInForceStrict`](./snaptrade_client/type/time_in_force_strict.py)<a id="time_in_force-timeinforcestrictsnaptrade_clienttypetime_in_force_strictpy"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### price: `Optional[Union[int, float]]`<a id="price-optionalunionint-float"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Optional[Union[int, float]]`<a id="stop-optionalunionint-float"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`UnitsNullable`](./snaptrade_client/type/units_nullable.py)<a id="units-unitsnullablesnaptrade_clienttypeunits_nullablepy"></a>

##### notional_value: `NotionalValueNullable`<a id="notional_value-notionalvaluenullable"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ManualTradeForm`](./snaptrade_client/type/manual_trade_form.py)
#### 🔄 Return<a id="🔄-return"></a>

[`ManualTradeAndImpact`](./snaptrade_client/type/manual_trade_and_impact.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/impact` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.get_user_account_quotes`<a id="snaptradetradingget_user_account_quotes"></a>

Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_user_account_quotes_response = snaptrade.trading.get_user_account_quotes(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    symbols="symbols_example",
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    use_ticker=True,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### symbols: `str`<a id="symbols-str"></a>

List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator

##### account_id: `str`<a id="account_id-str"></a>

##### use_ticker: `bool`<a id="use_ticker-bool"></a>

Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.

#### 🔄 Return<a id="🔄-return"></a>

[`SymbolsQuotes`](./snaptrade_client/type/symbols_quotes.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/quotes` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_bracket_order`<a id="snaptradetradingplace_bracket_order"></a>

Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for
use. Only supported on certain brokerages


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
place_bracket_order_response = snaptrade.trading.place_bracket_order(
    action="BUY",
    instrument={
        "symbol": "AAPL",
        "type": "EQUITY",
    },
    order_type="Market",
    time_in_force="Day",
    stop_loss={
        "stop_price": "48.55",
        "limit_price": "48.50",
    },
    take_profit={
        "limit_price": "49.95",
    },
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    symbol="AAPL",
    price=31.33,
    stop=31.33,
    units=10.5,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action: [`ActionStrictWithOptions`](./snaptrade_client/type/action_strict_with_options.py)<a id="action-actionstrictwithoptionssnaptrade_clienttypeaction_strict_with_optionspy"></a>

##### instrument: [`TradingInstrument`](./snaptrade_client/type/trading_instrument.py)<a id="instrument-tradinginstrumentsnaptrade_clienttypetrading_instrumentpy"></a>


##### order_type: [`OrderTypeStrict`](./snaptrade_client/type/order_type_strict.py)<a id="order_type-ordertypestrictsnaptrade_clienttypeorder_type_strictpy"></a>

##### time_in_force: [`TimeInForceStrict`](./snaptrade_client/type/time_in_force_strict.py)<a id="time_in_force-timeinforcestrictsnaptrade_clienttypetime_in_force_strictpy"></a>

##### stop_loss: [`StopLoss`](./snaptrade_client/type/stop_loss.py)<a id="stop_loss-stoplosssnaptrade_clienttypestop_losspy"></a>


##### take_profit: [`TakeProfit`](./snaptrade_client/type/take_profit.py)<a id="take_profit-takeprofitsnaptrade_clienttypetake_profitpy"></a>


##### account_id: `str`<a id="account_id-str"></a>

The ID of the account to execute the trade on.

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### symbol: `str`<a id="symbol-str"></a>

The security's trading ticker symbol.

##### price: `Optional[Union[int, float]]`<a id="price-optionalunionint-float"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Optional[Union[int, float]]`<a id="stop-optionalunionint-float"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `Union[int, float]`<a id="units-unionint-float"></a>

Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ManualTradeFormBracket`](./snaptrade_client/type/manual_trade_form_bracket.py)
#### 🔄 Return<a id="🔄-return"></a>

[`AccountOrderRecord`](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/bracket` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_force_order`<a id="snaptradetradingplace_force_order"></a>

Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.

This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
place_force_order_response = snaptrade.trading.place_force_order(
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    action="BUY",
    order_type="Market",
    time_in_force="Day",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    universal_symbol_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    symbol="AAPL  131124C00240000",
    price=31.33,
    stop=31.33,
    units=10.5,
    notional_value=None,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `str`<a id="account_id-str"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action: [`ActionStrictWithOptions`](./snaptrade_client/type/action_strict_with_options.py)<a id="action-actionstrictwithoptionssnaptrade_clienttypeaction_strict_with_optionspy"></a>

##### order_type: [`OrderTypeStrict`](./snaptrade_client/type/order_type_strict.py)<a id="order_type-ordertypestrictsnaptrade_clienttypeorder_type_strictpy"></a>

##### time_in_force: [`TimeInForceStrict`](./snaptrade_client/type/time_in_force_strict.py)<a id="time_in_force-timeinforcestrictsnaptrade_clienttypetime_in_force_strictpy"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### universal_symbol_id: [`UniversalSymbolIDNullable`](./snaptrade_client/type/universal_symbol_id_nullable.py)<a id="universal_symbol_id-universalsymbolidnullablesnaptrade_clienttypeuniversal_symbol_id_nullablepy"></a>

The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.

##### symbol: `Optional[str]`<a id="symbol-optionalstr"></a>

The security's trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example `AAPL  131124C00240000` represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.

##### price: `Optional[Union[int, float]]`<a id="price-optionalunionint-float"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Optional[Union[int, float]]`<a id="stop-optionalunionint-float"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `Union[int, float]`<a id="units-unionint-float"></a>

For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).

##### notional_value: `NotionalValueNullable`<a id="notional_value-notionalvaluenullable"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ManualTradeFormWithOptions`](./snaptrade_client/type/manual_trade_form_with_options.py)
#### 🔄 Return<a id="🔄-return"></a>

[`AccountOrderRecord`](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/place` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_mleg_order`<a id="snaptradetradingplace_mleg_order"></a>

Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
place_mleg_order_response = snaptrade.trading.place_mleg_order(
    order_type="MARKET",
    time_in_force="Day",
    legs=[
        {
            "instrument": {
                "symbol": "PBI   250718C00006000",
                "instrument_type": "OPTION",
            },
            "action": "BUY_TO_OPEN",
            "units": 1,
        }
    ],
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    limit_price="",
    stop_price="",
    price_effect="DEBIT",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### order_type: [`MlegOrderTypeStrict`](./snaptrade_client/type/mleg_order_type_strict.py)<a id="order_type-mlegordertypestrictsnaptrade_clienttypemleg_order_type_strictpy"></a>

##### time_in_force: [`TimeInForceStrict`](./snaptrade_client/type/time_in_force_strict.py)<a id="time_in_force-timeinforcestrictsnaptrade_clienttypetime_in_force_strictpy"></a>

##### legs: List[`MlegLeg`]<a id="legs-listmlegleg"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### limit_price: `Optional[str]`<a id="limit_price-optionalstr"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT.

##### stop_price: `Optional[str]`<a id="stop_price-optionalstr"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT.

##### price_effect: [`MlegPriceEffectStrictNullable`](./snaptrade_client/type/mleg_price_effect_strict_nullable.py)<a id="price_effect-mlegpriceeffectstrictnullablesnaptrade_clienttypemleg_price_effect_strict_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`MlegTradeForm`](./snaptrade_client/type/mleg_trade_form.py)
#### 🔄 Return<a id="🔄-return"></a>

[`MlegOrderResponse`](./snaptrade_client/type/mleg_order_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/options` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_order`<a id="snaptradetradingplace_order"></a>

Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
place_order_response = snaptrade.trading.place_order(
    trade_id="139e307a-82f7-4402-b39e-4da7baa87758",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    wait_to_confirm=True,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### trade_id: `str`<a id="trade_id-str"></a>

Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### wait_to_confirm: `Optional[bool]`<a id="wait_to_confirm-optionalbool"></a>

Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ValidatedTradeBody`](./snaptrade_client/type/validated_trade_body.py)
#### 🔄 Return<a id="🔄-return"></a>

[`AccountOrderRecord`](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/{tradeId}` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.place_simple_order`<a id="snaptradetradingplace_simple_order"></a>

Places an order in the specified account.
This endpoint does not compute the impact to the account balance from the order before submitting the order.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
place_simple_order_response = snaptrade.trading.place_simple_order(
    instrument={
        "symbol": "AAPL",
        "type": "EQUITY",
    },
    side="BUY",
    type="MARKET",
    time_in_force="GTC",
    amount="123.45",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    limit_price="123.45",
    stop_price="123.45",
    post_only=False,
    expiration_date="2024-01-01T00:00:00Z",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### instrument: [`TradingInstrument`](./snaptrade_client/type/trading_instrument.py)<a id="instrument-tradinginstrumentsnaptrade_clienttypetrading_instrumentpy"></a>


##### side: [`ActionStrict`](./snaptrade_client/type/action_strict.py)<a id="side-actionstrictsnaptrade_clienttypeaction_strictpy"></a>

##### type: `str`<a id="type-str"></a>

The type of order to place.

##### time_in_force: `str`<a id="time_in_force-str"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 

##### amount: `str`<a id="amount-str"></a>

The amount of the base currency to buy or sell.

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### limit_price: `str`<a id="limit_price-str"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.

##### stop_price: `str`<a id="stop_price-str"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.

##### post_only: `bool`<a id="post_only-bool"></a>

Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 

##### expiration_date: `datetime`<a id="expiration_date-datetime"></a>

The expiration date of the order. Required if the time_in_force is GTD.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SimpleOrderForm`](./snaptrade_client/type/simple_order_form.py)
#### 🔄 Return<a id="🔄-return"></a>

[`OrderUpdatedResponse`](./snaptrade_client/type/order_updated_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/simple` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.preview_simple_order`<a id="snaptradetradingpreview_simple_order"></a>

Previews an order using the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
preview_simple_order_response = snaptrade.trading.preview_simple_order(
    instrument={
        "symbol": "AAPL",
        "type": "EQUITY",
    },
    side="BUY",
    type="MARKET",
    time_in_force="GTC",
    amount="123.45",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
    limit_price="123.45",
    stop_price="123.45",
    post_only=False,
    expiration_date="2024-01-01T00:00:00Z",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### instrument: [`TradingInstrument`](./snaptrade_client/type/trading_instrument.py)<a id="instrument-tradinginstrumentsnaptrade_clienttypetrading_instrumentpy"></a>


##### side: [`ActionStrict`](./snaptrade_client/type/action_strict.py)<a id="side-actionstrictsnaptrade_clienttypeaction_strictpy"></a>

##### type: `str`<a id="type-str"></a>

The type of order to place.

##### time_in_force: `str`<a id="time_in_force-str"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 

##### amount: `str`<a id="amount-str"></a>

The amount of the base currency to buy or sell.

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### limit_price: `str`<a id="limit_price-str"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.

##### stop_price: `str`<a id="stop_price-str"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.

##### post_only: `bool`<a id="post_only-bool"></a>

Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 

##### expiration_date: `datetime`<a id="expiration_date-datetime"></a>

The expiration date of the order. Required if the time_in_force is GTD.

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SimpleOrderForm`](./snaptrade_client/type/simple_order_form.py)
#### 🔄 Return<a id="🔄-return"></a>

[`SimpleOrderPreview`](./snaptrade_client/type/simple_order_preview.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/simple/preview` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.replace_order`<a id="snaptradetradingreplace_order"></a>

Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling
the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one
returned in the response going forward. Only supported on some brokerages


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
replace_order_response = snaptrade.trading.replace_order(
    action="BUY",
    order_type="Market",
    time_in_force="Day",
    account_id="2bcd7cc3-e922-4976-bce1-9858296801c3",
    brokerage_order_id="66a033fa-da74-4fcf-b527-feefdec9257e",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    price=31.33,
    symbol="AAPL",
    stop=31.33,
    units=10.5,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action: [`ActionStrict`](./snaptrade_client/type/action_strict.py)<a id="action-actionstrictsnaptrade_clienttypeaction_strictpy"></a>

##### order_type: [`OrderTypeStrict`](./snaptrade_client/type/order_type_strict.py)<a id="order_type-ordertypestrictsnaptrade_clienttypeorder_type_strictpy"></a>

##### time_in_force: [`TimeInForceStrict`](./snaptrade_client/type/time_in_force_strict.py)<a id="time_in_force-timeinforcestrictsnaptrade_clienttypetime_in_force_strictpy"></a>

##### account_id: `str`<a id="account_id-str"></a>

The ID of the account to execute the trade on.

##### brokerage_order_id: `str`<a id="brokerage_order_id-str"></a>

The Brokerage Order ID of the order to replace.

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### price: `Optional[Union[int, float]]`<a id="price-optionalunionint-float"></a>

The limit price for `Limit` and `StopLimit` orders.

##### symbol: `str`<a id="symbol-str"></a>

The security's trading ticker symbol

##### stop: `Optional[Union[int, float]]`<a id="stop-optionalunionint-float"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`UnitsNullable`](./snaptrade_client/type/units_nullable.py)<a id="units-unitsnullablesnaptrade_clienttypeunits_nullablepy"></a>

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`ManualTradeReplaceForm`](./snaptrade_client/type/manual_trade_replace_form.py)
#### 🔄 Return<a id="🔄-return"></a>

[`AccountOrderRecord`](./snaptrade_client/type/account_order_record.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/simple/{brokerageOrderId}/replace` `patch`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.trading.search_cryptocurrency_pair_instruments`<a id="snaptradetradingsearch_cryptocurrency_pair_instruments"></a>

Searches cryptocurrency pairs instruments accessible to the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
search_cryptocurrency_pair_instruments_response = (
    snaptrade.trading.search_cryptocurrency_pair_instruments(
        user_id="snaptrade-user-123",
        user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
        account_id="917c8734-8470-4a3e-a18f-57c3f2ee6631",
        base="BTC",
        quote="USD",
    )
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### account_id: `str`<a id="account_id-str"></a>

##### base: `str`<a id="base-str"></a>

##### quote: `str`<a id="quote-str"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/instruments/cryptocurrencyPairs` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.transactions_and_reporting.get_activities`<a id="snaptradetransactions_and_reportingget_activities"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible

Returns all historical transactions for the specified user and filtering criteria. It's recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There's a max number of 10000 transactions returned per request.

There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.

The data returned here is always cached and refreshed once a day.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_activities_response = snaptrade.transactions_and_reporting.get_activities(
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    start_date="2022-01-24",
    end_date="2022-01-24",
    accounts="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    type="BUY,SELL,DIVIDEND",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### start_date: `date`<a id="start_date-date"></a>

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### end_date: `date`<a id="end_date-date"></a>

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### accounts: `str`<a id="accounts-str"></a>

Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.

##### brokerage_authorizations: `str`<a id="brokerage_authorizations-str"></a>

Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.

##### type: `str`<a id="type-str"></a>

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 

#### 🔄 Return<a id="🔄-return"></a>

[`UniversalActivity`](./snaptrade_client/type/universal_activity.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/activities` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `snaptrade.transactions_and_reporting.get_reporting_custom_range`<a id="snaptradetransactions_and_reportingget_reporting_custom_range"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_reporting_custom_range_response = snaptrade.transactions_and_reporting.get_reporting_custom_range(
    start_date="2022-01-24",
    end_date="2022-01-24",
    user_id="snaptrade-user-123",
    user_secret="adf2aa34-8219-40f7-a6b3-60156985cc61",
    accounts="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    detailed=True,
    frequency="monthly",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### start_date: `date`<a id="start_date-date"></a>

##### end_date: `date`<a id="end_date-date"></a>

##### user_id: `str`<a id="user_id-str"></a>

##### user_secret: `str`<a id="user_secret-str"></a>

##### accounts: `str`<a id="accounts-str"></a>

Optional comma separated list of account IDs used to filter the request on specific accounts

##### detailed: `bool`<a id="detailed-bool"></a>

Optional, increases frequency of data points for the total value and contribution charts if set to true

##### frequency: `str`<a id="frequency-str"></a>

Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.

#### 🔄 Return<a id="🔄-return"></a>

[`PerformanceCustom`](./snaptrade_client/type/performance_custom.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/performance/custom` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This Python package is automatically generated by [Konfig](https://konfigthis.com)
