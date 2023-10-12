# Recommended endpoints to get started

# Holdings

### /accounts/{accountId}/holdings

:api[AccountInformation_getUserHoldings]

Used to return holdings for a specific account a user has connected in the following format:

```Text JSON
{
  "account": account info,
  "balances": balance info,
  "positions": position info,
  "option_positions": option position info,
  "orders": recent order info,
  "errors": error encountered if any,
  "total_value": total value of the account,
}
```

Pros:

- Can fetch all relevant account info in one api call

Cons:

- Can be slower response compared to calling only what you need individually

Tips:

- If looking to instead fetch holdings info in parts, you can split up the calls with the endpoints listed below. No reason to use the below endpoints in addition to the holdings endpoint, since information returned from below endpoint is already available in the holdings call

### /accounts

:api[AccountInformation_listUserAccounts]

Returns a list of all the accounts a user has connected

Pros:

- Quickest way to get info on that brokerage accounts a user has access to

### /accounts/{accountId}/balances

:api[AccountInformation_getUserAccountBalance]

Returns a list of all cash balances associated with the account id supplied, as well as what currency the balance is in

Pros:

- Quickest way to see what balances a user's account currently has

### /accounts/{accountId}/positions

:api[AccountInformation_getUserAccountPositions]

Returns a list of all positions associated with the account id supplied, as well as information on the security (current price, ticker, exchange, average purchase price, etc)

Pros:

- Quickest way to see what positions a user's account currently has

# Orders, Transactions, Activities

### /accounts/{accountId}/orders

<https://docs.snaptrade.com/reference/accountinformation_getuseraccountorders>

Returns a list of recent orders (buys, sells) from the brokerage

Pros:

- Implemented for all brokerages
- Realtime data 
- Includes all orders (not just executed orders)
- Has timestamps in addition to the date

Cons:

- Limited history (brokerage dependent)

### /activities

:api[TransactionsAndReporting_getActivities]

Returns a list of transactions/activities for the given user. Activities will include at minimum buys, sells, dividends, contributions, withdrawals. Some brokerages will also provide transactions for things like forex transactions, share splits, and more.

Pros:

- Includes all types of transactions, not just trades
- History goes all the way back to the date the account was opened

Cons:

- Only includes executed trades
- Gets updated end of day
- Not all brokerages support this feature
- Some brokerages only include date, not time of transaction

Tips:

- Syncing may not be instant upon initial brokerage connection for some brokerages, make use of the ACCOUNT_TRANSACTIONS_INITIAL_UPDATE webhook to be notified exactly when all transactions have been loaded for an account
