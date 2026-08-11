<div align="center">

[![Visit SnapTrade](./header.png)](https://snaptrade.com)

# [SnapTrade](https://snaptrade.com)<a id="snaptrade"></a>

Connect brokerage accounts to your app for live positions and trading

[![Packagist](https://img.shields.io/badge/Packagist-v3.0.0-blue)](https://packagist.org/packages/konfig/snaptrade-php-sdk)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation & Usage](#installation--usage)
  * [Requirements](#requirements)
  * [Composer](#composer)
  * [Manual Installation](#manual-installation)
- [Getting Started](#getting-started)
- [Reference](#reference)
  * [`snaptrade.accountInformation.getAccountActivities`](#snaptradeaccountinformationgetaccountactivities)
  * [`snaptrade.accountInformation.getAccountBalanceHistory`](#snaptradeaccountinformationgetaccountbalancehistory)
  * [`snaptrade.accountInformation.getAllAccountPositions`](#snaptradeaccountinformationgetallaccountpositions)
  * [`snaptrade.accountInformation.getUserAccountBalance`](#snaptradeaccountinformationgetuseraccountbalance)
  * [`snaptrade.accountInformation.getUserAccountDetails`](#snaptradeaccountinformationgetuseraccountdetails)
  * [`snaptrade.accountInformation.getUserAccountOrderDetail`](#snaptradeaccountinformationgetuseraccountorderdetail)
  * [`snaptrade.accountInformation.getUserAccountOrders`](#snaptradeaccountinformationgetuseraccountorders)
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
  * [`snaptrade.connections.deleteConnection`](#snaptradeconnectionsdeleteconnection)
  * [`snaptrade.connections.detailBrokerageAuthorization`](#snaptradeconnectionsdetailbrokerageauthorization)
  * [`snaptrade.connections.disableBrokerageAuthorization`](#snaptradeconnectionsdisablebrokerageauthorization)
  * [`snaptrade.connections.listBrokerageAuthorizationAccounts`](#snaptradeconnectionslistbrokerageauthorizationaccounts)
  * [`snaptrade.connections.listBrokerageAuthorizations`](#snaptradeconnectionslistbrokerageauthorizations)
  * [`snaptrade.connections.refreshBrokerageAuthorization`](#snaptradeconnectionsrefreshbrokerageauthorization)
  * [`snaptrade.connections.returnRates`](#snaptradeconnectionsreturnrates)
  * [`snaptrade.connections.syncBrokerageAuthorizationTransactions`](#snaptradeconnectionssyncbrokerageauthorizationtransactions)
  * [`snaptrade.experimentalEndpoints.addSubscription`](#snaptradeexperimentalendpointsaddsubscription)
  * [`snaptrade.experimentalEndpoints.cancelSubscription`](#snaptradeexperimentalendpointscancelsubscription)
  * [`snaptrade.experimentalEndpoints.getUserAccountOrderDetailV2`](#snaptradeexperimentalendpointsgetuseraccountorderdetailv2)
  * [`snaptrade.experimentalEndpoints.getUserAccountOrdersV2`](#snaptradeexperimentalendpointsgetuseraccountordersv2)
  * [`snaptrade.experimentalEndpoints.getUserAccountRecentOrdersV2`](#snaptradeexperimentalendpointsgetuseraccountrecentordersv2)
  * [`snaptrade.experimentalEndpoints.listConnectionAccounts`](#snaptradeexperimentalendpointslistconnectionaccounts)
  * [`snaptrade.experimentalEndpoints.listSubscriptions`](#snaptradeexperimentalendpointslistsubscriptions)
  * [`snaptrade.referenceData.getPartnerInfo`](#snaptradereferencedatagetpartnerinfo)
  * [`snaptrade.referenceData.getStockExchanges`](#snaptradereferencedatagetstockexchanges)
  * [`snaptrade.referenceData.getSymbols`](#snaptradereferencedatagetsymbols)
  * [`snaptrade.referenceData.getSymbolsByTicker`](#snaptradereferencedatagetsymbolsbyticker)
  * [`snaptrade.referenceData.listAllBrokerageAuthorizationType`](#snaptradereferencedatalistallbrokerageauthorizationtype)
  * [`snaptrade.referenceData.listAllBrokerageInstruments`](#snaptradereferencedatalistallbrokerageinstruments)
  * [`snaptrade.referenceData.listAllBrokerages`](#snaptradereferencedatalistallbrokerages)
  * [`snaptrade.referenceData.symbolSearchUserAccount`](#snaptradereferencedatasymbolsearchuseraccount)
  * [`snaptrade.trading.cancelOrder`](#snaptradetradingcancelorder)
  * [`snaptrade.trading.getCryptocurrencyPairQuote`](#snaptradetradinggetcryptocurrencypairquote)
  * [`snaptrade.trading.getOptionImpact`](#snaptradetradinggetoptionimpact)
  * [`snaptrade.trading.getOrderImpact`](#snaptradetradinggetorderimpact)
  * [`snaptrade.trading.getUserAccountOptionQuotes`](#snaptradetradinggetuseraccountoptionquotes)
  * [`snaptrade.trading.getUserAccountQuotes`](#snaptradetradinggetuseraccountquotes)
  * [`snaptrade.trading.placeComplexOrder`](#snaptradetradingplacecomplexorder)
  * [`snaptrade.trading.placeCryptoOrder`](#snaptradetradingplacecryptoorder)
  * [`snaptrade.trading.placeForceOrder`](#snaptradetradingplaceforceorder)
  * [`snaptrade.trading.placeMlegOrder`](#snaptradetradingplacemlegorder)
  * [`snaptrade.trading.placeOrder`](#snaptradetradingplaceorder)
  * [`snaptrade.trading.previewCryptoOrder`](#snaptradetradingpreviewcryptoorder)
  * [`snaptrade.trading.replaceOrder`](#snaptradetradingreplaceorder)
  * [`snaptrade.trading.searchCryptocurrencyPairInstruments`](#snaptradetradingsearchcryptocurrencypairinstruments)

<!-- tocstop -->

## Installation & Usage<a id="installation--usage"></a>

### Requirements<a id="requirements"></a>

This library requires `PHP ^8.0`

### Composer<a id="composer"></a>

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/passiv/snaptrade-php-sdk.git"
    }
  ],
  "require": {
    "konfig/snaptrade-php-sdk": "3.0.0"
  }
}
```

Then run `composer install`

### Manual Installation<a id="manual-installation"></a>

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/snaptrade-php-sdk/vendor/autoload.php');
```

## Getting Started<a id="getting-started"></a>

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$snaptrade = new \SnapTrade\Client(
    clientId: getenv("SNAPTRADE_CLIENT_ID"),
    consumerKey: getenv("SNAPTRADE_CONSUMER_KEY")
);

$result = $snaptrade->accountInformation->getAccountActivities(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    start_date: "2022-01-24", 
    end_date: "2022-01-24", 
    offset: 0, 
    limit: 1, 
    type: "BUY,SELL,DIVIDEND"
);
```
## Reference<a id="reference"></a>


### `snaptrade.accountInformation.getAccountActivities`<a id="snaptradeaccountinformationgetaccountactivities"></a>

This endpoint is not deprecated and has no planned sunset. Responses to requests using the legacy `/api/v1` path prefix include `Deprecation: @1781222400` (June 12, 2026); that header applies only to the path prefix. Use the canonical root path `/accounts/{accountId}/activities`.

Returns all historical transactions for the specified account.

This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.

Transaction are returned in reverse chronological order, using the `trade_date` field.

This endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage.

If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getAccountActivities(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    start_date: "2022-01-24", 
    end_date: "2022-01-24", 
    offset: 0, 
    limit: 1, 
    type: "BUY,SELL,DIVIDEND"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### start_date: `\DateTime`<a id="start_date-datetime"></a>

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### end_date: `\DateTime`<a id="end_date-datetime"></a>

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### offset: `int`<a id="offset-int"></a>

An integer that specifies the starting point of the paginated results. Default is 0.

##### limit: `int`<a id="limit-int"></a>

An integer that specifies the maximum number of transactions to return. Default of 1000.

##### type: `string`<a id="type-string"></a>

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `SUBSTITUTE_DIVIDEND` - Payment in lieu of a dividend.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `TAX` - A tax related fee.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another.   - `SPLIT` - A stock share split.


#### 🔄 Return<a id="🔄-return"></a>

[**PaginatedUniversalActivity**](./lib/Model/PaginatedUniversalActivity.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/activities` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getAccountBalanceHistory`<a id="snaptradeaccountinformationgetaccountbalancehistory"></a>

An experimental endpoint that returns estimated historical total account value for the specified account. Total account value is the sum of the market value of all positions and cash in the account at a given time. This endpoint is experimental, disabled by default, and has a maximum lookback of 1 year.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getAccountBalanceHistory(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**AccountValueHistoryResponse**](./lib/Model/AccountValueHistoryResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/balanceHistory` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getAllAccountPositions`<a id="snaptradeaccountinformationgetallaccountpositions"></a>

Returns a list of all positions in the specified account.

The `results` list can contain multiple instrument types in the same response, including stocks, ADRs, ETFs, mutual funds, closed-end funds, crypto, futures, option positions, and CFD positions. Use the `instrument.kind` discriminator to determine the schema for each position's `instrument`.

`mutualfund` positions may also include `cash_equivalent`. `stock`, `etf`, and `mutualfund` positions may include `tax_lots` when tax lot data is enabled for the account.

If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getAllAccountPositions(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**AllAccountPositionsResponse**](./lib/Model/AllAccountPositionsResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/positions/all` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountBalance`<a id="snaptradeaccountinformationgetuseraccountbalance"></a>

Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).

Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
  - If you do, this endpoint returns real-time data.
  - If you don't, Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.

If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getUserAccountBalance(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**Balance**](./lib/Model/Balance.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/balances` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountDetails`<a id="snaptradeaccountinformationgetuseraccountdetails"></a>

Returns account detail known to SnapTrade for the specified account.

Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
  - If you do, this endpoint returns real-time data.
  - If you don't, Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.

If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getUserAccountDetails(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**Account**](./lib/Model/Account.php)

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

```php
$result = $snaptrade->accountInformation->getUserAccountOrderDetail(
    brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### account_id: `string`<a id="account_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrderRecord**](./lib/Model/AccountOrderRecord.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders/details` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountOrders`<a id="snaptradeaccountinformationgetuseraccountorders"></a>

Returns a list of recent orders in the specified account.

Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
  - If you do, this endpoint returns real-time data.
  - If you don't, Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.

If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getUserAccountOrders(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    state: "all", 
    days: 30
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### state: `string`<a id="state-string"></a>

defaults to \"all\"

##### days: `int`<a id="days-int"></a>

Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90.


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrderRecord**](./lib/Model/AccountOrderRecord.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountRecentOrders`<a id="snaptradeaccountinformationgetuseraccountrecentorders"></a>

A lightweight endpoint that returns the latest page of orders placed in the last 24 hours in the specified account. For most brokerages, the default page size is 100 meaning the endpoint will return a max of 100 orders.
This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders
Differs from /orders in that it is always realtime, and only checks the last 24 hours
By default only returns executed orders, but that can be changed by setting *only_executed* to false



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getUserAccountRecentOrders(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    only_executed: True
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### only_executed: `bool`<a id="only_executed-bool"></a>

Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well


#### 🔄 Return<a id="🔄-return"></a>

[**RecentOrdersResponse**](./lib/Model/RecentOrdersResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/recentOrders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountReturnRates`<a id="snaptradeaccountinformationgetuseraccountreturnrates"></a>

Returns a list of rate of return percents for a given account.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getUserAccountReturnRates(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    timeframes: "ALL,1Y"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### timeframes: `string`<a id="timeframes-string"></a>

Optional comma separated list of rate-of-return timeframes to return. Supported values are `ALL`, `1Y`, `YTD`, `1M`, `1W`, and `1D`. If omitted, SnapTrade returns all six supported timeframes.


#### 🔄 Return<a id="🔄-return"></a>

[**RateOfReturnResponse**](./lib/Model/RateOfReturnResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/returnRates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserHoldings`<a id="snaptradeaccountinformationgetuserholdings"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

**Deprecated.** Use the finer-grained account data endpoints instead: [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getAllAccountPositions), and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders).

This endpoint will return HTTP 410 Gone for all customers that sign up after May 11, 2026.

Returns a list of balances, positions, and recent orders for the specified account.

Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
  - If you do, this endpoint returns real-time data.
  - If you don't, Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.

If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->getUserHoldings(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**AccountHoldingsAccount**](./lib/Model/AccountHoldingsAccount.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.listUserAccounts`<a id="snaptradeaccountinformationlistuseraccounts"></a>

Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.

This endpoint returns Daily data regardless of the customer's plan. Daily data is cached and refreshed once a day, which makes this endpoint fast and well-suited to listing accounts across all of a user's connections in a single call. Exact refresh timing may vary by brokerage. To get real-time data on Pay as you Go / Real-time, use the [list accounts for a connection endpoint](/reference/Connections/Connections_listBrokerageAuthorizationAccounts). Customers on Pay as you Go / Daily can force a refresh with the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->listUserAccounts(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**Account**](./lib/Model/Account.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.updateUserAccount`<a id="snaptradeaccountinformationupdateuseraccount"></a>

Updates various properties of a specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->accountInformation->updateUserAccount(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "accountId_example"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

The ID of the account to update.


#### 🔄 Return<a id="🔄-return"></a>

[**Account**](./lib/Model/Account.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.apiStatus.check`<a id="snaptradeapistatuscheck"></a>

Check whether the API is operational and verify timestamps.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->apiStatus->check();
```


#### 🔄 Return<a id="🔄-return"></a>

[**Status**](./lib/Model/Status.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.deleteSnapTradeUser`<a id="snaptradeauthenticationdeletesnaptradeuser"></a>

Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->authentication->deleteSnapTradeUser(
    user_id: "snaptrade-user-123"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**DeleteUserResponse**](./lib/Model/DeleteUserResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/deleteUser` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.listSnapTradeUsers`<a id="snaptradeauthenticationlistsnaptradeusers"></a>

Returns a list of all registered user IDs. Please note that the response is not currently paginated.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->authentication->listSnapTradeUsers();
```


#### 🔄 Return<a id="🔄-return"></a>

**string[]**

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/listUsers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.loginSnapTradeUser`<a id="snaptradeauthenticationloginsnaptradeuser"></a>

Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.

Please note that the returned URL expires in 5 minutes.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->authentication->loginSnapTradeUser(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    broker: "ALPACA", 
    immediate_redirect: True, 
    custom_redirect: "https://snaptrade.com", 
    reconnect: "8b5f262d-4bb9-365d-888a-202bd3b15fa1", 
    connection_type: "read", 
    show_close_button: True, 
    dark_mode: True, 
    connection_portal_version: "v4"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### broker: `string`<a id="broker-string"></a>

Slug of the brokerage to connect the user to. See [the integrations page](https://support.snaptrade.com/brokerages) for a list of supported brokerages and their slugs.

##### immediateRedirect: `bool`<a id="immediateredirect-bool"></a>

When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### customRedirect: `string`<a id="customredirect-string"></a>

URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### reconnect: `string`<a id="reconnect-string"></a>

The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.

##### connectionType: `string`<a id="connectiontype-string"></a>

Determines connection permissions (default: read) - `read`: Data access only. - `trade`: Data and trading access. - `trade-if-available`: Attempts to establish a trading connection if the brokerage supports it, otherwise falls back to read-only access automatically.

##### showCloseButton: `bool`<a id="showclosebutton-bool"></a>

Controls whether the close (X) button is displayed in the connection portal. When false, you control closing behavior from your app. Defaults to true.

##### darkMode: `bool`<a id="darkmode-bool"></a>

Enable dark mode for the connection portal. Defaults to false.

##### connectionPortalVersion: `string`<a id="connectionportalversion-string"></a>

Sets the connection portal version to render. Currently only `v4` is supported and is the default. All other versions are deprecated and will automatically be set to v4.


#### 🔄 Return<a id="🔄-return"></a>

[**AuthenticationLoginSnapTradeUser200Response**](./lib/Model/AuthenticationLoginSnapTradeUser200Response.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/login` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.registerSnapTradeUser`<a id="snaptradeauthenticationregistersnaptradeuser"></a>

Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system.
Most SnapTrade operations require a user ID and user secret to be passed in as parameters.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->authentication->registerSnapTradeUser(
    user_id: "snaptrade-user-123"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.


#### 🔄 Return<a id="🔄-return"></a>

[**UserIDandSecret**](./lib/Model/UserIDandSecret.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/registerUser` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.resetSnapTradeUserSecret`<a id="snaptradeauthenticationresetsnaptradeusersecret"></a>

Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->authentication->resetSnapTradeUserSecret(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `string`<a id="userid-string"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

##### userSecret: `string`<a id="usersecret-string"></a>

SnapTrade User Secret. This is a randomly generated string and should be stored securely. If compromised, please rotate it via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret).


#### 🔄 Return<a id="🔄-return"></a>

[**UserIDandSecret**](./lib/Model/UserIDandSecret.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/resetUserSecret` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.deleteConnection`<a id="snaptradeconnectionsdeleteconnection"></a>

Deletes the SnapTrade connection specified by the ID. This will also remove the accounts and holdings data associated with the connection from SnapTrade. This action is irreversible. This endpoint is asynchronous, a 200 response indicates that a task has been queued to delete the connection. Listen for the [`CONNECTION_DELETED` webhook](https://docs.snaptrade.com/docs/webhooks#webhooks-connection_deleted) webhook to know when the deletion has been completed and the data has been removed.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->deleteConnection(
    connection_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connection_id: `string`<a id="connection_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**DeleteConnectionConfirmation**](./lib/Model/DeleteConnectionConfirmation.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/connection/{connectionId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.detailBrokerageAuthorization`<a id="snaptradeconnectionsdetailbrokerageauthorization"></a>

Returns a single connection for the specified ID.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->detailBrokerageAuthorization(
    authorization_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `string`<a id="authorization_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**BrokerageAuthorization**](./lib/Model/BrokerageAuthorization.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.disableBrokerageAuthorization`<a id="snaptradeconnectionsdisablebrokerageauthorization"></a>

Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections.
Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.

This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->disableBrokerageAuthorization(
    authorization_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `string`<a id="authorization_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**BrokerageAuthorizationDisabledConfirmation**](./lib/Model/BrokerageAuthorizationDisabledConfirmation.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/disable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.listBrokerageAuthorizationAccounts`<a id="snaptradeconnectionslistbrokerageauthorizationaccounts"></a>

Returns all brokerage accounts that belong to the specified connection for the authenticated user.

On Pay as you Go / Real-time, this endpoint refreshes each account's opening date, funding date, and total value live from the brokerage on each call.

On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).

Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->listBrokerageAuthorizationAccounts(
    authorization_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `string`<a id="authorization_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**Account**](./lib/Model/Account.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/accounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.listBrokerageAuthorizations`<a id="snaptradeconnectionslistbrokerageauthorizations"></a>

Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.

A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.

SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->listBrokerageAuthorizations(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**BrokerageAuthorization**](./lib/Model/BrokerageAuthorization.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.refreshBrokerageAuthorization`<a id="snaptradeconnectionsrefreshbrokerageauthorization"></a>

Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.
This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.

**Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**
**Please note this endpoint is disabled for Real-time plans (Personal and Pay as you go) unless the connection is delayed. Real-time connections do not benefit from this feature since data is refreshed when calls are made. Refer to the `data_freshness_mode` field on a connection to determine this.**



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->refreshBrokerageAuthorization(
    authorization_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `string`<a id="authorization_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**BrokerageAuthorizationRefreshConfirmation**](./lib/Model/BrokerageAuthorizationRefreshConfirmation.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/refresh` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.returnRates`<a id="snaptradeconnectionsreturnrates"></a>

Returns a list of rate of return percents for a given connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->returnRates(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    authorization_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    timeframes: "ALL,1Y"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### authorization_id: `string`<a id="authorization_id-string"></a>

##### timeframes: `string`<a id="timeframes-string"></a>

Optional comma separated list of rate-of-return timeframes to return. Supported values are `ALL`, `1Y`, `YTD`, `1M`, `1W`, and `1D`. If omitted, SnapTrade returns all six supported timeframes.


#### 🔄 Return<a id="🔄-return"></a>

[**RateOfReturnResponse**](./lib/Model/RateOfReturnResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/returnRates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.syncBrokerageAuthorizationTransactions`<a id="snaptradeconnectionssyncbrokerageauthorizationtransactions"></a>

Trigger a transactions sync for all accounts under this connection. Updates will be queued asynchronously. Transactions are not updated intra-day, but calling this endpoint can ensure that the previous day's transactions have been synced. For more information on sync behaviour, see: https://docs.snaptrade.com/docs/syncing



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->connections->syncBrokerageAuthorizationTransactions(
    authorization_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `string`<a id="authorization_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**BrokerageAuthorizationTransactionsSyncConfirmation**](./lib/Model/BrokerageAuthorizationTransactionsSyncConfirmation.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/transactions/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.experimentalEndpoints.addSubscription`<a id="snaptradeexperimentalendpointsaddsubscription"></a>

Adds or restores a Trade Detection subscription for a connected brokerage account.
This endpoint requires `userId` and `userSecret` in addition to the partner signature.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->experimentalEndpoints->addSubscription(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    check_interval_seconds: 300, 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### check_interval_seconds: `int`<a id="check_interval_seconds-int"></a>

How often the subscribed account should be checked for new trades. Must match an active Trade Detection plan.

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**TradeDetectionSubscription**](./lib/Model/TradeDetectionSubscription.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/tradeDetection/subscriptions` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.experimentalEndpoints.cancelSubscription`<a id="snaptradeexperimentalendpointscancelsubscription"></a>

Cancels a Trade Detection subscription for a connected brokerage account.
This endpoint requires partner signature authentication only and does not require `userId` or `userSecret`.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->experimentalEndpoints->cancelSubscription(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.


#### 🔄 Return<a id="🔄-return"></a>

[**TradeDetectionCancelSubscriptionResponse**](./lib/Model/TradeDetectionCancelSubscriptionResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/tradeDetection/subscriptions/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.experimentalEndpoints.getUserAccountOrderDetailV2`<a id="snaptradeexperimentalendpointsgetuseraccountorderdetailv2"></a>

Returns the detail of a single order using the brokerage order ID provided as a path parameter.

The V2 order response format includes all legs of the order in the `legs` list field.
If the order is single legged, `legs` will be a list of one leg.

This endpoint is always realtime and does not rely on cached data.

This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->experimentalEndpoints->getUserAccountOrderDetailV2(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrderRecordV2**](./lib/Model/AccountOrderRecordV2.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders/details/v2/{brokerageOrderId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.experimentalEndpoints.getUserAccountOrdersV2`<a id="snaptradeexperimentalendpointsgetuseraccountordersv2"></a>

Returns a list of recent orders in the specified account.

The V2 order response format will include all legs of each order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.

If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->experimentalEndpoints->getUserAccountOrdersV2(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    state: "all", 
    days: 30
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### state: `string`<a id="state-string"></a>

defaults to \"all\"

##### days: `int`<a id="days-int"></a>

Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90.


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrdersV2Response**](./lib/Model/AccountOrdersV2Response.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders/v2` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.experimentalEndpoints.getUserAccountRecentOrdersV2`<a id="snaptradeexperimentalendpointsgetuseraccountrecentordersv2"></a>

A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format.
This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders.
Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days.
By default only returns executed orders, but that can be changed by setting *only_executed* to false.
**Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->experimentalEndpoints->getUserAccountRecentOrdersV2(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    only_executed: True
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### only_executed: `bool`<a id="only_executed-bool"></a>

Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrdersV2Response**](./lib/Model/AccountOrdersV2Response.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/recentOrders/v2` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.experimentalEndpoints.listConnectionAccounts`<a id="snaptradeexperimentalendpointslistconnectionaccounts"></a>

Experimental and subject to change without notice.

Returns the accounts that belong to the specified connection for the authenticated user, using the `kind`-discriminated account shape.

Each item in the response carries a `kind` field (currently only `investment` is implemented) that determines which additional fields are present -- see the `ConnectionAccount` schema.

On Pay as you Go / Real-time, this endpoint refreshes each account's opening date, funding date, and market value live from the brokerage on each call.

On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).

Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->experimentalEndpoints->listConnectionAccounts(
    authorization_id: "87b24961-b51e-4db8-9226-f198f6518a89", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorization_id: `string`<a id="authorization_id-string"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**ConnectionAccount**](./lib/Model/ConnectionAccount.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/connections/{authorizationId}/accounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.experimentalEndpoints.listSubscriptions`<a id="snaptradeexperimentalendpointslistsubscriptions"></a>

Returns active Trade Detection subscriptions for your Client ID. Cancelled subscriptions are not returned.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->experimentalEndpoints->listSubscriptions();
```


#### 🔄 Return<a id="🔄-return"></a>

[**TradeDetectionSubscription**](./lib/Model/TradeDetectionSubscription.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/tradeDetection/subscriptions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getPartnerInfo`<a id="snaptradereferencedatagetpartnerinfo"></a>

Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->getPartnerInfo();
```


#### 🔄 Return<a id="🔄-return"></a>

[**PartnerData**](./lib/Model/PartnerData.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/partners` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getStockExchanges`<a id="snaptradereferencedatagetstockexchanges"></a>

Returns a list of all supported Exchanges.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->getStockExchanges();
```


#### 🔄 Return<a id="🔄-return"></a>

[**Exchange**](./lib/Model/Exchange.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/exchanges` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbols`<a id="snaptradereferencedatagetsymbols"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->getSymbols(
    substring: "AAPL"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### substring: `string`<a id="substring-string"></a>

The search query for symbols.


#### 🔄 Return<a id="🔄-return"></a>

[**UniversalSymbol**](./lib/Model/UniversalSymbol.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbolsByTicker`<a id="snaptradereferencedatagetsymbolsbyticker"></a>

Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on "Yahoo Finance Market Coverage and Data Delays"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->getSymbolsByTicker(
    query: "query_example"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `string`<a id="query-string"></a>

The ticker or Universal Symbol ID to look up the symbol with.


#### 🔄 Return<a id="🔄-return"></a>

[**UniversalSymbol**](./lib/Model/UniversalSymbol.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols/{query}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerageAuthorizationType`<a id="snaptradereferencedatalistallbrokerageauthorizationtype"></a>

Returns a list of all defined Brokerage authorization Type objects.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->listAllBrokerageAuthorizationType(
    brokerage: "QUESTRADE,ALPACA"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage: `string`<a id="brokerage-string"></a>

Comma separated value of brokerage slugs


#### 🔄 Return<a id="🔄-return"></a>

[**BrokerageAuthorizationTypeReadOnly**](./lib/Model/BrokerageAuthorizationTypeReadOnly.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerageAuthorizationTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerageInstruments`<a id="snaptradereferencedatalistallbrokerageinstruments"></a>

Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don't will return an empty list.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->listAllBrokerageInstruments(
    slug: "QUESTRADE"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### slug: `string`<a id="slug-string"></a>

A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.


#### 🔄 Return<a id="🔄-return"></a>

[**BrokerageInstrumentsResponse**](./lib/Model/BrokerageInstrumentsResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerages/{slug}/instruments` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerages`<a id="snaptradereferencedatalistallbrokerages"></a>

Returns a list of all defined Brokerage objects.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->listAllBrokerages();
```


#### 🔄 Return<a id="🔄-return"></a>

[**Brokerage**](./lib/Model/Brokerage.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerages` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.symbolSearchUserAccount`<a id="snaptradereferencedatasymbolsearchuseraccount"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.

The search results are further limited to the symbols supported by the brokerage for which the account is under.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->referenceData->symbolSearchUserAccount(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    substring: "AAPL"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### substring: `string`<a id="substring-string"></a>

The search query for symbols.


#### 🔄 Return<a id="🔄-return"></a>

[**UniversalSymbol**](./lib/Model/UniversalSymbol.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.cancelOrder`<a id="snaptradetradingcancelorder"></a>

Cancels an order in the specified account. Accepts order IDs for all asset types.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->cancelOrder(
    brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**CancelOrderResponse**](./lib/Model/CancelOrderResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getCryptocurrencyPairQuote`<a id="snaptradetradinggetcryptocurrencypairquote"></a>

Gets a quote for the specified account.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->getCryptocurrencyPairQuote(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    instrument_symbol: "BTC-USD"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### instrument_symbol: `string`<a id="instrument_symbol-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**CryptocurrencyPairQuote**](./lib/Model/CryptocurrencyPairQuote.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getOptionImpact`<a id="snaptradetradinggetoptionimpact"></a>

Simulates an option order with up to 4 legs and returns the estimated cost and transaction fees without placing it.
Only supported for certain enabled brokerages. Please refer to the [brokerage trading support page](https://support.snaptrade.com/brokerages) for more information on which brokerages support this endpoint.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->getOptionImpact(
    order_type: "MARKET", 
    time_in_force: "Day", 
    legs: [
        [
            "instrument" => [
                "symbol" => "PBI   250718C00006000",
                "instrument_type" => "OPTION",
            ],
            "action" => "BUY_TO_OPEN",
            "units" => 1,
        ]
    ], 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    limit_price: "", 
    stop_price: "", 
    price_effect: "DEBIT"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### legs: [`MlegLeg`](./lib/Model/MlegLeg.php)[]<a id="legs-mlegleglibmodelmleglegphp"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### limit_price: `float`<a id="limit_price-float"></a>

The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT`.

##### stop_price: `float`<a id="stop_price-float"></a>

The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`.

##### price_effect: [`MlegPriceEffectStrict`](./lib/Model/MlegPriceEffectStrict.php)<a id="price_effect-mlegpriceeffectstrictlibmodelmlegpriceeffectstrictphp"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**OptionImpact**](./lib/Model/OptionImpact.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/options/impact` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getOrderImpact`<a id="snaptradetradinggetorderimpact"></a>

Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->getOrderImpact(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    action: "BUY", 
    universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3", 
    order_type: "Market", 
    time_in_force: "Day", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    price: 31.33, 
    stop: 31.33, 
    units: 10.5, 
    notional_value: None
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action:<a id="action"></a>

##### universal_symbol_id: `string`<a id="universal_symbol_id-string"></a>

Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### price: `float`<a id="price-float"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `float`<a id="stop-float"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`float`](./lib/Model/float.php)<a id="units-floatlibmodelfloatphp"></a>

##### notional_value: [`ManualTradeFormNotionalValue`](./lib/Model/ManualTradeFormNotionalValue.php)<a id="notional_value-manualtradeformnotionalvaluelibmodelmanualtradeformnotionalvaluephp"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**ManualTradeAndImpact**](./lib/Model/ManualTradeAndImpact.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/impact` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getUserAccountOptionQuotes`<a id="snaptradetradinggetuseraccountoptionquotes"></a>

Returns a quote for a single option contract. The option contract is specified using in the 21 character OCC format. For example `AAPL  251114C00240000` represents a call option on AAPL expiring on 2025-11-14 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format)
**Note:** These are derived values and are not suitable for trading purposes.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->getUserAccountOptionQuotes(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    symbol: "AAPL  251219C00150000"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### symbol: `string`<a id="symbol-string"></a>

The OCC-formatted option symbol.


#### 🔄 Return<a id="🔄-return"></a>

[**OptionQuote**](./lib/Model/OptionQuote.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/quotes/options` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getUserAccountQuotes`<a id="snaptradetradinggetuseraccountquotes"></a>

Returns a maximum of 10 quotes from the brokerage for the specified symbols and account.

The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint.

**This endpoint is not a substitute for a market data provider. Frequent polling of this endpoint may result in the disabling of your keys**

This endpoint does not work for options quotes.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->getUserAccountQuotes(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    symbols: "symbols_example", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    use_ticker: True
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### symbols: `string`<a id="symbols-string"></a>

List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator. Maximum of 10 values allowed

##### account_id: `string`<a id="account_id-string"></a>

##### use_ticker: `bool`<a id="use_ticker-bool"></a>

Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.


#### 🔄 Return<a id="🔄-return"></a>

[**SymbolsQuotesInner**](./lib/Model/SymbolsQuotesInner.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/quotes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeComplexOrder`<a id="snaptradetradingplacecomplexorder"></a>

Places a complex conditional order (OCO, OTO, or OTOCO).
Only supported on certain brokerages.
Please refer to the [brokerage trading support page](https://support.snaptrade.com/brokerages) for details on which brokerages support complex orders and which types they support.

- **OCO** (One Cancels the Other): Two peer orders; when one fills the other is cancelled.
- **OTO** (One Triggers the Other): A trigger order that, when filled, activates a conditional order.
- **OTOCO** (One Triggers a One Cancels the Other): A trigger order that, when filled, activates an OCO pair of two peer orders.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->placeComplexOrder(
    type: "OTO", 
    orders: [
        [
            "order_role" => "TRIGGER",
            "action" => "BUY",
            "instrument" => [
                "symbol" => "AAPL",
                "type" => "EQUITY",
            ],
            "order_type" => "Market",
            "units" => 10.5,
            "time_in_force" => "Day",
            "price" => 31.33,
            "stop" => 29.5,
        ]
    ], 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    client_order_id: "550e8400-e29b-41d4-a716-446655440000"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### type: `string`<a id="type-string"></a>

The complex order type. - `OCO`: One Cancels the Other — two peer orders. - `OTO`: One Triggers the Other — a trigger order and a conditional order. - `OTOCO`: One Triggers a One Cancels the Other — a trigger order and two peer orders.

##### orders: [`ComplexOrderLeg`](./lib/Model/ComplexOrderLeg.php)[]<a id="orders-complexorderleglibmodelcomplexorderlegphp"></a>

The orders that make up the complex order. Required counts and roles per type: - `OCO`: exactly 2 orders, both `PEER` - `OTO`: exactly 2 orders, one `TRIGGER` and one `CONDITIONAL` - `OTOCO`: exactly 3 orders, one `TRIGGER` and two `PEER`

##### account_id: `string`<a id="account_id-string"></a>

The ID of the account to execute the trade on.

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### client_order_id: [`string`](./lib/Model/string.php)<a id="client_order_id-stringlibmodelstringphp"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**ComplexOrderResponse**](./lib/Model/ComplexOrderResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/complex` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeCryptoOrder`<a id="snaptradetradingplacecryptoorder"></a>

Places an order in the specified account.
This endpoint does not compute the impact to the account balance from the order before submitting the order.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->placeCryptoOrder(
    instrument: [
        "symbol" => "BTC",
        "type" => "CRYPTOCURRENCY",
    ], 
    side: "BUY", 
    type: "MARKET", 
    time_in_force: "GTC", 
    amount: "123.45", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    limit_price: "123.45", 
    stop_price: "123.45", 
    post_only: False, 
    expiration_date: "2024-01-01T00:00:00Z"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### instrument: [`CryptoTradingInstrument`](./lib/Model/CryptoTradingInstrument.php)<a id="instrument-cryptotradinginstrumentlibmodelcryptotradinginstrumentphp"></a>

##### side:<a id="side"></a>

##### type: `string`<a id="type-string"></a>

The type of order to place.

##### time_in_force: `string`<a id="time_in_force-string"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date.

##### amount: `float`<a id="amount-float"></a>

The amount of the base currency to buy or sell.

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### limit_price: `float`<a id="limit_price-float"></a>

The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT` or `TAKE_PROFIT_LIMIT`.

##### stop_price: `float`<a id="stop_price-float"></a>

The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`, `TAKE_PROFIT_MARKET` or `TAKE_PROFIT_LIMIT`.

##### post_only: `bool`<a id="post_only-bool"></a>

Valid and required only for order type `LIMIT`. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.

##### expiration_date: `\DateTime`<a id="expiration_date-datetime"></a>

The expiration date of the order. Required if the time_in_force is `GTD`.


#### 🔄 Return<a id="🔄-return"></a>

[**OrderUpdatedResponse**](./lib/Model/OrderUpdatedResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeForceOrder`<a id="snaptradetradingplaceforceorder"></a>

Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.

This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->placeForceOrder(
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    action: "BUY", 
    order_type: "Market", 
    time_in_force: "Day", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    universal_symbol_id: "2bcd7cc3-e922-4976-bce1-9858296801c3", 
    symbol: "AAPL", 
    trading_session: "REGULAR", 
    expiry_date: "2026-08-21T23:27:55.027Z", 
    price: 31.33, 
    stop: 31.33, 
    units: 10.5, 
    notional_value: None, 
    client_order_id: "550e8400-e29b-41d4-a716-446655440000"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `string`<a id="account_id-string"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action:<a id="action"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### universal_symbol_id: [`string`](./lib/Model/string.php)<a id="universal_symbol_id-stringlibmodelstringphp"></a>

The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.

##### symbol: `string`<a id="symbol-string"></a>

The security's trading ticker symbol. If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.

##### trading_session:<a id="trading_session"></a>

##### expiry_date: `\DateTime`<a id="expiry_date-datetime"></a>

Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the order expires. Required when `time_in_force` is `GTD`. Include a timezone offset or `Z` for UTC; if no timezone is provided, UTC is assumed. GTD orders are only available on certain brokerages. Visit https://support.snaptrade.com/brokerages for brokerage support.

##### price: `float`<a id="price-float"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `float`<a id="stop-float"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`float`](./lib/Model/float.php)<a id="units-floatlibmodelfloatphp"></a>

For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).

##### notional_value: [`ManualTradeFormNotionalValue`](./lib/Model/ManualTradeFormNotionalValue.php)<a id="notional_value-manualtradeformnotionalvaluelibmodelmanualtradeformnotionalvaluephp"></a>

##### client_order_id: [`string`](./lib/Model/string.php)<a id="client_order_id-stringlibmodelstringphp"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrderRecord**](./lib/Model/AccountOrderRecord.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/place` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeMlegOrder`<a id="snaptradetradingplacemlegorder"></a>

Places a multi-leg option order. Only supported on certain option trading brokerages. https://support.snaptrade.com/brokerages has information on brokerage trading support



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->placeMlegOrder(
    order_type: "MARKET", 
    time_in_force: "Day", 
    legs: [
        [
            "instrument" => [
                "symbol" => "PBI   250718C00006000",
                "instrument_type" => "OPTION",
            ],
            "action" => "BUY_TO_OPEN",
            "units" => 1,
        ]
    ], 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    limit_price: "", 
    stop_price: "", 
    price_effect: "DEBIT"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### legs: [`MlegLeg`](./lib/Model/MlegLeg.php)[]<a id="legs-mlegleglibmodelmleglegphp"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### limit_price: `float`<a id="limit_price-float"></a>

The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT`.

##### stop_price: `float`<a id="stop_price-float"></a>

The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`.

##### price_effect: [`MlegPriceEffectStrict`](./lib/Model/MlegPriceEffectStrict.php)<a id="price_effect-mlegpriceeffectstrictlibmodelmlegpriceeffectstrictphp"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**MlegOrderResponse**](./lib/Model/MlegOrderResponse.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/options` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeOrder`<a id="snaptradetradingplaceorder"></a>

Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->placeOrder(
    trade_id: "139e307a-82f7-4402-b39e-4da7baa87758", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    wait_to_confirm: True
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### trade_id: `string`<a id="trade_id-string"></a>

Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### wait_to_confirm: `bool`<a id="wait_to_confirm-bool"></a>

Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrderRecord**](./lib/Model/AccountOrderRecord.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/{tradeId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.previewCryptoOrder`<a id="snaptradetradingpreviewcryptoorder"></a>

Previews an order using the specified account.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->previewCryptoOrder(
    instrument: [
        "symbol" => "BTC",
        "type" => "CRYPTOCURRENCY",
    ], 
    side: "BUY", 
    type: "MARKET", 
    time_in_force: "GTC", 
    amount: "123.45", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    limit_price: "123.45", 
    stop_price: "123.45", 
    post_only: False, 
    expiration_date: "2024-01-01T00:00:00Z"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### instrument: [`CryptoTradingInstrument`](./lib/Model/CryptoTradingInstrument.php)<a id="instrument-cryptotradinginstrumentlibmodelcryptotradinginstrumentphp"></a>

##### side:<a id="side"></a>

##### type: `string`<a id="type-string"></a>

The type of order to place.

##### time_in_force: `string`<a id="time_in_force-string"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date.

##### amount: `float`<a id="amount-float"></a>

The amount of the base currency to buy or sell.

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### limit_price: `float`<a id="limit_price-float"></a>

The limit price. Required if the order type is `LIMIT`, `STOP_LOSS_LIMIT` or `TAKE_PROFIT_LIMIT`.

##### stop_price: `float`<a id="stop_price-float"></a>

The stop price. Required if the order type is `STOP_LOSS_MARKET`, `STOP_LOSS_LIMIT`, `TAKE_PROFIT_MARKET` or `TAKE_PROFIT_LIMIT`.

##### post_only: `bool`<a id="post_only-bool"></a>

Valid and required only for order type `LIMIT`. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.

##### expiration_date: `\DateTime`<a id="expiration_date-datetime"></a>

The expiration date of the order. Required if the time_in_force is `GTD`.


#### 🔄 Return<a id="🔄-return"></a>

[**CryptoOrderPreview**](./lib/Model/CryptoOrderPreview.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto/preview` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.replaceOrder`<a id="snaptradetradingreplaceorder"></a>

Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling
the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one
returned in the response going forward. Only supported on some brokerages



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->replaceOrder(
    brokerage_order_id: "66a033fa-da74-4fcf-b527-feefdec9257e", 
    action: "BUY", 
    order_type: "Market", 
    time_in_force: "Day", 
    account_id: "2bcd7cc3-e922-4976-bce1-9858296801c3", 
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    price: 31.33, 
    symbol: "AAPL", 
    stop: 31.33, 
    units: 10.5
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `string`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### action:<a id="action"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### account_id: `string`<a id="account_id-string"></a>

The ID of the account to execute the trade on.

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### price: `float`<a id="price-float"></a>

The limit price for `Limit` and `StopLimit` orders.

##### symbol: `string`<a id="symbol-string"></a>

The security's trading ticker symbol

##### stop: `float`<a id="stop-float"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`float`](./lib/Model/float.php)<a id="units-floatlibmodelfloatphp"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**AccountOrderRecord**](./lib/Model/AccountOrderRecord.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/replace` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.searchCryptocurrencyPairInstruments`<a id="snaptradetradingsearchcryptocurrencypairinstruments"></a>

Searches cryptocurrency pairs instruments accessible to the specified account. Both `base` and `quote` are optional. Omit both for a full list of cryptocurrency pairs.



#### 🛠️ Usage<a id="🛠️-usage"></a>

```php
$result = $snaptrade->trading->searchCryptocurrencyPairInstruments(
    user_id: "snaptrade-user-123", 
    user_secret: "adf2aa34-8219-40f7-a6b3-60156985cc61", 
    account_id: "917c8734-8470-4a3e-a18f-57c3f2ee6631", 
    base: "BTC", 
    quote: "USD"
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### user_id: `string`<a id="user_id-string"></a>

##### user_secret: `string`<a id="user_secret-string"></a>

##### account_id: `string`<a id="account_id-string"></a>

##### base: `string`<a id="base-string"></a>

##### quote: `string`<a id="quote-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[**TradingSearchCryptocurrencyPairInstruments200Response**](./lib/Model/TradingSearchCryptocurrencyPairInstruments200Response.php)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/instruments/cryptocurrencyPairs` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This PHP package is automatically generated by [Konfig](https://konfigthis.com)
