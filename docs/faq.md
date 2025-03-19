# Frequently Asked Questions

## API Keys

### **I have lost the consumerKey to my API Key. What should I do?**

You should reach out to SnapTrade support. If it is compromised, your users are still safe due to also requiring a user secret to get account data or place trades.

---

## Requests

### I am getting a 'Unable to verify signature sent' error when making a request to the API. What should I do?

The API call is failing when comparing the expected signature to the signature provided by your client. This can happen for many reasons, but is likely caused by attempting to configure the signature without an SDK, or an invalid consumerKey. If you need to reset your consumerKey, reach out to someone in SnapTrade staff.

---

## Users

### What is a ‘Connected User’?

A connected user is a user who has at least one connection. If someone connects both a Wealthsimple Trade and Questrade account, then that person will be counted as one connected user. Similarly if they have multiple accounts (IRA and margin) at one broker, then that's also counted as one connected user.

A user is considered a connected user from the moment they successfully complete the first connection process to when you or the user deletes their last connection (some times users have multiple brokers connected). You can handle this on your end or let the users delete the connections from your platform.

### What should I do if I lose the userSecret of one of my users?

If you lose the userSecret the easiest thing to do is create a new user and ask the end user to reconnect.

### **The userSecret to one of my SnapTrade users has been compromised. What should I do?**

The best thing to do in this case is to rotate the user secret using :api[Authentication_resetSnapTradeUserSecret].

---

## Connections

### What is the format of “*disabled_date*”?

All of our timestamp fields return datetime in ISO-8601 format.

### **What is the difference between an account and a connection?**

![image.png](attachment:738d81dc-a7b9-4db1-ac34-ccb082f159f9:image.png)

The accounts live under the connection to the brokerage. Each connection is associated one-to-one with a set of credentials to the brokerage. When you create a connection, SnapTrade will automatically sync all accounts under the set of credentials to the brokerage. For example, if you made a new connection to Questrade (a Canadian brokerage) and that connection had a TFSA, an RRSP and an FHSA account under those credentials, SnapTrade would make all these accounts accessible over the SnapTrade API.

### **If I want to remove an account do I need to delete the connection?**

If you want to remove an account, you will need to delete the corresponding connection. You can do this using :api[Connections_removeBrokerageAuthorization].

### **If I delete connection, will it delete all accounts from that Connection? Can I delete only one account?**

Deleting the connection will remove all accounts under that connection. Instead of deleting individual accounts, you could mark them as hidden on your end and only pull information from accounts that are not hidden.

### How can I force a connection to become disabled for testing?

You can do this with the :api[Connections_disableBrokerageAuthorization] endpoint.

### **How do I enable connecting to 'X' broker on my API Key?**

By default, all brokers which can be enabled for you are enabled. For now, broker configuration is done manually on our end. Certain brokers require an application to enable the integration (Alpaca, Tradier, Tradestation, Questrade, Fidelity). Please reach out if you need access to one of these.

---

## Account Information

### What kind of accounts does SnapTrade support?

We support all kinds of accounts and it is brokerage dependent. In general, if the brokerage returns it to us, we will return it over the API. You can refer to the [SnapTrade Broker Support Matrix](https://snaptrade.notion.site/brokerages) and the field will be returned over the `raw_type` on the account object.

### How do I determine if an activity indicates the position was bought or sold?

If the activity resulted in a gain in position to the account (long), the activity will have a positive unit. If the activity resulted in a loss of position to the account (short), the activity will have a negative unit.

### **Is it possible to know a stock's first purchase date?**

Determining a stock's first purchase date varies by brokerage. Two key requirements must be met:

1. The brokerage must provide activities or transaction data that includes historical buy/sell records.
2. The brokerage must include complete transaction history in the account data.

Some brokerages have data retention limits—for example, Schwab only provides up to 4 years of historical data. You can check this here [SnapTrade Broker Support Matrix](https://snaptrade.notion.site/brokerages)

### When does account data get synced daily?

It is not consistent at the same time every day, but guarunteed once per day.

### My account data is stale, why is my account not syncing every day?

The connection is probably disabled, this happens when the access token is no longer valid. Please check using the :api[Connections_detailBrokerageAuthorization] and follow [this guide](https://docs.snaptrade.com/docs/fix-broken-connections) to repair the connection.

---

## Trading

### Is there a comprehensive list of symbol IDs that I can use for submitting trades?

A symbol is not guaranteed to be stable. Since a stock is able to be traded on multiple exchanges, you should get the symbol with :api[Trading_getUserAccountQuotes] at the time you want to place the trade.

---
