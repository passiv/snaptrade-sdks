<div align="center">

[![Visit SnapTrade](https://raw.githubusercontent.com/passiv/snaptrade-sdks/HEAD/sdks/java/header.png)](https://snaptrade.com)

# [SnapTrade](https://snaptrade.com)<a id="snaptrade"></a>

Connect brokerage accounts to your app for live positions and trading

[![Maven Central](https://img.shields.io/badge/Maven%20Central-v5.0.86-blue)](https://central.sonatype.com/artifact/com.konfigthis/snaptrade-java-sdk/5.0.86)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Requirements](#requirements)
- [Installation](#installation)
  * [Maven users](#maven-users)
  * [Gradle users](#gradle-users)
  * [Android users](#android-users)
  * [Others](#others)
- [Getting Started](#getting-started)
- [Reference](#reference)
  * [`snaptrade.accountInformation.getAccountActivities`](#snaptradeaccountinformationgetaccountactivities)
  * [`snaptrade.accountInformation.getAllUserHoldings`](#snaptradeaccountinformationgetalluserholdings)
  * [`snaptrade.accountInformation.getUserAccountBalance`](#snaptradeaccountinformationgetuseraccountbalance)
  * [`snaptrade.accountInformation.getUserAccountDetails`](#snaptradeaccountinformationgetuseraccountdetails)
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
  * [`snaptrade.cryptoSpotTrading.cryptoSpotCancelOrder`](#snaptradecryptospottradingcryptospotcancelorder)
  * [`snaptrade.cryptoSpotTrading.cryptoSpotPlaceOrder`](#snaptradecryptospottradingcryptospotplaceorder)
  * [`snaptrade.cryptoSpotTrading.cryptoSpotPreviewOrder`](#snaptradecryptospottradingcryptospotprevieworder)
  * [`snaptrade.cryptoSpotTrading.cryptoSpotQuote`](#snaptradecryptospottradingcryptospotquote)
  * [`snaptrade.cryptoSpotTrading.cryptoSpotSymbols`](#snaptradecryptospottradingcryptospotsymbols)
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
  * [`snaptrade.trading.placeBracketOrder`](#snaptradetradingplacebracketorder)
  * [`snaptrade.trading.placeForceOrder`](#snaptradetradingplaceforceorder)
  * [`snaptrade.trading.placeOrder`](#snaptradetradingplaceorder)
  * [`snaptrade.trading.replaceOrder`](#snaptradetradingreplaceorder)
  * [`snaptrade.transactionsAndReporting.getActivities`](#snaptradetransactionsandreportinggetactivities)
  * [`snaptrade.transactionsAndReporting.getReportingCustomRange`](#snaptradetransactionsandreportinggetreportingcustomrange)

<!-- tocstop -->

## Requirements<a id="requirements"></a>

Building the API client library requires:

1. Java 1.8+
2. Maven (3.8.3+)/Gradle (7.2+)

If you are adding this library to an Android Application or Library:

3. Android 8.0+ (API Level 26+)

## Installation<a id="installation"></a>

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

Refer to the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html) for more information.

### Maven users<a id="maven-users"></a>

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>com.konfigthis</groupId>
  <artifactId>snaptrade-java-sdk</artifactId>
  <version>5.0.86</version>
  <scope>compile</scope>
</dependency>
```

### Gradle users<a id="gradle-users"></a>

Add this dependency to your `build.gradle`:

```groovy
// build.gradle
repositories {
  mavenCentral()
}

dependencies {
   implementation "com.konfigthis:snaptrade-java-sdk:5.0.86"
}
```

### Android users<a id="android-users"></a>

Make sure your `build.gradle` file as a `minSdk` version of at least 26:
```groovy
// build.gradle
android {
    defaultConfig {
        minSdk 26
    }
}
```

Also make sure your library or application has internet permissions in your `AndroidManifest.xml`:

```xml
<!--AndroidManifest.xml-->
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools">
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
```

### Others<a id="others"></a>

At first generate the JAR by executing:

```shell
mvn clean package
```

Then manually install the following JARs:

* `target/snaptrade-java-sdk-5.0.86.jar`
* `target/lib/*.jar`

## Getting Started<a id="getting-started"></a>

Please follow the [installation](#installation) instruction and execute the following Java code:

```java
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.model.*;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {

        public static void main(String[] args) {
                // 1) Initialize default client with clientID and consumerKey
                Configuration configuration = new Configuration();
                configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
                configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
                Snaptrade snaptrade = new Snaptrade(configuration);

                // 2) Check that the client is able to make a request to the API server
                Status status = snaptrade.apiStatus.check().execute();
                System.out.printf("SnapTrade is online: %s\n", status.getOnline());

                // 3) Create a new user on SnapTrade
                // The userId should be provided by you and refer to permanent value such as a
                // database row ID
                UUID userId = UUID.randomUUID();
                UserIDandSecret userIDandSecret = snaptrade.authentication.registerSnapTradeUser()
                                .userId(userId.toString()).execute();

                new SnapTradeRegisterUserRequestBody().userId(userId.toString());
                // Note: A user secret is only generated once. It's required to access resources
                // for certain endpoints
                System.out.printf("userID: %s, userSecret: %s\n", userIDandSecret.getUserId(),
                                userIDandSecret.getUserSecret());

                // 4) Get a redirect URI. Users will need this to connect their brokerage to the
                // SnapTrade server
                Map response = (Map) snaptrade.authentication
                                .loginSnapTradeUser(userIDandSecret.getUserId(),
                                                userIDandSecret.getUserSecret())
                                .execute();
                System.out.println(response.get("redirectURI"));

                // 5) Make a portfolio group and query
                List<PortfolioGroup> portfolioGroupsFromPost = snaptrade.portfolioManagement.create(
                                userIDandSecret.getUserId(), userIDandSecret.getUserSecret()).id(UUID.randomUUID())
                                .name("MyPortfolio").execute();
                System.out.println(portfolioGroupsFromPost);
                List<PortfolioGroup> portfolioGroups = snaptrade.portfolioManagement.list(userIDandSecret.getUserId(),
                                userIDandSecret.getUserSecret()).execute();
                System.out.println(portfolioGroups);

                // 7) Query holdings and available brokerages
                List<AccountHoldings> holdings = snaptrade.accountInformation
                                .getAllUserHoldings(userIDandSecret.getUserId(),
                                                userIDandSecret.getUserSecret())
                                .execute();
                System.out.println(holdings);
                List<Account> accounts = snaptrade.accountInformation.listUserAccounts(userIDandSecret.getUserId(),
                                userIDandSecret.getUserSecret()).execute();
                System.out.println(accounts);
                List<Brokerage> brokerages = snaptrade.referenceData.listAllBrokerages().execute();
                System.out.println(brokerages);

                // 8) Deleting a user
                DeleteUserResponse deleteUserResponse = snaptrade.authentication
                                .deleteSnapTradeUser(userIDandSecret.getUserId()).execute();
                System.out.println(deleteUserResponse);
        }
}

```
## Reference<a id="reference"></a>


### `snaptrade.accountInformation.getAccountActivities`<a id="snaptradeaccountinformationgetaccountactivities"></a>

Returns all historical transactions for the specified account.

This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.

Transaction are returned in reverse chronological order, using the `trade_date` field.

The data returned here is always cached and refreshed once a day.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
PaginatedUniversalActivity result = client
        .accountInformation
        .getAccountActivities(accountId, userId, userSecret)
        .startDate(startDate)
        .endDate(endDate)
        .offset(offset)
        .limit(limit)
        .type(type)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### startDate: `LocalDate`<a id="startdate-localdate"></a>

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### endDate: `LocalDate`<a id="enddate-localdate"></a>

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### offset: `Integer`<a id="offset-integer"></a>

An integer that specifies the starting point of the paginated results. Default is 0.

##### limit: `Integer`<a id="limit-integer"></a>

An integer that specifies the maximum number of transactions to return. Default of 1000.

##### type: `String`<a id="type-string"></a>

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 

#### 🔄 Return<a id="🔄-return"></a>

[PaginatedUniversalActivity](./src/main/java/com/konfigthis/client/model/PaginatedUniversalActivity.java)

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

```java
List<AccountHoldings> result = client
        .accountInformation
        .getAllUserHoldings(userId, userSecret)
        .brokerageAuthorizations(brokerageAuthorizations)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### brokerageAuthorizations: `UUID`<a id="brokerageauthorizations-uuid"></a>

Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).

#### 🔄 Return<a id="🔄-return"></a>

[AccountHoldings](./src/main/java/com/konfigthis/client/model/AccountHoldings.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountBalance`<a id="snaptradeaccountinformationgetuseraccountbalance"></a>

Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Balance> result = client
        .accountInformation
        .getUserAccountBalance(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Balance](./src/main/java/com/konfigthis/client/model/Balance.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/balances` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountDetails`<a id="snaptradeaccountinformationgetuseraccountdetails"></a>

Returns account detail known to SnapTrade for the specified account.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Account result = client
        .accountInformation
        .getUserAccountDetails(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Account](./src/main/java/com/konfigthis/client/model/Account.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountOrders`<a id="snaptradeaccountinformationgetuseraccountorders"></a>

Returns a list of recent orders in the specified account.

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<AccountOrderRecord> result = client
        .accountInformation
        .getUserAccountOrders(userId, userSecret, accountId)
        .state(state)
        .days(days)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### state: `String`<a id="state-string"></a>

defaults value is set to \"all\"

##### days: `Integer`<a id="days-integer"></a>

Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountPositions`<a id="snaptradeaccountinformationgetuseraccountpositions"></a>

Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Position> result = client
        .accountInformation
        .getUserAccountPositions(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Position](./src/main/java/com/konfigthis/client/model/Position.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/positions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountRecentOrders`<a id="snaptradeaccountinformationgetuseraccountrecentorders"></a>

A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account.
This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders
Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days
By default only returns executed orders, but that can be changed by setting *only_executed* to false
**Please contact support for access as this endpoint is not enabled by default.**


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
RecentOrdersResponse result = client
        .accountInformation
        .getUserAccountRecentOrders(userId, userSecret, accountId)
        .onlyExecuted(onlyExecuted)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### onlyExecuted: `Boolean`<a id="onlyexecuted-boolean"></a>

Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well

#### 🔄 Return<a id="🔄-return"></a>

[RecentOrdersResponse](./src/main/java/com/konfigthis/client/model/RecentOrdersResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/recentOrders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountReturnRates`<a id="snaptradeaccountinformationgetuseraccountreturnrates"></a>

Returns a list of rate of return percents for a given account. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
RateOfReturnResponse result = client
        .accountInformation
        .getUserAccountReturnRates(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

#### 🔄 Return<a id="🔄-return"></a>

[RateOfReturnResponse](./src/main/java/com/konfigthis/client/model/RateOfReturnResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/returnRates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserHoldings`<a id="snaptradeaccountinformationgetuserholdings"></a>

Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
AccountHoldingsAccount result = client
        .accountInformation
        .getUserHoldings(accountId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[AccountHoldingsAccount](./src/main/java/com/konfigthis/client/model/AccountHoldingsAccount.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.listUserAccounts`<a id="snaptradeaccountinformationlistuseraccounts"></a>

Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Account> result = client
        .accountInformation
        .listUserAccounts(userId, userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[Account](./src/main/java/com/konfigthis/client/model/Account.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.updateUserAccount`<a id="snaptradeaccountinformationupdateuseraccount"></a>

Updates various properties of a specified account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Account> result = client
        .accountInformation
        .updateUserAccount(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

The ID of the account to update.

#### 🔄 Return<a id="🔄-return"></a>

[Account](./src/main/java/com/konfigthis/client/model/Account.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.apiStatus.check`<a id="snaptradeapistatuscheck"></a>

Check whether the API is operational and verify timestamps.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Status result = client
        .apiStatus
        .check()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[Status](./src/main/java/com/konfigthis/client/model/Status.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.deleteSnapTradeUser`<a id="snaptradeauthenticationdeletesnaptradeuser"></a>

Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
DeleteUserResponse result = client
        .authentication
        .deleteSnapTradeUser(userId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[DeleteUserResponse](./src/main/java/com/konfigthis/client/model/DeleteUserResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/deleteUser` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.listSnapTradeUsers`<a id="snaptradeauthenticationlistsnaptradeusers"></a>

Returns a list of all registered user IDs. Please note that the response is not currently paginated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<String> result = client
        .authentication
        .listSnapTradeUsers()
        .execute();
```

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/listUsers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.loginSnapTradeUser`<a id="snaptradeauthenticationloginsnaptradeuser"></a>

Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.

Please note that the returned URL expires in 5 minutes.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Object result = client
        .authentication
        .loginSnapTradeUser(userId, userSecret)
        .broker(broker)
        .immediateRedirect(immediateRedirect)
        .customRedirect(customRedirect)
        .reconnect(reconnect)
        .connectionType(connectionType)
        .connectionPortalVersion(connectionPortalVersion)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### broker: `String`<a id="broker-string"></a>

Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.

##### immediateRedirect: `Boolean`<a id="immediateredirect-boolean"></a>

When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### customRedirect: `String`<a id="customredirect-string"></a>

URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### reconnect: `String`<a id="reconnect-string"></a>

The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.

##### connectionType: `String`<a id="connectiontype-string"></a>

Sets whether the connection should be read-only or trade-enabled. Defaults to read-only if not specified.

##### connectionPortalVersion: `String`<a id="connectionportalversion-string"></a>

Sets the connection portal version to render. Currently only v4 is supported and is the default. All other versions are deprecated and will automatically be set to v4.

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/login` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.registerSnapTradeUser`<a id="snaptradeauthenticationregistersnaptradeuser"></a>

Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system.
Most SnapTrade operations require a user ID and user secret to be passed in as parameters.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
UserIDandSecret result = client
        .authentication
        .registerSnapTradeUser()
        .userId(userId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

#### 🔄 Return<a id="🔄-return"></a>

[UserIDandSecret](./src/main/java/com/konfigthis/client/model/UserIDandSecret.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/registerUser` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.resetSnapTradeUserSecret`<a id="snaptradeauthenticationresetsnaptradeusersecret"></a>

Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
UserIDandSecret result = client
        .authentication
        .resetSnapTradeUserSecret()
        .userId(userId)
        .userSecret(userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

##### userSecret: `String`<a id="usersecret-string"></a>

SnapTrade User Secret. This is a randomly generated string and should be stored securely. If compromised, please rotate it via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret).

#### 🔄 Return<a id="🔄-return"></a>

[UserIDandSecret](./src/main/java/com/konfigthis/client/model/UserIDandSecret.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/resetUserSecret` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.detailBrokerageAuthorization`<a id="snaptradeconnectionsdetailbrokerageauthorization"></a>

Returns a single connection for the specified ID.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
BrokerageAuthorization result = client
        .connections
        .detailBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `UUID`<a id="authorizationid-uuid"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorization](./src/main/java/com/konfigthis/client/model/BrokerageAuthorization.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.disableBrokerageAuthorization`<a id="snaptradeconnectionsdisablebrokerageauthorization"></a>

Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections.
Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.

*Please contact us in order to use this endpoint as it is disabled by default.*


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
BrokerageAuthorizationDisabledConfirmation result = client
        .connections
        .disableBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `UUID`<a id="authorizationid-uuid"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorizationDisabledConfirmation](./src/main/java/com/konfigthis/client/model/BrokerageAuthorizationDisabledConfirmation.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/disable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.listBrokerageAuthorizations`<a id="snaptradeconnectionslistbrokerageauthorizations"></a>

Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.

A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.

SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<BrokerageAuthorization> result = client
        .connections
        .listBrokerageAuthorizations(userId, userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorization](./src/main/java/com/konfigthis/client/model/BrokerageAuthorization.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.refreshBrokerageAuthorization`<a id="snaptradeconnectionsrefreshbrokerageauthorization"></a>

Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.
This endpoint will also trigger a transaction sync for the past day if one has not yet occured.

*Please contact support for access as this endpoint is not enabled by default.*


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
BrokerageAuthorizationRefreshConfirmation result = client
        .connections
        .refreshBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `UUID`<a id="authorizationid-uuid"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorizationRefreshConfirmation](./src/main/java/com/konfigthis/client/model/BrokerageAuthorizationRefreshConfirmation.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/refresh` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.removeBrokerageAuthorization`<a id="snaptradeconnectionsremovebrokerageauthorization"></a>

Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
client
        .connections
        .removeBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authorizationId: `UUID`<a id="authorizationid-uuid"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.returnRates`<a id="snaptradeconnectionsreturnrates"></a>

Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
RateOfReturnResponse result = client
        .connections
        .returnRates(userId, userSecret, authorizationId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### authorizationId: `UUID`<a id="authorizationid-uuid"></a>

#### 🔄 Return<a id="🔄-return"></a>

[RateOfReturnResponse](./src/main/java/com/konfigthis/client/model/RateOfReturnResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/authorizations/{authorizationId}/returnRates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.sessionEvents`<a id="snaptradeconnectionssessionevents"></a>

Returns a list of session events associated with a user.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<SessionEvent> result = client
        .connections
        .sessionEvents(partnerClientId)
        .userId(userId)
        .sessionId(sessionId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### partnerClientId: `String`<a id="partnerclientid-string"></a>

##### userId: `String`<a id="userid-string"></a>

Optional comma separated list of user IDs used to filter the request on specific users

##### sessionId: `String`<a id="sessionid-string"></a>

Optional comma separated list of session IDs used to filter the request on specific users

#### 🔄 Return<a id="🔄-return"></a>

[SessionEvent](./src/main/java/com/konfigthis/client/model/SessionEvent.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/sessionEvents` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.cryptoSpotTrading.cryptoSpotCancelOrder`<a id="snaptradecryptospottradingcryptospotcancelorder"></a>

Cancels a cryptocurrency spot order in the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
OrderUpdatedResponse result = client
        .cryptoSpotTrading
        .cryptoSpotCancelOrder(brokerageOrderId, userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage_order_id: `String`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

#### 🔄 Return<a id="🔄-return"></a>

[OrderUpdatedResponse](./src/main/java/com/konfigthis/client/model/OrderUpdatedResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto/spot/cancelOrder` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.cryptoSpotTrading.cryptoSpotPlaceOrder`<a id="snaptradecryptospottradingcryptospotplaceorder"></a>

Places a spot cryptocurrency order in the specified account.
This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
OrderUpdatedResponse result = client
        .cryptoSpotTrading
        .cryptoSpotPlaceOrder(symbol, side, type, timeInForce, amount, userId, userSecret, accountId)
        .limitPrice(limitPrice)
        .stopPrice(stopPrice)
        .postOnly(postOnly)
        .expirationDate(expirationDate)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### symbol: [`CryptocurrencyPair`](./src/main/java/com/konfigthis/client/model/CryptocurrencyPair.java)<a id="symbol-cryptocurrencypairsrcmainjavacomkonfigthisclientmodelcryptocurrencypairjava"></a>

##### side:<a id="side"></a>

##### type: `String`<a id="type-string"></a>

The type of order to place.

##### time_in_force: `String`<a id="time_in_force-string"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 

##### amount: `BigDecimal`<a id="amount-bigdecimal"></a>

The amount of the base currency to buy or sell.

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### limit_price: `BigDecimal`<a id="limit_price-bigdecimal"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.

##### stop_price: `BigDecimal`<a id="stop_price-bigdecimal"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.

##### post_only: `Boolean`<a id="post_only-boolean"></a>

Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 

##### expiration_date: `OffsetDateTime`<a id="expiration_date-offsetdatetime"></a>

The expiration date of the order. Required if the time_in_force is GTD.

#### 🔄 Return<a id="🔄-return"></a>

[OrderUpdatedResponse](./src/main/java/com/konfigthis/client/model/OrderUpdatedResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto/spot/placeOrder` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.cryptoSpotTrading.cryptoSpotPreviewOrder`<a id="snaptradecryptospottradingcryptospotprevieworder"></a>

Previews a cryptocurrency spot order using the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
CryptoSpotOrderPreview result = client
        .cryptoSpotTrading
        .cryptoSpotPreviewOrder(symbol, side, type, timeInForce, amount, userId, userSecret, accountId)
        .limitPrice(limitPrice)
        .stopPrice(stopPrice)
        .postOnly(postOnly)
        .expirationDate(expirationDate)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### symbol: [`CryptocurrencyPair`](./src/main/java/com/konfigthis/client/model/CryptocurrencyPair.java)<a id="symbol-cryptocurrencypairsrcmainjavacomkonfigthisclientmodelcryptocurrencypairjava"></a>

##### side:<a id="side"></a>

##### type: `String`<a id="type-string"></a>

The type of order to place.

##### time_in_force: `String`<a id="time_in_force-string"></a>

The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 

##### amount: `BigDecimal`<a id="amount-bigdecimal"></a>

The amount of the base currency to buy or sell.

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### limit_price: `BigDecimal`<a id="limit_price-bigdecimal"></a>

The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.

##### stop_price: `BigDecimal`<a id="stop_price-bigdecimal"></a>

The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.

##### post_only: `Boolean`<a id="post_only-boolean"></a>

Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 

##### expiration_date: `OffsetDateTime`<a id="expiration_date-offsetdatetime"></a>

The expiration date of the order. Required if the time_in_force is GTD.

#### 🔄 Return<a id="🔄-return"></a>

[CryptoSpotOrderPreview](./src/main/java/com/konfigthis/client/model/CryptoSpotOrderPreview.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto/spot/previewOrder` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.cryptoSpotTrading.cryptoSpotQuote`<a id="snaptradecryptospottradingcryptospotquote"></a>

Gets a quote for the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
CryptoSpotQuote result = client
        .cryptoSpotTrading
        .cryptoSpotQuote(userId, userSecret, accountId, base, quote)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### base: `String`<a id="base-string"></a>

##### quote: `String`<a id="quote-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[CryptoSpotQuote](./src/main/java/com/konfigthis/client/model/CryptoSpotQuote.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto/spot/quote` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.cryptoSpotTrading.cryptoSpotSymbols`<a id="snaptradecryptospottradingcryptospotsymbols"></a>

Searches cryptocurrency spot symbols accessible to the specified account.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
TradingCryptoSpotSymbols200Response result = client
        .cryptoSpotTrading
        .cryptoSpotSymbols(userId, userSecret, accountId)
        .base(base)
        .quote(quote)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### base: `String`<a id="base-string"></a>

##### quote: `String`<a id="quote-string"></a>

#### 🔄 Return<a id="🔄-return"></a>

[TradingCryptoSpotSymbols200Response](./src/main/java/com/konfigthis/client/model/TradingCryptoSpotSymbols200Response.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/crypto/spot/symbols` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionStrategy`<a id="snaptradeoptionsgetoptionstrategy"></a>

Creates an option strategy object that will be used to place an option strategy order.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
StrategyQuotes result = client
        .options
        .getOptionStrategy(underlyingSymbolId, legs, strategyType, userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### underlying_symbol_id: `UUID`<a id="underlying_symbol_id-uuid"></a>

##### legs: List<[`OptionLeg`](./src/main/java/com/konfigthis/client/model/OptionLeg.java)><a id="legs-list"></a>

##### strategy_type: `String`<a id="strategy_type-string"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

The ID of the account to create the option strategy object in.

#### 🔄 Return<a id="🔄-return"></a>

[StrategyQuotes](./src/main/java/com/konfigthis/client/model/StrategyQuotes.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionStrategy` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionsChain`<a id="snaptradeoptionsgetoptionschain"></a>

Returns the option chain for the specified symbol in the specified account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<OptionChainInner> result = client
        .options
        .getOptionsChain(userId, userSecret, accountId, symbol)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

The ID of the account to get the options chain from.

##### symbol: `UUID`<a id="symbol-uuid"></a>

Universal symbol ID if symbol

#### 🔄 Return<a id="🔄-return"></a>

[OptionChainInner](./src/main/java/com/konfigthis/client/model/OptionChainInner.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionsChain` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionsStrategyQuote`<a id="snaptradeoptionsgetoptionsstrategyquote"></a>

Returns a Strategy Quotes object which has latest market data of the specified option strategy.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
StrategyQuotes result = client
        .options
        .getOptionsStrategyQuote(userId, userSecret, accountId, optionStrategyId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

The ID of the account the strategy will be placed in.

##### optionStrategyId: `UUID`<a id="optionstrategyid-uuid"></a>

Option strategy id obtained from response when creating option strategy object

#### 🔄 Return<a id="🔄-return"></a>

[StrategyQuotes](./src/main/java/com/konfigthis/client/model/StrategyQuotes.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionStrategy/{optionStrategyId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.listOptionHoldings`<a id="snaptradeoptionslistoptionholdings"></a>

Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<OptionsPosition> result = client
        .options
        .listOptionHoldings(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

#### 🔄 Return<a id="🔄-return"></a>

[OptionsPosition](./src/main/java/com/konfigthis/client/model/OptionsPosition.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/options` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.placeOptionStrategy`<a id="snaptradeoptionsplaceoptionstrategy"></a>

Places the option strategy order and returns the order record received from the brokerage.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
StrategyOrderRecord result = client
        .options
        .placeOptionStrategy(orderType, timeInForce, userId, userSecret, accountId, optionStrategyId)
        .price(price)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

The ID of the account to execute the strategy in.

##### optionStrategyId: `UUID`<a id="optionstrategyid-uuid"></a>

Option strategy id obtained from response when creating option strategy object

##### price: `Double`<a id="price-double"></a>

Trade Price if limit or stop limit order

#### 🔄 Return<a id="🔄-return"></a>

[StrategyOrderRecord](./src/main/java/com/konfigthis/client/model/StrategyOrderRecord.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getCurrencyExchangeRatePair`<a id="snaptradereferencedatagetcurrencyexchangeratepair"></a>

Returns an Exchange Rate Pair object for the specified Currency Pair.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
ExchangeRatePairs result = client
        .referenceData
        .getCurrencyExchangeRatePair(currencyPair)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### currencyPair: `String`<a id="currencypair-string"></a>

A currency pair based on currency code for example, {CAD-USD}

#### 🔄 Return<a id="🔄-return"></a>

[ExchangeRatePairs](./src/main/java/com/konfigthis/client/model/ExchangeRatePairs.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies/rates/{currencyPair}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getPartnerInfo`<a id="snaptradereferencedatagetpartnerinfo"></a>

Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
PartnerData result = client
        .referenceData
        .getPartnerInfo()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[PartnerData](./src/main/java/com/konfigthis/client/model/PartnerData.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/snapTrade/partners` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSecurityTypes`<a id="snaptradereferencedatagetsecuritytypes"></a>

Return all available security types supported by SnapTrade.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<SecurityType> result = client
        .referenceData
        .getSecurityTypes()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[SecurityType](./src/main/java/com/konfigthis/client/model/SecurityType.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/securityTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getStockExchanges`<a id="snaptradereferencedatagetstockexchanges"></a>

Returns a list of all supported Exchanges.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Exchange> result = client
        .referenceData
        .getStockExchanges()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[Exchange](./src/main/java/com/konfigthis/client/model/Exchange.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/exchanges` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbols`<a id="snaptradereferencedatagetsymbols"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<UniversalSymbol> result = client
        .referenceData
        .getSymbols()
        .substring(substring)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### substring: `String`<a id="substring-string"></a>

The search query for symbols.

#### 🔄 Return<a id="🔄-return"></a>

[UniversalSymbol](./src/main/java/com/konfigthis/client/model/UniversalSymbol.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbolsByTicker`<a id="snaptradereferencedatagetsymbolsbyticker"></a>

Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on "Yahoo Finance Market Coverage and Data Delays"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
UniversalSymbol result = client
        .referenceData
        .getSymbolsByTicker(query)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `String`<a id="query-string"></a>

The ticker or Universal Symbol ID to look up the symbol with.

#### 🔄 Return<a id="🔄-return"></a>

[UniversalSymbol](./src/main/java/com/konfigthis/client/model/UniversalSymbol.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/symbols/{query}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerageAuthorizationType`<a id="snaptradereferencedatalistallbrokerageauthorizationtype"></a>

Returns a list of all defined Brokerage authorization Type objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<BrokerageAuthorizationTypeReadOnly> result = client
        .referenceData
        .listAllBrokerageAuthorizationType()
        .brokerage(brokerage)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### brokerage: `String`<a id="brokerage-string"></a>

Comma separated value of brokerage slugs

#### 🔄 Return<a id="🔄-return"></a>

[BrokerageAuthorizationTypeReadOnly](./src/main/java/com/konfigthis/client/model/BrokerageAuthorizationTypeReadOnly.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerageAuthorizationTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerages`<a id="snaptradereferencedatalistallbrokerages"></a>

Returns a list of all defined Brokerage objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Brokerage> result = client
        .referenceData
        .listAllBrokerages()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[Brokerage](./src/main/java/com/konfigthis/client/model/Brokerage.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/brokerages` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrencies`<a id="snaptradereferencedatalistallcurrencies"></a>

Returns a list of all defined Currency objects.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Currency> result = client
        .referenceData
        .listAllCurrencies()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[Currency](./src/main/java/com/konfigthis/client/model/Currency.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrenciesRates`<a id="snaptradereferencedatalistallcurrenciesrates"></a>

Returns a list of all Exchange Rate Pairs for all supported Currencies.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<ExchangeRatePairs> result = client
        .referenceData
        .listAllCurrenciesRates()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[ExchangeRatePairs](./src/main/java/com/konfigthis/client/model/ExchangeRatePairs.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/currencies/rates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.symbolSearchUserAccount`<a id="snaptradereferencedatasymbolsearchuseraccount"></a>

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.

The search results are further limited to the symbols supported by the brokerage for which the account is under.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<UniversalSymbol> result = client
        .referenceData
        .symbolSearchUserAccount(userId, userSecret, accountId)
        .substring(substring)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### substring: `String`<a id="substring-string"></a>

The search query for symbols.

#### 🔄 Return<a id="🔄-return"></a>

[UniversalSymbol](./src/main/java/com/konfigthis/client/model/UniversalSymbol.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.cancelUserAccountOrder`<a id="snaptradetradingcanceluseraccountorder"></a>

Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
AccountOrderRecord result = client
        .trading
        .cancelUserAccountOrder(userId, userSecret, accountId)
        .brokerageOrderId(brokerageOrderId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### brokerage_order_id: `String`<a id="brokerage_order_id-string"></a>

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/orders/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getOrderImpact`<a id="snaptradetradinggetorderimpact"></a>

Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
ManualTradeAndImpact result = client
        .trading
        .getOrderImpact(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret)
        .price(price)
        .stop(stop)
        .units(units)
        .notionalValue(notionalValue)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `UUID`<a id="account_id-uuid"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action:<a id="action"></a>

##### universal_symbol_id: `UUID`<a id="universal_symbol_id-uuid"></a>

Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### price: `Double`<a id="price-double"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Double`<a id="stop-double"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `Double`<a id="units-double"></a>

Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.

##### notional_value: `Object`<a id="notional_value-object"></a>

#### 🔄 Return<a id="🔄-return"></a>

[ManualTradeAndImpact](./src/main/java/com/konfigthis/client/model/ManualTradeAndImpact.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/impact` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getUserAccountQuotes`<a id="snaptradetradinggetuseraccountquotes"></a>

Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<SymbolsQuotesInner> result = client
        .trading
        .getUserAccountQuotes(userId, userSecret, symbols, accountId)
        .useTicker(useTicker)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### symbols: `String`<a id="symbols-string"></a>

List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator

##### accountId: `UUID`<a id="accountid-uuid"></a>

##### useTicker: `Boolean`<a id="useticker-boolean"></a>

Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.

#### 🔄 Return<a id="🔄-return"></a>

[SymbolsQuotesInner](./src/main/java/com/konfigthis/client/model/SymbolsQuotesInner.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/quotes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeBracketOrder`<a id="snaptradetradingplacebracketorder"></a>

Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for
use. Only supported on certain brokerages


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
AccountOrderRecord result = client
        .trading
        .placeBracketOrder(action, instrument, orderType, timeInForce, stopLoss, takeProfit, accountId, userId, userSecret)
        .symbol(symbol)
        .price(price)
        .stop(stop)
        .units(units)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action:<a id="action"></a>

##### instrument: [`TradingInstrument`](./src/main/java/com/konfigthis/client/model/TradingInstrument.java)<a id="instrument-tradinginstrumentsrcmainjavacomkonfigthisclientmodeltradinginstrumentjava"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### stop_loss: [`StopLoss`](./src/main/java/com/konfigthis/client/model/StopLoss.java)<a id="stop_loss-stoplosssrcmainjavacomkonfigthisclientmodelstoplossjava"></a>

##### take_profit: [`TakeProfit`](./src/main/java/com/konfigthis/client/model/TakeProfit.java)<a id="take_profit-takeprofitsrcmainjavacomkonfigthisclientmodeltakeprofitjava"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

The ID of the account to execute the trade on.

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### symbol: `String`<a id="symbol-string"></a>

The security's trading ticker symbol.

##### price: `Double`<a id="price-double"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Double`<a id="stop-double"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `Double`<a id="units-double"></a>

Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/bracket` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeForceOrder`<a id="snaptradetradingplaceforceorder"></a>

Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.

This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
AccountOrderRecord result = client
        .trading
        .placeForceOrder(accountId, action, orderType, timeInForce, userId, userSecret)
        .universalSymbolId(universalSymbolId)
        .symbol(symbol)
        .price(price)
        .stop(stop)
        .units(units)
        .notionalValue(notionalValue)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### account_id: `UUID`<a id="account_id-uuid"></a>

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action:<a id="action"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### universal_symbol_id: `UUID`<a id="universal_symbol_id-uuid"></a>

Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.

##### symbol: `String`<a id="symbol-string"></a>

The security's trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example \\\"AAPL  131124C00240000\\\" represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.

##### price: `Double`<a id="price-double"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Double`<a id="stop-double"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: [`Double`](./src/main/java/com/konfigthis/client/model/ModelDouble.java)<a id="units-doublesrcmainjavacomkonfigthisclientmodelmodeldoublejava"></a>

For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).

##### notional_value: `Object`<a id="notional_value-object"></a>

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/place` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeOrder`<a id="snaptradetradingplaceorder"></a>

Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
AccountOrderRecord result = client
        .trading
        .placeOrder(tradeId, userId, userSecret)
        .waitToConfirm(waitToConfirm)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### tradeId: `UUID`<a id="tradeid-uuid"></a>

Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### wait_to_confirm: `Boolean`<a id="wait_to_confirm-boolean"></a>

Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/trade/{tradeId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.replaceOrder`<a id="snaptradetradingreplaceorder"></a>

Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling
the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one
returned in the response going forward. Only supported on some brokerages


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
AccountOrderRecord result = client
        .trading
        .replaceOrder(action, orderType, timeInForce, accountId, brokerageOrderId, userId, userSecret)
        .price(price)
        .stop(stop)
        .units(units)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action:<a id="action"></a>

##### order_type:<a id="order_type"></a>

##### time_in_force:<a id="time_in_force"></a>

##### accountId: `UUID`<a id="accountid-uuid"></a>

The ID of the account to execute the trade on.

##### brokerageOrderId: `String`<a id="brokerageorderid-string"></a>

The Brokerage Order ID of the order to replace.

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### price: `Double`<a id="price-double"></a>

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Double`<a id="stop-double"></a>

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `Double`<a id="units-double"></a>

Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.

#### 🔄 Return<a id="🔄-return"></a>

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/accounts/{accountId}/trading/simple/{brokerageOrderId}/replace` `PATCH`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getActivities`<a id="snaptradetransactionsandreportinggetactivities"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible

Returns all historical transactions for the specified user and filtering criteria. It's recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There's a max number of 10000 transactions returned per request.

There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.

The data returned here is always cached and refreshed once a day.


#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<UniversalActivity> result = client
        .transactionsAndReporting
        .getActivities(userId, userSecret)
        .startDate(startDate)
        .endDate(endDate)
        .accounts(accounts)
        .brokerageAuthorizations(brokerageAuthorizations)
        .type(type)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### startDate: `LocalDate`<a id="startdate-localdate"></a>

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### endDate: `LocalDate`<a id="enddate-localdate"></a>

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### accounts: `String`<a id="accounts-string"></a>

Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.

##### brokerageAuthorizations: `String`<a id="brokerageauthorizations-string"></a>

Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.

##### type: `String`<a id="type-string"></a>

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 

#### 🔄 Return<a id="🔄-return"></a>

[UniversalActivity](./src/main/java/com/konfigthis/client/model/UniversalActivity.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/activities` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getReportingCustomRange`<a id="snaptradetransactionsandreportinggetreportingcustomrange"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
PerformanceCustom result = client
        .transactionsAndReporting
        .getReportingCustomRange(startDate, endDate, userId, userSecret)
        .accounts(accounts)
        .detailed(detailed)
        .frequency(frequency)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### startDate: `LocalDate`<a id="startdate-localdate"></a>

##### endDate: `LocalDate`<a id="enddate-localdate"></a>

##### userId: `String`<a id="userid-string"></a>

##### userSecret: `String`<a id="usersecret-string"></a>

##### accounts: `String`<a id="accounts-string"></a>

Optional comma separated list of account IDs used to filter the request on specific accounts

##### detailed: `Boolean`<a id="detailed-boolean"></a>

Optional, increases frequency of data points for the total value and contribution charts if set to true

##### frequency: `String`<a id="frequency-string"></a>

Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.

#### 🔄 Return<a id="🔄-return"></a>

[PerformanceCustom](./src/main/java/com/konfigthis/client/model/PerformanceCustom.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/performance/custom` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This Java package is automatically generated by [Konfig](https://konfigthis.com)
