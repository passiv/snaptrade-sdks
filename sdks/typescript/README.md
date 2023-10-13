<div align="center">

[![Visit SnapTrade](./header.png)](https://snaptrade.com)

# [SnapTrade](https://snaptrade.com)

Connect brokerage accounts to your app for live positions and trading

[![npm](https://img.shields.io/badge/npm-v8.29.1-blue)](https://www.npmjs.com/package/snaptrade-typescript-sdk/v/8.29.1)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Table of Contents

<!-- toc -->

- [Installing](#installing)
  * [npm](#npm)
  * [yarn](#yarn)
- [Getting Started](#getting-started)
- [Reference](#reference)
  * [`snaptrade.accountInformation.getAllUserHoldings`](#snaptradeaccountinformationgetalluserholdings)
  * [`snaptrade.accountInformation.getUserAccountBalance`](#snaptradeaccountinformationgetuseraccountbalance)
  * [`snaptrade.accountInformation.getUserAccountDetails`](#snaptradeaccountinformationgetuseraccountdetails)
  * [`snaptrade.accountInformation.getUserAccountOrders`](#snaptradeaccountinformationgetuseraccountorders)
  * [`snaptrade.accountInformation.getUserAccountPositions`](#snaptradeaccountinformationgetuseraccountpositions)
  * [`snaptrade.accountInformation.getUserHoldings`](#snaptradeaccountinformationgetuserholdings)
  * [`snaptrade.accountInformation.listUserAccounts`](#snaptradeaccountinformationlistuseraccounts)
  * [`snaptrade.accountInformation.updateUserAccount`](#snaptradeaccountinformationupdateuseraccount)
  * [`snaptrade.apiStatus.check`](#snaptradeapistatuscheck)
  * [`snaptrade.authentication.deleteSnapTradeUser`](#snaptradeauthenticationdeletesnaptradeuser)
  * [`snaptrade.authentication.getUserJWT`](#snaptradeauthenticationgetuserjwt)
  * [`snaptrade.authentication.listSnapTradeUsers`](#snaptradeauthenticationlistsnaptradeusers)
  * [`snaptrade.authentication.loginSnapTradeUser`](#snaptradeauthenticationloginsnaptradeuser)
  * [`snaptrade.authentication.registerSnapTradeUser`](#snaptradeauthenticationregistersnaptradeuser)
  * [`snaptrade.connections.detailBrokerageAuthorization`](#snaptradeconnectionsdetailbrokerageauthorization)
  * [`snaptrade.connections.listBrokerageAuthorizations`](#snaptradeconnectionslistbrokerageauthorizations)
  * [`snaptrade.connections.removeBrokerageAuthorization`](#snaptradeconnectionsremovebrokerageauthorization)
  * [`snaptrade.connections.sessionEvents`](#snaptradeconnectionssessionevents)
  * [`snaptrade.errorLogs.listUserErrors`](#snaptradeerrorlogslistusererrors)
  * [`snaptrade.options.getOptionStrategy`](#snaptradeoptionsgetoptionstrategy)
  * [`snaptrade.options.getOptionsChain`](#snaptradeoptionsgetoptionschain)
  * [`snaptrade.options.getOptionsStrategyQuote`](#snaptradeoptionsgetoptionsstrategyquote)
  * [`snaptrade.options.listOptionHoldings`](#snaptradeoptionslistoptionholdings)
  * [`snaptrade.options.placeOptionStrategy`](#snaptradeoptionsplaceoptionstrategy)
  * [`snaptrade.referenceData.getCurrencyExchangeRatePair`](#snaptradereferencedatagetcurrencyexchangeratepair)
  * [`snaptrade.referenceData.getPartnerInfo`](#snaptradereferencedatagetpartnerinfo)
  * [`snaptrade.referenceData.getSecurityTypes`](#snaptradereferencedatagetsecuritytypes)
  * [`snaptrade.referenceData.getStockExchanges`](#snaptradereferencedatagetstockexchanges)
  * [`snaptrade.referenceData.getSymbols`](#snaptradereferencedatagetsymbols)
  * [`snaptrade.referenceData.getSymbolsByTicker`](#snaptradereferencedatagetsymbolsbyticker)
  * [`snaptrade.referenceData.listAllBrokerageAuthorizationType`](#snaptradereferencedatalistallbrokerageauthorizationtype)
  * [`snaptrade.referenceData.listAllBrokerages`](#snaptradereferencedatalistallbrokerages)
  * [`snaptrade.referenceData.listAllCurrencies`](#snaptradereferencedatalistallcurrencies)
  * [`snaptrade.referenceData.listAllCurrenciesRates`](#snaptradereferencedatalistallcurrenciesrates)
  * [`snaptrade.referenceData.symbolSearchUserAccount`](#snaptradereferencedatasymbolsearchuseraccount)
  * [`snaptrade.trading.cancelUserAccountOrder`](#snaptradetradingcanceluseraccountorder)
  * [`snaptrade.trading.getOrderImpact`](#snaptradetradinggetorderimpact)
  * [`snaptrade.trading.getUserAccountQuotes`](#snaptradetradinggetuseraccountquotes)
  * [`snaptrade.trading.placeForceOrder`](#snaptradetradingplaceforceorder)
  * [`snaptrade.trading.placeOCOOrder`](#snaptradetradingplaceocoorder)
  * [`snaptrade.trading.placeOrder`](#snaptradetradingplaceorder)
  * [`snaptrade.transactionsAndReporting.getActivities`](#snaptradetransactionsandreportinggetactivities)
  * [`snaptrade.transactionsAndReporting.getReportingCustomRange`](#snaptradetransactionsandreportinggetreportingcustomrange)

<!-- tocstop -->

## Installing

### npm
```
npm install snaptrade-typescript-sdk --save
```

### yarn
```
yarn add snaptrade-typescript-sdk
```

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

## Reference


### `snaptrade.accountInformation.getAllUserHoldings`

List all accounts for the user, plus balances, positions, and orders for each account.

#### 🛠️ Usage

```typescript
const getAllUserHoldingsResponse =
  await snaptrade.accountInformation.getAllUserHoldings({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    brokerageAuthorizations: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### brokerageAuthorizations: `string`

Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations).

#### 🔄 Return

[AccountHoldings](./models/account-holdings.ts)

#### 🌐 Endpoint

`/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountBalance`

List account balances

#### 🛠️ Usage

```typescript
const getUserAccountBalanceResponse =
  await snaptrade.accountInformation.getUserAccountBalance({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to get balances.

#### 🔄 Return

[Balance](./models/balance.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/balances` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountDetails`

Return details of a specific investment account

#### 🛠️ Usage

```typescript
const getUserAccountDetailsResponse =
  await snaptrade.accountInformation.getUserAccountDetails({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to get detail of.

#### 🔄 Return

[Account](./models/account.ts)

#### 🌐 Endpoint

`/accounts/{accountId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountOrders`

Get history of orders placed in account

#### 🛠️ Usage

```typescript
const getUserAccountOrdersResponse =
  await snaptrade.accountInformation.getUserAccountOrders({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    state: "all",
    accountId: "accountId_example",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to get orders.

##### state: `'all' | 'open' | 'executed'`

defaults value is set to \"all\"

#### 🔄 Return

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/orders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountPositions`

List account positions

#### 🛠️ Usage

```typescript
const getUserAccountPositionsResponse =
  await snaptrade.accountInformation.getUserAccountPositions({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to get positions.

#### 🔄 Return

[Position](./models/position.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/positions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserHoldings`

List balances, positions and orders for the specified account.

#### 🛠️ Usage

```typescript
const getUserHoldingsResponse =
  await snaptrade.accountInformation.getUserHoldings({
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
  });
```

#### ⚙️ Parameters

##### accountId: `string`

The ID of the account to fetch holdings for.

##### userId: `string`

##### userSecret: `string`

#### 🔄 Return

[AccountHoldingsAccount](./models/account-holdings-account.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.listUserAccounts`

List accounts

#### 🛠️ Usage

```typescript
const listUserAccountsResponse =
  await snaptrade.accountInformation.listUserAccounts({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

#### 🔄 Return

[Account](./models/account.ts)

#### 🌐 Endpoint

`/accounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.updateUserAccount`

Update details of an investment account

#### 🛠️ Usage

```typescript
const updateUserAccountResponse =
  await snaptrade.accountInformation.updateUserAccount({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to update.

#### 🔄 Return

[Account](./models/account.ts)

#### 🌐 Endpoint

`/accounts/{accountId}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.apiStatus.check`

Check whether the API is operational and verify timestamps.

#### 🛠️ Usage

```typescript
const checkResponse = await snaptrade.apiStatus.check();
```

#### 🔄 Return

[Status](./models/status.ts)

#### 🌐 Endpoint

`/` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.deleteSnapTradeUser`

Delete SnapTrade user

#### 🛠️ Usage

```typescript
const deleteSnapTradeUserResponse =
  await snaptrade.authentication.deleteSnapTradeUser({
    userId: "John.doe@snaptrade.com",
  });
```

#### ⚙️ Parameters

##### userId: `string`

#### 🔄 Return

[DeleteUserResponse](./models/delete-user-response.ts)

#### 🌐 Endpoint

`/snapTrade/deleteUser` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.getUserJWT`

Generate encrypted JWT token

#### 🛠️ Usage

```typescript
const getUserJWTResponse = await snaptrade.authentication.getUserJWT({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
});
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

#### 🌐 Endpoint

`/snapTrade/encryptedJWT` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.listSnapTradeUsers`

List SnapTrade users

#### 🛠️ Usage

```typescript
const listSnapTradeUsersResponse =
  await snaptrade.authentication.listSnapTradeUsers();
```

#### 🌐 Endpoint

`/snapTrade/listUsers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.loginSnapTradeUser`

Login user &amp; generate connection link

#### 🛠️ Usage

```typescript
const loginSnapTradeUserResponse =
  await snaptrade.authentication.loginSnapTradeUser({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    broker: "ALPACA",
    immediateRedirect: true,
    customRedirect: "https://snaptrade.com",
    reconnect: "8b5f262d-4bb9-365d-888a-202bd3b15fa1",
    connectionType: "read",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### broker: `string`

##### immediateRedirect: `boolean`

##### customRedirect: `string`

##### reconnect: `string`

##### connectionType: `string`

#### 🌐 Endpoint

`/snapTrade/login` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.registerSnapTradeUser`

Create SnapTrade user

#### 🛠️ Usage

```typescript
const registerSnapTradeUserResponse =
  await snaptrade.authentication.registerSnapTradeUser({
    userId: "snaptrade-user-123",
    rsaPublicKey:
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC7vbqajDw4o6gJy8UtmIbkcpnkO3Kwc4qsEnSZp/TR+fQi62F79RHWmwKOtFmwteURgLbj7D/WGuNLGOfa/2vse3G2eHnHl5CB8ruRX9fBl/KgwCVr2JaEuUm66bBQeP5XeBotdR4cvX38uPYivCDdPjJ1QWPdspTBKcxeFbccDw==",
  });
```

#### ⚙️ Parameters

##### userId: `string`

SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it\\\'s unique to a user

##### rsaPublicKey: `string`

Open SSH RSA public key

#### 🔄 Return

[UserIDandSecret](./models/user-idand-secret.ts)

#### 🌐 Endpoint

`/snapTrade/registerUser` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.detailBrokerageAuthorization`

Get brokerage authorization details

#### 🛠️ Usage

```typescript
const detailBrokerageAuthorizationResponse =
  await snaptrade.connections.detailBrokerageAuthorization({
    authorizationId: "2bcd7cc3-e922-4976-bce1-9858296801c3",
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
  });
```

#### ⚙️ Parameters

##### authorizationId: `string`

The ID of a brokerage authorization object.

##### userId: `string`

##### userSecret: `string`

#### 🔄 Return

[BrokerageAuthorization](./models/brokerage-authorization.ts)

#### 🌐 Endpoint

`/authorizations/{authorizationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.listBrokerageAuthorizations`

List all brokerage authorizations for the user

#### 🛠️ Usage

```typescript
const listBrokerageAuthorizationsResponse =
  await snaptrade.connections.listBrokerageAuthorizations({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

#### 🔄 Return

[BrokerageAuthorization](./models/brokerage-authorization.ts)

#### 🌐 Endpoint

`/authorizations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.removeBrokerageAuthorization`

Delete brokerage authorization

#### 🛠️ Usage

```typescript
const removeBrokerageAuthorizationResponse =
  await snaptrade.connections.removeBrokerageAuthorization({
    authorizationId: "2bcd7cc3-e922-4976-bce1-9858296801c3",
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
  });
```

#### ⚙️ Parameters

##### authorizationId: `string`

The ID of the Authorization to delete.

##### userId: `string`

##### userSecret: `string`

#### 🌐 Endpoint

`/authorizations/{authorizationId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.sessionEvents`

List all session events for the partner

#### 🛠️ Usage

```typescript
const sessionEventsResponse = await snaptrade.connections.sessionEvents({
  partnerClientId: "SNAPTRADETEST",
  userId:
    "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
  sessionId:
    "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
});
```

#### ⚙️ Parameters

##### partnerClientId: `string`

##### userId: `string`

Optional comma seperated list of user IDs used to filter the request on specific users

##### sessionId: `string`

Optional comma seperated list of session IDs used to filter the request on specific users

#### 🌐 Endpoint

`/sessionEvents` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.errorLogs.listUserErrors`

Retrieve error logs on behalf of your SnapTrade users

#### 🛠️ Usage

```typescript
const listUserErrorsResponse = await snaptrade.errorLogs.listUserErrors({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
});
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

#### 🔄 Return

[UserErrorLog](./models/user-error-log.ts)

#### 🌐 Endpoint

`/snapTrade/listUserErrors` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionStrategy`

Creates an option strategy object that will be used to place an option strategy order

#### 🛠️ Usage

```typescript
const getOptionStrategyResponse = await snaptrade.options.getOptionStrategy({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
  accountId: "accountId_example",
  underlying_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  legs: [
    {
      action: "BUY_TO_OPEN",
      option_symbol_id: "SPY220819P00200000",
      quantity: 1,
    },
  ],
  strategy_type: "CUSTOM",
});
```

#### ⚙️ Parameters

##### underlying_symbol_id: `string`

##### legs: `OptionLeg`
            [`OptionLeg`](./models/option-leg.ts)[]

##### strategy_type: `string`

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to create the option strategy object in.

#### 🔄 Return

[StrategyQuotes](./models/strategy-quotes.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionsChain`

Get the options chain

#### 🛠️ Usage

```typescript
const getOptionsChainResponse = await snaptrade.options.getOptionsChain({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
  accountId: "accountId_example",
  symbol: "symbol_example",
});
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to get the options chain from.

##### symbol: `string`

Universal symbol ID if symbol

#### 🌐 Endpoint

`/accounts/{accountId}/optionsChain` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionsStrategyQuote`

Get latest market data of option strategy

#### 🛠️ Usage

```typescript
const getOptionsStrategyQuoteResponse =
  await snaptrade.options.getOptionsStrategyQuote({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
    optionStrategyId: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account the strategy will be placed in.

##### optionStrategyId: `string`

Option strategy id obtained from response when creating option strategy object

#### 🔄 Return

[StrategyQuotes](./models/strategy-quotes.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy/{optionStrategyId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.listOptionHoldings`

Get the options holdings in the account

#### 🛠️ Usage

```typescript
const listOptionHoldingsResponse = await snaptrade.options.listOptionHoldings({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
  accountId: "accountId_example",
});
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to fetch options holdings for.

#### 🔄 Return

[OptionsPosition](./models/options-position.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/options` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.placeOptionStrategy`

Place an option strategy order on the brokerage

#### 🛠️ Usage

```typescript
const placeOptionStrategyResponse = await snaptrade.options.placeOptionStrategy(
  {
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "2bcd7cc3-e922-4976-bce1-9858296801c3",
    optionStrategyId: "2bcd7cc3-e922-4976-bce1-9858296801c3",
    order_type: "Limit",
    time_in_force: "DAY",
    price: 31.33,
  }
);
```

#### ⚙️ Parameters

##### order_type: `string`

##### time_in_force: `string`

##### price: `number`

Trade Price if limit or stop limit order

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to execute the strategy in.

##### optionStrategyId: `string`

Option strategy id obtained from response when creating option strategy object

#### 🔄 Return

[StrategyOrderRecord](./models/strategy-order-record.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getCurrencyExchangeRatePair`

Return the exchange rate of a currency pair

#### 🛠️ Usage

```typescript
const getCurrencyExchangeRatePairResponse =
  await snaptrade.referenceData.getCurrencyExchangeRatePair({
    currencyPair: "currencyPair_example",
  });
```

#### ⚙️ Parameters

##### currencyPair: `string`

A currency pair based on currency code for example, {CAD-USD}

#### 🔄 Return

[ExchangeRatePairs](./models/exchange-rate-pairs.ts)

#### 🌐 Endpoint

`/currencies/rates/{currencyPair}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getPartnerInfo`

Get metadata related to Snaptrade partner

#### 🛠️ Usage

```typescript
const getPartnerInfoResponse = await snaptrade.referenceData.getPartnerInfo();
```

#### 🔄 Return

[PartnerData](./models/partner-data.ts)

#### 🌐 Endpoint

`/snapTrade/partners` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSecurityTypes`

List of all security types.

#### 🛠️ Usage

```typescript
const getSecurityTypesResponse =
  await snaptrade.referenceData.getSecurityTypes();
```

#### 🔄 Return

[SecurityType](./models/security-type.ts)

#### 🌐 Endpoint

`/securityTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getStockExchanges`

List exchanges

#### 🛠️ Usage

```typescript
const getStockExchangesResponse =
  await snaptrade.referenceData.getStockExchanges();
```

#### 🔄 Return

[Exchange](./models/exchange.ts)

#### 🌐 Endpoint

`/exchanges` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbols`

Search for symbols

#### 🛠️ Usage

```typescript
const getSymbolsResponse = await snaptrade.referenceData.getSymbols({
  substring: "apple",
});
```

#### ⚙️ Parameters

##### substring: `string`

#### 🔄 Return

[UniversalSymbol](./models/universal-symbol.ts)

#### 🌐 Endpoint

`/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbolsByTicker`

Get details of a symbol by the ticker

#### 🛠️ Usage

```typescript
const getSymbolsByTickerResponse =
  await snaptrade.referenceData.getSymbolsByTicker({
    ticker: "ticker_example",
  });
```

#### ⚙️ Parameters

##### ticker: `string`

The ticker of the UniversalSymbol to get.

##### symbolId: `string`

OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get.

#### 🔄 Return

[UniversalSymbol](./models/universal-symbol.ts)

#### 🌐 Endpoint

`/symbols/{ticker}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerageAuthorizationType`

List of all brokerage authorization types

#### 🛠️ Usage

```typescript
const listAllBrokerageAuthorizationTypeResponse =
  await snaptrade.referenceData.listAllBrokerageAuthorizationType({
    brokerage: "QUESTRADE,ALPACA",
  });
```

#### ⚙️ Parameters

##### brokerage: `string`

Comma separated value of brokerage slugs

#### 🔄 Return

[BrokerageAuthorizationTypeReadOnly](./models/brokerage-authorization-type-read-only.ts)

#### 🌐 Endpoint

`/brokerageAuthorizationTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerages`

List brokerages

#### 🛠️ Usage

```typescript
const listAllBrokeragesResponse =
  await snaptrade.referenceData.listAllBrokerages();
```

#### 🔄 Return

[Brokerage](./models/brokerage.ts)

#### 🌐 Endpoint

`/brokerages` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrencies`

List currencies

#### 🛠️ Usage

```typescript
const listAllCurrenciesResponse =
  await snaptrade.referenceData.listAllCurrencies();
```

#### 🔄 Return

[Currency](./models/currency.ts)

#### 🌐 Endpoint

`/currencies` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrenciesRates`

List currency exchange rates

#### 🛠️ Usage

```typescript
const listAllCurrenciesRatesResponse =
  await snaptrade.referenceData.listAllCurrenciesRates();
```

#### 🔄 Return

[ExchangeRatePairs](./models/exchange-rate-pairs.ts)

#### 🌐 Endpoint

`/currencies/rates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.symbolSearchUserAccount`

Search for symbols available in an account

#### 🛠️ Usage

```typescript
const symbolSearchUserAccountResponse =
  await snaptrade.referenceData.symbolSearchUserAccount({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
    substring: "apple",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to search for symbols within.

##### substring: `string`

#### 🔄 Return

[UniversalSymbol](./models/universal-symbol.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.cancelUserAccountOrder`

Cancel open order in account

#### 🛠️ Usage

```typescript
const cancelUserAccountOrderResponse =
  await snaptrade.trading.cancelUserAccountOrder({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    accountId: "accountId_example",
    brokerage_order_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### accountId: `string`

The ID of the account to cancel the order in.

##### brokerage_order_id: `string`

#### 🔄 Return

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint

`/accounts/{accountId}/orders/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getOrderImpact`

Check impact of trades on account.

#### 🛠️ Usage

```typescript
const getOrderImpactResponse = await snaptrade.trading.getOrderImpact({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
  account_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  action: "BUY",
  order_type: "Limit",
  price: 31.33,
  stop: 31.33,
  time_in_force: "Day",
  universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
});
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### account_id: `string`

##### action:

##### order_type:

##### price: `number`

Trade Price if limit or stop limit order

##### stop: `number`

Stop Price. If stop loss or stop limit order, the price to trigger the stop

##### time_in_force:

##### units: `number`

Trade Units

##### universal_symbol_id: `string`

#### 🔄 Return

[ManualTradeAndImpact](./models/manual-trade-and-impact.ts)

#### 🌐 Endpoint

`/trade/impact` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getUserAccountQuotes`

Get symbol quotes

#### 🛠️ Usage

```typescript
const getUserAccountQuotesResponse =
  await snaptrade.trading.getUserAccountQuotes({
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
    symbols: "symbols_example",
    accountId: "accountId_example",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### symbols: `string`

List of universal_symbol_id or tickers to get quotes for.

##### accountId: `string`

The ID of the account to get quotes.

##### useTicker: `boolean`

Should be set to True if providing tickers.

#### 🌐 Endpoint

`/accounts/{accountId}/quotes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeForceOrder`

Place a trade with NO validation.

#### 🛠️ Usage

```typescript
const placeForceOrderResponse = await snaptrade.trading.placeForceOrder({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
  account_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  action: "BUY",
  order_type: "Limit",
  price: 31.33,
  stop: 31.33,
  time_in_force: "Day",
  universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
});
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### account_id: `string`

##### action:

##### order_type:

##### price: `number`

Trade Price if limit or stop limit order

##### stop: `number`

Stop Price. If stop loss or stop limit order, the price to trigger the stop

##### time_in_force:

##### units: `number`

Trade Units

##### universal_symbol_id: `string`

#### 🔄 Return

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint

`/trade/place` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeOCOOrder`

Place a OCO (One Cancels Other) order

#### 🛠️ Usage

```typescript
const placeOCOOrderResponse = await snaptrade.trading.placeOCOOrder({
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
});
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### first_trade_id:

The ID of first trade object obtained from trade/impact endpoint

##### second_trade_id:

The ID of second trade object obtained from trade/impact endpoint

#### 🔄 Return

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint

`/trade/oco` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeOrder`

Place order

#### 🛠️ Usage

```typescript
const placeOrderResponse = await snaptrade.trading.placeOrder({
  tradeId: "tradeId_example",
  userId: "John.doe@snaptrade.com",
  userSecret: "USERSECRET123",
});
```

#### ⚙️ Parameters

##### tradeId: `string`

The ID of trade object obtained from trade/impact endpoint

##### userId: `string`

##### userSecret: `string`

#### 🔄 Return

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint

`/trade/{tradeId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getActivities`

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

#### 🛠️ Usage

```typescript
const getActivitiesResponse =
  await snaptrade.transactionsAndReporting.getActivities({
    startDate: "2022-01-24",
    endDate: "2022-01-24",
    accounts:
      "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    brokerageAuthorizations:
      "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    type: "DIVIDEND",
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
  });
```

#### ⚙️ Parameters

##### userId: `string`

##### userSecret: `string`

##### startDate: `string | Date`

##### endDate: `string | Date`

##### accounts: `string`

Optional comma seperated list of account IDs used to filter the request on specific accounts

##### brokerageAuthorizations: `string`

Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations

##### type: `string`

Optional comma seperated list of types to filter activities by. This is not an exhaustive list, if we fail to match to these types, we will return the raw description from the brokerage. Potential values include - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT

#### 🔄 Return

[UniversalActivity](./models/universal-activity.ts)

#### 🌐 Endpoint

`/activities` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getReportingCustomRange`

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

#### 🛠️ Usage

```typescript
const getReportingCustomRangeResponse =
  await snaptrade.transactionsAndReporting.getReportingCustomRange({
    startDate: "2022-01-24",
    endDate: "2022-01-24",
    accounts:
      "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    detailed: true,
    frequency: "monthly",
    userId: "John.doe@snaptrade.com",
    userSecret: "USERSECRET123",
  });
```

#### ⚙️ Parameters

##### startDate: `string | Date`

##### endDate: `string | Date`

##### userId: `string`

##### userSecret: `string`

##### accounts: `string`

Optional comma seperated list of account IDs used to filter the request on specific accounts

##### detailed: `boolean`

Optional, increases frequency of data points for the total value and contribution charts if set to true

##### frequency: `string`

Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.

#### 🔄 Return

[PerformanceCustom](./models/performance-custom.ts)

#### 🌐 Endpoint

`/performance/custom` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author
This TypeScript package is automatically generated by [Konfig](https://konfigthis.com)
