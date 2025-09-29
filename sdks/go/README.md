<div align="center">

[![Visit SnapTrade](./header.png)](https://snaptrade.com)

# [SnapTrade](https://snaptrade.com)

Connect brokerage accounts to your app for live positions and trading

[![Go Reference](https://pkg.go.dev/badge/github.com/passiv/snaptrade-sdks/sdks/go)](https://pkg.go.dev/github.com/passiv/snaptrade-sdks/sdks/go@v1.0.112)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Installation

Add to your project:

```shell
go get github.com/passiv/snaptrade-sdks/sdks/go
```

## Getting Started

```golang
package main

import (
	"fmt"
	"os"

	snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func main() {
	configuration := snaptrade.NewConfiguration()
	configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
	configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
	client := snaptrade.NewAPIClient(configuration)

	// 1) Create a new user
	requestBody := snaptrade.NewSnapTradeRegisterUserRequestBody()
	userId := "USER_ID_FROM_YOU"
	requestBody.SetUserId(userId)
	request := client.AuthenticationApi.RegisterSnapTradeUser(*requestBody)
	resp, _, _ := request.Execute()

	// 2) Get user secret
	userSecret := resp.UserSecret

	// 3) Get redirect URI
	loginResp, _, _ := client.AuthenticationApi.LoginSnapTradeUser(userId, *userSecret).Execute()
	fmt.Println("Login redirect URI:", loginResp.LoginRedirectURI)

	// 4) Obtain account holdings data
	holdingsResp, _, _ := client.AccountInformationApi.GetAllUserHoldings(userId, *userSecret).Execute()
	fmt.Println("Account holdings:", holdingsResp)
	// 5) Delete the user
	deleteResp, _, _ := client.AuthenticationApi.DeleteSnapTradeUser(userId).Execute()
	fmt.Println("User deletion response:", deleteResp)
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.snaptrade.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountInformationApi* | [**GetAccountActivities**](docs/AccountInformationApi.md#getaccountactivities) | **Get** /accounts/{accountId}/activities | List account activities
*AccountInformationApi* | [**GetAllUserHoldings**](docs/AccountInformationApi.md#getalluserholdings) | **Get** /holdings | List all accounts for the user, plus balances, positions, and orders for each account.
*AccountInformationApi* | [**GetUserAccountBalance**](docs/AccountInformationApi.md#getuseraccountbalance) | **Get** /accounts/{accountId}/balances | List account balances
*AccountInformationApi* | [**GetUserAccountDetails**](docs/AccountInformationApi.md#getuseraccountdetails) | **Get** /accounts/{accountId} | Get account detail
*AccountInformationApi* | [**GetUserAccountOrderDetail**](docs/AccountInformationApi.md#getuseraccountorderdetail) | **Post** /accounts/{accountId}/orders/details | Get account order detail
*AccountInformationApi* | [**GetUserAccountOrders**](docs/AccountInformationApi.md#getuseraccountorders) | **Get** /accounts/{accountId}/orders | List account orders
*AccountInformationApi* | [**GetUserAccountPositions**](docs/AccountInformationApi.md#getuseraccountpositions) | **Get** /accounts/{accountId}/positions | List account positions
*AccountInformationApi* | [**GetUserAccountRecentOrders**](docs/AccountInformationApi.md#getuseraccountrecentorders) | **Get** /accounts/{accountId}/recentOrders | List account recent orders (last 24 hours only)
*AccountInformationApi* | [**GetUserAccountReturnRates**](docs/AccountInformationApi.md#getuseraccountreturnrates) | **Get** /accounts/{accountId}/returnRates | List account rate of returns
*AccountInformationApi* | [**GetUserHoldings**](docs/AccountInformationApi.md#getuserholdings) | **Get** /accounts/{accountId}/holdings | List account holdings
*AccountInformationApi* | [**ListUserAccounts**](docs/AccountInformationApi.md#listuseraccounts) | **Get** /accounts | List accounts
*AccountInformationApi* | [**UpdateUserAccount**](docs/AccountInformationApi.md#updateuseraccount) | **Put** /accounts/{accountId} | Update details of an investment account
*APIStatusApi* | [**Check**](docs/APIStatusApi.md#check) | **Get** / | Get API Status
*AuthenticationApi* | [**DeleteSnapTradeUser**](docs/AuthenticationApi.md#deletesnaptradeuser) | **Delete** /snapTrade/deleteUser | Delete user
*AuthenticationApi* | [**ListSnapTradeUsers**](docs/AuthenticationApi.md#listsnaptradeusers) | **Get** /snapTrade/listUsers | List all users
*AuthenticationApi* | [**LoginSnapTradeUser**](docs/AuthenticationApi.md#loginsnaptradeuser) | **Post** /snapTrade/login | Generate Connection Portal URL
*AuthenticationApi* | [**RegisterSnapTradeUser**](docs/AuthenticationApi.md#registersnaptradeuser) | **Post** /snapTrade/registerUser | Register user
*AuthenticationApi* | [**ResetSnapTradeUserSecret**](docs/AuthenticationApi.md#resetsnaptradeusersecret) | **Post** /snapTrade/resetUserSecret | Rotate user secret
*ConnectionsApi* | [**DetailBrokerageAuthorization**](docs/ConnectionsApi.md#detailbrokerageauthorization) | **Get** /authorizations/{authorizationId} | Get connection detail
*ConnectionsApi* | [**DisableBrokerageAuthorization**](docs/ConnectionsApi.md#disablebrokerageauthorization) | **Post** /authorizations/{authorizationId}/disable | Force disable connection
*ConnectionsApi* | [**ListBrokerageAuthorizations**](docs/ConnectionsApi.md#listbrokerageauthorizations) | **Get** /authorizations | List all connections
*ConnectionsApi* | [**RefreshBrokerageAuthorization**](docs/ConnectionsApi.md#refreshbrokerageauthorization) | **Post** /authorizations/{authorizationId}/refresh | Refresh holdings for a connection
*ConnectionsApi* | [**RemoveBrokerageAuthorization**](docs/ConnectionsApi.md#removebrokerageauthorization) | **Delete** /authorizations/{authorizationId} | Delete connection
*ConnectionsApi* | [**ReturnRates**](docs/ConnectionsApi.md#returnrates) | **Get** /authorizations/{authorizationId}/returnRates | List connection rate of returns
*ConnectionsApi* | [**SessionEvents**](docs/ConnectionsApi.md#sessionevents) | **Get** /sessionEvents | Get all session events for a user
*OptionsApi* | [**GetOptionsChain**](docs/OptionsApi.md#getoptionschain) | **Get** /accounts/{accountId}/optionsChain | Get the options chain for a symbol
*OptionsApi* | [**ListOptionHoldings**](docs/OptionsApi.md#listoptionholdings) | **Get** /accounts/{accountId}/options | List account option positions
*ReferenceDataApi* | [**GetCurrencyExchangeRatePair**](docs/ReferenceDataApi.md#getcurrencyexchangeratepair) | **Get** /currencies/rates/{currencyPair} | Get exchange rate of a currency pair
*ReferenceDataApi* | [**GetPartnerInfo**](docs/ReferenceDataApi.md#getpartnerinfo) | **Get** /snapTrade/partners | Get Client Info
*ReferenceDataApi* | [**GetSecurityTypes**](docs/ReferenceDataApi.md#getsecuritytypes) | **Get** /securityTypes | List security types
*ReferenceDataApi* | [**GetStockExchanges**](docs/ReferenceDataApi.md#getstockexchanges) | **Get** /exchanges | Get exchanges
*ReferenceDataApi* | [**GetSymbols**](docs/ReferenceDataApi.md#getsymbols) | **Post** /symbols | Search symbols
*ReferenceDataApi* | [**GetSymbolsByTicker**](docs/ReferenceDataApi.md#getsymbolsbyticker) | **Get** /symbols/{query} | Get symbol detail
*ReferenceDataApi* | [**ListAllBrokerageAuthorizationType**](docs/ReferenceDataApi.md#listallbrokerageauthorizationtype) | **Get** /brokerageAuthorizationTypes | Get all brokerage authorization types
*ReferenceDataApi* | [**ListAllBrokerageInstruments**](docs/ReferenceDataApi.md#listallbrokerageinstruments) | **Get** /brokerages/{slug}/instruments | Get brokerage instruments
*ReferenceDataApi* | [**ListAllBrokerages**](docs/ReferenceDataApi.md#listallbrokerages) | **Get** /brokerages | Get brokerages
*ReferenceDataApi* | [**ListAllCurrencies**](docs/ReferenceDataApi.md#listallcurrencies) | **Get** /currencies | Get currencies
*ReferenceDataApi* | [**ListAllCurrenciesRates**](docs/ReferenceDataApi.md#listallcurrenciesrates) | **Get** /currencies/rates | Get currency exchange rates
*ReferenceDataApi* | [**SymbolSearchUserAccount**](docs/ReferenceDataApi.md#symbolsearchuseraccount) | **Post** /accounts/{accountId}/symbols | Search account symbols
*TradingApi* | [**CancelOrder**](docs/TradingApi.md#cancelorder) | **Post** /accounts/{accountId}/trading/cancel | Cancel order
*TradingApi* | [**CancelUserAccountOrder**](docs/TradingApi.md#canceluseraccountorder) | **Post** /accounts/{accountId}/orders/cancel | Cancel equity order
*TradingApi* | [**GetCryptocurrencyPairQuote**](docs/TradingApi.md#getcryptocurrencypairquote) | **Get** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get crypto pair quote
*TradingApi* | [**GetOrderImpact**](docs/TradingApi.md#getorderimpact) | **Post** /trade/impact | Check equity order impact
*TradingApi* | [**GetUserAccountQuotes**](docs/TradingApi.md#getuseraccountquotes) | **Get** /accounts/{accountId}/quotes | Get equity symbol quotes
*TradingApi* | [**PlaceBracketOrder**](docs/TradingApi.md#placebracketorder) | **Post** /accounts/{accountId}/trading/bracket | Place bracket order
*TradingApi* | [**PlaceCryptoOrder**](docs/TradingApi.md#placecryptoorder) | **Post** /accounts/{accountId}/trading/crypto | Place crypto order
*TradingApi* | [**PlaceForceOrder**](docs/TradingApi.md#placeforceorder) | **Post** /trade/place | Place equity order
*TradingApi* | [**PlaceMlegOrder**](docs/TradingApi.md#placemlegorder) | **Post** /accounts/{accountId}/trading/options | Place option order
*TradingApi* | [**PlaceOrder**](docs/TradingApi.md#placeorder) | **Post** /trade/{tradeId} | Place checked equity order
*TradingApi* | [**PreviewCryptoOrder**](docs/TradingApi.md#previewcryptoorder) | **Post** /accounts/{accountId}/trading/crypto/preview | Preview crypto order
*TradingApi* | [**ReplaceOrder**](docs/TradingApi.md#replaceorder) | **Post** /accounts/{accountId}/trading/replace | Replace order
*TradingApi* | [**SearchCryptocurrencyPairInstruments**](docs/TradingApi.md#searchcryptocurrencypairinstruments) | **Get** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Get crypto pairs
*TransactionsAndReportingApi* | [**GetActivities**](docs/TransactionsAndReportingApi.md#getactivities) | **Get** /activities | Get transaction history for a user
*TransactionsAndReportingApi* | [**GetReportingCustomRange**](docs/TransactionsAndReportingApi.md#getreportingcustomrange) | **Get** /performance/custom | Get performance information for a specific timeframe


## Documentation For Models

 - [Account](docs/Account.md)
 - [AccountBalance](docs/AccountBalance.md)
 - [AccountBalanceTotal](docs/AccountBalanceTotal.md)
 - [AccountHoldings](docs/AccountHoldings.md)
 - [AccountHoldingsAccount](docs/AccountHoldingsAccount.md)
 - [AccountInformationGetUserAccountOrderDetailRequest](docs/AccountInformationGetUserAccountOrderDetailRequest.md)
 - [AccountOrderRecord](docs/AccountOrderRecord.md)
 - [AccountOrderRecordChildBrokerageOrderIds](docs/AccountOrderRecordChildBrokerageOrderIds.md)
 - [AccountOrderRecordOptionSymbol](docs/AccountOrderRecordOptionSymbol.md)
 - [AccountOrderRecordQuoteCurrency](docs/AccountOrderRecordQuoteCurrency.md)
 - [AccountOrderRecordQuoteUniversalSymbol](docs/AccountOrderRecordQuoteUniversalSymbol.md)
 - [AccountOrderRecordStatus](docs/AccountOrderRecordStatus.md)
 - [AccountOrderRecordUniversalSymbol](docs/AccountOrderRecordUniversalSymbol.md)
 - [AccountSimple](docs/AccountSimple.md)
 - [AccountSyncStatus](docs/AccountSyncStatus.md)
 - [AccountUniversalActivity](docs/AccountUniversalActivity.md)
 - [AccountUniversalActivityCurrency](docs/AccountUniversalActivityCurrency.md)
 - [AccountUniversalActivityOptionSymbol](docs/AccountUniversalActivityOptionSymbol.md)
 - [AccountUniversalActivitySymbol](docs/AccountUniversalActivitySymbol.md)
 - [ActionStrict](docs/ActionStrict.md)
 - [ActionStrictWithOptions](docs/ActionStrictWithOptions.md)
 - [AuthenticationLoginSnapTradeUser200Response](docs/AuthenticationLoginSnapTradeUser200Response.md)
 - [Balance](docs/Balance.md)
 - [BalanceCurrency](docs/BalanceCurrency.md)
 - [Brokerage](docs/Brokerage.md)
 - [BrokerageAuthorization](docs/BrokerageAuthorization.md)
 - [BrokerageAuthorizationDisabledConfirmation](docs/BrokerageAuthorizationDisabledConfirmation.md)
 - [BrokerageAuthorizationRefreshConfirmation](docs/BrokerageAuthorizationRefreshConfirmation.md)
 - [BrokerageAuthorizationTypeReadOnly](docs/BrokerageAuthorizationTypeReadOnly.md)
 - [BrokerageAuthorizationTypeReadOnlyBrokerage](docs/BrokerageAuthorizationTypeReadOnlyBrokerage.md)
 - [BrokerageInstrument](docs/BrokerageInstrument.md)
 - [BrokerageInstrumentsResponse](docs/BrokerageInstrumentsResponse.md)
 - [BrokerageType](docs/BrokerageType.md)
 - [CancelOrderResponse](docs/CancelOrderResponse.md)
 - [ChildBrokerageOrderIDs](docs/ChildBrokerageOrderIDs.md)
 - [CryptoOrderForm](docs/CryptoOrderForm.md)
 - [CryptoOrderPreview](docs/CryptoOrderPreview.md)
 - [CryptoOrderPreviewEstimatedFee](docs/CryptoOrderPreviewEstimatedFee.md)
 - [CryptoTradingInstrument](docs/CryptoTradingInstrument.md)
 - [CryptocurrencyPair](docs/CryptocurrencyPair.md)
 - [CryptocurrencyPairQuote](docs/CryptocurrencyPairQuote.md)
 - [Currency](docs/Currency.md)
 - [DeleteUserResponse](docs/DeleteUserResponse.md)
 - [DividendAtDate](docs/DividendAtDate.md)
 - [EncryptedResponse](docs/EncryptedResponse.md)
 - [EncryptedResponseEncryptedMessageData](docs/EncryptedResponseEncryptedMessageData.md)
 - [Exchange](docs/Exchange.md)
 - [ExchangeRatePairs](docs/ExchangeRatePairs.md)
 - [FigiInstrument](docs/FigiInstrument.md)
 - [HoldingsStatus](docs/HoldingsStatus.md)
 - [LoginRedirectURI](docs/LoginRedirectURI.md)
 - [ManualTrade](docs/ManualTrade.md)
 - [ManualTradeAndImpact](docs/ManualTradeAndImpact.md)
 - [ManualTradeBalance](docs/ManualTradeBalance.md)
 - [ManualTradeForm](docs/ManualTradeForm.md)
 - [ManualTradeFormBracket](docs/ManualTradeFormBracket.md)
 - [ManualTradeFormNotionalValue](docs/ManualTradeFormNotionalValue.md)
 - [ManualTradeFormWithOptions](docs/ManualTradeFormWithOptions.md)
 - [ManualTradeImpact](docs/ManualTradeImpact.md)
 - [ManualTradeReplaceForm](docs/ManualTradeReplaceForm.md)
 - [ManualTradeSymbol](docs/ManualTradeSymbol.md)
 - [MlegActionStrict](docs/MlegActionStrict.md)
 - [MlegInstrumentType](docs/MlegInstrumentType.md)
 - [MlegLeg](docs/MlegLeg.md)
 - [MlegOrderResponse](docs/MlegOrderResponse.md)
 - [MlegOrderTypeStrict](docs/MlegOrderTypeStrict.md)
 - [MlegPriceEffectStrict](docs/MlegPriceEffectStrict.md)
 - [MlegTradeForm](docs/MlegTradeForm.md)
 - [MlegTradingInstrument](docs/MlegTradingInstrument.md)
 - [Model400FailedRequestResponse](docs/Model400FailedRequestResponse.md)
 - [Model401FailedRequestResponse](docs/Model401FailedRequestResponse.md)
 - [Model402BrokerageAuthAlreadyDisabledException](docs/Model402BrokerageAuthAlreadyDisabledException.md)
 - [Model402BrokerageAuthDisabledResponse](docs/Model402BrokerageAuthDisabledResponse.md)
 - [Model403FailedRequestResponse](docs/Model403FailedRequestResponse.md)
 - [Model403FeatureNotEnabledResponse](docs/Model403FeatureNotEnabledResponse.md)
 - [Model404FailedRequestResponse](docs/Model404FailedRequestResponse.md)
 - [Model425FailedRequestResponse](docs/Model425FailedRequestResponse.md)
 - [Model500UnexpectedExceptionResponse](docs/Model500UnexpectedExceptionResponse.md)
 - [MonthlyDividends](docs/MonthlyDividends.md)
 - [NetContributions](docs/NetContributions.md)
 - [NetDividend](docs/NetDividend.md)
 - [NotionalValue](docs/NotionalValue.md)
 - [OptionBrokerageSymbol](docs/OptionBrokerageSymbol.md)
 - [OptionChainInner](docs/OptionChainInner.md)
 - [OptionChainInnerChainPerRootInner](docs/OptionChainInnerChainPerRootInner.md)
 - [OptionChainInnerChainPerRootInnerChainPerStrikePriceInner](docs/OptionChainInnerChainPerRootInnerChainPerStrikePriceInner.md)
 - [OptionLeg](docs/OptionLeg.md)
 - [OptionStrategy](docs/OptionStrategy.md)
 - [OptionStrategyLegsInner](docs/OptionStrategyLegsInner.md)
 - [OptionsPosition](docs/OptionsPosition.md)
 - [OptionsPositionCurrency](docs/OptionsPositionCurrency.md)
 - [OptionsSymbol](docs/OptionsSymbol.md)
 - [OrderTypeStrict](docs/OrderTypeStrict.md)
 - [OrderUpdatedResponse](docs/OrderUpdatedResponse.md)
 - [PaginatedUniversalActivity](docs/PaginatedUniversalActivity.md)
 - [PaginationDetails](docs/PaginationDetails.md)
 - [PartnerData](docs/PartnerData.md)
 - [PastValue](docs/PastValue.md)
 - [PerformanceCustom](docs/PerformanceCustom.md)
 - [Position](docs/Position.md)
 - [PositionCurrency](docs/PositionCurrency.md)
 - [PositionSymbol](docs/PositionSymbol.md)
 - [RateOfReturnObject](docs/RateOfReturnObject.md)
 - [RateOfReturnResponse](docs/RateOfReturnResponse.md)
 - [RecentOrdersResponse](docs/RecentOrdersResponse.md)
 - [SecurityType](docs/SecurityType.md)
 - [SessionEvent](docs/SessionEvent.md)
 - [SimpleOrderForm](docs/SimpleOrderForm.md)
 - [SnapTradeHoldingsAccount](docs/SnapTradeHoldingsAccount.md)
 - [SnapTradeHoldingsTotalValue](docs/SnapTradeHoldingsTotalValue.md)
 - [SnapTradeLoginUserRequestBody](docs/SnapTradeLoginUserRequestBody.md)
 - [SnapTradeRegisterUserRequestBody](docs/SnapTradeRegisterUserRequestBody.md)
 - [Status](docs/Status.md)
 - [StopLoss](docs/StopLoss.md)
 - [StrategyOrderRecord](docs/StrategyOrderRecord.md)
 - [StrategyQuotes](docs/StrategyQuotes.md)
 - [StrategyQuotesGreek](docs/StrategyQuotesGreek.md)
 - [SubPeriodReturnRate](docs/SubPeriodReturnRate.md)
 - [Symbol](docs/Symbol.md)
 - [SymbolCurrency](docs/SymbolCurrency.md)
 - [SymbolExchange](docs/SymbolExchange.md)
 - [SymbolFigiInstrument](docs/SymbolFigiInstrument.md)
 - [SymbolQuery](docs/SymbolQuery.md)
 - [SymbolsQuotesInner](docs/SymbolsQuotesInner.md)
 - [TakeProfit](docs/TakeProfit.md)
 - [TimeInForceStrict](docs/TimeInForceStrict.md)
 - [TradingInstrument](docs/TradingInstrument.md)
 - [TradingSearchCryptocurrencyPairInstruments200Response](docs/TradingSearchCryptocurrencyPairInstruments200Response.md)
 - [TransactionsStatus](docs/TransactionsStatus.md)
 - [USExchange](docs/USExchange.md)
 - [UnderlyingSymbol](docs/UnderlyingSymbol.md)
 - [UnderlyingSymbolExchange](docs/UnderlyingSymbolExchange.md)
 - [UnderlyingSymbolType](docs/UnderlyingSymbolType.md)
 - [UniversalActivity](docs/UniversalActivity.md)
 - [UniversalSymbol](docs/UniversalSymbol.md)
 - [UserIDandSecret](docs/UserIDandSecret.md)
 - [ValidatedTradeBody](docs/ValidatedTradeBody.md)
