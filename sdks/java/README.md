<div align="center">

[![Visit SnapTrade](https://raw.githubusercontent.com/passiv/snaptrade-sdks/HEAD/sdks/java/header.png)](https://snaptrade.com)

# [SnapTrade](https://snaptrade.com)

Connect brokerage accounts to your app for live positions and trading

[![Maven Central](https://img.shields.io/badge/Maven%20Central-v5.0.41-blue)](https://central.sonatype.com/artifact/com.konfigthis/snaptrade-java-sdk/5.0.41)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://snaptrade.com/)

</div>

## Table of Contents

<!-- toc -->

## Requirements

Building the API client library requires:

1. Java 1.8+
2. Maven (3.8.3+)/Gradle (7.2+)

If you are adding this library to an Android Application or Library:

3. Android 8.0+ (API Level 26+)

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

Refer to the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>com.konfigthis</groupId>
  <artifactId>snaptrade-java-sdk</artifactId>
  <version>5.0.41</version>
  <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your `build.gradle`:

```groovy
// build.gradle
repositories {
  mavenCentral()
}

dependencies {
   implementation "com.konfigthis:snaptrade-java-sdk:5.0.41"
}
```

### Android users

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

### Others

At first generate the JAR by executing:

```shell
mvn clean package
```

Then manually install the following JARs:

* `target/snaptrade-java-sdk-5.0.41.jar`
* `target/lib/*.jar`

## Getting Started

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
## Reference


### `snaptrade.accountInformation.getAllUserHoldings`
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

**Deprecated, please use the account-specific holdings endpoint instead.**

List all accounts for the user, plus balances, positions, and orders for each
account.


#### 🛠️ Usage

```java
List<AccountHoldings> result = client
        .accountInformation
        .getAllUserHoldings(userId, userSecret)
        .brokerageAuthorizations(brokerageAuthorizations)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### brokerageAuthorizations: `UUID`

Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).

#### 🔄 Return

[AccountHoldings](./src/main/java/com/konfigthis/client/model/AccountHoldings.java)

#### 🌐 Endpoint

`/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountBalance`

Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

```java
List<Balance> result = client
        .accountInformation
        .getUserAccountBalance(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

#### 🔄 Return

[Balance](./src/main/java/com/konfigthis/client/model/Balance.java)

#### 🌐 Endpoint

`/accounts/{accountId}/balances` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountDetails`

Returns account detail known to SnapTrade for the specified account.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

```java
Account result = client
        .accountInformation
        .getUserAccountDetails(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

#### 🔄 Return

[Account](./src/main/java/com/konfigthis/client/model/Account.java)

#### 🌐 Endpoint

`/accounts/{accountId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountOrders`

Returns a list of recent orders in the specified account.

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

```java
List<AccountOrderRecord> result = client
        .accountInformation
        .getUserAccountOrders(userId, userSecret, accountId)
        .state(state)
        .days(days)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

##### state: `String`

defaults value is set to \"all\"

##### days: `Integer`

Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.

#### 🔄 Return

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint

`/accounts/{accountId}/orders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserAccountPositions`

Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

```java
List<Position> result = client
        .accountInformation
        .getUserAccountPositions(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

#### 🔄 Return

[Position](./src/main/java/com/konfigthis/client/model/Position.java)

#### 🌐 Endpoint

`/accounts/{accountId}/positions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.getUserHoldings`

Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

```java
AccountHoldingsAccount result = client
        .accountInformation
        .getUserHoldings(accountId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters

##### accountId: `UUID`

##### userId: `String`

##### userSecret: `String`

#### 🔄 Return

[AccountHoldingsAccount](./src/main/java/com/konfigthis/client/model/AccountHoldingsAccount.java)

#### 🌐 Endpoint

`/accounts/{accountId}/holdings` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.listUserAccounts`

Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

```java
List<Account> result = client
        .accountInformation
        .listUserAccounts(userId, userSecret)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

#### 🔄 Return

[Account](./src/main/java/com/konfigthis/client/model/Account.java)

#### 🌐 Endpoint

`/accounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.accountInformation.updateUserAccount`

Updates various properties of a specified account.

#### 🛠️ Usage

```java
List<Account> result = client
        .accountInformation
        .updateUserAccount(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

The ID of the account to update.

#### 🔄 Return

[Account](./src/main/java/com/konfigthis/client/model/Account.java)

#### 🌐 Endpoint

`/accounts/{accountId}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.apiStatus.check`

Check whether the API is operational and verify timestamps.

#### 🛠️ Usage

```java
Status result = client
        .apiStatus
        .check()
        .execute();
```

#### 🔄 Return

[Status](./src/main/java/com/konfigthis/client/model/Status.java)

#### 🌐 Endpoint

`/` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.deleteSnapTradeUser`

Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.

#### 🛠️ Usage

```java
DeleteUserResponse result = client
        .authentication
        .deleteSnapTradeUser(userId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

#### 🔄 Return

[DeleteUserResponse](./src/main/java/com/konfigthis/client/model/DeleteUserResponse.java)

#### 🌐 Endpoint

`/snapTrade/deleteUser` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.listSnapTradeUsers`

Returns a list of all registered user IDs. Please note that the response is not currently paginated.

#### 🛠️ Usage

```java
List<String> result = client
        .authentication
        .listSnapTradeUsers()
        .execute();
```

#### 🌐 Endpoint

`/snapTrade/listUsers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.loginSnapTradeUser`

Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.

Please note that the returned URL expires in 5 minutes.


#### 🛠️ Usage

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

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### broker: `String`

Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.

##### immediateRedirect: `Boolean`

When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### customRedirect: `String`

URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.

##### reconnect: `String`

The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.

##### connectionType: `String`

Sets whether the connection should be read-only or trade-enabled.

##### connectionPortalVersion: `String`

Sets the version of the connection portal to render.

#### 🌐 Endpoint

`/snapTrade/login` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.registerSnapTradeUser`

Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system.
Most SnapTrade operations require a user ID and user secret to be passed in as parameters.


#### 🛠️ Usage

```java
UserIDandSecret result = client
        .authentication
        .registerSnapTradeUser()
        .userId(userId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

#### 🔄 Return

[UserIDandSecret](./src/main/java/com/konfigthis/client/model/UserIDandSecret.java)

#### 🌐 Endpoint

`/snapTrade/registerUser` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.authentication.resetSnapTradeUserSecret`

Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect.


#### 🛠️ Usage

```java
UserIDandSecret result = client
        .authentication
        .resetSnapTradeUserSecret()
        .userId(userId)
        .userSecret(userSecret)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.

##### userSecret: `String`

SnapTrade User Secret. This is a randomly generated string and should be stored securely. If compromised, please rotate it via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret).

#### 🔄 Return

[UserIDandSecret](./src/main/java/com/konfigthis/client/model/UserIDandSecret.java)

#### 🌐 Endpoint

`/snapTrade/resetUserSecret` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.detailBrokerageAuthorization`

Returns a single connection for the specified ID.

#### 🛠️ Usage

```java
BrokerageAuthorization result = client
        .connections
        .detailBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters

##### authorizationId: `UUID`

##### userId: `String`

##### userSecret: `String`

#### 🔄 Return

[BrokerageAuthorization](./src/main/java/com/konfigthis/client/model/BrokerageAuthorization.java)

#### 🌐 Endpoint

`/authorizations/{authorizationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.disableBrokerageAuthorization`

Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections.
Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.

*Please contact us in order to use this endpoint as it is disabled by default.*


#### 🛠️ Usage

```java
BrokerageAuthorizationDisabledConfirmation result = client
        .connections
        .disableBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters

##### authorizationId: `UUID`

##### userId: `String`

##### userSecret: `String`

#### 🔄 Return

[BrokerageAuthorizationDisabledConfirmation](./src/main/java/com/konfigthis/client/model/BrokerageAuthorizationDisabledConfirmation.java)

#### 🌐 Endpoint

`/authorizations/{authorizationId}/disable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.listBrokerageAuthorizations`

Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.

A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.

SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.


#### 🛠️ Usage

```java
List<BrokerageAuthorization> result = client
        .connections
        .listBrokerageAuthorizations(userId, userSecret)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

#### 🔄 Return

[BrokerageAuthorization](./src/main/java/com/konfigthis/client/model/BrokerageAuthorization.java)

#### 🌐 Endpoint

`/authorizations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.refreshBrokerageAuthorization`

Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.

*Please contact support for access as this endpoint is not enabled by default.*


#### 🛠️ Usage

```java
BrokerageAuthorizationRefreshConfirmation result = client
        .connections
        .refreshBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters

##### authorizationId: `UUID`

##### userId: `String`

##### userSecret: `String`

#### 🔄 Return

[BrokerageAuthorizationRefreshConfirmation](./src/main/java/com/konfigthis/client/model/BrokerageAuthorizationRefreshConfirmation.java)

#### 🌐 Endpoint

`/authorizations/{authorizationId}/refresh` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.removeBrokerageAuthorization`

Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.

#### 🛠️ Usage

```java
client
        .connections
        .removeBrokerageAuthorization(authorizationId, userId, userSecret)
        .execute();
```

#### ⚙️ Parameters

##### authorizationId: `UUID`

##### userId: `String`

##### userSecret: `String`

#### 🌐 Endpoint

`/authorizations/{authorizationId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.connections.sessionEvents`

Returns a list of session events associated with a user.

#### 🛠️ Usage

```java
List<SessionEvent> result = client
        .connections
        .sessionEvents(partnerClientId)
        .userId(userId)
        .sessionId(sessionId)
        .execute();
```

#### ⚙️ Parameters

##### partnerClientId: `String`

##### userId: `String`

Optional comma separated list of user IDs used to filter the request on specific users

##### sessionId: `String`

Optional comma separated list of session IDs used to filter the request on specific users

#### 🔄 Return

[SessionEvent](./src/main/java/com/konfigthis/client/model/SessionEvent.java)

#### 🌐 Endpoint

`/sessionEvents` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionStrategy`

Creates an option strategy object that will be used to place an option strategy order.


#### 🛠️ Usage

```java
StrategyQuotes result = client
        .options
        .getOptionStrategy(underlyingSymbolId, legs, strategyType, userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters

##### underlying_symbol_id: `UUID`

##### legs: List<[`OptionLeg`](./src/main/java/com/konfigthis/client/model/OptionLeg.java)>

##### strategy_type: `String`

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

The ID of the account to create the option strategy object in.

#### 🔄 Return

[StrategyQuotes](./src/main/java/com/konfigthis/client/model/StrategyQuotes.java)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionsChain`

Returns the option chain for the specified symbol in the specified account.

#### 🛠️ Usage

```java
List<OptionChainInner> result = client
        .options
        .getOptionsChain(userId, userSecret, accountId, symbol)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

The ID of the account to get the options chain from.

##### symbol: `UUID`

Universal symbol ID if symbol

#### 🔄 Return

[OptionChainInner](./src/main/java/com/konfigthis/client/model/OptionChainInner.java)

#### 🌐 Endpoint

`/accounts/{accountId}/optionsChain` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.getOptionsStrategyQuote`

Returns a Strategy Quotes object which has latest market data of the specified option strategy.


#### 🛠️ Usage

```java
StrategyQuotes result = client
        .options
        .getOptionsStrategyQuote(userId, userSecret, accountId, optionStrategyId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

The ID of the account the strategy will be placed in.

##### optionStrategyId: `UUID`

Option strategy id obtained from response when creating option strategy object

#### 🔄 Return

[StrategyQuotes](./src/main/java/com/konfigthis/client/model/StrategyQuotes.java)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy/{optionStrategyId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.listOptionHoldings`

Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

```java
List<OptionsPosition> result = client
        .options
        .listOptionHoldings(userId, userSecret, accountId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

#### 🔄 Return

[OptionsPosition](./src/main/java/com/konfigthis/client/model/OptionsPosition.java)

#### 🌐 Endpoint

`/accounts/{accountId}/options` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.options.placeOptionStrategy`

Places the option strategy order and returns the order record received from the brokerage.

#### 🛠️ Usage

```java
StrategyOrderRecord result = client
        .options
        .placeOptionStrategy(orderType, timeInForce, userId, userSecret, accountId, optionStrategyId)
        .price(price)
        .execute();
```

#### ⚙️ Parameters

##### order_type:

##### time_in_force:

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

The ID of the account to execute the strategy in.

##### optionStrategyId: `UUID`

Option strategy id obtained from response when creating option strategy object

##### price: `Double`

Trade Price if limit or stop limit order

#### 🔄 Return

[StrategyOrderRecord](./src/main/java/com/konfigthis/client/model/StrategyOrderRecord.java)

#### 🌐 Endpoint

`/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getCurrencyExchangeRatePair`

Returns an Exchange Rate Pair object for the specified Currency Pair.

#### 🛠️ Usage

```java
ExchangeRatePairs result = client
        .referenceData
        .getCurrencyExchangeRatePair(currencyPair)
        .execute();
```

#### ⚙️ Parameters

##### currencyPair: `String`

A currency pair based on currency code for example, {CAD-USD}

#### 🔄 Return

[ExchangeRatePairs](./src/main/java/com/konfigthis/client/model/ExchangeRatePairs.java)

#### 🌐 Endpoint

`/currencies/rates/{currencyPair}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getPartnerInfo`

Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.

#### 🛠️ Usage

```java
PartnerData result = client
        .referenceData
        .getPartnerInfo()
        .execute();
```

#### 🔄 Return

[PartnerData](./src/main/java/com/konfigthis/client/model/PartnerData.java)

#### 🌐 Endpoint

`/snapTrade/partners` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSecurityTypes`

Return all available security types supported by SnapTrade.

#### 🛠️ Usage

```java
List<SecurityType> result = client
        .referenceData
        .getSecurityTypes()
        .execute();
```

#### 🔄 Return

[SecurityType](./src/main/java/com/konfigthis/client/model/SecurityType.java)

#### 🌐 Endpoint

`/securityTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getStockExchanges`

Returns a list of all supported Exchanges.

#### 🛠️ Usage

```java
List<Exchange> result = client
        .referenceData
        .getStockExchanges()
        .execute();
```

#### 🔄 Return

[Exchange](./src/main/java/com/konfigthis/client/model/Exchange.java)

#### 🌐 Endpoint

`/exchanges` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbols`

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.


#### 🛠️ Usage

```java
List<UniversalSymbol> result = client
        .referenceData
        .getSymbols()
        .substring(substring)
        .execute();
```

#### ⚙️ Parameters

##### substring: `String`

The search query for symbols.

#### 🔄 Return

[UniversalSymbol](./src/main/java/com/konfigthis/client/model/UniversalSymbol.java)

#### 🌐 Endpoint

`/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.getSymbolsByTicker`

Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on "Yahoo Finance Market Coverage and Data Delays"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results.


#### 🛠️ Usage

```java
UniversalSymbol result = client
        .referenceData
        .getSymbolsByTicker(query)
        .execute();
```

#### ⚙️ Parameters

##### query: `String`

The ticker or Universal Symbol ID to look up the symbol with.

#### 🔄 Return

[UniversalSymbol](./src/main/java/com/konfigthis/client/model/UniversalSymbol.java)

#### 🌐 Endpoint

`/symbols/{query}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerageAuthorizationType`

Returns a list of all defined Brokerage authorization Type objects.

#### 🛠️ Usage

```java
List<BrokerageAuthorizationTypeReadOnly> result = client
        .referenceData
        .listAllBrokerageAuthorizationType()
        .brokerage(brokerage)
        .execute();
```

#### ⚙️ Parameters

##### brokerage: `String`

Comma separated value of brokerage slugs

#### 🔄 Return

[BrokerageAuthorizationTypeReadOnly](./src/main/java/com/konfigthis/client/model/BrokerageAuthorizationTypeReadOnly.java)

#### 🌐 Endpoint

`/brokerageAuthorizationTypes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllBrokerages`

Returns a list of all defined Brokerage objects.

#### 🛠️ Usage

```java
List<Brokerage> result = client
        .referenceData
        .listAllBrokerages()
        .execute();
```

#### 🔄 Return

[Brokerage](./src/main/java/com/konfigthis/client/model/Brokerage.java)

#### 🌐 Endpoint

`/brokerages` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrencies`

Returns a list of all defined Currency objects.

#### 🛠️ Usage

```java
List<Currency> result = client
        .referenceData
        .listAllCurrencies()
        .execute();
```

#### 🔄 Return

[Currency](./src/main/java/com/konfigthis/client/model/Currency.java)

#### 🌐 Endpoint

`/currencies` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.listAllCurrenciesRates`

Returns a list of all Exchange Rate Pairs for all supported Currencies.

#### 🛠️ Usage

```java
List<ExchangeRatePairs> result = client
        .referenceData
        .listAllCurrenciesRates()
        .execute();
```

#### 🔄 Return

[ExchangeRatePairs](./src/main/java/com/konfigthis/client/model/ExchangeRatePairs.java)

#### 🌐 Endpoint

`/currencies/rates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.referenceData.symbolSearchUserAccount`

Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.

The search results are further limited to the symbols supported by the brokerage for which the account is under.


#### 🛠️ Usage

```java
List<UniversalSymbol> result = client
        .referenceData
        .symbolSearchUserAccount(userId, userSecret, accountId)
        .substring(substring)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

##### substring: `String`

The search query for symbols.

#### 🔄 Return

[UniversalSymbol](./src/main/java/com/konfigthis/client/model/UniversalSymbol.java)

#### 🌐 Endpoint

`/accounts/{accountId}/symbols` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.cancelUserAccountOrder`

Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected.


#### 🛠️ Usage

```java
AccountOrderRecord result = client
        .trading
        .cancelUserAccountOrder(userId, userSecret, accountId)
        .brokerageOrderId(brokerageOrderId)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### accountId: `UUID`

##### brokerage_order_id: `String`

Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.

#### 🔄 Return

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint

`/accounts/{accountId}/orders/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getOrderImpact`

Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.

#### 🛠️ Usage

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

#### ⚙️ Parameters

##### account_id: `UUID`

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action:

##### universal_symbol_id: `UUID`

Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.

##### order_type:

##### time_in_force:

##### userId: `String`

##### userSecret: `String`

##### price: `Double`

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Double`

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `Double`

Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.

##### notional_value: `Object`

#### 🔄 Return

[ManualTradeAndImpact](./src/main/java/com/konfigthis/client/model/ManualTradeAndImpact.java)

#### 🌐 Endpoint

`/trade/impact` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.getUserAccountQuotes`

Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.

#### 🛠️ Usage

```java
List<SymbolsQuotesInner> result = client
        .trading
        .getUserAccountQuotes(userId, userSecret, symbols, accountId)
        .useTicker(useTicker)
        .execute();
```

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### symbols: `String`

List of Universal Symbol IDs or tickers to get quotes for.

##### accountId: `UUID`

##### useTicker: `Boolean`

Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.

#### 🔄 Return

[SymbolsQuotesInner](./src/main/java/com/konfigthis/client/model/SymbolsQuotesInner.java)

#### 🌐 Endpoint

`/accounts/{accountId}/quotes` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeForceOrder`

Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.

This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage

```java
AccountOrderRecord result = client
        .trading
        .placeForceOrder(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret)
        .price(price)
        .stop(stop)
        .units(units)
        .notionalValue(notionalValue)
        .execute();
```

#### ⚙️ Parameters

##### account_id: `UUID`

Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.

##### action:

##### universal_symbol_id: `UUID`

Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.

##### order_type:

##### time_in_force:

##### userId: `String`

##### userSecret: `String`

##### price: `Double`

The limit price for `Limit` and `StopLimit` orders.

##### stop: `Double`

The price at which a stop order is triggered for `Stop` and `StopLimit` orders.

##### units: `Double`

Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.

##### notional_value: `Object`

#### 🔄 Return

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint

`/trade/place` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.trading.placeOrder`

Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).

It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.


#### 🛠️ Usage

```java
AccountOrderRecord result = client
        .trading
        .placeOrder(tradeId, userId, userSecret)
        .waitToConfirm(waitToConfirm)
        .execute();
```

#### ⚙️ Parameters

##### tradeId: `UUID`

Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)

##### userId: `String`

##### userSecret: `String`

##### wait_to_confirm: `Boolean`

Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.

#### 🔄 Return

[AccountOrderRecord](./src/main/java/com/konfigthis/client/model/AccountOrderRecord.java)

#### 🌐 Endpoint

`/trade/{tradeId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getActivities`

Returns all historical transactions for the specified user and filtering criteria. It's recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There's a max number of 10000 transactions returned per request.

There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.

The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


#### 🛠️ Usage

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

#### ⚙️ Parameters

##### userId: `String`

##### userSecret: `String`

##### startDate: `LocalDate`

The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.

##### endDate: `LocalDate`

The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.

##### accounts: `String`

Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.

##### brokerageAuthorizations: `String`

Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.

##### type: `String`

Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - BUY   - SELL   - DIVIDEND   - CONTRIBUTION   - WITHDRAWAL   - REI   - INTEREST   - FEE 

#### 🔄 Return

[UniversalActivity](./src/main/java/com/konfigthis/client/model/UniversalActivity.java)

#### 🌐 Endpoint

`/activities` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `snaptrade.transactionsAndReporting.getReportingCustomRange`
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.

#### 🛠️ Usage

```java
PerformanceCustom result = client
        .transactionsAndReporting
        .getReportingCustomRange(startDate, endDate, userId, userSecret)
        .accounts(accounts)
        .detailed(detailed)
        .frequency(frequency)
        .execute();
```

#### ⚙️ Parameters

##### startDate: `LocalDate`

##### endDate: `LocalDate`

##### userId: `String`

##### userSecret: `String`

##### accounts: `String`

Optional comma separated list of account IDs used to filter the request on specific accounts

##### detailed: `Boolean`

Optional, increases frequency of data points for the total value and contribution charts if set to true

##### frequency: `String`

Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.

#### 🔄 Return

[PerformanceCustom](./src/main/java/com/konfigthis/client/model/PerformanceCustom.java)

#### 🌐 Endpoint

`/performance/custom` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author
This Java package is automatically generated by [Konfig](https://konfigthis.com)
