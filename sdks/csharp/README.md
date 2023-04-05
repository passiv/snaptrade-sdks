# SnapTrade.Net - the C# library for the SnapTrade

Connect brokerage accounts to your app for live positions and trading

This C# SDK is automatically generated by the [Konfig](https://konfigthis.com):

- API version: 1.0.0
- SDK version: 1.0.0

<a name="frameworks-supported"></a>
## Frameworks supported
- .NET Core >=1.0
- .NET Framework >=4.6
- Mono/Xamarin >=vNext

<a name="dependencies"></a>
## Dependencies

- [RestSharp](https://www.nuget.org/packages/RestSharp) - 106.13.0 or later
- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 13.0.1 or later
- [JsonSubTypes](https://www.nuget.org/packages/JsonSubTypes/) - 1.8.0 or later
- [System.ComponentModel.Annotations](https://www.nuget.org/packages/System.ComponentModel.Annotations) - 5.0.0 or later

The DLLs included in the package may not be the latest version. We recommend using [NuGet](https://docs.nuget.org/consume/installing-nuget) to obtain the latest version of the packages:
```
Install-Package RestSharp
Install-Package Newtonsoft.Json
Install-Package JsonSubTypes
Install-Package System.ComponentModel.Annotations
```

NOTE: RestSharp versions greater than 105.1.0 have a bug which causes file uploads to fail. See [RestSharp#742](https://github.com/restsharp/RestSharp/issues/742).
NOTE: RestSharp for .Net Core creates a new socket for each api call, which can lead to a socket exhaustion problem. See [RestSharp#1406](https://github.com/restsharp/RestSharp/issues/1406).

<a name="installation"></a>
## Installation
Generate the DLL using your preferred tool (e.g. `dotnet build`)

Then include the DLL (under the `bin` folder) in the C# project, and use the namespaces:
```csharp
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;
```
<a name="usage"></a>
## Usage

To use the API client with a HTTP proxy, setup a `System.Net.WebProxy`
```csharp
Configuration c = new Configuration();
System.Net.WebProxy webProxy = new System.Net.WebProxy("http://myProxyUrl:80/");
webProxy.Credentials = System.Net.CredentialCache.DefaultCredentials;
c.Proxy = webProxy;
```

<a name="getting-started"></a>
## Getting Started

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class Example
    {
        public static void Main()
        {

            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            // Configure API key authorization: PartnerClientId
            config.ApiKey.Add("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.ApiKeyPrefix.Add("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.ApiKey.Add("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.ApiKeyPrefix.Add("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.ApiKey.Add("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.ApiKeyPrefix.Add("timestamp", "Bearer");

            var apiInstance = new APIDisclaimerApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var aPIDisclaimerAcceptRequest = new APIDisclaimerAcceptRequest(); // APIDisclaimerAcceptRequest | 

            try
            {
                // Accept or Reject SnapTrade disclaimer agreement
                SnapTradeAPIDisclaimerAcceptStatus result = apiInstance.Accept(userId, userSecret, aPIDisclaimerAcceptRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling APIDisclaimerApi.Accept: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }

        }
    }
}
```

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.snaptrade.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*APIDisclaimerApi* | [**Accept**](docs/APIDisclaimerApi.md#accept) | **POST** /snapTrade/acceptDisclaimer | Accept or Reject SnapTrade disclaimer agreement
*APIStatusApi* | [**Check**](docs/APIStatusApi.md#check) | **GET** / | Get API Status
*AccountInformationApi* | [**GetAllUserHoldings**](docs/AccountInformationApi.md#getalluserholdings) | **GET** /holdings | List all accounts for the user, plus balances and positions for each account.
*AccountInformationApi* | [**GetUserAccountBalance**](docs/AccountInformationApi.md#getuseraccountbalance) | **GET** /accounts/{accountId}/balances | Get all cash balances of an investment account
*AccountInformationApi* | [**GetUserAccountDetails**](docs/AccountInformationApi.md#getuseraccountdetails) | **GET** /accounts/{accountId} | Return details of a specific investment account
*AccountInformationApi* | [**GetUserAccountOrders**](docs/AccountInformationApi.md#getuseraccountorders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account
*AccountInformationApi* | [**GetUserAccountPositions**](docs/AccountInformationApi.md#getuseraccountpositions) | **GET** /accounts/{accountId}/positions | Get all positions of an investment account
*AccountInformationApi* | [**GetUserHoldings**](docs/AccountInformationApi.md#getuserholdings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
*AccountInformationApi* | [**ListUserAccounts**](docs/AccountInformationApi.md#listuseraccounts) | **GET** /accounts | List all investment accounts for the user
*AccountInformationApi* | [**UpdateUserAccount**](docs/AccountInformationApi.md#updateuseraccount) | **PUT** /accounts/{accountId} | Update details of an investment account
*AuthenticationApi* | [**DeleteSnapTradeUser**](docs/AuthenticationApi.md#deletesnaptradeuser) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
*AuthenticationApi* | [**GetUserJWT**](docs/AuthenticationApi.md#getuserjwt) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user's local device
*AuthenticationApi* | [**ListSnapTradeUsers**](docs/AuthenticationApi.md#listsnaptradeusers) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you've registered on our platform
*AuthenticationApi* | [**LoginSnapTradeUser**](docs/AuthenticationApi.md#loginsnaptradeuser) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
*AuthenticationApi* | [**RegisterSnapTradeUser**](docs/AuthenticationApi.md#registersnaptradeuser) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations
*ConnectionsApi* | [**DetailBrokerageAuthorization**](docs/ConnectionsApi.md#detailbrokerageauthorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user
*ConnectionsApi* | [**ListBrokerageAuthorizations**](docs/ConnectionsApi.md#listbrokerageauthorizations) | **GET** /authorizations | List all brokerage authorizations for the user
*ConnectionsApi* | [**RemoveBrokerageAuthorization**](docs/ConnectionsApi.md#removebrokerageauthorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization.
*ConnectionsApi* | [**SessionEvents**](docs/ConnectionsApi.md#sessionevents) | **GET** /sessionEvents | List all session events for the partner
*ErrorLogsApi* | [**ListUserErrors**](docs/ErrorLogsApi.md#listusererrors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users
*OptionsApi* | [**GetOptionStrategy**](docs/OptionsApi.md#getoptionstrategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
*OptionsApi* | [**GetOptionsChain**](docs/OptionsApi.md#getoptionschain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
*OptionsApi* | [**GetOptionsStrategyQuote**](docs/OptionsApi.md#getoptionsstrategyquote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
*OptionsApi* | [**ListOptionHoldings**](docs/OptionsApi.md#listoptionholdings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
*OptionsApi* | [**PlaceOptionStrategy**](docs/OptionsApi.md#placeoptionstrategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage
*PortfolioManagementApi* | [**AddPortfolioExcludedAsset**](docs/PortfolioManagementApi.md#addportfolioexcludedasset) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group
*PortfolioManagementApi* | [**Create**](docs/PortfolioManagementApi.md#create) | **POST** /portfolioGroups | Create new portfolio group
*PortfolioManagementApi* | [**CreateAssetClass**](docs/PortfolioManagementApi.md#createassetclass) | **POST** /modelAssetClass | Create a new model asset class
*PortfolioManagementApi* | [**CreateModelPortfolio**](docs/PortfolioManagementApi.md#createmodelportfolio) | **POST** /modelPortfolio | Creates a new model portfolio
*PortfolioManagementApi* | [**DeleteAssetClass**](docs/PortfolioManagementApi.md#deleteassetclass) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class
*PortfolioManagementApi* | [**DeleteExcludedAsset**](docs/PortfolioManagementApi.md#deleteexcludedasset) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group
*PortfolioManagementApi* | [**DeleteModelPortfolioById**](docs/PortfolioManagementApi.md#deletemodelportfoliobyid) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio
*PortfolioManagementApi* | [**DeletePortfoli**](docs/PortfolioManagementApi.md#deleteportfoli) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio.
*PortfolioManagementApi* | [**DeletePortfolioTargetById**](docs/PortfolioManagementApi.md#deleteportfoliotargetbyid) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset.
*PortfolioManagementApi* | [**DetailAssetClass**](docs/PortfolioManagementApi.md#detailassetclass) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class
*PortfolioManagementApi* | [**GetCalculatedTradeById**](docs/PortfolioManagementApi.md#getcalculatedtradebyid) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade
*PortfolioManagementApi* | [**GetModelDetailsById**](docs/PortfolioManagementApi.md#getmodeldetailsbyid) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio
*PortfolioManagementApi* | [**GetPortfolioBalances**](docs/PortfolioManagementApi.md#getportfoliobalances) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group
*PortfolioManagementApi* | [**GetPortfolioDetailsById**](docs/PortfolioManagementApi.md#getportfoliodetailsbyid) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio
*PortfolioManagementApi* | [**GetPortfolioInfo**](docs/PortfolioManagementApi.md#getportfolioinfo) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group.
*PortfolioManagementApi* | [**GetPortfolioPositions**](docs/PortfolioManagementApi.md#getportfoliopositions) | **GET** /portfolioGroups/{portfolioGroupId}/positions | Get total of each postions owned in portfolio group
*PortfolioManagementApi* | [**GetPortfolioSettings**](docs/PortfolioManagementApi.md#getportfoliosettings) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings
*PortfolioManagementApi* | [**GetPortfolioTargetById**](docs/PortfolioManagementApi.md#getportfoliotargetbyid) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group
*PortfolioManagementApi* | [**GetPortfolioTargets**](docs/PortfolioManagementApi.md#getportfoliotargets) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup.
*PortfolioManagementApi* | [**GetPortoflioExcludedAssets**](docs/PortfolioManagementApi.md#getportoflioexcludedassets) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\
*PortfolioManagementApi* | [**ImportModelPortfolio**](docs/PortfolioManagementApi.md#importmodelportfolio) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group
*PortfolioManagementApi* | [**List**](docs/PortfolioManagementApi.md#list) | **GET** /portfolioGroups | List all portfolio groups
*PortfolioManagementApi* | [**ListAssetClasses**](docs/PortfolioManagementApi.md#listassetclasses) | **GET** /modelAssetClass | List of model asset class
*PortfolioManagementApi* | [**ListCalculatedTrades**](docs/PortfolioManagementApi.md#listcalculatedtrades) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group
*PortfolioManagementApi* | [**ListModelPortfolio**](docs/PortfolioManagementApi.md#listmodelportfolio) | **GET** /modelPortfolio | List of model portfolio
*PortfolioManagementApi* | [**ListPortfolioAccounts**](docs/PortfolioManagementApi.md#listportfolioaccounts) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group
*PortfolioManagementApi* | [**ModifyModelPortfolioById**](docs/PortfolioManagementApi.md#modifymodelportfoliobyid) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object
*PortfolioManagementApi* | [**SavePortfolio**](docs/PortfolioManagementApi.md#saveportfolio) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio.
*PortfolioManagementApi* | [**SearchPortfolioSymbols**](docs/PortfolioManagementApi.md#searchportfoliosymbols) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group
*PortfolioManagementApi* | [**SetPortfolioTargets**](docs/PortfolioManagementApi.md#setportfoliotargets) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
*PortfolioManagementApi* | [**UpdateAssetClass**](docs/PortfolioManagementApi.md#updateassetclass) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects
*PortfolioManagementApi* | [**UpdatePortfolioSettings**](docs/PortfolioManagementApi.md#updateportfoliosettings) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings
*PortfolioManagementApi* | [**UpdatePortfolioTargetById**](docs/PortfolioManagementApi.md#updateportfoliotargetbyid) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup.
*ReferenceDataApi* | [**GetCurrencyExchangeRatePair**](docs/ReferenceDataApi.md#getcurrencyexchangeratepair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
*ReferenceDataApi* | [**GetPartnerInfo**](docs/ReferenceDataApi.md#getpartnerinfo) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
*ReferenceDataApi* | [**GetSecurityTypes**](docs/ReferenceDataApi.md#getsecuritytypes) | **GET** /securityTypes | List of all security types.
*ReferenceDataApi* | [**GetStockExchanges**](docs/ReferenceDataApi.md#getstockexchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes
*ReferenceDataApi* | [**GetSymbols**](docs/ReferenceDataApi.md#getsymbols) | **POST** /symbols | Search for symbols
*ReferenceDataApi* | [**GetSymbolsByTicker**](docs/ReferenceDataApi.md#getsymbolsbyticker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
*ReferenceDataApi* | [**ListAllBrokerageAuthorizationType**](docs/ReferenceDataApi.md#listallbrokerageauthorizationtype) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
*ReferenceDataApi* | [**ListAllBrokerages**](docs/ReferenceDataApi.md#listallbrokerages) | **GET** /brokerages | List of all brokerages.
*ReferenceDataApi* | [**ListAllCurrencies**](docs/ReferenceDataApi.md#listallcurrencies) | **GET** /currencies | List of all supported currencies
*ReferenceDataApi* | [**ListAllCurrenciesRates**](docs/ReferenceDataApi.md#listallcurrenciesrates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies
*ReferenceDataApi* | [**SymbolSearchUserAccount**](docs/ReferenceDataApi.md#symbolsearchuseraccount) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring
*TradingApi* | [**CancelUserAccountOrder**](docs/TradingApi.md#canceluseraccountorder) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
*TradingApi* | [**GetCalculatedTradeImpactById**](docs/TradingApi.md#getcalculatedtradeimpactbyid) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it's placed
*TradingApi* | [**GetCalculatedTradesImpact**](docs/TradingApi.md#getcalculatedtradesimpact) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio
*TradingApi* | [**GetOrderImpact**](docs/TradingApi.md#getorderimpact) | **POST** /trade/impact | Check impact of trades on account.
*TradingApi* | [**GetUserAccountQuotes**](docs/TradingApi.md#getuseraccountquotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
*TradingApi* | [**ModifyCalculatedTradeById**](docs/TradingApi.md#modifycalculatedtradebyid) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed
*TradingApi* | [**PlaceCalculatedTrades**](docs/TradingApi.md#placecalculatedtrades) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series
*TradingApi* | [**PlaceForceOrder**](docs/TradingApi.md#placeforceorder) | **POST** /trade/place | Place a trade with NO validation.
*TradingApi* | [**PlaceOCOOrder**](docs/TradingApi.md#placeocoorder) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
*TradingApi* | [**PlaceOrder**](docs/TradingApi.md#placeorder) | **POST** /trade/{tradeId} | Place order
*TransactionsAndReportingApi* | [**GetActivities**](docs/TransactionsAndReportingApi.md#getactivities) | **GET** /activities | Get transaction history for a user
*TransactionsAndReportingApi* | [**GetReportingCustomRange**](docs/TransactionsAndReportingApi.md#getreportingcustomrange) | **GET** /performance/custom | Get performance information for a specific timeframe


<a name="documentation-for-models"></a>
## Documentation for Models

 - [Model.APIDisclaimerAcceptRequest](docs/APIDisclaimerAcceptRequest.md)
 - [Model.Account](docs/Account.md)
 - [Model.AccountHoldings](docs/AccountHoldings.md)
 - [Model.AccountOrderRecord](docs/AccountOrderRecord.md)
 - [Model.AccountOrderRecordStatus](docs/AccountOrderRecordStatus.md)
 - [Model.AccountSimple](docs/AccountSimple.md)
 - [Model.Action](docs/Action.md)
 - [Model.AuthenticationLoginSnapTradeUser200Response](docs/AuthenticationLoginSnapTradeUser200Response.md)
 - [Model.Balance](docs/Balance.md)
 - [Model.Brokerage](docs/Brokerage.md)
 - [Model.BrokerageAuthorization](docs/BrokerageAuthorization.md)
 - [Model.BrokerageAuthorizationType](docs/BrokerageAuthorizationType.md)
 - [Model.BrokerageAuthorizationTypeReadOnly](docs/BrokerageAuthorizationTypeReadOnly.md)
 - [Model.BrokerageAuthorizationTypeReadOnlyBrokerage](docs/BrokerageAuthorizationTypeReadOnlyBrokerage.md)
 - [Model.BrokerageSymbol](docs/BrokerageSymbol.md)
 - [Model.BrokerageType](docs/BrokerageType.md)
 - [Model.CalculatedTrade](docs/CalculatedTrade.md)
 - [Model.CashRestriction](docs/CashRestriction.md)
 - [Model.ConnectionsSessionEvents200ResponseInner](docs/ConnectionsSessionEvents200ResponseInner.md)
 - [Model.Currency](docs/Currency.md)
 - [Model.DeleteUserResponse](docs/DeleteUserResponse.md)
 - [Model.DividendAtDate](docs/DividendAtDate.md)
 - [Model.EncryptedResponse](docs/EncryptedResponse.md)
 - [Model.EncryptedResponseEncryptedMessageData](docs/EncryptedResponseEncryptedMessageData.md)
 - [Model.Exchange](docs/Exchange.md)
 - [Model.ExchangeRatePairs](docs/ExchangeRatePairs.md)
 - [Model.ExcludedAsset](docs/ExcludedAsset.md)
 - [Model.JWT](docs/JWT.md)
 - [Model.LoginRedirectURI](docs/LoginRedirectURI.md)
 - [Model.ManualTrade](docs/ManualTrade.md)
 - [Model.ManualTradeAndImpact](docs/ManualTradeAndImpact.md)
 - [Model.ManualTradeBalance](docs/ManualTradeBalance.md)
 - [Model.ManualTradeForm](docs/ManualTradeForm.md)
 - [Model.ManualTradeSymbol](docs/ManualTradeSymbol.md)
 - [Model.Model400FailedRequestResponse](docs/Model400FailedRequestResponse.md)
 - [Model.Model401FailedRequestResponse](docs/Model401FailedRequestResponse.md)
 - [Model.Model403FailedRequestResponse](docs/Model403FailedRequestResponse.md)
 - [Model.Model404FailedRequestResponse](docs/Model404FailedRequestResponse.md)
 - [Model.ModelAssetClass](docs/ModelAssetClass.md)
 - [Model.ModelAssetClassDetails](docs/ModelAssetClassDetails.md)
 - [Model.ModelAssetClassTarget](docs/ModelAssetClassTarget.md)
 - [Model.ModelPortfolio](docs/ModelPortfolio.md)
 - [Model.ModelPortfolioAssetClass](docs/ModelPortfolioAssetClass.md)
 - [Model.ModelPortfolioDetails](docs/ModelPortfolioDetails.md)
 - [Model.ModelPortfolioSecurity](docs/ModelPortfolioSecurity.md)
 - [Model.MonthlyDividends](docs/MonthlyDividends.md)
 - [Model.NetContributions](docs/NetContributions.md)
 - [Model.NetDividend](docs/NetDividend.md)
 - [Model.OptionChainInner](docs/OptionChainInner.md)
 - [Model.OptionChainInnerChainPerRootInner](docs/OptionChainInnerChainPerRootInner.md)
 - [Model.OptionChainInnerChainPerRootInnerChainPerStrikePriceInner](docs/OptionChainInnerChainPerRootInnerChainPerStrikePriceInner.md)
 - [Model.OptionLeg](docs/OptionLeg.md)
 - [Model.OptionStrategy](docs/OptionStrategy.md)
 - [Model.OptionStrategyLegsInner](docs/OptionStrategyLegsInner.md)
 - [Model.OptionsGetOptionStrategyRequest](docs/OptionsGetOptionStrategyRequest.md)
 - [Model.OptionsHoldings](docs/OptionsHoldings.md)
 - [Model.OptionsPlaceOptionStrategyRequest](docs/OptionsPlaceOptionStrategyRequest.md)
 - [Model.OptionsPosition](docs/OptionsPosition.md)
 - [Model.OptionsSymbol](docs/OptionsSymbol.md)
 - [Model.OrderType](docs/OrderType.md)
 - [Model.PartnerData](docs/PartnerData.md)
 - [Model.PastValue](docs/PastValue.md)
 - [Model.PerformanceCustom](docs/PerformanceCustom.md)
 - [Model.PortfolioGroup](docs/PortfolioGroup.md)
 - [Model.PortfolioGroupInfo](docs/PortfolioGroupInfo.md)
 - [Model.PortfolioGroupPosition](docs/PortfolioGroupPosition.md)
 - [Model.PortfolioGroupSettings](docs/PortfolioGroupSettings.md)
 - [Model.Position](docs/Position.md)
 - [Model.PositionSymbol](docs/PositionSymbol.md)
 - [Model.RedirectTokenandPin](docs/RedirectTokenandPin.md)
 - [Model.SecurityType](docs/SecurityType.md)
 - [Model.SessionEvent](docs/SessionEvent.md)
 - [Model.SnapTradeAPIDisclaimerAcceptStatus](docs/SnapTradeAPIDisclaimerAcceptStatus.md)
 - [Model.SnapTradeHoldingsAccount](docs/SnapTradeHoldingsAccount.md)
 - [Model.SnapTradeHoldingsTotalValue](docs/SnapTradeHoldingsTotalValue.md)
 - [Model.SnapTradeLoginUserRequestBody](docs/SnapTradeLoginUserRequestBody.md)
 - [Model.SnapTradeRegisterUserRequestBody](docs/SnapTradeRegisterUserRequestBody.md)
 - [Model.Status](docs/Status.md)
 - [Model.StrategyImpact](docs/StrategyImpact.md)
 - [Model.StrategyImpactLegsInner](docs/StrategyImpactLegsInner.md)
 - [Model.StrategyOrderPlace](docs/StrategyOrderPlace.md)
 - [Model.StrategyOrderPlaceOrdersInner](docs/StrategyOrderPlaceOrdersInner.md)
 - [Model.StrategyOrderPlaceOrdersInnerLegsInner](docs/StrategyOrderPlaceOrdersInnerLegsInner.md)
 - [Model.StrategyOrderRecord](docs/StrategyOrderRecord.md)
 - [Model.StrategyQuotes](docs/StrategyQuotes.md)
 - [Model.StrategyQuotesGreek](docs/StrategyQuotesGreek.md)
 - [Model.SubPeriodReturnRate](docs/SubPeriodReturnRate.md)
 - [Model.Symbol](docs/Symbol.md)
 - [Model.SymbolQuery](docs/SymbolQuery.md)
 - [Model.SymbolsQuotes](docs/SymbolsQuotes.md)
 - [Model.TargetAsset](docs/TargetAsset.md)
 - [Model.TimeInForce](docs/TimeInForce.md)
 - [Model.Trade](docs/Trade.md)
 - [Model.TradeExecutionStatus](docs/TradeExecutionStatus.md)
 - [Model.TradeImpact](docs/TradeImpact.md)
 - [Model.TradingCancelUserAccountOrderRequest](docs/TradingCancelUserAccountOrderRequest.md)
 - [Model.TradingPlaceOCOOrderRequest](docs/TradingPlaceOCOOrderRequest.md)
 - [Model.USExchange](docs/USExchange.md)
 - [Model.UnderlyingSymbol](docs/UnderlyingSymbol.md)
 - [Model.UniversalActivity](docs/UniversalActivity.md)
 - [Model.UniversalSymbol](docs/UniversalSymbol.md)
 - [Model.UniversalSymbolTicker](docs/UniversalSymbolTicker.md)
 - [Model.UserErrorLog](docs/UserErrorLog.md)
 - [Model.UserIDandSecret](docs/UserIDandSecret.md)
 - [Model.UserSettings](docs/UserSettings.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="PartnerClientId"></a>
### PartnerClientId

- **Type**: API key
- **API key parameter name**: clientId
- **Location**: URL query string

<a name="PartnerSignature"></a>
### PartnerSignature

- **Type**: API key
- **API key parameter name**: Signature
- **Location**: HTTP header

<a name="PartnerTimestamp"></a>
### PartnerTimestamp

- **Type**: API key
- **API key parameter name**: timestamp
- **Location**: URL query string
