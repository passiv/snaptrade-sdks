# Pull Positions

---

::::info
You need an existing SnapTrade user with a connected brokerage account for this demo. Please finish the [Getting Started](https://docs.snaptrade.com/demo/getting-started) demo first.
::::

This demo retrieves equity/mutual fund/crypto positions and option positions for a selected account.

---

## 1. Initialize SnapTrade client and user

::::form

:::input{name=SNAPTRADE_CLIENT_ID label="Client ID" placeholder="YOUR_CLIENT_ID"}

:::input{name=SNAPTRADE_CONSUMER_KEY label="Consumer Key" placeholder="YOUR_CONSUMER_KEY" type="password"}

:::input{name=USER_ID label="User ID" placeholder="YOUR_USER_ID"}

:::input{name=USER_SECRET label="User Secret" placeholder="YOUR_USER_SECRET" type="password"}

```python
from snaptrade_client import SnapTrade
import json

snaptrade = SnapTrade(
  consumer_key=SNAPTRADE_CONSUMER_KEY,
  client_id=SNAPTRADE_CLIENT_ID,
)

user_id = USER_ID
user_secret = USER_SECRET

print("Successfully initiated client")
```

:::button[Initialize SDK Client]

::::

---

## 2. Select an account

::::form

```python
accounts = snaptrade.account_information.list_user_accounts(
  user_id=user_id,
  user_secret=user_secret
)
print(json.dumps(accounts.body, indent=2))

for account in accounts.body:
    print("::SAVE[ACCOUNTS]/{}".format(account["id"]))
```

:::button[Get Accounts]

::::

---

## 3. Get equity positions

Uses the [Account Positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountPositions) endpoint.

::::form{skippable}

:::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}

```python
positions = snaptrade.account_information.get_user_account_positions(
  account_id=ACCOUNT_ID,
  user_id=user_id,
  user_secret=user_secret
)
print(json.dumps(positions.body, indent=2))
```

:::button[Get Equity Positions]

::::

---

## 4. Get option positions

Uses the [Options Positions](https://docs.snaptrade.com/reference/Options/Options_listOptionHoldings) endpoint.

::::form{skippable}

:::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}

```python
option_positions = snaptrade.options.list_option_holdings(
  account_id=ACCOUNT_ID,
  user_id=user_id,
  user_secret=user_secret
)
print(json.dumps(option_positions.body, indent=2))
```

:::button[Get Option Positions]

::::
