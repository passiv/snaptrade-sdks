# Handling Users

:::info
This demo is for after a user is created and connected. See [Getting Started](/snaptrade/snaptrade-demos/getting-started) or
[Registering Users](/snaptrade/snaptrade-demos/registering-users) for creating and connecting a user to SnapTrade.
:::

### 1) Initialize a client with your clientId and consumerKey

You can get your `clientId` and `consumerKey` by contacting [api@snaptrade.com](mailto:api@snaptrade.com)

:::form

::input{name=SNAPTRADE_CLIENT_ID label="Client ID" placeholder="YOUR_CLIENT_ID" type="password"}

::input{name=SNAPTRADE_CONSUMER_KEY label="Consumer Key" placeholder="YOUR_CONSUMER_KEY" type="password"}

```python
from snaptrade_client import SnapTrade
from pprint import pprint
import uuid
import os

snaptrade = SnapTrade(
  consumer_key=SNAPTRADE_CONSUMER_KEY,
  client_id=SNAPTRADE_CLIENT_ID,
)

print("Successfully initiated client")
```

::button[Initialize SDK Client]

:::

### 2) Get all user holdings

List all accounts for the user, plus balances and positions for each account.

:::form

::input{name=USER_ID label="User ID" placeholder="YOUR_USER_ID" type="password"}

::input{name=USER_SECRET label="User Secret" placeholder="YOUR_USER_SECRET" type="password"}

```python
user_id = USER_ID
user_secret = USER_SECRET
holdings = snaptrade.account_information.get_all_user_holdings(
  user_id=USER_ID, user_secret=user_secret
)
pprint(holdings.body)
```

::button[Get all user holdings]

:::

### 3) Get Transactions / Historical Activities

Returns activities (transactions) for a user. Specifying start and end date is
highly recommended for automatic calls for better performance. This uses the
TransactionsAndReporting API.

:::form

::date{name=START_DATE label="Start Date" placeholder="START_DATE" valueFormat="YYYY-MM-DD" optional}
::date{name=END_DATE label="End Date" placeholder="END_DATE" valueFormat="YYYY-MM-DD" optional}
::input{name=ACCOUNTS label="Account(s)" placeholder="YOUR_ACCOUNT_IDS" description="Optional comma seperated list of account IDs used to filter the request on specific accounts" optional}
::input{name=BROKERAGE_AUTHORIZATIONS label="Brokerage Authorizations" placeholder="YOUR_BROKERAGE_AUTHORIZATION" description="Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations" optional}
::enum{name=TYPE label="Type" searchable nothingFound="No type" placeholder="TYPE" data="DIVIDEND,BUY,SELL,CONTRIBUTION,WITHDRAWAL,EXTERNAL_ASSET_TRANSFER_IN,EXTERNAL_ASSET_TRANSFER_OUT,INTERNAL_CASH_TRANSFER_IN,INTERNAL_CASH_TRANSFER_OUT,INTERNAL_ASSET_TRANSFER_IN,INTERNAL_ASSET_TRANSFER_OUT,INTEREST,REBATE,GOV_GRANT,TAX,FEE,REI,FXT" description="Optional comma seperated list of types to filter activities by" optional}

```python
activities = snaptrade.transactions_and_reporting.get_activities(
  user_id=user_id,
  user_secret=user_secret,
  start_date=START_DATE if "START_DATE" in globals() else None,
  end_date=END_DATE if "END_DATE" in globals() else None,
  accounts=ACCOUNTS if "ACCOUNTS" in globals() else None,
  brokerage_authorizations=BROKERAGE_AUTHORIZATIONS if "BROKERAGE_AUTHORIZATIONS" in globals() else None,
  type=TYPE if "TYPE" in globals() else None
)
pprint(activities.body)
```

::button[Get Activities]

:::

### 4) Get Quotes

Get symbol quotes for a user, these are account and thus brokerage specific.
That means if you have a US only account, you cannot get quotes for
international exchanges. This uses the Trading API.

:::form

::input{name=SYMBOLS label="Symbols" placeholder="AAPL" description="List of universal_symbol_id or tickers to get quotes for"}
::input{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT ID" description="The ID of the account to get quotes"}
::input{name=USE_TICKER type="checkbox" defaultValue=true label="Use Ticker" description="Should be set to True if providing tickers" optional}

```python
activities = snaptrade.trading.get_user_account_quotes(
  user_id=user_id,
  user_secret=user_secret,
  symbols=SYMBOLS,
  account_id=ACCOUNT_ID,
  use_ticker=USE_TICKER if "USE_TICKER" in globals() else None,
)
pprint(activities.body)
```

::button[Get Quotes]

:::
