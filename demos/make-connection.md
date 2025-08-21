# Make a Connection

---

::::info
You need a SnapTrade user to generate a Connection Portal URL. If you have not created one yet, complete the [Getting Started](https://docs.snaptrade.com/demo/getting-started) demo first.
::::

Use this interactive demo to generate a Connection Portal URL for a user and verify connected accounts.

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

## 2. Generate Connection Portal URL

Select the connection type. Use Trade only if you intend to place orders.

::::form

:::enum{name=CONNECTION_TYPE label="Connection Type" data="read,trade" defaultValue=read}

```python
kwargs = {}
try:
    if CONNECTION_TYPE == "trade":
        kwargs["connection_type"] = "trade"
except NameError:
    pass

redirect_uri = snaptrade.authentication.login_snap_trade_user(
  user_id=user_id,
  user_secret=user_secret,
  **kwargs
)
print(json.dumps(redirect_uri.body, indent=2))
```

:::button[Generate Connection Portal URL]

::::

From the response, open the `redirectURI` in a new browser tab to complete the connection, and close it after you're done.

---

## 3. List connected accounts

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

:::button[List Accounts]

::::
