# Filtering Accounts by Category

SnapTrade connections can return multiple account types from a single brokerage login. For example, a Robinhood or Fidelity connection may include an investment brokerage account alongside a line-of-credit or deposit (bank) account.

If your integration only supports investment flows - trading, holdings, balances - you'll want to filter out the non-investment accounts so they don't surface in your UI or trade logic.

## The `account_category` Field

Every account returned by SnapTrade includes an `account_category` field that normalizes the account type across brokerages.

| Value | Meaning |
|---|---|
| `INVESTMENT` | Brokerage / investment account (equities, options, crypto). |
| `DEPOSIT` | Bank deposit account (checking, savings). |
| `LOC` | Line of credit account (for example, loans or credit cards). |
| `null` | Category could not be determined (brokerage did not return a recognizable type). Treat as an investment account so legitimate brokerage accounts are not accidentally hidden from trading and holdings flows. |

The field is returned from both :api[Connections_listBrokerageAuthorizationAccounts] and :api[AccountInformation_getUserAccountDetails]. If a user has multiple connections, call :api[Connections_listBrokerageAuthorizations] first, then call :api[Connections_listBrokerageAuthorizationAccounts] for each connection.

## The `raw_type` Field

Alongside `account_category`, every account also includes a `raw_type` field. This is the unnormalized account type string as provided by the brokerage (for example, `Margin`, `INDIVIDUAL`, `ROTH`, `TFSA`). Values differ per brokerage and are not standardized by SnapTrade.

Use `raw_type` when you need finer-grained distinctions than `account_category` provides - for example, separating retirement accounts from taxable brokerage accounts within the `INVESTMENT` category. For high-level filtering between investment and non-investment accounts, prefer `account_category`.

## Filtering in Your Code

The examples below select a single connection for brevity. If a user has multiple connections, choose the connection whose accounts you want to filter before listing accounts for that connection.

### Node.js / TypeScript

```ts
const { data: connections } = await snaptrade.connections.listBrokerageAuthorizations({
  userId,
  userSecret,
});

// Select the connection whose accounts you want to filter.
const connection = connections[0];
const { data: accounts } = await snaptrade.connections.listBrokerageAuthorizationAccounts({
  authorizationId: connection.id!,
  userId,
  userSecret,
});

const investmentAccounts = accounts.filter(
  (a) => a.account_category === "INVESTMENT" || a.account_category === null
);
```

### Python

```python
connections = snaptrade.connections.list_brokerage_authorizations(
    user_id=user_id,
    user_secret=user_secret,
).body

# Select the connection whose accounts you want to filter.
connection = connections[0]
accounts = snaptrade.connections.list_brokerage_authorization_accounts(
    authorization_id=connection["id"],
    user_id=user_id,
    user_secret=user_secret,
).body

investment_accounts = [
    a for a in accounts
    if a.get("account_category") in ("INVESTMENT", None)
]
```

### cURL

```bash
# Replace <authorizationId> with an id returned by /authorizations.
curl 'https://api.snaptrade.com/api/v1/authorizations/<authorizationId>/accounts?userId=...&userSecret=...' \
  | jq '[.[] | select(.account_category == "INVESTMENT" or .account_category == null)]'
```


---

See also:
- [Account Data](https://docs.snaptrade.com/docs/account-data)
- [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade)
