<div align="center">

[![Visit SnapTrade](https://raw.githubusercontent.com/passiv/snaptrade-sdks/HEAD/sdks/python/header.png)](https://snaptrade.com)

# SnapTrade

Connect brokerage accounts to your app for live positions and trading


[![PyPI](https://img.shields.io/badge/PyPI-v10.34.1-blue)](https://pypi.org/project/snaptrade-python-sdk/10.34.1)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Requirements

Python >=3.7

## Installing

```sh
pip install snaptrade-python-sdk==10.34.1
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
        get_all_user_holdings_response = await snaptrade.account_information.aget_all_user_holdings(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
            brokerage_authorizations="917c8734-8470-4a3e-a18f-57c3f2ee6631",  # optional
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


## Documentation for API Endpoints

All URIs are relative to *https://api.snaptrade.com/api/v1*

Tag | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Account Information* | [**get_all_user_holdings**](docs/apis/tags/AccountInformationApi.md#get_all_user_holdings) | **GET** /holdings | List all accounts for the user, plus balances, positions, and orders for each account.
*Account Information* | [**get_user_account_balance**](docs/apis/tags/AccountInformationApi.md#get_user_account_balance) | **GET** /accounts/{accountId}/balances | List account balances
*Account Information* | [**get_user_account_details**](docs/apis/tags/AccountInformationApi.md#get_user_account_details) | **GET** /accounts/{accountId} | Return details of a specific investment account
*Account Information* | [**get_user_account_orders**](docs/apis/tags/AccountInformationApi.md#get_user_account_orders) | **GET** /accounts/{accountId}/orders | Get history of orders placed in account
*Account Information* | [**get_user_account_positions**](docs/apis/tags/AccountInformationApi.md#get_user_account_positions) | **GET** /accounts/{accountId}/positions | List account positions
*Account Information* | [**get_user_holdings**](docs/apis/tags/AccountInformationApi.md#get_user_holdings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
*Account Information* | [**list_user_accounts**](docs/apis/tags/AccountInformationApi.md#list_user_accounts) | **GET** /accounts | List accounts
*Account Information* | [**update_user_account**](docs/apis/tags/AccountInformationApi.md#update_user_account) | **PUT** /accounts/{accountId} | Update details of an investment account
*API Status* | [**check**](docs/apis/tags/APIStatusApi.md#check) | **GET** / | Get API Status
*Authentication* | [**delete_snap_trade_user**](docs/apis/tags/AuthenticationApi.md#delete_snap_trade_user) | **DELETE** /snapTrade/deleteUser | Delete SnapTrade user
*Authentication* | [**get_user_jwt**](docs/apis/tags/AuthenticationApi.md#get_user_jwt) | **GET** /snapTrade/encryptedJWT | Generate encrypted JWT token
*Authentication* | [**list_snap_trade_users**](docs/apis/tags/AuthenticationApi.md#list_snap_trade_users) | **GET** /snapTrade/listUsers | List SnapTrade users
*Authentication* | [**login_snap_trade_user**](docs/apis/tags/AuthenticationApi.md#login_snap_trade_user) | **POST** /snapTrade/login | Login user &amp; generate connection link
*Authentication* | [**register_snap_trade_user**](docs/apis/tags/AuthenticationApi.md#register_snap_trade_user) | **POST** /snapTrade/registerUser | Create SnapTrade user
*Connections* | [**detail_brokerage_authorization**](docs/apis/tags/ConnectionsApi.md#detail_brokerage_authorization) | **GET** /authorizations/{authorizationId} | Get brokerage authorization details
*Connections* | [**list_brokerage_authorizations**](docs/apis/tags/ConnectionsApi.md#list_brokerage_authorizations) | **GET** /authorizations | List all brokerage authorizations for the user
*Connections* | [**remove_brokerage_authorization**](docs/apis/tags/ConnectionsApi.md#remove_brokerage_authorization) | **DELETE** /authorizations/{authorizationId} | Delete brokerage authorization
*Connections* | [**session_events**](docs/apis/tags/ConnectionsApi.md#session_events) | **GET** /sessionEvents | List all session events for the partner
*Error Logs* | [**list_user_errors**](docs/apis/tags/ErrorLogsApi.md#list_user_errors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users
*Options* | [**get_option_strategy**](docs/apis/tags/OptionsApi.md#get_option_strategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
*Options* | [**get_options_chain**](docs/apis/tags/OptionsApi.md#get_options_chain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
*Options* | [**get_options_strategy_quote**](docs/apis/tags/OptionsApi.md#get_options_strategy_quote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
*Options* | [**list_option_holdings**](docs/apis/tags/OptionsApi.md#list_option_holdings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
*Options* | [**place_option_strategy**](docs/apis/tags/OptionsApi.md#place_option_strategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage
*Reference Data* | [**get_currency_exchange_rate_pair**](docs/apis/tags/ReferenceDataApi.md#get_currency_exchange_rate_pair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
*Reference Data* | [**get_partner_info**](docs/apis/tags/ReferenceDataApi.md#get_partner_info) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
*Reference Data* | [**get_security_types**](docs/apis/tags/ReferenceDataApi.md#get_security_types) | **GET** /securityTypes | List of all security types.
*Reference Data* | [**get_stock_exchanges**](docs/apis/tags/ReferenceDataApi.md#get_stock_exchanges) | **GET** /exchanges | List exchanges
*Reference Data* | [**get_symbols**](docs/apis/tags/ReferenceDataApi.md#get_symbols) | **POST** /symbols | Search for symbols
*Reference Data* | [**get_symbols_by_ticker**](docs/apis/tags/ReferenceDataApi.md#get_symbols_by_ticker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
*Reference Data* | [**list_all_brokerage_authorization_type**](docs/apis/tags/ReferenceDataApi.md#list_all_brokerage_authorization_type) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
*Reference Data* | [**list_all_brokerages**](docs/apis/tags/ReferenceDataApi.md#list_all_brokerages) | **GET** /brokerages | List brokerages
*Reference Data* | [**list_all_currencies**](docs/apis/tags/ReferenceDataApi.md#list_all_currencies) | **GET** /currencies | List currencies
*Reference Data* | [**list_all_currencies_rates**](docs/apis/tags/ReferenceDataApi.md#list_all_currencies_rates) | **GET** /currencies/rates | List currency exchange rates
*Reference Data* | [**symbol_search_user_account**](docs/apis/tags/ReferenceDataApi.md#symbol_search_user_account) | **POST** /accounts/{accountId}/symbols | Search for symbols available in an account
*Trading* | [**cancel_user_account_order**](docs/apis/tags/TradingApi.md#cancel_user_account_order) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
*Trading* | [**get_order_impact**](docs/apis/tags/TradingApi.md#get_order_impact) | **POST** /trade/impact | Check impact of trades on account.
*Trading* | [**get_user_account_quotes**](docs/apis/tags/TradingApi.md#get_user_account_quotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
*Trading* | [**place_force_order**](docs/apis/tags/TradingApi.md#place_force_order) | **POST** /trade/place | Place a trade with NO validation.
*Trading* | [**place_oco_order**](docs/apis/tags/TradingApi.md#place_oco_order) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
*Trading* | [**place_order**](docs/apis/tags/TradingApi.md#place_order) | **POST** /trade/{tradeId} | Place order
*Transactions And Reporting* | [**get_activities**](docs/apis/tags/TransactionsAndReportingApi.md#get_activities) | **GET** /activities | Get transaction history for a user
*Transactions And Reporting* | [**get_reporting_custom_range**](docs/apis/tags/TransactionsAndReportingApi.md#get_reporting_custom_range) | **GET** /performance/custom | Get performance information for a specific timeframe


## Author
This Python package is automatically generated by [Konfig](https://konfigthis.com)
