# snaptrade-typescript-sdk@8.13.0

Connect brokerage accounts to your app for live positions and trading
## Installing

### npm
```
npm install snaptrade-typescript-sdk --save
```

### yarn
```
yarn add snaptrade-typescript-sdk
```

**Important note: this library is can be used in both the client-side or server-side, but using it
in client-side browser code is not recommended as you would expose security credentials.**



## Getting Started

```typescript
const { Snaptrade } = require("snaptrade-typescript-sdk");

async function main() {
  // 1) Initialize a client with your clientID and consumerKey.
  const snaptrade = new Snaptrade({
    consumerKey: process.env.SNAPTRADE_CONSUMER_KEY,
    clientId: process.env.SNAPTRADE_CLIENT_ID,
  });

  // 2) Check that the client is able to make a request to the API server.
  const status = await snaptrade.apiStatus.check();
  console.log("status:", status.data);

  // 3) Create a new user on SnapTrade
  const userId = uuid();
  const { userSecret } = (
    await snaptrade.authentication.registerSnapTradeUser({
      userId,
    })
  ).data;

  // Note: A user secret is only generated once. It's required to access
  // resources for certain endpoints.
  console.log("userSecret:", userSecret);

  // 4) Get a redirect URI. Users will need this to connect
  const data = (
    await snaptrade.authentication.loginSnapTradeUser({ userId, userSecret })
  ).data;
  if (!("redirectURI" in data)) throw Error("Should have gotten redirect URI");
  console.log("redirectURI:", data.redirectURI);

  // 5) Obtaining account holdings data
  const holdings = (
    await snaptrade.accountInformation.getAllUserHoldings({
      userId,
      userSecret,
    })
  ).data;
  console.log("holdings:", holdings);

  // 6) Deleting a user
  const deleteResponse = (
    await snaptrade.authentication.deleteSnapTradeUser({ userId })
  ).data;
  console.log("deleteResponse:", deleteResponse);
}

// Should be replaced with function to get user ID
function getUserId() {
  var d = new Date().getTime(); //Timestamp
  var d2 =
    (typeof performance !== "undefined" &&
      performance.now &&
      performance.now() * 1000) ||
    0; //Time in microseconds since page-load or 0 if unsupported
  return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (c) {
    var r = Math.random() * 16; //random number between 0 and 16
    if (d > 0) {
      //Use timestamp until depleted
      r = (d + r) % 16 | 0;
      d = Math.floor(d / 16);
    } else {
      //Use microseconds since page-load if supported
      r = (d2 + r) % 16 | 0;
      d2 = Math.floor(d2 / 16);
    }
    return (c === "x" ? r : (r & 0x3) | 0x8).toString(16);
  });
}

main();
```

## Documentation for API Endpoints

All URIs are relative to *https://api.snaptrade.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountInformationApi* | [**getAllUserHoldings**](docs/AccountInformationApi.md#getAllUserHoldings) | **GET** /holdings | List all accounts for the user, plus balances and positions for each account.
*AccountInformationApi* | [**getUserAccountBalance**](docs/AccountInformationApi.md#getUserAccountBalance) | **GET** /accounts/{accountId}/balances | Get all cash balances of an investment account
*AccountInformationApi* | [**getUserAccountDetails**](docs/AccountInformationApi.md#getUserAccountDetails) | **GET** /accounts/{accountId} | Return details of a specific investment account
*AccountInformationApi* | [**getUserAccountOrders**](docs/AccountInformationApi.md#getUserAccountOrders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account
*AccountInformationApi* | [**getUserAccountPositions**](docs/AccountInformationApi.md#getUserAccountPositions) | **GET** /accounts/{accountId}/positions | Get all positions of an investment account
*AccountInformationApi* | [**getUserHoldings**](docs/AccountInformationApi.md#getUserHoldings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
*AccountInformationApi* | [**listUserAccounts**](docs/AccountInformationApi.md#listUserAccounts) | **GET** /accounts | List all investment accounts for the user
*AccountInformationApi* | [**updateUserAccount**](docs/AccountInformationApi.md#updateUserAccount) | **PUT** /accounts/{accountId} | Update details of an investment account
*ApiStatusApi* | [**check**](docs/ApiStatusApi.md#check) | **GET** / | Get API Status
*AuthenticationApi* | [**deleteSnapTradeUser**](docs/AuthenticationApi.md#deleteSnapTradeUser) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
*AuthenticationApi* | [**getUserJWT**](docs/AuthenticationApi.md#getUserJWT) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user\&#39;s local device
*AuthenticationApi* | [**listSnapTradeUsers**](docs/AuthenticationApi.md#listSnapTradeUsers) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you\&#39;ve registered on our platform
*AuthenticationApi* | [**loginSnapTradeUser**](docs/AuthenticationApi.md#loginSnapTradeUser) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
*AuthenticationApi* | [**registerSnapTradeUser**](docs/AuthenticationApi.md#registerSnapTradeUser) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations
*ConnectionsApi* | [**detailBrokerageAuthorization**](docs/ConnectionsApi.md#detailBrokerageAuthorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user
*ConnectionsApi* | [**listBrokerageAuthorizations**](docs/ConnectionsApi.md#listBrokerageAuthorizations) | **GET** /authorizations | List all brokerage authorizations for the user
*ConnectionsApi* | [**removeBrokerageAuthorization**](docs/ConnectionsApi.md#removeBrokerageAuthorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization.
*ConnectionsApi* | [**sessionEvents**](docs/ConnectionsApi.md#sessionEvents) | **GET** /sessionEvents | List all session events for the partner
*ErrorLogsApi* | [**listUserErrors**](docs/ErrorLogsApi.md#listUserErrors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users
*OptionsApi* | [**getOptionStrategy**](docs/OptionsApi.md#getOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
*OptionsApi* | [**getOptionsChain**](docs/OptionsApi.md#getOptionsChain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
*OptionsApi* | [**getOptionsStrategyQuote**](docs/OptionsApi.md#getOptionsStrategyQuote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
*OptionsApi* | [**listOptionHoldings**](docs/OptionsApi.md#listOptionHoldings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
*OptionsApi* | [**placeOptionStrategy**](docs/OptionsApi.md#placeOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage
*PortfolioManagementApi* | [**addPortfolioExcludedAsset**](docs/PortfolioManagementApi.md#addPortfolioExcludedAsset) | **POST** /portfolioGroups/{portfolioGroupId}/excludedassets | Adds an asset to exclude to a portfolio group
*PortfolioManagementApi* | [**create**](docs/PortfolioManagementApi.md#create) | **POST** /portfolioGroups | Create new portfolio group
*PortfolioManagementApi* | [**createAssetClass**](docs/PortfolioManagementApi.md#createAssetClass) | **POST** /modelAssetClass | Create a new model asset class
*PortfolioManagementApi* | [**createModelPortfolio**](docs/PortfolioManagementApi.md#createModelPortfolio) | **POST** /modelPortfolio | Creates a new model portfolio
*PortfolioManagementApi* | [**deleteAssetClass**](docs/PortfolioManagementApi.md#deleteAssetClass) | **DELETE** /modelAssetClass/{modelAssetClassId} | Deletes a model asset class
*PortfolioManagementApi* | [**deleteExcludedAsset**](docs/PortfolioManagementApi.md#deleteExcludedAsset) | **DELETE** /portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId} | Unexclude an asset from a portfolio group
*PortfolioManagementApi* | [**deleteModelPortfolioById**](docs/PortfolioManagementApi.md#deleteModelPortfolioById) | **DELETE** /modelPortfolio/{modelPortfolioId} | Deletes a model portfolio
*PortfolioManagementApi* | [**deletePortfoli**](docs/PortfolioManagementApi.md#deletePortfoli) | **DELETE** /portfolioGroups/{portfolioGroupId} | Remove a target portfolio.
*PortfolioManagementApi* | [**deletePortfolioTargetById**](docs/PortfolioManagementApi.md#deletePortfolioTargetById) | **DELETE** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Remove a TargetAsset.
*PortfolioManagementApi* | [**detailAssetClass**](docs/PortfolioManagementApi.md#detailAssetClass) | **GET** /modelAssetClass/{modelAssetClassId} | Get details of a model asset class
*PortfolioManagementApi* | [**getCalculatedTradeById**](docs/PortfolioManagementApi.md#getCalculatedTradeById) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId} | Return an individual trade
*PortfolioManagementApi* | [**getModelDetailsById**](docs/PortfolioManagementApi.md#getModelDetailsById) | **GET** /modelPortfolio/{modelPortfolioId} | Get details of a model portfolio
*PortfolioManagementApi* | [**getPortfolioBalances**](docs/PortfolioManagementApi.md#getPortfolioBalances) | **GET** /portfolioGroups/{portfolioGroupId}/balances | Get sum of cash balances in portfolio group
*PortfolioManagementApi* | [**getPortfolioDetailsById**](docs/PortfolioManagementApi.md#getPortfolioDetailsById) | **GET** /portfolioGroups/{portfolioGroupId} | Get details of a target portfolio
*PortfolioManagementApi* | [**getPortfolioInfo**](docs/PortfolioManagementApi.md#getPortfolioInfo) | **GET** /portfolioGroups/{portfolioGroupId}/info | Return a whole bunch of relevant information relating to a portfolio group.
*PortfolioManagementApi* | [**getPortfolioSettings**](docs/PortfolioManagementApi.md#getPortfolioSettings) | **GET** /portfolioGroups/{portfolioGroupId}/settings | Get portfolio group settings
*PortfolioManagementApi* | [**getPortfolioTargetById**](docs/PortfolioManagementApi.md#getPortfolioTargetById) | **GET** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Get a specific target from a portfolio group
*PortfolioManagementApi* | [**getPortfolioTargets**](docs/PortfolioManagementApi.md#getPortfolioTargets) | **GET** /portfolioGroups/{portfolioGroupId}/targets | Get all target assets under the specified PortfolioGroup.
*PortfolioManagementApi* | [**getPortoflioExcludedAssets**](docs/PortfolioManagementApi.md#getPortoflioExcludedAssets) | **GET** /portfolioGroups/{portfolioGroupId}/excludedassets | Get an array of excluded assets associated with a portfolio group\\
*PortfolioManagementApi* | [**importModelPortfolio**](docs/PortfolioManagementApi.md#importModelPortfolio) | **POST** /portfolioGroups/{portfolioGroupId}/import | Import target allocation based on portfolio group
*PortfolioManagementApi* | [**list**](docs/PortfolioManagementApi.md#list) | **GET** /portfolioGroups | List all portfolio groups
*PortfolioManagementApi* | [**listAssetClasses**](docs/PortfolioManagementApi.md#listAssetClasses) | **GET** /modelAssetClass | List of model asset class
*PortfolioManagementApi* | [**listCalculatedTrades**](docs/PortfolioManagementApi.md#listCalculatedTrades) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades | List of trades to make to rebalance portfolio group
*PortfolioManagementApi* | [**listModelPortfolio**](docs/PortfolioManagementApi.md#listModelPortfolio) | **GET** /modelPortfolio | List of model portfolio
*PortfolioManagementApi* | [**listPortfolioAccounts**](docs/PortfolioManagementApi.md#listPortfolioAccounts) | **GET** /portfolioGroups/{portfolioGroupId}/accounts | Get all accounts associated with a portfolio group
*PortfolioManagementApi* | [**modifyModelPortfolioById**](docs/PortfolioManagementApi.md#modifyModelPortfolioById) | **POST** /modelPortfolio/{modelPortfolioId} | Updates model portfolio object
*PortfolioManagementApi* | [**savePortfolio**](docs/PortfolioManagementApi.md#savePortfolio) | **PATCH** /portfolioGroups/{portfolioGroupId} | Update an existing target portfolio.
*PortfolioManagementApi* | [**searchPortfolioSymbols**](docs/PortfolioManagementApi.md#searchPortfolioSymbols) | **POST** /portfolioGroups/{portfolioGroupId}/symbols | Search for symbols limited to brokerages under the specified portfolio group
*PortfolioManagementApi* | [**setPortfolioTargets**](docs/PortfolioManagementApi.md#setPortfolioTargets) | **POST** /portfolioGroups/{portfolioGroupId}/targets | Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
*PortfolioManagementApi* | [**updateAssetClass**](docs/PortfolioManagementApi.md#updateAssetClass) | **POST** /modelAssetClass/{modelAssetClassId} | Updates model asset class objects
*PortfolioManagementApi* | [**updatePortfolioSettings**](docs/PortfolioManagementApi.md#updatePortfolioSettings) | **PATCH** /portfolioGroups/{portfolioGroupId}/settings | Updates portfolio group settings
*PortfolioManagementApi* | [**updatePortfolioTargetById**](docs/PortfolioManagementApi.md#updatePortfolioTargetById) | **PATCH** /portfolioGroups/{portfolioGroupId}/targets/{targetAssetId} | Update a TargetAsset under the specified PortfolioGroup.
*ReferenceDataApi* | [**getCurrencyExchangeRatePair**](docs/ReferenceDataApi.md#getCurrencyExchangeRatePair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
*ReferenceDataApi* | [**getPartnerInfo**](docs/ReferenceDataApi.md#getPartnerInfo) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
*ReferenceDataApi* | [**getSecurityTypes**](docs/ReferenceDataApi.md#getSecurityTypes) | **GET** /securityTypes | List of all security types.
*ReferenceDataApi* | [**getStockExchanges**](docs/ReferenceDataApi.md#getStockExchanges) | **GET** /exchanges | Return list of stock exchanges on Passiv and their suffixes
*ReferenceDataApi* | [**getSymbols**](docs/ReferenceDataApi.md#getSymbols) | **POST** /symbols | Search for symbols
*ReferenceDataApi* | [**getSymbolsByTicker**](docs/ReferenceDataApi.md#getSymbolsByTicker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
*ReferenceDataApi* | [**listAllBrokerageAuthorizationType**](docs/ReferenceDataApi.md#listAllBrokerageAuthorizationType) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
*ReferenceDataApi* | [**listAllBrokerages**](docs/ReferenceDataApi.md#listAllBrokerages) | **GET** /brokerages | List of all brokerages.
*ReferenceDataApi* | [**listAllCurrencies**](docs/ReferenceDataApi.md#listAllCurrencies) | **GET** /currencies | List of all supported currencies
*ReferenceDataApi* | [**listAllCurrenciesRates**](docs/ReferenceDataApi.md#listAllCurrenciesRates) | **GET** /currencies/rates | Return the exchange rates of all supported currencies
*ReferenceDataApi* | [**symbolSearchUserAccount**](docs/ReferenceDataApi.md#symbolSearchUserAccount) | **POST** /accounts/{accountId}/symbols | Search for symbols that are supported by a brokerage account using a substring
*TradingApi* | [**cancelUserAccountOrder**](docs/TradingApi.md#cancelUserAccountOrder) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
*TradingApi* | [**getCalculatedTradeImpactById**](docs/TradingApi.md#getCalculatedTradeImpactById) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Return details of a specific trade before it\&#39;s placed
*TradingApi* | [**getCalculatedTradesImpact**](docs/TradingApi.md#getCalculatedTradesImpact) | **GET** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/impact | Return the impact of placing a series of trades on the portfolio
*TradingApi* | [**getOrderImpact**](docs/TradingApi.md#getOrderImpact) | **POST** /trade/impact | Check impact of trades on account.
*TradingApi* | [**getUserAccountQuotes**](docs/TradingApi.md#getUserAccountQuotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
*TradingApi* | [**modifyCalculatedTradeById**](docs/TradingApi.md#modifyCalculatedTradeById) | **PATCH** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/modify/{tradeId} | Modify units of a trade before it is placed
*TradingApi* | [**placeCalculatedTrades**](docs/TradingApi.md#placeCalculatedTrades) | **POST** /portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/placeOrders | Place orders for the CalculatedTrades in series
*TradingApi* | [**placeForceOrder**](docs/TradingApi.md#placeForceOrder) | **POST** /trade/place | Place a trade with NO validation.
*TradingApi* | [**placeOCOOrder**](docs/TradingApi.md#placeOCOOrder) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
*TradingApi* | [**placeOrder**](docs/TradingApi.md#placeOrder) | **POST** /trade/{tradeId} | Place order
*TransactionsAndReportingApi* | [**getActivities**](docs/TransactionsAndReportingApi.md#getActivities) | **GET** /activities | Get transaction history for a user
*TransactionsAndReportingApi* | [**getReportingCustomRange**](docs/TransactionsAndReportingApi.md#getReportingCustomRange) | **GET** /performance/custom | Get performance information for a specific timeframe

