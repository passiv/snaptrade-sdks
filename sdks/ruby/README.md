# snaptrade

Connect brokerage accounts to your app for live positions and trading

For more information, please visit [https://snaptrade.com/](https://snaptrade.com/)

## Installation

Add to Gemfile:

```ruby
gem 'snaptrade', '~> 1.3.0'
```

## Getting Started

```ruby
require 'snaptrade'

SnapTrade.client_id = "YOUR_CLIENT_ID"
SnapTrade.consumer_key = "YOUR_CONSUMER_KEY"

user_id = "John.doe@snaptrade.com"
user_secret = "USERSECRET123"
brokerage_authorizations = "917c8734-8470-4a3e-a18f-57c3f2ee6631"

begin
  # List all accounts for the user, plus balances and positions for each account.
  result = SnapTrade::AccountInformation.get_all_user_holdings(
    user_id: user_id,
    user_secret: user_secret,
    brokerage_authorizations: brokerage_authorizations,
  )
  p result
rescue SnapTrade::ApiError => e
  puts "Exception when calling SnapTrade::AccountInformation.get_all_user_holdings: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.snaptrade.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SnapTrade::AccountInformationApi* | [**get_all_user_holdings**](docs/AccountInformationApi.md#get_all_user_holdings) | **GET** /holdings | List all accounts for the user, plus balances and positions for each account.
*SnapTrade::AccountInformationApi* | [**get_user_account_balance**](docs/AccountInformationApi.md#get_user_account_balance) | **GET** /accounts/{accountId}/balances | Get all cash balances of an investment account
*SnapTrade::AccountInformationApi* | [**get_user_account_details**](docs/AccountInformationApi.md#get_user_account_details) | **GET** /accounts/{accountId} | Return details of a specific investment account
*SnapTrade::AccountInformationApi* | [**get_user_account_orders**](docs/AccountInformationApi.md#get_user_account_orders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account
*SnapTrade::AccountInformationApi* | [**get_user_account_positions**](docs/AccountInformationApi.md#get_user_account_positions) | **GET** /accounts/{accountId}/positions | Get all positions of an investment account
*SnapTrade::AccountInformationApi* | [**get_user_holdings**](docs/AccountInformationApi.md#get_user_holdings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
*SnapTrade::AccountInformationApi* | [**list_user_accounts**](docs/AccountInformationApi.md#list_user_accounts) | **GET** /accounts | List all investment accounts for the user
*SnapTrade::AccountInformationApi* | [**update_user_account**](docs/AccountInformationApi.md#update_user_account) | **PUT** /accounts/{accountId} | Update details of an investment account
*SnapTrade::APIStatusApi* | [**check**](docs/APIStatusApi.md#check) | **GET** / | Get API Status
*SnapTrade::AuthenticationApi* | [**delete_snap_trade_user**](docs/AuthenticationApi.md#delete_snap_trade_user) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
*SnapTrade::AuthenticationApi* | [**get_user_jwt**](docs/AuthenticationApi.md#get_user_jwt) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user's local device
*SnapTrade::AuthenticationApi* | [**list_snap_trade_users**](docs/AuthenticationApi.md#list_snap_trade_users) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you've registered on our platform
*SnapTrade::AuthenticationApi* | [**login_snap_trade_user**](docs/AuthenticationApi.md#login_snap_trade_user) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
*SnapTrade::AuthenticationApi* | [**register_snap_trade_user**](docs/AuthenticationApi.md#register_snap_trade_user) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations
*SnapTrade::ConnectionsApi* | [**detail_brokerage_authorization**](docs/ConnectionsApi.md#detail_brokerage_authorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user
*SnapTrade::ConnectionsApi* | [**list_brokerage_authorizations**](docs/ConnectionsApi.md#list_brokerage_authorizations) | **GET** /authorizations | List all brokerage authorizations for the user
*SnapTrade::ConnectionsApi* | [**remove_brokerage_authorization**](docs/ConnectionsApi.md#remove_brokerage_authorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization.
*SnapTrade::ConnectionsApi* | [**session_events**](docs/ConnectionsApi.md#session_events) | **GET** /sessionEvents | List all session events for the partner
*SnapTrade::ErrorLogsApi* | [**list_user_errors**](docs/ErrorLogsApi.md#list_user_errors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users
*SnapTrade::OptionsApi* | [**get_option_strategy**](docs/OptionsApi.md#get_option_strategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
*SnapTrade::OptionsApi* | [**get_options_chain**](docs/OptionsApi.md#get_options_chain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
*SnapTrade::OptionsApi* | [**get_options_strategy_quote**](docs/OptionsApi.md#get_options_strategy_quote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
*SnapTrade::OptionsApi* | [**list_option_holdings**](docs/OptionsApi.md#list_option_holdings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
*SnapTrade::OptionsApi* | [**place_option_strategy**](docs/OptionsApi.md#place_option_strategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage
*SnapTrade::PortfolioManagementApi* | [**add_portfolio_excluded_asset**](docs/PortfolioManagementApi.md#add_portfolio_excluded_asset) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group
*SnapTrade::PortfolioManagementApi* | [**create**](docs/PortfolioManagementApi.md#create) | **POST** /portfolioGroups | Create new portfolio group
*SnapTrade::PortfolioManagementApi* | [**create_asset_class**](docs/PortfolioManagementApi.md#create_asset_class) | **POST** /modelAssetClass | Create a new model asset class
*SnapTrade::PortfolioManagementApi* | [**create_model_portfolio**](docs/PortfolioManagementApi.md#create_model_portfolio) | **POST** /modelPortfolio | Creates a new model portfolio
*SnapTrade::PortfolioManagementApi* | [**delete_asset_class**](docs/PortfolioManagementApi.md#delete_asset_class) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class
*SnapTrade::PortfolioManagementApi* | [**delete_excluded_asset**](docs/PortfolioManagementApi.md#delete_excluded_asset) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group
*SnapTrade::PortfolioManagementApi* | [**delete_model_portfolio_by_id**](docs/PortfolioManagementApi.md#delete_model_portfolio_by_id) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio
*SnapTrade::PortfolioManagementApi* | [**delete_portfoli**](docs/PortfolioManagementApi.md#delete_portfoli) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio.
*SnapTrade::PortfolioManagementApi* | [**delete_portfolio_target_by_id**](docs/PortfolioManagementApi.md#delete_portfolio_target_by_id) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset.
*SnapTrade::PortfolioManagementApi* | [**detail_asset_class**](docs/PortfolioManagementApi.md#detail_asset_class) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class
*SnapTrade::PortfolioManagementApi* | [**get_calculated_trade_by_id**](docs/PortfolioManagementApi.md#get_calculated_trade_by_id) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade
*SnapTrade::PortfolioManagementApi* | [**get_model_details_by_id**](docs/PortfolioManagementApi.md#get_model_details_by_id) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio
*SnapTrade::PortfolioManagementApi* | [**get_portfolio_balances**](docs/PortfolioManagementApi.md#get_portfolio_balances) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group
*SnapTrade::PortfolioManagementApi* | [**get_portfolio_details_by_id**](docs/PortfolioManagementApi.md#get_portfolio_details_by_id) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio
*SnapTrade::PortfolioManagementApi* | [**get_portfolio_info**](docs/PortfolioManagementApi.md#get_portfolio_info) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group.
*SnapTrade::PortfolioManagementApi* | [**get_portfolio_settings**](docs/PortfolioManagementApi.md#get_portfolio_settings) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings
*SnapTrade::PortfolioManagementApi* | [**get_portfolio_target_by_id**](docs/PortfolioManagementApi.md#get_portfolio_target_by_id) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group
*SnapTrade::PortfolioManagementApi* | [**get_portfolio_targets**](docs/PortfolioManagementApi.md#get_portfolio_targets) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup.
*SnapTrade::PortfolioManagementApi* | [**get_portoflio_excluded_assets**](docs/PortfolioManagementApi.md#get_portoflio_excluded_assets) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\
*SnapTrade::PortfolioManagementApi* | [**import_model_portfolio**](docs/PortfolioManagementApi.md#import_model_portfolio) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group
*SnapTrade::PortfolioManagementApi* | [**list**](docs/PortfolioManagementApi.md#list) | **GET** /portfolioGroups | List all portfolio groups
*SnapTrade::PortfolioManagementApi* | [**list_asset_classes**](docs/PortfolioManagementApi.md#list_asset_classes) | **GET** /modelAssetClass | List of model asset class
*SnapTrade::PortfolioManagementApi* | [**list_calculated_trades**](docs/PortfolioManagementApi.md#list_calculated_trades) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group
*SnapTrade::PortfolioManagementApi* | [**list_model_portfolio**](docs/PortfolioManagementApi.md#list_model_portfolio) | **GET** /modelPortfolio | List of model portfolio
*SnapTrade::PortfolioManagementApi* | [**list_portfolio_accounts**](docs/PortfolioManagementApi.md#list_portfolio_accounts) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group
*SnapTrade::PortfolioManagementApi* | [**modify_model_portfolio_by_id**](docs/PortfolioManagementApi.md#modify_model_portfolio_by_id) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object
*SnapTrade::PortfolioManagementApi* | [**save_portfolio**](docs/PortfolioManagementApi.md#save_portfolio) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio.
*SnapTrade::PortfolioManagementApi* | [**search_portfolio_symbols**](docs/PortfolioManagementApi.md#search_portfolio_symbols) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group
*SnapTrade::PortfolioManagementApi* | [**set_portfolio_targets**](docs/PortfolioManagementApi.md#set_portfolio_targets) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
*SnapTrade::PortfolioManagementApi* | [**update_asset_class**](docs/PortfolioManagementApi.md#update_asset_class) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects
*SnapTrade::PortfolioManagementApi* | [**update_portfolio_settings**](docs/PortfolioManagementApi.md#update_portfolio_settings) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings
*SnapTrade::PortfolioManagementApi* | [**update_portfolio_target_by_id**](docs/PortfolioManagementApi.md#update_portfolio_target_by_id) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup.
*SnapTrade::ReferenceDataApi* | [**get_currency_exchange_rate_pair**](docs/ReferenceDataApi.md#get_currency_exchange_rate_pair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
*SnapTrade::ReferenceDataApi* | [**get_partner_info**](docs/ReferenceDataApi.md#get_partner_info) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
*SnapTrade::ReferenceDataApi* | [**get_security_types**](docs/ReferenceDataApi.md#get_security_types) | **GET** /securityTypes | List of all security types.
*SnapTrade::ReferenceDataApi* | [**get_stock_exchanges**](docs/ReferenceDataApi.md#get_stock_exchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes
*SnapTrade::ReferenceDataApi* | [**get_symbols**](docs/ReferenceDataApi.md#get_symbols) | **POST** /symbols | Search for symbols
*SnapTrade::ReferenceDataApi* | [**get_symbols_by_ticker**](docs/ReferenceDataApi.md#get_symbols_by_ticker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
*SnapTrade::ReferenceDataApi* | [**list_all_brokerage_authorization_type**](docs/ReferenceDataApi.md#list_all_brokerage_authorization_type) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
*SnapTrade::ReferenceDataApi* | [**list_all_brokerages**](docs/ReferenceDataApi.md#list_all_brokerages) | **GET** /brokerages | List of all brokerages.
*SnapTrade::ReferenceDataApi* | [**list_all_currencies**](docs/ReferenceDataApi.md#list_all_currencies) | **GET** /currencies | List of all supported currencies
*SnapTrade::ReferenceDataApi* | [**list_all_currencies_rates**](docs/ReferenceDataApi.md#list_all_currencies_rates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies
*SnapTrade::ReferenceDataApi* | [**symbol_search_user_account**](docs/ReferenceDataApi.md#symbol_search_user_account) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring
*SnapTrade::TradingApi* | [**cancel_user_account_order**](docs/TradingApi.md#cancel_user_account_order) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
*SnapTrade::TradingApi* | [**get_calculated_trade_impact_by_id**](docs/TradingApi.md#get_calculated_trade_impact_by_id) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it's placed
*SnapTrade::TradingApi* | [**get_calculated_trades_impact**](docs/TradingApi.md#get_calculated_trades_impact) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio
*SnapTrade::TradingApi* | [**get_order_impact**](docs/TradingApi.md#get_order_impact) | **POST** /trade/impact | Check impact of trades on account.
*SnapTrade::TradingApi* | [**get_user_account_quotes**](docs/TradingApi.md#get_user_account_quotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
*SnapTrade::TradingApi* | [**modify_calculated_trade_by_id**](docs/TradingApi.md#modify_calculated_trade_by_id) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed
*SnapTrade::TradingApi* | [**place_calculated_trades**](docs/TradingApi.md#place_calculated_trades) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series
*SnapTrade::TradingApi* | [**place_force_order**](docs/TradingApi.md#place_force_order) | **POST** /trade/place | Place a trade with NO validation.
*SnapTrade::TradingApi* | [**place_oco_order**](docs/TradingApi.md#place_oco_order) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
*SnapTrade::TradingApi* | [**place_order**](docs/TradingApi.md#place_order) | **POST** /trade/{tradeId} | Place order
*SnapTrade::TransactionsAndReportingApi* | [**get_activities**](docs/TransactionsAndReportingApi.md#get_activities) | **GET** /activities | Get transaction history for a user
*SnapTrade::TransactionsAndReportingApi* | [**get_reporting_custom_range**](docs/TransactionsAndReportingApi.md#get_reporting_custom_range) | **GET** /performance/custom | Get performance information for a specific timeframe


## Documentation for Models

 - [SnapTrade::Account](docs/Account.md)
 - [SnapTrade::AccountHoldings](docs/AccountHoldings.md)
 - [SnapTrade::AccountHoldingsAccount](docs/AccountHoldingsAccount.md)
 - [SnapTrade::AccountOrderRecord](docs/AccountOrderRecord.md)
 - [SnapTrade::AccountOrderRecordStatus](docs/AccountOrderRecordStatus.md)
 - [SnapTrade::AccountSimple](docs/AccountSimple.md)
 - [SnapTrade::AccountSyncStatus](docs/AccountSyncStatus.md)
 - [SnapTrade::Action](docs/Action.md)
 - [SnapTrade::AuthType](docs/AuthType.md)
 - [SnapTrade::AuthenticationLoginSnapTradeUser200Response](docs/AuthenticationLoginSnapTradeUser200Response.md)
 - [SnapTrade::Balance](docs/Balance.md)
 - [SnapTrade::Brokerage](docs/Brokerage.md)
 - [SnapTrade::BrokerageAuthorization](docs/BrokerageAuthorization.md)
 - [SnapTrade::BrokerageAuthorizationType](docs/BrokerageAuthorizationType.md)
 - [SnapTrade::BrokerageAuthorizationTypeReadOnly](docs/BrokerageAuthorizationTypeReadOnly.md)
 - [SnapTrade::BrokerageAuthorizationTypeReadOnlyBrokerage](docs/BrokerageAuthorizationTypeReadOnlyBrokerage.md)
 - [SnapTrade::BrokerageAuthorizationTypeReadOnlyType](docs/BrokerageAuthorizationTypeReadOnlyType.md)
 - [SnapTrade::BrokerageAuthorizationTypeType](docs/BrokerageAuthorizationTypeType.md)
 - [SnapTrade::BrokerageSymbol](docs/BrokerageSymbol.md)
 - [SnapTrade::BrokerageType](docs/BrokerageType.md)
 - [SnapTrade::CalculatedTrade](docs/CalculatedTrade.md)
 - [SnapTrade::CashRestriction](docs/CashRestriction.md)
 - [SnapTrade::ConnectionType](docs/ConnectionType.md)
 - [SnapTrade::ConnectionsSessionEvents200ResponseInner](docs/ConnectionsSessionEvents200ResponseInner.md)
 - [SnapTrade::Currency](docs/Currency.md)
 - [SnapTrade::DeleteUserResponse](docs/DeleteUserResponse.md)
 - [SnapTrade::DividendAtDate](docs/DividendAtDate.md)
 - [SnapTrade::EncryptedResponse](docs/EncryptedResponse.md)
 - [SnapTrade::EncryptedResponseEncryptedMessageData](docs/EncryptedResponseEncryptedMessageData.md)
 - [SnapTrade::Exchange](docs/Exchange.md)
 - [SnapTrade::ExchangeRatePairs](docs/ExchangeRatePairs.md)
 - [SnapTrade::ExcludedAsset](docs/ExcludedAsset.md)
 - [SnapTrade::JWT](docs/JWT.md)
 - [SnapTrade::LoginRedirectURI](docs/LoginRedirectURI.md)
 - [SnapTrade::ManualTrade](docs/ManualTrade.md)
 - [SnapTrade::ManualTradeAndImpact](docs/ManualTradeAndImpact.md)
 - [SnapTrade::ManualTradeBalance](docs/ManualTradeBalance.md)
 - [SnapTrade::ManualTradeForm](docs/ManualTradeForm.md)
 - [SnapTrade::ManualTradeSymbol](docs/ManualTradeSymbol.md)
 - [SnapTrade::Model400FailedRequestResponse](docs/Model400FailedRequestResponse.md)
 - [SnapTrade::Model401FailedRequestResponse](docs/Model401FailedRequestResponse.md)
 - [SnapTrade::Model403FailedRequestResponse](docs/Model403FailedRequestResponse.md)
 - [SnapTrade::Model404FailedRequestResponse](docs/Model404FailedRequestResponse.md)
 - [SnapTrade::ModelAssetClass](docs/ModelAssetClass.md)
 - [SnapTrade::ModelAssetClassDetails](docs/ModelAssetClassDetails.md)
 - [SnapTrade::ModelAssetClassTarget](docs/ModelAssetClassTarget.md)
 - [SnapTrade::ModelPortfolio](docs/ModelPortfolio.md)
 - [SnapTrade::ModelPortfolioAssetClass](docs/ModelPortfolioAssetClass.md)
 - [SnapTrade::ModelPortfolioDetails](docs/ModelPortfolioDetails.md)
 - [SnapTrade::ModelPortfolioSecurity](docs/ModelPortfolioSecurity.md)
 - [SnapTrade::ModelType](docs/ModelType.md)
 - [SnapTrade::MonthlyDividends](docs/MonthlyDividends.md)
 - [SnapTrade::NetContributions](docs/NetContributions.md)
 - [SnapTrade::NetDividend](docs/NetDividend.md)
 - [SnapTrade::OptionChainInner](docs/OptionChainInner.md)
 - [SnapTrade::OptionChainInnerChainPerRootInner](docs/OptionChainInnerChainPerRootInner.md)
 - [SnapTrade::OptionChainInnerChainPerRootInnerChainPerStrikePriceInner](docs/OptionChainInnerChainPerRootInnerChainPerStrikePriceInner.md)
 - [SnapTrade::OptionLeg](docs/OptionLeg.md)
 - [SnapTrade::OptionLegAction](docs/OptionLegAction.md)
 - [SnapTrade::OptionStrategy](docs/OptionStrategy.md)
 - [SnapTrade::OptionStrategyLegsInner](docs/OptionStrategyLegsInner.md)
 - [SnapTrade::OptionsGetOptionStrategyRequest](docs/OptionsGetOptionStrategyRequest.md)
 - [SnapTrade::OptionsHoldings](docs/OptionsHoldings.md)
 - [SnapTrade::OptionsPlaceOptionStrategyRequest](docs/OptionsPlaceOptionStrategyRequest.md)
 - [SnapTrade::OptionsPosition](docs/OptionsPosition.md)
 - [SnapTrade::OptionsSymbol](docs/OptionsSymbol.md)
 - [SnapTrade::OrderStrategyExecuteBodyOrderType](docs/OrderStrategyExecuteBodyOrderType.md)
 - [SnapTrade::OrderStrategyExecuteBodyTimeInForce](docs/OrderStrategyExecuteBodyTimeInForce.md)
 - [SnapTrade::OrderType](docs/OrderType.md)
 - [SnapTrade::PartnerData](docs/PartnerData.md)
 - [SnapTrade::PastValue](docs/PastValue.md)
 - [SnapTrade::PerformanceCustom](docs/PerformanceCustom.md)
 - [SnapTrade::PortfolioGroup](docs/PortfolioGroup.md)
 - [SnapTrade::PortfolioGroupInfo](docs/PortfolioGroupInfo.md)
 - [SnapTrade::PortfolioGroupPosition](docs/PortfolioGroupPosition.md)
 - [SnapTrade::PortfolioGroupSettings](docs/PortfolioGroupSettings.md)
 - [SnapTrade::Position](docs/Position.md)
 - [SnapTrade::PositionSymbol](docs/PositionSymbol.md)
 - [SnapTrade::RedirectTokenandPin](docs/RedirectTokenandPin.md)
 - [SnapTrade::SecurityType](docs/SecurityType.md)
 - [SnapTrade::SessionEvent](docs/SessionEvent.md)
 - [SnapTrade::SessionEventType](docs/SessionEventType.md)
 - [SnapTrade::SnapTradeAPIDisclaimerAcceptStatus](docs/SnapTradeAPIDisclaimerAcceptStatus.md)
 - [SnapTrade::SnapTradeHoldingsAccount](docs/SnapTradeHoldingsAccount.md)
 - [SnapTrade::SnapTradeHoldingsAccountAccountId](docs/SnapTradeHoldingsAccountAccountId.md)
 - [SnapTrade::SnapTradeHoldingsTotalValue](docs/SnapTradeHoldingsTotalValue.md)
 - [SnapTrade::SnapTradeLoginUserRequestBody](docs/SnapTradeLoginUserRequestBody.md)
 - [SnapTrade::SnapTradeRegisterUserRequestBody](docs/SnapTradeRegisterUserRequestBody.md)
 - [SnapTrade::State](docs/State.md)
 - [SnapTrade::Status](docs/Status.md)
 - [SnapTrade::StrategyImpact](docs/StrategyImpact.md)
 - [SnapTrade::StrategyImpactLegsInner](docs/StrategyImpactLegsInner.md)
 - [SnapTrade::StrategyOrderPlace](docs/StrategyOrderPlace.md)
 - [SnapTrade::StrategyOrderPlaceOrdersInner](docs/StrategyOrderPlaceOrdersInner.md)
 - [SnapTrade::StrategyOrderPlaceOrdersInnerLegsInner](docs/StrategyOrderPlaceOrdersInnerLegsInner.md)
 - [SnapTrade::StrategyOrderRecord](docs/StrategyOrderRecord.md)
 - [SnapTrade::StrategyOrderRecordOrderType](docs/StrategyOrderRecordOrderType.md)
 - [SnapTrade::StrategyOrderRecordStatus](docs/StrategyOrderRecordStatus.md)
 - [SnapTrade::StrategyOrderRecordTimeInForce](docs/StrategyOrderRecordTimeInForce.md)
 - [SnapTrade::StrategyQuotes](docs/StrategyQuotes.md)
 - [SnapTrade::StrategyQuotesGreek](docs/StrategyQuotesGreek.md)
 - [SnapTrade::StrategyType](docs/StrategyType.md)
 - [SnapTrade::SubPeriodReturnRate](docs/SubPeriodReturnRate.md)
 - [SnapTrade::Symbol](docs/Symbol.md)
 - [SnapTrade::SymbolQuery](docs/SymbolQuery.md)
 - [SnapTrade::SymbolsQuotes](docs/SymbolsQuotes.md)
 - [SnapTrade::TargetAsset](docs/TargetAsset.md)
 - [SnapTrade::TimeInForce](docs/TimeInForce.md)
 - [SnapTrade::Trade](docs/Trade.md)
 - [SnapTrade::TradeAction](docs/TradeAction.md)
 - [SnapTrade::TradeExecutionStatus](docs/TradeExecutionStatus.md)
 - [SnapTrade::TradeExecutionStatusAction](docs/TradeExecutionStatusAction.md)
 - [SnapTrade::TradeImpact](docs/TradeImpact.md)
 - [SnapTrade::TradingCancelUserAccountOrderRequest](docs/TradingCancelUserAccountOrderRequest.md)
 - [SnapTrade::TradingPlaceOCOOrderRequest](docs/TradingPlaceOCOOrderRequest.md)
 - [SnapTrade::TransactionsStatus](docs/TransactionsStatus.md)
 - [SnapTrade::Type](docs/Type.md)
 - [SnapTrade::USExchange](docs/USExchange.md)
 - [SnapTrade::UnderlyingSymbol](docs/UnderlyingSymbol.md)
 - [SnapTrade::UniversalActivity](docs/UniversalActivity.md)
 - [SnapTrade::UniversalSymbol](docs/UniversalSymbol.md)
 - [SnapTrade::UniversalSymbolTicker](docs/UniversalSymbolTicker.md)
 - [SnapTrade::UserErrorLog](docs/UserErrorLog.md)
 - [SnapTrade::UserIDandSecret](docs/UserIDandSecret.md)
 - [SnapTrade::UserSettings](docs/UserSettings.md)

