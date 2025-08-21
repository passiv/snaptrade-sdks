# Get Orders

---

::::info
You need an existing SnapTrade user with a connected brokerage account for this demo. Please finish the [Getting Started](https://docs.snaptrade.com/demo/getting-started) demo first.
::::

This demo retrieves recent orders for a selected account.

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

## 3. List account orders

Uses the [List Orders](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoint.

::::form{skippable}

:::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}
:::enum{name=STATE label="State" data="all,open,executed" defaultValue=all optional}
:::number{name=DAYS label="Days" placeholder=30 description="Number of days to look back (default: 30)" optional}

```python
orders = snaptrade.account_information.get_user_account_orders(
  account_id=ACCOUNT_ID,
  user_id=user_id,
  user_secret=user_secret,
  state=STATE if "STATE" in globals() else None,
  days=DAYS if "DAYS" in globals() else None,
)
print(json.dumps(orders.body, indent=2))
```

:::button[Get Orders]

::::
