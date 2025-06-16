# Get Historical Transactions

---

:::info
You need an existing SnapTrade user with a connected brokerage account for this demo. Please finish the [Getting Started](https://docs.snaptrade.com/demo/getting-started) demo first.
:::

Use this interactive demo to retrieve historical transactions from a specific connected account for a SnapTrade user.

---

## 1. Initialize SnapTrade client and the connected SnapTrade user

Please copy the values from the [Getting Started](https://docs.snaptrade.com/demo/getting-started) demo and paste them below.

:::form

::input{name=SNAPTRADE_CLIENT_ID label="Client ID" placeholder="YOUR_CLIENT_ID"}

::input{name=SNAPTRADE_CONSUMER_KEY label="Consumer Key" placeholder="YOUR_CONSUMER_KEY" type="password"}

::input{name=USER_ID label="User ID" placeholder="YOUR_USER_ID"}

::input{name=USER_SECRET label="User Secret" placeholder="YOUR_USER_SECRET" type="password"}

```python
from snaptrade_client import SnapTrade
import json
import uuid
import os

snaptrade = SnapTrade(
  consumer_key=SNAPTRADE_CONSUMER_KEY,
  client_id=SNAPTRADE_CLIENT_ID,
)

user_id = USER_ID
user_secret = USER_SECRET

print("Successfully initiated client")
```

::button[Initialize SDK Client]


---

## 2. Get user's accounts

First, let's get a list of the user's connected accounts to select one for fetching transactions.

```python
accounts = snaptrade.account_information.get_user_accounts(
  user_id=user_id,
  user_secret=user_secret
)
print(json.dumps(accounts.body, indent=2))
```

::button[Get Accounts]

:::

---

## 3. Retrieve historical transactions

Once you have the account ID from the previous step, you can retrieve historical transactions using the [Account Activities](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAccountActivities) endpoint. This endpoint is paginated with a default page size of 1000 transactions and returns them in reverse chronological order.

Please note for accounts with a large number of transactions, it could take a significant amount of time for SnapTrade to initially retrieve and index the data. If you don't see any transactions now, please try again later.

:::form{skippable}

::input{name=ACCOUNT_ID label="Account ID" placeholder="YOUR_ACCOUNT_ID" description="The ID of the account to fetch transactions for"}

::date{name=START_DATE label="Start Date" placeholder="START_DATE" description="The start date (inclusive) of the transaction history to retrieve" valueFormat="YYYY-MM-DD" optional}
::date{name=END_DATE label="End Date" placeholder="END_DATE" description="The end date (inclusive) of the transaction history to retrieve" valueFormat="YYYY-MM-DD" optional}
::enum{name=TYPE label="Type" searchable nothingFound="No type" placeholder="TYPE" data="BUY,SELL,DIVIDEND,CONTRIBUTION,WITHDRAWAL,REI,INTEREST,FEE,OPTIONEXPIRATION,OPTIONASSIGNMENT,OPTIONEXERCISE" description="Optional comma seperated list of types to filter transactions by" optional}
::input{name=OFFSET label="Offset" placeholder="0" description="Starting point for pagination (default: 0)" optional}
::input{name=LIMIT label="Limit" placeholder="1000" description="Maximum number of transactions to return (default: 1000)" optional}

```python
activities = snaptrade.account_information.get_account_activities(
  account_id=ACCOUNT_ID,
  user_id=user_id,
  user_secret=user_secret,
  start_date=START_DATE if "START_DATE" in globals() else None,
  end_date=END_DATE if "END_DATE" in globals() else None,
  type=TYPE if "TYPE" in globals() else None,
  offset=OFFSET if "OFFSET" in globals() else None,
  limit=LIMIT if "LIMIT" in globals() else None
)
print(json.dumps(activities.body, indent=2))
```

::button[Get Transactions]

:::
