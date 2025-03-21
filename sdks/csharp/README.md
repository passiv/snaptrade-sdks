# SnapTrade.Net - C#

[![NuGet](https://img.shields.io/badge/NuGet-5.0.85-blue.svg)](https://www.nuget.org/packages/SnapTrade.Net/5.0.85)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

Connect brokerage accounts to your app for live positions and trading

## Frameworks supported
- .NET Core >=1.0
- .NET Framework >=4.6
- Mono/Xamarin >=vNext

## Installation

Using the [.NET Core command-line interface (CLI) tools][dotnet-core-cli-tools]:

```sh
dotnet add package SnapTrade.Net
```

Using the [NuGet Command Line Interface (CLI)][nuget-cli]:

```sh
nuget install SnapTrade.Net
```

Using the [Package Manager Console][package-manager-console]:

```powershell
Install-Package SnapTrade.Net
```

From within Visual Studio:

1. Open the Solution Explorer.
2. Right-click on a project within your solution.
3. Click on *Manage NuGet Packages...*
4. Click on the *Browse* tab and search for "SnapTrade.Net".
5. Click on the "SnapTrade.Net" package, select the appropriate version in the
   right-tab and click *Install*.

## Getting Started

```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetAccountActivitiesExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var accountId = "accountId_example";
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var startDate = DateTime.Parse("2013-10-20"); // The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`. (optional) 
            var endDate = DateTime.Parse("2013-10-20"); // The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`. (optional) 
            var offset = 56; // An integer that specifies the starting point of the paginated results. Default is 0. (optional) 
            var limit = 56; // An integer that specifies the maximum number of transactions to return. Default of 1000. (optional) 
            var type = "BUY,SELL,DIVIDEND"; // Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another  (optional) 
            
            try
            {
                // List account activities
                PaginatedUniversalActivity result = client.AccountInformation.GetAccountActivities(accountId, userId, userSecret, startDate, endDate, offset, limit, type);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AccountInformationApi.GetAccountActivities: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

## Documentation for API Endpoints

All URIs are relative to *https://api.snaptrade.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountInformationApi* | [**GetAccountActivities**](docs/AccountInformationApi.md#getaccountactivities) | **GET** /accounts/{accountId}/activities | List account activities
*AccountInformationApi* | [**GetAllUserHoldings**](docs/AccountInformationApi.md#getalluserholdings) | **GET** /holdings | List all accounts for the user, plus balances, positions, and orders for each account.
*AccountInformationApi* | [**GetUserAccountBalance**](docs/AccountInformationApi.md#getuseraccountbalance) | **GET** /accounts/{accountId}/balances | List account balances
*AccountInformationApi* | [**GetUserAccountDetails**](docs/AccountInformationApi.md#getuseraccountdetails) | **GET** /accounts/{accountId} | Get account detail
*AccountInformationApi* | [**GetUserAccountOrders**](docs/AccountInformationApi.md#getuseraccountorders) | **GET** /accounts/{accountId}/orders | List account recent orders
*AccountInformationApi* | [**GetUserAccountPositions**](docs/AccountInformationApi.md#getuseraccountpositions) | **GET** /accounts/{accountId}/positions | List account positions
*AccountInformationApi* | [**GetUserAccountRecentOrders**](docs/AccountInformationApi.md#getuseraccountrecentorders) | **GET** /accounts/{accountId}/recentOrders | List account recent orders (last 24 hours only)
*AccountInformationApi* | [**GetUserAccountReturnRates**](docs/AccountInformationApi.md#getuseraccountreturnrates) | **GET** /accounts/{accountId}/returnRates | List account rate of returns
*AccountInformationApi* | [**GetUserHoldings**](docs/AccountInformationApi.md#getuserholdings) | **GET** /accounts/{accountId}/holdings | List account holdings
*AccountInformationApi* | [**ListUserAccounts**](docs/AccountInformationApi.md#listuseraccounts) | **GET** /accounts | List accounts
*AccountInformationApi* | [**UpdateUserAccount**](docs/AccountInformationApi.md#updateuseraccount) | **PUT** /accounts/{accountId} | Update details of an investment account
*APIStatusApi* | [**Check**](docs/APIStatusApi.md#check) | **GET** / | Get API Status
*AuthenticationApi* | [**DeleteSnapTradeUser**](docs/AuthenticationApi.md#deletesnaptradeuser) | **DELETE** /snapTrade/deleteUser | Delete user
*AuthenticationApi* | [**ListSnapTradeUsers**](docs/AuthenticationApi.md#listsnaptradeusers) | **GET** /snapTrade/listUsers | List all users
*AuthenticationApi* | [**LoginSnapTradeUser**](docs/AuthenticationApi.md#loginsnaptradeuser) | **POST** /snapTrade/login | Generate Connection Portal URL
*AuthenticationApi* | [**RegisterSnapTradeUser**](docs/AuthenticationApi.md#registersnaptradeuser) | **POST** /snapTrade/registerUser | Register user
*AuthenticationApi* | [**ResetSnapTradeUserSecret**](docs/AuthenticationApi.md#resetsnaptradeusersecret) | **POST** /snapTrade/resetUserSecret | Rotate user secret
*ConnectionsApi* | [**DetailBrokerageAuthorization**](docs/ConnectionsApi.md#detailbrokerageauthorization) | **GET** /authorizations/{authorizationId} | Get connection detail
*ConnectionsApi* | [**DisableBrokerageAuthorization**](docs/ConnectionsApi.md#disablebrokerageauthorization) | **POST** /authorizations/{authorizationId}/disable | Force disable connection
*ConnectionsApi* | [**ListBrokerageAuthorizations**](docs/ConnectionsApi.md#listbrokerageauthorizations) | **GET** /authorizations | List all connections
*ConnectionsApi* | [**RefreshBrokerageAuthorization**](docs/ConnectionsApi.md#refreshbrokerageauthorization) | **POST** /authorizations/{authorizationId}/refresh | Refresh holdings for a connection
*ConnectionsApi* | [**RemoveBrokerageAuthorization**](docs/ConnectionsApi.md#removebrokerageauthorization) | **DELETE** /authorizations/{authorizationId} | Delete connection
*ConnectionsApi* | [**ReturnRates**](docs/ConnectionsApi.md#returnrates) | **GET** /authorizations/{authorizationId}/returnRates | List connection rate of returns
*ConnectionsApi* | [**SessionEvents**](docs/ConnectionsApi.md#sessionevents) | **GET** /sessionEvents | Get all session events for a user
*CryptoSpotTradingApi* | [**CryptoSpotCancelOrder**](docs/CryptoSpotTradingApi.md#cryptospotcancelorder) | **POST** /accounts/{accountId}/trading/crypto/spot/cancelOrder | Cancel a crypto spot order.
*CryptoSpotTradingApi* | [**CryptoSpotPlaceOrder**](docs/CryptoSpotTradingApi.md#cryptospotplaceorder) | **POST** /accounts/{accountId}/trading/crypto/spot/placeOrder | Place a spot order on a crypto exchange
*CryptoSpotTradingApi* | [**CryptoSpotPreviewOrder**](docs/CryptoSpotTradingApi.md#cryptospotprevieworder) | **POST** /accounts/{accountId}/trading/crypto/spot/previewOrder | Place a spot order on a crypto exchange
*CryptoSpotTradingApi* | [**CryptoSpotQuote**](docs/CryptoSpotTradingApi.md#cryptospotquote) | **GET** /accounts/{accountId}/trading/crypto/spot/quote | Get a quote for a cyrptocurrency market
*CryptoSpotTradingApi* | [**CryptoSpotSymbols**](docs/CryptoSpotTradingApi.md#cryptospotsymbols) | **GET** /accounts/{accountId}/trading/crypto/spot/symbols | Search crypto spot symbols
*OptionsApi* | [**GetOptionStrategy**](docs/OptionsApi.md#getoptionstrategy) | **POST** /accounts/{accountId}/optionStrategy | Create options strategy
*OptionsApi* | [**GetOptionsChain**](docs/OptionsApi.md#getoptionschain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain for a symbol
*OptionsApi* | [**GetOptionsStrategyQuote**](docs/OptionsApi.md#getoptionsstrategyquote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get options strategy quotes
*OptionsApi* | [**ListOptionHoldings**](docs/OptionsApi.md#listoptionholdings) | **GET** /accounts/{accountId}/options | List account option positions
*OptionsApi* | [**PlaceOptionStrategy**](docs/OptionsApi.md#placeoptionstrategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order
*ReferenceDataApi* | [**GetCurrencyExchangeRatePair**](docs/ReferenceDataApi.md#getcurrencyexchangeratepair) | **GET** /currencies/rates/{currencyPair} | Get exchange rate of a currency pair
*ReferenceDataApi* | [**GetPartnerInfo**](docs/ReferenceDataApi.md#getpartnerinfo) | **GET** /snapTrade/partners | Get Client Info
*ReferenceDataApi* | [**GetSecurityTypes**](docs/ReferenceDataApi.md#getsecuritytypes) | **GET** /securityTypes | List security types
*ReferenceDataApi* | [**GetStockExchanges**](docs/ReferenceDataApi.md#getstockexchanges) | **GET** /exchanges | Get exchanges
*ReferenceDataApi* | [**GetSymbols**](docs/ReferenceDataApi.md#getsymbols) | **POST** /symbols | Search symbols
*ReferenceDataApi* | [**GetSymbolsByTicker**](docs/ReferenceDataApi.md#getsymbolsbyticker) | **GET** /symbols/{query} | Get symbol detail
*ReferenceDataApi* | [**ListAllBrokerageAuthorizationType**](docs/ReferenceDataApi.md#listallbrokerageauthorizationtype) | **GET** /brokerageAuthorizationTypes | Get all brokerage authorization types
*ReferenceDataApi* | [**ListAllBrokerages**](docs/ReferenceDataApi.md#listallbrokerages) | **GET** /brokerages | Get brokerages
*ReferenceDataApi* | [**ListAllCurrencies**](docs/ReferenceDataApi.md#listallcurrencies) | **GET** /currencies | Get currencies
*ReferenceDataApi* | [**ListAllCurrenciesRates**](docs/ReferenceDataApi.md#listallcurrenciesrates) | **GET** /currencies/rates | Get currency exchange rates
*ReferenceDataApi* | [**SymbolSearchUserAccount**](docs/ReferenceDataApi.md#symbolsearchuseraccount) | **POST** /accounts/{accountId}/symbols | Search account symbols
*TradingApi* | [**CancelUserAccountOrder**](docs/TradingApi.md#canceluseraccountorder) | **POST** /accounts/{accountId}/orders/cancel | Cancel order
*TradingApi* | [**GetOrderImpact**](docs/TradingApi.md#getorderimpact) | **POST** /trade/impact | Check order impact
*TradingApi* | [**GetUserAccountQuotes**](docs/TradingApi.md#getuseraccountquotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
*TradingApi* | [**PlaceBracketOrder**](docs/TradingApi.md#placebracketorder) | **POST** /trade/placeBracketOrder | Place a Bracket Order
*TradingApi* | [**PlaceForceOrder**](docs/TradingApi.md#placeforceorder) | **POST** /trade/place | Place order
*TradingApi* | [**PlaceOrder**](docs/TradingApi.md#placeorder) | **POST** /trade/{tradeId} | Place checked order
*TransactionsAndReportingApi* | [**GetActivities**](docs/TransactionsAndReportingApi.md#getactivities) | **GET** /activities | Get transaction history for a user
*TransactionsAndReportingApi* | [**GetReportingCustomRange**](docs/TransactionsAndReportingApi.md#getreportingcustomrange) | **GET** /performance/custom | Get performance information for a specific timeframe


## Documentation for Models

 - [Account](docs/Account.md)
 - [AccountBalance](docs/AccountBalance.md)
 - [AccountBalanceTotal](docs/AccountBalanceTotal.md)
 - [AccountHoldings](docs/AccountHoldings.md)
 - [AccountHoldingsAccount](docs/AccountHoldingsAccount.md)
 - [AccountOrderRecord](docs/AccountOrderRecord.md)
 - [AccountOrderRecordOptionSymbol](docs/AccountOrderRecordOptionSymbol.md)
 - [AccountOrderRecordStatus](docs/AccountOrderRecordStatus.md)
 - [AccountOrderRecordUniversalSymbol](docs/AccountOrderRecordUniversalSymbol.md)
 - [AccountSimple](docs/AccountSimple.md)
 - [AccountSyncStatus](docs/AccountSyncStatus.md)
 - [AccountUniversalActivity](docs/AccountUniversalActivity.md)
 - [AccountUniversalActivityCurrency](docs/AccountUniversalActivityCurrency.md)
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
 - [BrokerageType](docs/BrokerageType.md)
 - [ChildBrokerageOrderIDs](docs/ChildBrokerageOrderIDs.md)
 - [ChildBrokerageOrderIDsNullable](docs/ChildBrokerageOrderIDsNullable.md)
 - [ConnectionsSessionEvents200ResponseInner](docs/ConnectionsSessionEvents200ResponseInner.md)
 - [CryptoSpotOrderPreview](docs/CryptoSpotOrderPreview.md)
 - [CryptoSpotOrderPreviewEstimatedFee](docs/CryptoSpotOrderPreviewEstimatedFee.md)
 - [CryptoSpotQuote](docs/CryptoSpotQuote.md)
 - [CryptocurrencyPair](docs/CryptocurrencyPair.md)
 - [Currency](docs/Currency.md)
 - [CurrencyNullable](docs/CurrencyNullable.md)
 - [DeleteUserResponse](docs/DeleteUserResponse.md)
 - [DividendAtDate](docs/DividendAtDate.md)
 - [EncryptedResponse](docs/EncryptedResponse.md)
 - [EncryptedResponseEncryptedMessageData](docs/EncryptedResponseEncryptedMessageData.md)
 - [Exchange](docs/Exchange.md)
 - [ExchangeRatePairs](docs/ExchangeRatePairs.md)
 - [FigiInstrument](docs/FigiInstrument.md)
 - [FigiInstrumentNullable](docs/FigiInstrumentNullable.md)
 - [HoldingsStatus](docs/HoldingsStatus.md)
 - [LoginRedirectURI](docs/LoginRedirectURI.md)
 - [ManualTrade](docs/ManualTrade.md)
 - [ManualTradeAndImpact](docs/ManualTradeAndImpact.md)
 - [ManualTradeBalance](docs/ManualTradeBalance.md)
 - [ManualTradeForm](docs/ManualTradeForm.md)
 - [ManualTradeFormBracket](docs/ManualTradeFormBracket.md)
 - [ManualTradeFormWithOptions](docs/ManualTradeFormWithOptions.md)
 - [ManualTradeImpact](docs/ManualTradeImpact.md)
 - [ManualTradeSymbol](docs/ManualTradeSymbol.md)
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
 - [NotionalValueNullable](docs/NotionalValueNullable.md)
 - [OptionBrokerageSymbol](docs/OptionBrokerageSymbol.md)
 - [OptionChainInner](docs/OptionChainInner.md)
 - [OptionChainInnerChainPerRootInner](docs/OptionChainInnerChainPerRootInner.md)
 - [OptionChainInnerChainPerRootInnerChainPerStrikePriceInner](docs/OptionChainInnerChainPerRootInnerChainPerStrikePriceInner.md)
 - [OptionLeg](docs/OptionLeg.md)
 - [OptionStrategy](docs/OptionStrategy.md)
 - [OptionStrategyLegsInner](docs/OptionStrategyLegsInner.md)
 - [OptionsGetOptionStrategyRequest](docs/OptionsGetOptionStrategyRequest.md)
 - [OptionsPlaceOptionStrategyRequest](docs/OptionsPlaceOptionStrategyRequest.md)
 - [OptionsPosition](docs/OptionsPosition.md)
 - [OptionsSymbol](docs/OptionsSymbol.md)
 - [OptionsSymbolNullable](docs/OptionsSymbolNullable.md)
 - [OrderTypeStrict](docs/OrderTypeStrict.md)
 - [PaginatedUniversalActivity](docs/PaginatedUniversalActivity.md)
 - [PaginationDetails](docs/PaginationDetails.md)
 - [PartnerData](docs/PartnerData.md)
 - [PastValue](docs/PastValue.md)
 - [PerformanceCustom](docs/PerformanceCustom.md)
 - [Position](docs/Position.md)
 - [PositionSymbol](docs/PositionSymbol.md)
 - [RateOfReturnObject](docs/RateOfReturnObject.md)
 - [RateOfReturnResponse](docs/RateOfReturnResponse.md)
 - [RecentOrdersResponse](docs/RecentOrdersResponse.md)
 - [SecurityType](docs/SecurityType.md)
 - [SessionEvent](docs/SessionEvent.md)
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
 - [SymbolNullable](docs/SymbolNullable.md)
 - [SymbolQuery](docs/SymbolQuery.md)
 - [SymbolsQuotesInner](docs/SymbolsQuotesInner.md)
 - [TakeProfit](docs/TakeProfit.md)
 - [TimeInForceStrict](docs/TimeInForceStrict.md)
 - [TradingCancelUserAccountOrderRequest](docs/TradingCancelUserAccountOrderRequest.md)
 - [TradingCryptoSpotCancelOrderRequest](docs/TradingCryptoSpotCancelOrderRequest.md)
 - [TradingCryptoSpotPlaceOrderRequest](docs/TradingCryptoSpotPlaceOrderRequest.md)
 - [TradingCryptoSpotSymbols200Response](docs/TradingCryptoSpotSymbols200Response.md)
 - [TransactionsStatus](docs/TransactionsStatus.md)
 - [USExchange](docs/USExchange.md)
 - [UnderlyingSymbol](docs/UnderlyingSymbol.md)
 - [UnderlyingSymbolExchange](docs/UnderlyingSymbolExchange.md)
 - [UnderlyingSymbolType](docs/UnderlyingSymbolType.md)
 - [UniversalActivity](docs/UniversalActivity.md)
 - [UniversalSymbol](docs/UniversalSymbol.md)
 - [UserIDandSecret](docs/UserIDandSecret.md)
 - [ValidatedTradeBody](docs/ValidatedTradeBody.md)


## Dependencies

- [RestSharp](https://www.nuget.org/packages/RestSharp) - 106.13.0 or later
- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 13.0.1 or later
- [JsonSubTypes](https://www.nuget.org/packages/JsonSubTypes/) - 1.8.0 or later
- [System.ComponentModel.Annotations](https://www.nuget.org/packages/System.ComponentModel.Annotations) - 5.0.0 or later

## Author
This C# package is automatically generated by [Konfig](https://konfigthis.com)

[dotnet-core-cli-tools]: https://docs.microsoft.com/en-us/dotnet/core/tools/
[nuget-cli]: https://docs.microsoft.com/en-us/nuget/tools/nuget-exe-cli-reference
[package-manager-console]: https://docs.microsoft.com/en-us/nuget/tools/package-manager-console
