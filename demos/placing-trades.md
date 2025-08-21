# Placing Orders

---

:::info
You need an existing SnapTrade user with a connected brokerage account for this demo. Please finish the [Getting Started](https://docs.snaptrade.com/demo/getting-started) demo first.
:::

In this interactive demo, you'll learn how to place equity order using the SnapTrade API. Trading is only available to certain brokerages. See [here](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=e7bbcbf9f272441593f93decde660687&pvs=4) for a complete list of supported brokerages and their capabilities.

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

:::

---

## 2. Create a trade-enabled connection

By default, SnapTrade connections are read-only. To enable trading for a specific connection, you need to pass in `connection_type="trade"` when generating the Connection Portal URL.

:::form

```python
redirect_uri = snaptrade.authentication.login_snap_trade_user(
  user_id=user_id, user_secret=user_secret, connection_type="trade"
)
print(json.dumps(redirect_uri.body, indent=2))
```

::button[Generate Trade-Enabled Connection Portal URL]

:::

From the response, open the redirect URL in a new browser tab to complete the connection, and close it after you're done.

If you don't have a live brokerage account to test with, you can create a Paper Trading account with [Alpaca](https://app.alpaca.markets/signup) and select "Alpaca Paper" as the instituion in the Connection Portal when prompted.


## 3. List connected accounts

Once the end user makes a successful connection, SnapTrade will retrieve all the brokerage accounts that the user has granted access to. You can use the <a href="https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_listUserAccounts" target="_blank">List Accounts</a> endpoint to retrieve all connected accounts. For each account, the `id` field uniquely identifies the account within SnapTrade and needs to be passed in for all subsequent account-related API calls.

:::form

```python
accounts = snaptrade.account_information.list_user_accounts(
    user_id=user_id,
    user_secret=user_secret
)
print(json.dumps(accounts.body, indent=2))

for account in accounts.body:
    print("::SAVE[ACCOUNTS]/{}".format(account["id"]))
```

::button[List Accounts]

:::

## 4. Identify the instrument to trade

To identify the instrument you want to trade, you need to know the Universal Symbol ID of the instrument. A Universal Symbol is SnapTrade's way to uniquely describe a single security + exchange combination across all brokerages. You can use the <a href="https://docs.snaptrade.com/reference/Trading/Trading_getUserAccountQuotes" target="_blank">Symbol Quote</a> endpoint to find the Universal Symbol ID along with the latest market quote of the instrument you want to trade.

:::form

::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS description="The ID of the account to submit the order to."}
::input{name=TICKER label="Ticker" defaultValue="AAPL" description="The ticker symbol of the instrument to get quote for."}

```python
quotes = snaptrade.trading.get_user_account_quotes(
  user_id=user_id,
  user_secret=user_secret,
  symbols=TICKER,
  account_id=ACCOUNT_ID,
  use_ticker=True,
)
print(json.dumps(quotes.body, indent=2))

universal_symbol_id = quotes.body[0]['symbol']['id']
```

::button[Get Quotes]

:::


## 5. Submit an equity order

You can use the <a href="https://docs.snaptrade.com/reference/Trading/Trading_placeForceOrder" target="_blank">Place Order</a> endpoint to submit an equity order under the connected brokerage account.

:::warn
If you connected a live brokerage account, please be cautious when submitting orders. SnapTrade is not responsible for any financial losses incurred from using the API.
:::

:::form

::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS description="The ID of the account to submit the order to."}
::enum{name=ACTION label="Action" data="BUY,SELL" defaultValue=BUY}
::enum{name=ORDER_TYPE label="Order Type" data="Market,Limit,StopLimit,StopLoss" defaultValue="Market"}
::enum{name=TIME_IN_FORCE label="Time in Force" data="Day,FOK,GTC" defaultValue="Day"}
::number{name=LIMIT_PRICE label="Limit Price" step=0.01 precision=2 optional description="The limit price for Limit and StopLimit orders."}
::number{name=STOP_PRICE label="Stop Price" step=0.01 precision=2 optional description="The stop price for StopLimit and StopLoss orders."}
::number{name=UNITS label="Units" defaultValue=1 step=0.05 precision=2 description="The number of shares to buy or sell. Can be decimal for fractional shares."}

```python
try:
    price=LIMIT_PRICE
except NameError:
    price=None

try:
    stop=STOP_PRICE
except NameError:
    stop=None

result = snaptrade.trading.place_force_order(
  user_id=user_id,
  user_secret=user_secret,
  action=ACTION,
  account_id=ACCOUNT_ID,
  universal_symbol_id=universal_symbol_id,
  order_type=ORDER_TYPE,
  time_in_force=TIME_IN_FORCE,
  price=price,
  stop=stop,
  units=UNITS,
)
print(json.dumps(result.body, indent=2))
```

::button[Place Order]

:::

If the order is successfully placed, you'll receive a response with the order details. You can use the `brokerage_order_id` in the response to track the order status. Please double check in your brokerage account to ensure the order was placed successfully.
