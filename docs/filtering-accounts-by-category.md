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

The field is returned from both :api[AccountInformation_listUserAccounts] and :api[AccountInformation_getUserAccountDetails].

## The `raw_type` Field

Alongside `account_category`, every account also includes a `raw_type` field. This is the unnormalized account type string as provided by the brokerage (for example, `Margin`, `INDIVIDUAL`, `ROTH`, `TFSA`). Values differ per brokerage and are not standardized by SnapTrade.

Use `raw_type` when you need finer-grained distinctions than `account_category` provides - for example, separating retirement accounts from taxable brokerage accounts within the `INVESTMENT` category. For high-level filtering between investment and non-investment accounts, prefer `account_category`.

## Filtering in Your Code

### Node.js / TypeScript

```ts
const { data: accounts } = await snaptrade.accountInformation.listUserAccounts({
  userId,
  userSecret,
});

const investmentAccounts = accounts.filter(
  (a) => a.account_category === "INVESTMENT" || a.account_category === null
);
```

### Python

```python
accounts = snaptrade.account_information.list_user_accounts(
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
curl 'https://api.snaptrade.com/api/v1/accounts?userId=...&userSecret=...' \
  | jq '[.[] | select(.account_category == "INVESTMENT" or .account_category == null)]'
```


---

See also:
- [Account Data](https://docs.snaptrade.com/docs/account-data)
- [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade)
