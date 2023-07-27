# snaptrade-python-sdk@10.24.0
Connect brokerage accounts to your app for live positions and trading


## Requirements

Python >=3.7

## Installing

```sh
pip install snaptrade-python-sdk==10.24.0
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
    # Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
    # See configuration.py for a list of all supported configuration parameters.
    host="https://api.snaptrade.com/api/v1",
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)


async def main():
    try:
        # List all accounts for the user, plus balances and positions for each account.
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

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountInformationApi* | [**get_all_user_holdings**](docs/apis/tags/AccountInformationApi.md#get_all_user_holdings) | **GET** /holdings | List all accounts for the user, plus balances and positions for each account.
*AccountInformationApi* | [**get_user_account_balance**](docs/apis/tags/AccountInformationApi.md#get_user_account_balance) | **GET** /accounts/{accountId}/balances | Get all cash balances of an investment account
*AccountInformationApi* | [**get_user_account_details**](docs/apis/tags/AccountInformationApi.md#get_user_account_details) | **GET** /accounts/{accountId} | Return details of a specific investment account
*AccountInformationApi* | [**get_user_account_orders**](docs/apis/tags/AccountInformationApi.md#get_user_account_orders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account
*AccountInformationApi* | [**get_user_account_positions**](docs/apis/tags/AccountInformationApi.md#get_user_account_positions) | **GET** /accounts/{accountId}/positions | Get all positions of an investment account
*AccountInformationApi* | [**get_user_holdings**](docs/apis/tags/AccountInformationApi.md#get_user_holdings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
*AccountInformationApi* | [**list_user_accounts**](docs/apis/tags/AccountInformationApi.md#list_user_accounts) | **GET** /accounts | List all investment accounts for the user
*AccountInformationApi* | [**update_user_account**](docs/apis/tags/AccountInformationApi.md#update_user_account) | **PUT** /accounts/{accountId} | Update details of an investment account
*APIStatusApi* | [**check**](docs/apis/tags/APIStatusApi.md#check) | **GET** / | Get API Status
*AuthenticationApi* | [**delete_snap_trade_user**](docs/apis/tags/AuthenticationApi.md#delete_snap_trade_user) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
*AuthenticationApi* | [**get_user_jwt**](docs/apis/tags/AuthenticationApi.md#get_user_jwt) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user&#x27;s local device
*AuthenticationApi* | [**list_snap_trade_users**](docs/apis/tags/AuthenticationApi.md#list_snap_trade_users) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you&#x27;ve registered on our platform
*AuthenticationApi* | [**login_snap_trade_user**](docs/apis/tags/AuthenticationApi.md#login_snap_trade_user) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
*AuthenticationApi* | [**register_snap_trade_user**](docs/apis/tags/AuthenticationApi.md#register_snap_trade_user) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations
*ConnectionsApi* | [**detail_brokerage_authorization**](docs/apis/tags/ConnectionsApi.md#detail_brokerage_authorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user
*ConnectionsApi* | [**list_brokerage_authorizations**](docs/apis/tags/ConnectionsApi.md#list_brokerage_authorizations) | **GET** /authorizations | List all brokerage authorizations for the user
*ConnectionsApi* | [**remove_brokerage_authorization**](docs/apis/tags/ConnectionsApi.md#remove_brokerage_authorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization.
*ConnectionsApi* | [**session_events**](docs/apis/tags/ConnectionsApi.md#session_events) | **GET** /sessionEvents | List all session events for the partner
*ErrorLogsApi* | [**list_user_errors**](docs/apis/tags/ErrorLogsApi.md#list_user_errors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users
*OptionsApi* | [**get_option_strategy**](docs/apis/tags/OptionsApi.md#get_option_strategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
*OptionsApi* | [**get_options_chain**](docs/apis/tags/OptionsApi.md#get_options_chain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
*OptionsApi* | [**get_options_strategy_quote**](docs/apis/tags/OptionsApi.md#get_options_strategy_quote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
*OptionsApi* | [**list_option_holdings**](docs/apis/tags/OptionsApi.md#list_option_holdings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
*OptionsApi* | [**place_option_strategy**](docs/apis/tags/OptionsApi.md#place_option_strategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage
*ReferenceDataApi* | [**get_currency_exchange_rate_pair**](docs/apis/tags/ReferenceDataApi.md#get_currency_exchange_rate_pair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
*ReferenceDataApi* | [**get_partner_info**](docs/apis/tags/ReferenceDataApi.md#get_partner_info) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
*ReferenceDataApi* | [**get_security_types**](docs/apis/tags/ReferenceDataApi.md#get_security_types) | **GET** /securityTypes | List of all security types.
*ReferenceDataApi* | [**get_stock_exchanges**](docs/apis/tags/ReferenceDataApi.md#get_stock_exchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes
*ReferenceDataApi* | [**get_symbols**](docs/apis/tags/ReferenceDataApi.md#get_symbols) | **POST** /symbols | Search for symbols
*ReferenceDataApi* | [**get_symbols_by_ticker**](docs/apis/tags/ReferenceDataApi.md#get_symbols_by_ticker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
*ReferenceDataApi* | [**list_all_brokerage_authorization_type**](docs/apis/tags/ReferenceDataApi.md#list_all_brokerage_authorization_type) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
*ReferenceDataApi* | [**list_all_brokerages**](docs/apis/tags/ReferenceDataApi.md#list_all_brokerages) | **GET** /brokerages | List of all brokerages.
*ReferenceDataApi* | [**list_all_currencies**](docs/apis/tags/ReferenceDataApi.md#list_all_currencies) | **GET** /currencies | List of all supported currencies
*ReferenceDataApi* | [**list_all_currencies_rates**](docs/apis/tags/ReferenceDataApi.md#list_all_currencies_rates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies
*ReferenceDataApi* | [**symbol_search_user_account**](docs/apis/tags/ReferenceDataApi.md#symbol_search_user_account) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring
*TradingApi* | [**cancel_user_account_order**](docs/apis/tags/TradingApi.md#cancel_user_account_order) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
*TradingApi* | [**get_order_impact**](docs/apis/tags/TradingApi.md#get_order_impact) | **POST** /trade/impact | Check impact of trades on account.
*TradingApi* | [**get_user_account_quotes**](docs/apis/tags/TradingApi.md#get_user_account_quotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
*TradingApi* | [**place_force_order**](docs/apis/tags/TradingApi.md#place_force_order) | **POST** /trade/place | Place a trade with NO validation.
*TradingApi* | [**place_oco_order**](docs/apis/tags/TradingApi.md#place_oco_order) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
*TradingApi* | [**place_order**](docs/apis/tags/TradingApi.md#place_order) | **POST** /trade/{tradeId} | Place order
*TransactionsAndReportingApi* | [**get_activities**](docs/apis/tags/TransactionsAndReportingApi.md#get_activities) | **GET** /activities | Get transaction history for a user
*TransactionsAndReportingApi* | [**get_reporting_custom_range**](docs/apis/tags/TransactionsAndReportingApi.md#get_reporting_custom_range) | **GET** /performance/custom | Get performance information for a specific timeframe

## Documentation For Models

 - [Account](docs/models/Account.md)
 - [AccountCashRestrictions](docs/models/AccountCashRestrictions.md)
 - [AccountHoldings](docs/models/AccountHoldings.md)
 - [AccountHoldingsAccount](docs/models/AccountHoldingsAccount.md)
 - [AccountHoldingsAccountBalances](docs/models/AccountHoldingsAccountBalances.md)
 - [AccountHoldingsAccountOrders](docs/models/AccountHoldingsAccountOrders.md)
 - [AccountHoldingsAccountPositions](docs/models/AccountHoldingsAccountPositions.md)
 - [AccountHoldingsBalances](docs/models/AccountHoldingsBalances.md)
 - [AccountHoldingsPositions](docs/models/AccountHoldingsPositions.md)
 - [AccountIDs](docs/models/AccountIDs.md)
 - [AccountMeta](docs/models/AccountMeta.md)
 - [AccountOrderRecord](docs/models/AccountOrderRecord.md)
 - [AccountOrderRecordStatus](docs/models/AccountOrderRecordStatus.md)
 - [AccountSimple](docs/models/AccountSimple.md)
 - [AccountSyncStatus](docs/models/AccountSyncStatus.md)
 - [Action](docs/models/Action.md)
 - [Balance](docs/models/Balance.md)
 - [Brokerage](docs/models/Brokerage.md)
 - [BrokerageAuthIDs](docs/models/BrokerageAuthIDs.md)
 - [BrokerageAuthorization](docs/models/BrokerageAuthorization.md)
 - [BrokerageAuthorizationMeta](docs/models/BrokerageAuthorizationMeta.md)
 - [BrokerageAuthorizationType](docs/models/BrokerageAuthorizationType.md)
 - [BrokerageAuthorizationTypeReadOnly](docs/models/BrokerageAuthorizationTypeReadOnly.md)
 - [BrokerageAuthorizationTypeReadOnlyBrokerage](docs/models/BrokerageAuthorizationTypeReadOnlyBrokerage.md)
 - [BrokerageExchanges](docs/models/BrokerageExchanges.md)
 - [BrokerageSymbol](docs/models/BrokerageSymbol.md)
 - [BrokerageType](docs/models/BrokerageType.md)
 - [CalculatedTrade](docs/models/CalculatedTrade.md)
 - [CalculatedTradeTrades](docs/models/CalculatedTradeTrades.md)
 - [CancelledUnits](docs/models/CancelledUnits.md)
 - [Cash](docs/models/Cash.md)
 - [CashRestriction](docs/models/CashRestriction.md)
 - [ClientID](docs/models/ClientID.md)
 - [ConsumerKey](docs/models/ConsumerKey.md)
 - [Currency](docs/models/Currency.md)
 - [DeleteUserResponse](docs/models/DeleteUserResponse.md)
 - [DividendAtDate](docs/models/DividendAtDate.md)
 - [Email](docs/models/Email.md)
 - [EncryptedResponse](docs/models/EncryptedResponse.md)
 - [EncryptedResponseEncryptedMessageData](docs/models/EncryptedResponseEncryptedMessageData.md)
 - [Exchange](docs/models/Exchange.md)
 - [ExchangeRatePairs](docs/models/ExchangeRatePairs.md)
 - [ExcludedAsset](docs/models/ExcludedAsset.md)
 - [FilledUnits](docs/models/FilledUnits.md)
 - [Id](docs/models/Id.md)
 - [JWT](docs/models/JWT.md)
 - [LoginRedirectURI](docs/models/LoginRedirectURI.md)
 - [ManualTrade](docs/models/ManualTrade.md)
 - [ManualTradeAndImpact](docs/models/ManualTradeAndImpact.md)
 - [ManualTradeAndImpactTradeImpacts](docs/models/ManualTradeAndImpactTradeImpacts.md)
 - [ManualTradeBalance](docs/models/ManualTradeBalance.md)
 - [ManualTradeForm](docs/models/ManualTradeForm.md)
 - [ManualTradeSymbol](docs/models/ManualTradeSymbol.md)
 - [Model400FailedRequestResponse](docs/models/Model400FailedRequestResponse.md)
 - [Model401FailedRequestResponse](docs/models/Model401FailedRequestResponse.md)
 - [Model403FailedRequestResponse](docs/models/Model403FailedRequestResponse.md)
 - [Model404FailedRequestResponse](docs/models/Model404FailedRequestResponse.md)
 - [ModelAssetClass](docs/models/ModelAssetClass.md)
 - [ModelAssetClassDetails](docs/models/ModelAssetClassDetails.md)
 - [ModelAssetClassDetailsModelAssetClassTarget](docs/models/ModelAssetClassDetailsModelAssetClassTarget.md)
 - [ModelAssetClassTarget](docs/models/ModelAssetClassTarget.md)
 - [ModelPortfolio](docs/models/ModelPortfolio.md)
 - [ModelPortfolioAssetClass](docs/models/ModelPortfolioAssetClass.md)
 - [ModelPortfolioDetails](docs/models/ModelPortfolioDetails.md)
 - [ModelPortfolioDetailsModelPortfolioAssetClass](docs/models/ModelPortfolioDetailsModelPortfolioAssetClass.md)
 - [ModelPortfolioDetailsModelPortfolioSecurity](docs/models/ModelPortfolioDetailsModelPortfolioSecurity.md)
 - [ModelPortfolioSecurity](docs/models/ModelPortfolioSecurity.md)
 - [MonthlyDividends](docs/models/MonthlyDividends.md)
 - [MonthlyDividendsDividends](docs/models/MonthlyDividendsDividends.md)
 - [NetContributions](docs/models/NetContributions.md)
 - [NetDividend](docs/models/NetDividend.md)
 - [OpenUnits](docs/models/OpenUnits.md)
 - [OptionChain](docs/models/OptionChain.md)
 - [OptionChainItem](docs/models/OptionChainItem.md)
 - [OptionChainItemChainPerRoot](docs/models/OptionChainItemChainPerRoot.md)
 - [OptionChainItemChainPerRootItem](docs/models/OptionChainItemChainPerRootItem.md)
 - [OptionChainItemChainPerRootItemChainPerStrikePrice](docs/models/OptionChainItemChainPerRootItemChainPerStrikePrice.md)
 - [OptionChainItemChainPerRootItemChainPerStrikePriceItem](docs/models/OptionChainItemChainPerRootItemChainPerStrikePriceItem.md)
 - [OptionLeg](docs/models/OptionLeg.md)
 - [OptionStrategy](docs/models/OptionStrategy.md)
 - [OptionStrategyLegs](docs/models/OptionStrategyLegs.md)
 - [OptionsHoldings](docs/models/OptionsHoldings.md)
 - [OptionsPosition](docs/models/OptionsPosition.md)
 - [OptionsSymbol](docs/models/OptionsSymbol.md)
 - [OrderType](docs/models/OrderType.md)
 - [PartnerData](docs/models/PartnerData.md)
 - [PartnerDataAllowedBrokerages](docs/models/PartnerDataAllowedBrokerages.md)
 - [PastValue](docs/models/PastValue.md)
 - [Percent](docs/models/Percent.md)
 - [PerformanceCustom](docs/models/PerformanceCustom.md)
 - [PerformanceCustomBadTickers](docs/models/PerformanceCustomBadTickers.md)
 - [PerformanceCustomContributionTimeframe](docs/models/PerformanceCustomContributionTimeframe.md)
 - [PerformanceCustomContributionTimeframeCumulative](docs/models/PerformanceCustomContributionTimeframeCumulative.md)
 - [PerformanceCustomDividendTimeline](docs/models/PerformanceCustomDividendTimeline.md)
 - [PerformanceCustomDividends](docs/models/PerformanceCustomDividends.md)
 - [PerformanceCustomReturnRateTimeframe](docs/models/PerformanceCustomReturnRateTimeframe.md)
 - [PerformanceCustomTotalEquityTimeframe](docs/models/PerformanceCustomTotalEquityTimeframe.md)
 - [PerformanceCustomWithdrawalTimeframe](docs/models/PerformanceCustomWithdrawalTimeframe.md)
 - [PortfolioGroup](docs/models/PortfolioGroup.md)
 - [PortfolioGroupInfo](docs/models/PortfolioGroupInfo.md)
 - [PortfolioGroupInfoBalances](docs/models/PortfolioGroupInfoBalances.md)
 - [PortfolioGroupInfoBrokerageAuthorizations](docs/models/PortfolioGroupInfoBrokerageAuthorizations.md)
 - [PortfolioGroupInfoCalculatedTrades](docs/models/PortfolioGroupInfoCalculatedTrades.md)
 - [PortfolioGroupInfoExcludedPositions](docs/models/PortfolioGroupInfoExcludedPositions.md)
 - [PortfolioGroupInfoIdealPositions](docs/models/PortfolioGroupInfoIdealPositions.md)
 - [PortfolioGroupInfoPositions](docs/models/PortfolioGroupInfoPositions.md)
 - [PortfolioGroupInfoQuotableSymbols](docs/models/PortfolioGroupInfoQuotableSymbols.md)
 - [PortfolioGroupInfoSymbols](docs/models/PortfolioGroupInfoSymbols.md)
 - [PortfolioGroupInfoTargetPositions](docs/models/PortfolioGroupInfoTargetPositions.md)
 - [PortfolioGroupPosition](docs/models/PortfolioGroupPosition.md)
 - [PortfolioGroupSettings](docs/models/PortfolioGroupSettings.md)
 - [Position](docs/models/Position.md)
 - [PositionSymbol](docs/models/PositionSymbol.md)
 - [Price](docs/models/Price.md)
 - [RedirectTokenandPin](docs/models/RedirectTokenandPin.md)
 - [ReportingDate](docs/models/ReportingDate.md)
 - [ReportingFrequency](docs/models/ReportingFrequency.md)
 - [RsaPublicKey](docs/models/RsaPublicKey.md)
 - [SecurityType](docs/models/SecurityType.md)
 - [SessionEvent](docs/models/SessionEvent.md)
 - [Signature](docs/models/Signature.md)
 - [SignedContent](docs/models/SignedContent.md)
 - [SnapTradeAPIDisclaimerAcceptStatus](docs/models/SnapTradeAPIDisclaimerAcceptStatus.md)
 - [SnapTradeHoldingsAccount](docs/models/SnapTradeHoldingsAccount.md)
 - [SnapTradeHoldingsAccountAccountId](docs/models/SnapTradeHoldingsAccountAccountId.md)
 - [SnapTradeHoldingsAccountAccountIdCashRestrictions](docs/models/SnapTradeHoldingsAccountAccountIdCashRestrictions.md)
 - [SnapTradeHoldingsAccountAccountIdMeta](docs/models/SnapTradeHoldingsAccountAccountIdMeta.md)
 - [SnapTradeHoldingsAccountMeta](docs/models/SnapTradeHoldingsAccountMeta.md)
 - [SnapTradeHoldingsTotalValue](docs/models/SnapTradeHoldingsTotalValue.md)
 - [SnapTradeLoginUserRequestBody](docs/models/SnapTradeLoginUserRequestBody.md)
 - [SnapTradeRegisterUserRequestBody](docs/models/SnapTradeRegisterUserRequestBody.md)
 - [SnapTradeUserID](docs/models/SnapTradeUserID.md)
 - [SnapTradeUserSecret](docs/models/SnapTradeUserSecret.md)
 - [Status](docs/models/Status.md)
 - [StopPrice](docs/models/StopPrice.md)
 - [StrategyImpact](docs/models/StrategyImpact.md)
 - [StrategyImpactLegs](docs/models/StrategyImpactLegs.md)
 - [StrategyImpactLegsItem](docs/models/StrategyImpactLegsItem.md)
 - [StrategyOrderPlace](docs/models/StrategyOrderPlace.md)
 - [StrategyOrderPlaceOrders](docs/models/StrategyOrderPlaceOrders.md)
 - [StrategyOrderPlaceOrdersItem](docs/models/StrategyOrderPlaceOrdersItem.md)
 - [StrategyOrderPlaceOrdersItemLegs](docs/models/StrategyOrderPlaceOrdersItemLegs.md)
 - [StrategyOrderPlaceOrdersItemLegsItem](docs/models/StrategyOrderPlaceOrdersItemLegsItem.md)
 - [StrategyOrderQuotes](docs/models/StrategyOrderQuotes.md)
 - [StrategyOrderRecord](docs/models/StrategyOrderRecord.md)
 - [StrategyQuotes](docs/models/StrategyQuotes.md)
 - [StrategyQuotesGreek](docs/models/StrategyQuotesGreek.md)
 - [SubPeriodReturnRate](docs/models/SubPeriodReturnRate.md)
 - [Symbol](docs/models/Symbol.md)
 - [SymbolQuery](docs/models/SymbolQuery.md)
 - [SymbolsQuotes](docs/models/SymbolsQuotes.md)
 - [SyncStatusDate](docs/models/SyncStatusDate.md)
 - [TargetAsset](docs/models/TargetAsset.md)
 - [TargetAssetList](docs/models/TargetAssetList.md)
 - [TargetAssetMeta](docs/models/TargetAssetMeta.md)
 - [Time](docs/models/Time.md)
 - [TimeInForce](docs/models/TimeInForce.md)
 - [Timestamp](docs/models/Timestamp.md)
 - [Trade](docs/models/Trade.md)
 - [TradeExecutionStatus](docs/models/TradeExecutionStatus.md)
 - [TradeExecutionStatusMeta](docs/models/TradeExecutionStatusMeta.md)
 - [TradeImpact](docs/models/TradeImpact.md)
 - [TransactionsStatus](docs/models/TransactionsStatus.md)
 - [USExchange](docs/models/USExchange.md)
 - [UnderlyingSymbol](docs/models/UnderlyingSymbol.md)
 - [UnderlyingSymbolCurrencies](docs/models/UnderlyingSymbolCurrencies.md)
 - [Units](docs/models/Units.md)
 - [UniversalActivity](docs/models/UniversalActivity.md)
 - [UniversalSymbol](docs/models/UniversalSymbol.md)
 - [UniversalSymbolCurrencies](docs/models/UniversalSymbolCurrencies.md)
 - [UniversalSymbolTicker](docs/models/UniversalSymbolTicker.md)
 - [UniversalSymbolTickerCurrencies](docs/models/UniversalSymbolTickerCurrencies.md)
 - [UserErrorLog](docs/models/UserErrorLog.md)
 - [UserID](docs/models/UserID.md)
 - [UserIDandSecret](docs/models/UserIDandSecret.md)
 - [UserList](docs/models/UserList.md)
 - [UserSecret](docs/models/UserSecret.md)
 - [UserSettings](docs/models/UserSettings.md)


## Author
This Python package is automatically generated by [Konfig](https://konfigthis.com)
