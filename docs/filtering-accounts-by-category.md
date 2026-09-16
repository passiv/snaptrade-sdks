# Filtering Accounts by Category

SnapTrade connections can return multiple account types from a single brokerage login. For example, a Robinhood or Fidelity connection may include an investment brokerage account alongside a line-of-credit or deposit (bank) account.

If your integration only supports investment flows - trading, holdings, balances - you'll want to filter out the non-investment accounts so they don't surface in your UI or trade logic.

## The `kind` Field

:api[Connections_listConnectionAccounts] returns the accounts for a connection in a `results` array. Each item in `results` is a discriminated union: every account includes a `kind` field that normalizes the account type across institutions and determines which other fields are present on the account.

| Value | Schema | Meaning |
|---|---|---|
| `investment` | `InvestmentAccount` | Brokerage / investment account (equities, options, crypto). |
| `deposit` | `DepositAccount` | Bank deposit account (checking, savings). |
| `line_of_credit` | `LineOfCreditAccount` | Line of credit account (for example, loans or credit cards). |

Fields such as `id`, `connection_id`, `display_name`, `masked_account_number`, `sync_status`, `raw_type`, and `net_value` are shared across all kinds. Kind-specific fields are only present on the matching schema - for example, `funding_date` and `is_paper` are only returned for `investment` accounts. Note that `net_value` is negative for `line_of_credit` accounts, representing money owed.

New kinds may be added over time. Match on the kinds your integration supports and ignore any `kind` value you don't recognize, rather than assuming every non-`deposit` account is an investment account.

If a user has multiple connections, call :api[Connections_listBrokerageAuthorizations] first, then call :api[Connections_listConnectionAccounts] for each connection.

## The `raw_type` Field

Alongside `kind`, every account also includes a `raw_type` field. This is the unnormalized account type string as provided by the institution (for example, `Margin`, `INDIVIDUAL`, `ROTH`, `TFSA`). Values differ per institution and are not standardized by SnapTrade.

Use `raw_type` when you need finer-grained distinctions than `kind` provides - for example, separating retirement accounts from taxable brokerage accounts within the `investment` kind. For high-level filtering between investment and non-investment accounts, prefer `kind`.

## Filtering in Your Code

The examples below list accounts across all of a user's connections and keep only the investment accounts. The SDK snippets show the Commercial API key shape with `userId` and `userSecret`; Personal API key users should omit `userId` and `userSecret` for direct API calls. SDK support for Personal API key users is coming soon.

### Node.js / TypeScript

In TypeScript, checking `kind` narrows the account to the matching schema, so kind-specific fields are type-safe after the check.

```ts
import type { ConnectionAccount, InvestmentAccount } from "snaptrade-typescript-sdk";

const { data: connections } = await snaptrade.connections.listBrokerageAuthorizations({
  userId,
  userSecret,
});

const accounts: ConnectionAccount[] = (
  await Promise.all(
    connections
      .filter((connection) => connection.id)
      .map((connection) =>
        snaptrade.connections.listConnectionAccounts({
          connectionId: connection.id!,
          userId,
          userSecret,
        })
      )
  )
).flatMap((response) => response.data.results);

const investmentAccounts = accounts.filter(
  (account): account is ConnectionAccount & InvestmentAccount =>
    account.kind === "investment"
);

// Or handle every kind explicitly:
for (const account of accounts) {
  switch (account.kind) {
    case "investment":
      console.log(account.display_name, account.funding_date, account.is_paper);
      break;
    case "deposit":
    case "line_of_credit":
      console.log(account.display_name, account.net_value);
      break;
    default:
      // Unrecognized kind - skip it.
      break;
  }
}
```

### Python

```python
connections = snaptrade.connections.list_brokerage_authorizations(
    user_id=user_id,
    user_secret=user_secret,
).body

accounts = []
for connection in connections:
    accounts.extend(
        snaptrade.connections.list_connection_accounts(
            connection_id=connection["id"],
            user_id=user_id,
            user_secret=user_secret,
        ).body["results"]
    )

investment_accounts = [a for a in accounts if a["kind"] == "investment"]

# Or handle every kind explicitly:
for account in accounts:
    match account["kind"]:
        case "investment":
            print(account["display_name"], account.get("funding_date"), account["is_paper"])
        case "deposit" | "line_of_credit":
            print(account["display_name"], account.get("net_value"))
        case _:
            # Unrecognized kind - skip it.
            pass
```

### cURL

```bash
# Replace <connectionId> with an id returned by /authorizations.
# Commercial API key example. Personal API key requests omit userId and userSecret.
curl 'https://api.snaptrade.com/api/v1/connections/<connectionId>/accounts?userId=...&userSecret=...' \
  | jq '[.results[] | select(.kind == "investment")]'
```


---

See also:
- [Account Data](https://docs.snaptrade.com/docs/account-data)
- [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade)
