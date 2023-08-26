# snaptrade-typescript-sdk@8.27.1

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

**Important note: this library can be used in both the client-side or server-side, but using it
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

Tag | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Account Information* | [**getAllUserHoldings**](docs/AccountInformationApi.md#getAllUserHoldings) | **GET** /holdings | List all accounts for the user, plus balances, positions, and orders for each account.
*Account Information* | [**getUserAccountBalance**](docs/AccountInformationApi.md#getUserAccountBalance) | **GET** /accounts/{accountId}/balances | List account balances
*Account Information* | [**getUserAccountDetails**](docs/AccountInformationApi.md#getUserAccountDetails) | **GET** /accounts/{accountId} | Return details of a specific investment account
*Account Information* | [**getUserAccountOrders**](docs/AccountInformationApi.md#getUserAccountOrders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account
*Account Information* | [**getUserAccountPositions**](docs/AccountInformationApi.md#getUserAccountPositions) | **GET** /accounts/{accountId}/positions | List account positions
*Account Information* | [**getUserHoldings**](docs/AccountInformationApi.md#getUserHoldings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account.
*Account Information* | [**listUserAccounts**](docs/AccountInformationApi.md#listUserAccounts) | **GET** /accounts | List accounts
*Account Information* | [**updateUserAccount**](docs/AccountInformationApi.md#updateUserAccount) | **PUT** /accounts/{accountId} | Update details of an investment account
*API Status* | [**check**](docs/ApiStatusApi.md#check) | **GET** / | Get API Status
*Authentication* | [**deleteSnapTradeUser**](docs/AuthenticationApi.md#deleteSnapTradeUser) | **DELETE** /snapTrade/deleteUser | Delete SnapTrade user
*Authentication* | [**getUserJWT**](docs/AuthenticationApi.md#getUserJWT) | **GET** /snapTrade/encryptedJWT | Generate encrypted JWT token
*Authentication* | [**listSnapTradeUsers**](docs/AuthenticationApi.md#listSnapTradeUsers) | **GET** /snapTrade/listUsers | List SnapTrade users
*Authentication* | [**loginSnapTradeUser**](docs/AuthenticationApi.md#loginSnapTradeUser) | **POST** /snapTrade/login | Login user &amp; generate connection link
*Authentication* | [**registerSnapTradeUser**](docs/AuthenticationApi.md#registerSnapTradeUser) | **POST** /snapTrade/registerUser | Create SnapTrade user
*Connections* | [**detailBrokerageAuthorization**](docs/ConnectionsApi.md#detailBrokerageAuthorization) | **GET** /authorizations/{authorizationId} | Get brokerage authorization details
*Connections* | [**listBrokerageAuthorizations**](docs/ConnectionsApi.md#listBrokerageAuthorizations) | **GET** /authorizations | List all brokerage authorizations for the user
*Connections* | [**removeBrokerageAuthorization**](docs/ConnectionsApi.md#removeBrokerageAuthorization) | **DELETE** /authorizations/{authorizationId} | Delete brokerage authorization
*Connections* | [**sessionEvents**](docs/ConnectionsApi.md#sessionEvents) | **GET** /sessionEvents | List all session events for the partner
*Error Logs* | [**listUserErrors**](docs/ErrorLogsApi.md#listUserErrors) | **GET** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users
*Options* | [**getOptionStrategy**](docs/OptionsApi.md#getOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy | Creates an option strategy object that will be used to place an option strategy order
*Options* | [**getOptionsChain**](docs/OptionsApi.md#getOptionsChain) | **GET** /accounts/{accountId}/optionsChain | Get the options chain
*Options* | [**getOptionsStrategyQuote**](docs/OptionsApi.md#getOptionsStrategyQuote) | **GET** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get latest market data of option strategy
*Options* | [**listOptionHoldings**](docs/OptionsApi.md#listOptionHoldings) | **GET** /accounts/{accountId}/options | Get the options holdings in the account
*Options* | [**placeOptionStrategy**](docs/OptionsApi.md#placeOptionStrategy) | **POST** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order on the brokerage
*Reference Data* | [**getCurrencyExchangeRatePair**](docs/ReferenceDataApi.md#getCurrencyExchangeRatePair) | **GET** /currencies/rates/{currencyPair} | Return the exchange rate of a currency pair
*Reference Data* | [**getPartnerInfo**](docs/ReferenceDataApi.md#getPartnerInfo) | **GET** /snapTrade/partners | Get metadata related to Snaptrade partner
*Reference Data* | [**getSecurityTypes**](docs/ReferenceDataApi.md#getSecurityTypes) | **GET** /securityTypes | List of all security types.
*Reference Data* | [**getStockExchanges**](docs/ReferenceDataApi.md#getStockExchanges) | **GET** /exchanges | List exchanges
*Reference Data* | [**getSymbols**](docs/ReferenceDataApi.md#getSymbols) | **POST** /symbols | Search for symbols
*Reference Data* | [**getSymbolsByTicker**](docs/ReferenceDataApi.md#getSymbolsByTicker) | **GET** /symbols/{ticker} | Get details of a symbol by the ticker
*Reference Data* | [**listAllBrokerageAuthorizationType**](docs/ReferenceDataApi.md#listAllBrokerageAuthorizationType) | **GET** /brokerageAuthorizationTypes | List of all brokerage authorization types
*Reference Data* | [**listAllBrokerages**](docs/ReferenceDataApi.md#listAllBrokerages) | **GET** /brokerages | List brokerages
*Reference Data* | [**listAllCurrencies**](docs/ReferenceDataApi.md#listAllCurrencies) | **GET** /currencies | List currencies
*Reference Data* | [**listAllCurrenciesRates**](docs/ReferenceDataApi.md#listAllCurrenciesRates) | **GET** /currencies/rates | List currency exchange rates
*Reference Data* | [**symbolSearchUserAccount**](docs/ReferenceDataApi.md#symbolSearchUserAccount) | **POST** /accounts/{accountId}/symbols | Search for symbols available in an account
*Trading* | [**cancelUserAccountOrder**](docs/TradingApi.md#cancelUserAccountOrder) | **POST** /accounts/{accountId}/orders/cancel | Cancel open order in account
*Trading* | [**getOrderImpact**](docs/TradingApi.md#getOrderImpact) | **POST** /trade/impact | Check impact of trades on account.
*Trading* | [**getUserAccountQuotes**](docs/TradingApi.md#getUserAccountQuotes) | **GET** /accounts/{accountId}/quotes | Get symbol quotes
*Trading* | [**placeForceOrder**](docs/TradingApi.md#placeForceOrder) | **POST** /trade/place | Place a trade with NO validation.
*Trading* | [**placeOCOOrder**](docs/TradingApi.md#placeOCOOrder) | **POST** /trade/oco | Place a OCO (One Cancels Other) order
*Trading* | [**placeOrder**](docs/TradingApi.md#placeOrder) | **POST** /trade/{tradeId} | Place order
*Transactions And Reporting* | [**getActivities**](docs/TransactionsAndReportingApi.md#getActivities) | **GET** /activities | Get transaction history for a user
*Transactions And Reporting* | [**getReportingCustomRange**](docs/TransactionsAndReportingApi.md#getReportingCustomRange) | **GET** /performance/custom | Get performance information for a specific timeframe

