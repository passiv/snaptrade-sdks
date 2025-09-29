<div align="center">

[![Visit SnapTrade](./header.png)](https://snaptrade.com)

# [SnapTrade](https://snaptrade.com)<a id="snaptrade"></a>

Connect brokerage accounts to your app for live positions and trading

[![npm](https://img.shields.io/badge/npm-v9.0.143-blue)](https://www.npmjs.com/package/snaptrade-typescript-sdk/v/9.0.143)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation](#installation)
- [Getting Started](#getting-started)
- [Reference](#reference)
  * [`snaptrade.accountInformation.getAccountActivities`](#snaptradeaccountinformationgetaccountactivities)
  * [`snaptrade.accountInformation.getAllUserHoldings`](#snaptradeaccountinformationgetalluserholdings)
  * [`snaptrade.accountInformation.getUserAccountBalance`](#snaptradeaccountinformationgetuseraccountbalance)
  * [`snaptrade.accountInformation.getUserAccountDetails`](#snaptradeaccountinformationgetuseraccountdetails)
  * [`snaptrade.accountInformation.getUserAccountOrderDetail`](#snaptradeaccountinformationgetuseraccountorderdetail)
  * [`snaptrade.accountInformation.getUserAccountOrders`](#snaptradeaccountinformationgetuseraccountorders)
  * [`snaptrade.accountInformation.getUserAccountPositions`](#snaptradeaccountinformationgetuseraccountpositions)
  * [`snaptrade.accountInformation.getUserAccountRecentOrders`](#snaptradeaccountinformationgetuseraccountrecentorders)
  * [`snaptrade.accountInformation.getUserAccountReturnRates`](#snaptradeaccountinformationgetuseraccountreturnrates)
  * [`snaptrade.accountInformation.getUserHoldings`](#snaptradeaccountinformationgetuserholdings)
  * [`snaptrade.accountInformation.listUserAccounts`](#snaptradeaccountinformationlistuseraccounts)
  * [`snaptrade.accountInformation.updateUserAccount`](#snaptradeaccountinformationupdateuseraccount)
  * [`snaptrade.apiStatus.check`](#snaptradeapistatuscheck)
  * [`snaptrade.authentication.deleteSnapTradeUser`](#snaptradeauthenticationdeletesnaptradeuser)
  * [`snaptrade.authentication.listSnapTradeUsers`](#snaptradeauthenticationlistsnaptradeusers)
  * [`snaptrade.authentication.loginSnapTradeUser`](#snaptradeauthenticationloginsnaptradeuser)
  * [`snaptrade.authentication.registerSnapTradeUser`](#snaptradeauthenticationregistersnaptradeuser)
  * [`snaptrade.authentication.resetSnapTradeUserSecret`](#snaptradeauthenticationresetsnaptradeusersecret)
  * [`snaptrade.connections.detailBrokerageAuthorization`](#snaptradeconnectionsdetailbrokerageauthorization)
  * [`snaptrade.connections.disableBrokerageAuthorization`](#snaptradeconnectionsdisablebrokerageauthorization)
  * [`snaptrade.connections.listBrokerageAuthorizations`](#snaptradeconnectionslistbrokerageauthorizations)
  * [`snaptrade.connections.refreshBrokerageAuthorization`](#snaptradeconnectionsrefreshbrokerageauthorization)
  * [`snaptrade.connections.removeBrokerageAuthorization`](#snaptradeconnectionsremovebrokerageauthorization)
  * [`snaptrade.connections.returnRates`](#snaptradeconnectionsreturnrates)
  * [`snaptrade.connections.sessionEvents`](#snaptradeconnectionssessionevents)
  * [`snaptrade.options.getOptionsChain`](#snaptradeoptionsgetoptionschain)
  * [`snaptrade.options.listOptionHoldings`](#snaptradeoptionslistoptionholdings)
  * [`snaptrade.referenceData.getCurrencyExchangeRatePair`](#snaptradereferencedatagetcurrencyexchangeratepair)
  * [`snaptrade.referenceData.getPartnerInfo`](#snaptradereferencedatagetpartnerinfo)
  * [`snaptrade.referenceData.getSecurityTypes`](#snaptradereferencedatagetsecuritytypes)
  * [`snaptrade.referenceData.getStockExchanges`](#snaptradereferencedatagetstockexchanges)
  * [`snaptrade.referenceData.getSymbols`](#snaptradereferencedatagetsymbols)
  * [`snaptrade.referenceData.getSymbolsByTicker`](#snaptradereferencedatagetsymbolsbyticker)
  * [`snaptrade.referenceData.listAllBrokerageAuthorizationType`](#snaptradereferencedatalistallbrokerageauthorizationtype)
  * [`snaptrade.referenceData.listAllBrokerageInstruments`](#snaptradereferencedatalistallbrokerageinstruments)
  * [`snaptrade.referenceData.listAllBrokerages`](#snaptradereferencedatalistallbrokerages)
  * [`snaptrade.referenceData.listAllCurrencies`](#snaptradereferencedatalistallcurrencies)
  * [`snaptrade.referenceData.listAllCurrenciesRates`](#snaptradereferencedatalistallcurrenciesrates)
  * [`snaptrade.referenceData.symbolSearchUserAccount`](#snaptradereferencedatasymbolsearchuseraccount)
  * [`snaptrade.trading.cancelOrder`](#snaptradetradingcancelorder)
  * [`snaptrade.trading.cancelUserAccountOrder`](#snaptradetradingcanceluseraccountorder)
  * [`snaptrade.trading.getCryptocurrencyPairQuote`](#snaptradetradinggetcryptocurrencypairquote)
  * [`snaptrade.trading.getOrderImpact`](#snaptradetradinggetorderimpact)
  * [`snaptrade.trading.getUserAccountQuotes`](#snaptradetradinggetuseraccountquotes)
  * [`snaptrade.trading.placeBracketOrder`](#snaptradetradingplacebracketorder)
  * [`snaptrade.trading.placeCryptoOrder`](#snaptradetradingplacecryptoorder)
  * [`snaptrade.trading.placeForceOrder`](#snaptradetradingplaceforceorder)
  * [`snaptrade.trading.placeMlegOrder`](#snaptradetradingplacemlegorder)
  * [`snaptrade.trading.placeOrder`](#snaptradetradingplaceorder)
  * [`snaptrade.trading.previewCryptoOrder`](#snaptradetradingpreviewcryptoorder)
  * [`snaptrade.trading.replaceOrder`](#snaptradetradingreplaceorder)
  * [`snaptrade.trading.searchCryptocurrencyPairInstruments`](#snaptradetradingsearchcryptocurrencypairinstruments)
  * [`snaptrade.transactionsAndReporting.getActivities`](#snaptradetransactionsandreportinggetactivities)
  * [`snaptrade.transactionsAndReporting.getReportingCustomRange`](#snaptradetransactionsandreportinggetreportingcustomrange)

<!-- tocstop -->

## Installation<a id="installation"></a>

<table>
<tr>
<th width="292px"><code>npm</code></th>
<th width="293px"><code>pnpm</code></th>
<th width="292px"><code>yarn</code></th>
</tr>
<tr>
<td>

```bash
npm i snaptrade-typescript-sdk
```

</td>
<td>

```bash
pnpm i snaptrade-typescript-sdk
```

</td>
<td>

```bash
yarn add snaptrade-typescript-sdk
```

</td>
</tr>
</table>

## Getting Started<a id="getting-started"></a>

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

## Reference<a id="reference"></a>


### `snaptrade.accountInformation.getAccountActivities`<a id="snaptradeaccountinformationgetaccountactivities"></a>

Returns all historical transactions for the specified account.

This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.

Transaction are returned in reverse chronological order, using the `trade_date` field.

The data returned here is always cached and refreshed once a day.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getAccountActivitiesResponse =
  await snaptrade.accountInformation.getAccountActivities({
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    startDate: "2022-01-24",
    endDate: "2022-01-24",
    type: "BUY,SELL,DIVIDEND",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### startDate: `string | Date`<a id="startdate-string--date"></a>

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### endDate: `string | Date`<a id="enddate-string--date"></a>

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### offset: `number`<a id="offset-number"></a>

An integer that specifies the starting point of the paginated results. Default is 0.

##### limit: `number`<a id="limit-number"></a>

An integer that specifies the maximum number of transactions to return. Default of 1000.

##### type: `string`<a id="type-string"></a>

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 

#### 🔄 Return<a id="🔄-return"></a>

[PaginatedUniversalActivity](./models/paginated-universal-activity.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/activities` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getAllUserHoldings`<a id="snaptradeaccountinformationgetalluserholdings"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

**Deprecated, please use the account-specific holdings endpoint instead.**

List all accounts for the user, plus balances, positions, and orders for each
account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getAllUserHoldingsResponse =
  await snaptrade.accountInformation.getAllUserHoldings({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    brokerageAuthorizations: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### brokerageAuthorizations: `string`<a id="brokerageauthorizations-string"></a>

Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).

#### 🔄 Return<a id="🔄-return"></a>

[AccountHoldings](./models/account-holdings.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountBalance`<a id="snaptradeaccountinformationgetuseraccountbalance"></a>

Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountBalanceResponse =
  await snaptrade.accountInformation.getUserAccountBalance({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Balance](./models/balance.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/balances` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountDetails`<a id="snaptradeaccountinformationgetuseraccountdetails"></a>

Returns account detail known to SnapTrade for the specified account.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountDetailsResponse =
  await snaptrade.accountInformation.getUserAccountDetails({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Account](./models/account.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountOrderDetail`<a id="snaptradeaccountinformationgetuseraccountorderdetail"></a>

Returns the detail of a single order using the external order ID provided in the request body.

This endpoint only works for single-leg orders at this time. Support for multi-leg orders will be added in the future.

This endpoint is always realtime and does not rely on cached data.

This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountOrderDetailResponse =
  await snaptrade.accountInformation.getUserAccountOrderDetail({
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### accountId: `string`<a id="accountid-string"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders/details` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountOrders`<a id="snaptradeaccountinformationgetuseraccountorders"></a>

Returns a list of recent orders in the specified account.

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountOrdersResponse =
  await snaptrade.accountInformation.getUserAccountOrders({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    state: "all",
    days: 30,
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### state: `'all' | 'open' | 'executed'`<a id="state-all--open--executed"></a>

defaults value is set to \"all\"

##### days: `number`<a id="days-number"></a>

Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountPositions`<a id="snaptradeaccountinformationgetuseraccountpositions"></a>

Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountPositionsResponse =
  await snaptrade.accountInformation.getUserAccountPositions({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Position](./models/position.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/positions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountRecentOrders`<a id="snaptradeaccountinformationgetuseraccountrecentorders"></a>

A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account.
This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders
Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days
By default only returns executed orders, but that can be changed by setting *only_executed* to false
**Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountRecentOrdersResponse =
  await snaptrade.accountInformation.getUserAccountRecentOrders({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### onlyExecuted: `boolean`<a id="onlyexecuted-boolean"></a>

Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well

#### 🔄 Return<a id="🔄-return"></a>

[RecentOrdersResponse](./models/recent-orders-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/recentOrders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountReturnRates`<a id="snaptradeaccountinformationgetuseraccountreturnrates"></a>

Returns a list of rate of return percents for a given account. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountReturnRatesResponse =
  await snaptrade.accountInformation.getUserAccountReturnRates({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[RateOfReturnResponse](./models/rate-of-return-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/returnRates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserHoldings`<a id="snaptradeaccountinformationgetuserholdings"></a>

Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserHoldingsResponse =
  await snaptrade.accountInformation.getUserHoldings({
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[AccountHoldingsAccount](./models/account-holdings-account.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.listUserAccounts`<a id="snaptradeaccountinformationlistuseraccounts"></a>

Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listUserAccountsResponse =
  await snaptrade.accountInformation.listUserAccounts({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Account](./models/account.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.updateUserAccount`<a id="snaptradeaccountinformationupdateuseraccount"></a>

Updates various properties of a specified account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const updateUserAccountResponse =
  await snaptrade.accountInformation.updateUserAccount({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "accountId_example",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

The ID of the account to update.

#### 🔄 Return<a id="🔄-return"></a>

[Account](./models/account.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.apiStatus.check`<a id="snaptradeapistatuscheck"></a>

Check whether the API is operational and verify timestamps.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const checkResponse = await snaptrade.apiStatus.check();
```

#### 🔄 Return<a id="🔄-return"></a>

[Status](./models/status.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.deleteSnapTradeUser`<a id="snaptradeauthenticationdeletesnaptradeuser"></a>

Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const deleteSnapTradeUserResponse =
  await snaptrade.authentication.deleteSnapTradeUser({
    userId: "snaptrade-user-123",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[DeleteUserResponse](./models/delete-user-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/deleteUser` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.listSnapTradeUsers`<a id="snaptradeauthenticationlistsnaptradeusers"></a>

Returns a list of all registered user IDs. Please note that the response is not currently paginated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listSnapTradeUsersResponse =
  await snaptrade.authentication.listSnapTradeUsers();
```

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/listUsers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.loginSnapTradeUser`<a id="snaptradeauthenticationloginsnaptradeuser"></a>

Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.

Please note that the returned URL expires in 5 minutes.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const loginSnapTradeUserResponse =
  await snaptrade.authentication.loginSnapTradeUser({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    broker: "ALPACA",
    immediateRedirect: true,
    customRedirect: "https://snaptrade.com",
    reconnect: "8b5f262d-4bb9-365d-888a-202bd3b15fa1",
    connectionType: "read",
    showCloseButton: true,
    connectionPortalVersion: "v4",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### broker: `string`<a id="broker-string"></a>

Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.

##### immediateRedirect: `boolean`<a id="immediateredirect-boolean"></a>

When set to `true`, user will be redirected back to the partner\\\'s site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### customRedirect: `string`<a id="customredirect-string"></a>

URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### reconnect: `string`<a id="reconnect-string"></a>

The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.

##### connectionType: `string`<a id="connectiontype-string"></a>

Determines connection permissions (default: read) - `read`: Data access only. - `trade`: Data and trading access. - `trade-if-available`: Attempts to establish a trading connection if the brokerage supports it, otherwise falls back to read-only access automatically. 

##### showCloseButton: `boolean`<a id="showclosebutton-boolean"></a>

Controls whether the close (X) button is displayed in the connection portal. When false, you control closing behavior from your app. Defaults to true.

##### connectionPortalVersion: `string`<a id="connectionportalversion-string"></a>

Sets the connection portal version to render. Currently only v4 is supported and is the default. All other versions are deprecated and will automatically be set to v4.

#### 🔄 Return<a id="🔄-return"></a>

[AuthenticationLoginSnapTradeUser200Response](./models/authentication-login-snap-trade-user200-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/login` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.registerSnapTradeUser`<a id="snaptradeauthenticationregistersnaptradeuser"></a>

Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system.
Most SnapTrade operations require a user ID and user secret to be passed in as parameters.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const registerSnapTradeUserResponse =
  await snaptrade.authentication.registerSnapTradeUser({
    userId: "snaptrade-user-123",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

#### 🔄 Return<a id="🔄-return"></a>

[UserIDandSecret](./models/user-idand-secret.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/registerUser` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.resetSnapTradeUserSecret`<a id="snaptradeauthenticationresetsnaptradeusersecret"></a>

Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const resetSnapTradeUserSecretResponse =
  await snaptrade.authentication.resetSnapTradeUserSecret({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

##### userSecret: `string`<a id="usersecret-string"></a>

SnapTrade User Secret. This is a randomly generated string and should be stored securely. If compromised, please rotate it via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret).

#### 🔄 Return<a id="🔄-return"></a>

[UserIDandSecret](./models/user-idand-secret.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/resetUserSecret` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.detailBrokerageAuthorization`<a id="snaptradeconnectionsdetailbrokerageauthorization"></a>

Returns a single connection for the specified ID.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const detailBrokerageAuthorizationResponse =
  await snaptrade.connections.detailBrokerageAuthorization({
    authorizationId: "87b24961-b51e-4db8-9226-f198f6518a89",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `string`<a id="authorizationid-string"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorization](./models/brokerage-authorization.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.disableBrokerageAuthorization`<a id="snaptradeconnectionsdisablebrokerageauthorization"></a>

Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections.
Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.

This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const disableBrokerageAuthorizationResponse =
  await snaptrade.connections.disableBrokerageAuthorization({
    authorizationId: "87b24961-b51e-4db8-9226-f198f6518a89",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `string`<a id="authorizationid-string"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorizationDisabledConfirmation](./models/brokerage-authorization-disabled-confirmation.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/disable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.listBrokerageAuthorizations`<a id="snaptradeconnectionslistbrokerageauthorizations"></a>

Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.

A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.

SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listBrokerageAuthorizationsResponse =
  await snaptrade.connections.listBrokerageAuthorizations({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorization](./models/brokerage-authorization.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.refreshBrokerageAuthorization`<a id="snaptradeconnectionsrefreshbrokerageauthorization"></a>

Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.
This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.

**Please contact support before use. Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const refreshBrokerageAuthorizationResponse =
  await snaptrade.connections.refreshBrokerageAuthorization({
    authorizationId: "87b24961-b51e-4db8-9226-f198f6518a89",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `string`<a id="authorizationid-string"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorizationRefreshConfirmation](./models/brokerage-authorization-refresh-confirmation.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/refresh` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.removeBrokerageAuthorization`<a id="snaptradeconnectionsremovebrokerageauthorization"></a>

Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const removeBrokerageAuthorizationResponse =
  await snaptrade.connections.removeBrokerageAuthorization({
    authorizationId: "87b24961-b51e-4db8-9226-f198f6518a89",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `string`<a id="authorizationid-string"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.returnRates`<a id="snaptradeconnectionsreturnrates"></a>

Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const returnRatesResponse = await snaptrade.connections.returnRates({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  authorizationId: "87b24961-b51e-4db8-9226-f198f6518a89",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### authorizationId: `string`<a id="authorizationid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[RateOfReturnResponse](./models/rate-of-return-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/returnRates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.sessionEvents`<a id="snaptradeconnectionssessionevents"></a>

Returns a list of session events associated with a user.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const sessionEventsResponse = await snaptrade.connections.sessionEvents({
  partnerClientId: "SNAPTRADETEST",
  userId:
    "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
  sessionId:
    "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### partnerClientId: `string`<a id="partnerclientid-string"></a>

##### userId: `string`<a id="userid-string"></a>

Optional comma separated list of user IDs used to filter the request on specific users

##### sessionId: `string`<a id="sessionid-string"></a>

Optional comma separated list of session IDs used to filter the request on specific users

#### 🔄 Return<a id="🔄-return"></a>

[ConnectionsSessionEvents200ResponseInner](./models/connections-session-events200-response-inner.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/sessionEvents` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionsChain`<a id="snaptradeoptionsgetoptionschain"></a>

Returns the option chain for the specified symbol in the specified account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getOptionsChainResponse = await snaptrade.options.getOptionsChain({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  accountId: "accountId_example",
  symbol: "symbol_example",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

The ID of the account to get the options chain from.

##### symbol: `string`<a id="symbol-string"></a>

Universal symbol ID if symbol

#### 🔄 Return<a id="🔄-return"></a>

[OptionChainInner](./models/option-chain-inner.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionsChain` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.listOptionHoldings`<a id="snaptradeoptionslistoptionholdings"></a>

Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listOptionHoldingsResponse = await snaptrade.options.listOptionHoldings({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[OptionsPosition](./models/options-position.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/options` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getCurrencyExchangeRatePair`<a id="snaptradereferencedatagetcurrencyexchangeratepair"></a>

Returns an Exchange Rate Pair object for the specified Currency Pair.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getCurrencyExchangeRatePairResponse =
  await snaptrade.referenceData.getCurrencyExchangeRatePair({
    currencyPair: "currencyPair_example",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### currencyPair: `string`<a id="currencypair-string"></a>

A currency pair based on currency code for example, {CAD-USD}

#### 🔄 Return<a id="🔄-return"></a>

[ExchangeRatePairs](./models/exchange-rate-pairs.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies/rates/{currencyPair}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getPartnerInfo`<a id="snaptradereferencedatagetpartnerinfo"></a>

Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getPartnerInfoResponse = await snaptrade.referenceData.getPartnerInfo();
```

#### 🔄 Return<a id="🔄-return"></a>

[PartnerData](./models/partner-data.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/partners` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSecurityTypes`<a id="snaptradereferencedatagetsecuritytypes"></a>

Return all available security types supported by SnapTrade.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getSecurityTypesResponse =
  await snaptrade.referenceData.getSecurityTypes();
```

#### 🔄 Return<a id="🔄-return"></a>

[SecurityType](./models/security-type.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/securityTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getStockExchanges`<a id="snaptradereferencedatagetstockexchanges"></a>

Returns a list of all supported Exchanges.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getStockExchangesResponse =
  await snaptrade.referenceData.getStockExchanges();
```

#### 🔄 Return<a id="🔄-return"></a>

[Exchange](./models/exchange.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/exchanges` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbols`<a id="snaptradereferencedatagetsymbols"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getSymbolsResponse = await snaptrade.referenceData.getSymbols({
  substring: "AAPL",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### substring: `string`<a id="substring-string"></a>

The search query for symbols.

#### 🔄 Return<a id="🔄-return"></a>

[UniversalSymbol](./models/universal-symbol.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbolsByTicker`<a id="snaptradereferencedatagetsymbolsbyticker"></a>

Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on "Yahoo Finance Market Coverage and Data Delays"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getSymbolsByTickerResponse =
  await snaptrade.referenceData.getSymbolsByTicker({
    query: "query_example",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `string`<a id="query-string"></a>

The ticker or Universal Symbol ID to look up the symbol with.

#### 🔄 Return<a id="🔄-return"></a>

[UniversalSymbol](./models/universal-symbol.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols/{query}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerageAuthorizationType`<a id="snaptradereferencedatalistallbrokerageauthorizationtype"></a>

Returns a list of all defined Brokerage authorization Type objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listAllBrokerageAuthorizationTypeResponse =
  await snaptrade.referenceData.listAllBrokerageAuthorizationType({
    brokerage: "QUESTRADE,ALPACA",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage: `string`<a id="brokerage-string"></a>

Comma separated value of brokerage slugs

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorizationTypeReadOnly](./models/brokerage-authorization-type-read-only.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerageAuthorizationTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerageInstruments`<a id="snaptradereferencedatalistallbrokerageinstruments"></a>

Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don't will return an empty list.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listAllBrokerageInstrumentsResponse =
  await snaptrade.referenceData.listAllBrokerageInstruments({
    slug: "QUESTRADE",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### slug: `string`<a id="slug-string"></a>

A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageInstrumentsResponse](./models/brokerage-instruments-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerages/{slug}/instruments` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerages`<a id="snaptradereferencedatalistallbrokerages"></a>

Returns a list of all defined Brokerage objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listAllBrokeragesResponse =
  await snaptrade.referenceData.listAllBrokerages();
```

#### 🔄 Return<a id="🔄-return"></a>

[Brokerage](./models/brokerage.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerages` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrencies`<a id="snaptradereferencedatalistallcurrencies"></a>

Returns a list of all defined Currency objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listAllCurrenciesResponse =
  await snaptrade.referenceData.listAllCurrencies();
```

#### 🔄 Return<a id="🔄-return"></a>

[Currency](./models/currency.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrenciesRates`<a id="snaptradereferencedatalistallcurrenciesrates"></a>

Returns a list of all Exchange Rate Pairs for all supported Currencies.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const listAllCurrenciesRatesResponse =
  await snaptrade.referenceData.listAllCurrenciesRates();
```

#### 🔄 Return<a id="🔄-return"></a>

[ExchangeRatePairs](./models/exchange-rate-pairs.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies/rates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.symbolSearchUserAccount`<a id="snaptradereferencedatasymbolsearchuseraccount"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.

The search results are further limited to the symbols supported by the brokerage for which the account is under.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const symbolSearchUserAccountResponse =
  await snaptrade.referenceData.symbolSearchUserAccount({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    substring: "AAPL",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### substring: `string`<a id="substring-string"></a>

The search query for symbols.

#### 🔄 Return<a id="🔄-return"></a>

[UniversalSymbol](./models/universal-symbol.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.cancelOrder`<a id="snaptradetradingcancelorder"></a>

Cancels an order in the specified account. Accepts order IDs for all asset types.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const cancelOrderResponse = await snaptrade.trading.cancelOrder({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[CancelOrderResponse](./models/cancel-order-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.cancelUserAccountOrder`<a id="snaptradetradingcanceluseraccountorder"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

**This endpoint is deprecated. Please switch to [the new cancel order endpoint](/reference/Trading/Trading_cancelOrder) **
Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const cancelUserAccountOrderResponse =
  await snaptrade.trading.cancelUserAccountOrder({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getCryptocurrencyPairQuote`<a id="snaptradetradinggetcryptocurrencypairquote"></a>

Gets a quote for the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getCryptocurrencyPairQuoteResponse =
  await snaptrade.trading.getCryptocurrencyPairQuote({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    instrumentSymbol: "BTC-USD",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### instrumentSymbol: `string`<a id="instrumentsymbol-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[CryptocurrencyPairQuote](./models/cryptocurrency-pair-quote.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getOrderImpact`<a id="snaptradetradinggetorderimpact"></a>

Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getOrderImpactResponse = await snaptrade.trading.getOrderImpact({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  action: "BUY",
  universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  order_type: "Market",
  time_in_force: "Day",
  price: 31.33,
  stop: 31.33,
  units: 10.5,
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action: [`ActionStrict`](./models/action-strict.ts)<a id="action-actionstrictmodelsaction-strictts"></a>

The action describes the intent or side of a trade. This is either `BUY` or `SELL`.

##### universal_symbol_id: `string`<a id="universal_symbol_id-string"></a>

Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.

##### order_type: [`OrderTypeStrict`](./models/order-type-strict.ts)<a id="order_type-ordertypestrictmodelsorder-type-strictts"></a>

The type of order to place.  - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 

##### time_in_force: [`TimeInForceStrict`](./models/time-in-force-strict.ts)<a id="time_in_force-timeinforcestrictmodelstime-in-force-strictts"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values:   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### price: `number`<a id="price-number"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `number`<a id="stop-number"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`number`](./models/number.ts)<a id="units-numbermodelsnumberts"></a>

##### notional_value: [`ManualTradeFormNotionalValue`](./models/manual-trade-form-notional-value.ts)<a id="notional_value-manualtradeformnotionalvaluemodelsmanual-trade-form-notional-valuets"></a>

#### 🔄 Return<a id="🔄-return"></a>

[ManualTradeAndImpact](./models/manual-trade-and-impact.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/impact` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getUserAccountQuotes`<a id="snaptradetradinggetuseraccountquotes"></a>

Returns quotes from the brokerage for the specified symbols and account.

The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint.

This endpoint does not work for options quotes.

This endpoint is disabled for free plans by default. Please contact support to enable this endpoint if needed.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getUserAccountQuotesResponse =
  await snaptrade.trading.getUserAccountQuotes({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    symbols: "symbols_example",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### symbols: `string`<a id="symbols-string"></a>

List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator

##### accountId: `string`<a id="accountid-string"></a>

##### useTicker: `boolean`<a id="useticker-boolean"></a>

Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.

#### 🔄 Return<a id="🔄-return"></a>

[SymbolsQuotesInner](./models/symbols-quotes-inner.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/quotes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeBracketOrder`<a id="snaptradetradingplacebracketorder"></a>

Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for
use. Only supported on certain brokerages


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const placeBracketOrderResponse = await snaptrade.trading.placeBracketOrder({
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  action: "BUY",
  instrument: {
    symbol: "AAPL",
    type: "EQUITY",
  },
  order_type: "Market",
  time_in_force: "Day",
  price: 31.33,
  stop: 31.33,
  units: 10.5,
  stop_loss: {
    stop_price: "48.55",
    limit_price: "48.50",
  },
  take_profit: {
    limit_price: "49.95",
  },
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action: [`ActionStrictWithOptions`](./models/action-strict-with-options.ts)<a id="action-actionstrictwithoptionsmodelsaction-strict-with-optionsts"></a>

The action describes the intent or side of a trade. This is either `BUY` or `SELL` for Equity symbols or `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN` or `SELL_TO_CLOSE` for Options.

##### instrument: [`TradingInstrument`](./models/trading-instrument.ts)<a id="instrument-tradinginstrumentmodelstrading-instrumentts"></a>

##### order_type: [`OrderTypeStrict`](./models/order-type-strict.ts)<a id="order_type-ordertypestrictmodelsorder-type-strictts"></a>

The type of order to place.  - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 

##### time_in_force: [`TimeInForceStrict`](./models/time-in-force-strict.ts)<a id="time_in_force-timeinforcestrictmodelstime-in-force-strictts"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values:   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 

##### stop_loss: [`StopLoss`](./models/stop-loss.ts)<a id="stop_loss-stoplossmodelsstop-lossts"></a>

##### take_profit: [`TakeProfit`](./models/take-profit.ts)<a id="take_profit-takeprofitmodelstake-profitts"></a>

##### accountId: `string`<a id="accountid-string"></a>

The ID of the account to execute the trade on.

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### price: `number`<a id="price-number"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `number`<a id="stop-number"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `number`<a id="units-number"></a>

Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/bracket` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeCryptoOrder`<a id="snaptradetradingplacecryptoorder"></a>

Places an order in the specified account.
This endpoint does not compute the impact to the account balance from the order before submitting the order.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const placeCryptoOrderResponse = await snaptrade.trading.placeCryptoOrder({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  instrument: {
    symbol: "BTC",
    type: "CRYPTOCURRENCY",
  },
  side: "BUY",
  type: "MARKET",
  time_in_force: "GTC",
  amount: "123.45",
  limit_price: "123.45",
  stop_price: "123.45",
  post_only: false,
  expiration_date: "2024-01-01T00:00:00Z",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### instrument: [`CryptoTradingInstrument`](./models/crypto-trading-instrument.ts)<a id="instrument-cryptotradinginstrumentmodelscrypto-trading-instrumentts"></a>

##### side: [`ActionStrict`](./models/action-strict.ts)<a id="side-actionstrictmodelsaction-strictts"></a>

The action describes the intent or side of a trade. This is either `BUY` or `SELL`.

##### type: `string`<a id="type-string"></a>

The type of order to place.

##### time_in_force: `string`<a id="time_in_force-string"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 

##### amount: `string`<a id="amount-string"></a>

The amount of the base currency to buy or sell.

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### limit_price: `string`<a id="limit_price-string"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.

##### stop_price: `string`<a id="stop_price-string"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.

##### post_only: `boolean`<a id="post_only-boolean"></a>

Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 

##### expiration_date: `string`<a id="expiration_date-string"></a>

The expiration date of the order. Required if the time_in_force is GTD.

#### 🔄 Return<a id="🔄-return"></a>

[OrderUpdatedResponse](./models/order-updated-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeForceOrder`<a id="snaptradetradingplaceforceorder"></a>

Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.

This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const placeForceOrderResponse = await snaptrade.trading.placeForceOrder({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  action: "BUY",
  universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  symbol: "AAPL",
  order_type: "Market",
  time_in_force: "Day",
  price: 31.33,
  stop: 31.33,
  units: 10.5,
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action: [`ActionStrictWithOptions`](./models/action-strict-with-options.ts)<a id="action-actionstrictwithoptionsmodelsaction-strict-with-optionsts"></a>

The action describes the intent or side of a trade. This is either `BUY` or `SELL` for Equity symbols or `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN` or `SELL_TO_CLOSE` for Options.

##### order_type: [`OrderTypeStrict`](./models/order-type-strict.ts)<a id="order_type-ordertypestrictmodelsorder-type-strictts"></a>

The type of order to place.  - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 

##### time_in_force: [`TimeInForceStrict`](./models/time-in-force-strict.ts)<a id="time_in_force-timeinforcestrictmodelstime-in-force-strictts"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values:   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### universal_symbol_id: [`string`](./models/model-string.ts)<a id="universal_symbol_id-stringmodelsmodel-stringts"></a>

The universal symbol ID of the security to trade. Must be \\\'null\\\' if `symbol` is provided, otherwise must be provided.

##### symbol: `string`<a id="symbol-string"></a>

The security\\\'s trading ticker symbol. If \\\'symbol\\\' is provided, then \\\'universal_symbol_id\\\' must be \\\'null\\\'.

##### price: `number`<a id="price-number"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `number`<a id="stop-number"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`number`](./models/number.ts)<a id="units-numbermodelsnumberts"></a>

For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).

##### notional_value: [`ManualTradeFormNotionalValue`](./models/manual-trade-form-notional-value.ts)<a id="notional_value-manualtradeformnotionalvaluemodelsmanual-trade-form-notional-valuets"></a>

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/place` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeMlegOrder`<a id="snaptradetradingplacemlegorder"></a>

Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const placeMlegOrderResponse = await snaptrade.trading.placeMlegOrder({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  order_type: "MARKET",
  time_in_force: "Day",
  limit_price: "",
  stop_price: "",
  price_effect: "DEBIT",
  legs: [
    {
      instrument: {
        symbol: "PBI   250718C00006000",
        instrument_type: "OPTION",
      },
      action: "BUY_TO_OPEN",
      units: 1,
    },
  ],
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### order_type: [`MlegOrderTypeStrict`](./models/mleg-order-type-strict.ts)<a id="order_type-mlegordertypestrictmodelsmleg-order-type-strictts"></a>

The type of order to place.

##### time_in_force: [`TimeInForceStrict`](./models/time-in-force-strict.ts)<a id="time_in_force-timeinforcestrictmodelstime-in-force-strictts"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values:   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 

##### legs: [`MlegLeg`](./models/mleg-leg.ts)[]<a id="legs-mleglegmodelsmleg-legts"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### limit_price: `string`<a id="limit_price-string"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT.

##### stop_price: `string`<a id="stop_price-string"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT.

##### price_effect: [`MlegPriceEffectStrict`](./models/mleg-price-effect-strict.ts)<a id="price_effect-mlegpriceeffectstrictmodelsmleg-price-effect-strictts"></a>

#### 🔄 Return<a id="🔄-return"></a>

[MlegOrderResponse](./models/mleg-order-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/options` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeOrder`<a id="snaptradetradingplaceorder"></a>

Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const placeOrderResponse = await snaptrade.trading.placeOrder({
  tradeId: "139e307a-82f7-4402-b39e-4da7baa87758",
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  wait_to_confirm: true,
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### tradeId: `string`<a id="tradeid-string"></a>

Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### wait_to_confirm: `boolean`<a id="wait_to_confirm-boolean"></a>

Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/{tradeId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.previewCryptoOrder`<a id="snaptradetradingpreviewcryptoorder"></a>

Previews an order using the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const previewCryptoOrderResponse = await snaptrade.trading.previewCryptoOrder({
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
  instrument: {
    symbol: "BTC",
    type: "CRYPTOCURRENCY",
  },
  side: "BUY",
  type: "MARKET",
  time_in_force: "GTC",
  amount: "123.45",
  limit_price: "123.45",
  stop_price: "123.45",
  post_only: false,
  expiration_date: "2024-01-01T00:00:00Z",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### instrument: [`CryptoTradingInstrument`](./models/crypto-trading-instrument.ts)<a id="instrument-cryptotradinginstrumentmodelscrypto-trading-instrumentts"></a>

##### side: [`ActionStrict`](./models/action-strict.ts)<a id="side-actionstrictmodelsaction-strictts"></a>

The action describes the intent or side of a trade. This is either `BUY` or `SELL`.

##### type: `string`<a id="type-string"></a>

The type of order to place.

##### time_in_force: `string`<a id="time_in_force-string"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 

##### amount: `string`<a id="amount-string"></a>

The amount of the base currency to buy or sell.

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### limit_price: `string`<a id="limit_price-string"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.

##### stop_price: `string`<a id="stop_price-string"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.

##### post_only: `boolean`<a id="post_only-boolean"></a>

Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 

##### expiration_date: `string`<a id="expiration_date-string"></a>

The expiration date of the order. Required if the time_in_force is GTD.

#### 🔄 Return<a id="🔄-return"></a>

[CryptoOrderPreview](./models/crypto-order-preview.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto/preview` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.replaceOrder`<a id="snaptradetradingreplaceorder"></a>

Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling
the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one
returned in the response going forward. Only supported on some brokerages


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const replaceOrderResponse = await snaptrade.trading.replaceOrder({
  accountId: "2bcd7cc3-e922-4976-bce1-9858296801c3",
  userId: "snaptrade-user-123",
  userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e",
  action: "BUY",
  order_type: "Market",
  time_in_force: "Day",
  price: 31.33,
  symbol: "AAPL",
  stop: 31.33,
  units: 10.5,
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### action: [`ActionStrict`](./models/action-strict.ts)<a id="action-actionstrictmodelsaction-strictts"></a>

The action describes the intent or side of a trade. This is either `BUY` or `SELL`.

##### order_type: [`OrderTypeStrict`](./models/order-type-strict.ts)<a id="order_type-ordertypestrictmodelsorder-type-strictts"></a>

The type of order to place.  - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 

##### time_in_force: [`TimeInForceStrict`](./models/time-in-force-strict.ts)<a id="time_in_force-timeinforcestrictmodelstime-in-force-strictts"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values:   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 

##### accountId: `string`<a id="accountid-string"></a>

The ID of the account to execute the trade on.

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### price: `number`<a id="price-number"></a>

The limit price for `Limit` and `StopLimit` orders.

##### symbol: `string`<a id="symbol-string"></a>

The security\\\'s trading ticker symbol

##### stop: `number`<a id="stop-number"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`number`](./models/number.ts)<a id="units-numbermodelsnumberts"></a>

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./models/account-order-record.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/replace` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.searchCryptocurrencyPairInstruments`<a id="snaptradetradingsearchcryptocurrencypairinstruments"></a>

Searches cryptocurrency pairs instruments accessible to the specified account. Both `base` and `quote` are optional. Omit both for a full list of cryptocurrency pairs.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const searchCryptocurrencyPairInstrumentsResponse =
  await snaptrade.trading.searchCryptocurrencyPairInstruments({
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
    accountId: "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    base: "BTC",
    quote: "USD",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accountId: `string`<a id="accountid-string"></a>

##### base: `string`<a id="base-string"></a>

##### quote: `string`<a id="quote-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[TradingSearchCryptocurrencyPairInstruments200Response](./models/trading-search-cryptocurrency-pair-instruments200-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/instruments/cryptocurrencyPairs` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getActivities`<a id="snaptradetransactionsandreportinggetactivities"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible

Returns all historical transactions for the specified user and filtering criteria. It's recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There's a max number of 10000 transactions returned per request.

There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.

The data returned here is always cached and refreshed once a day.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getActivitiesResponse =
  await snaptrade.transactionsAndReporting.getActivities({
    startDate: "2022-01-24",
    endDate: "2022-01-24",
    accounts:
      "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    brokerageAuthorizations:
      "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    type: "BUY,SELL,DIVIDEND",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### startDate: `string | Date`<a id="startdate-string--date"></a>

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### endDate: `string | Date`<a id="enddate-string--date"></a>

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### accounts: `string`<a id="accounts-string"></a>

Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.

##### brokerageAuthorizations: `string`<a id="brokerageauthorizations-string"></a>

Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.

##### type: `string`<a id="type-string"></a>

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 

#### 🔄 Return<a id="🔄-return"></a>

[UniversalActivity](./models/universal-activity.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/activities` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getReportingCustomRange`<a id="snaptradetransactionsandreportinggetreportingcustomrange"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getReportingCustomRangeResponse =
  await snaptrade.transactionsAndReporting.getReportingCustomRange({
    startDate: "2022-01-24",
    endDate: "2022-01-24",
    accounts:
      "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    detailed: true,
    frequency: "monthly",
    userId: "snaptrade-user-123",
    userSecret: "adf2aa34-8219-40f7-a6b3-60156985cc61",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### startDate: `string | Date`<a id="startdate-string--date"></a>

##### endDate: `string | Date`<a id="enddate-string--date"></a>

##### userId: `string`<a id="userid-string"></a>

##### userSecret: `string`<a id="usersecret-string"></a>

##### accounts: `string`<a id="accounts-string"></a>

Optional comma separated list of account IDs used to filter the request on specific accounts

##### detailed: `boolean`<a id="detailed-boolean"></a>

Optional, increases frequency of data points for the total value and contribution charts if set to true

##### frequency: `string`<a id="frequency-string"></a>

Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.

#### 🔄 Return<a id="🔄-return"></a>

[PerformanceCustom](./models/performance-custom.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/performance/custom` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This TypeScript package is automatically generated by [Konfig](https://konfigthis.com)
