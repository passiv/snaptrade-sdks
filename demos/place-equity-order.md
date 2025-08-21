# Place an Equity Order

---

::::info
Trading is only available to certain brokerages and requires a trade-enabled connection. See the supported brokerages list (Capabilities) in the docs. To enable trading, generate a Connection Portal URL with `connection_type` set to `trade`.
::::

This demo places a simple equity order.

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

## 3. Get a quote to identify the instrument

Uses the [Symbol Quote](https://docs.snaptrade.com/reference/Trading/Trading_getUserAccountQuotes) endpoint and saves the instrument's Universal Symbol ID.

::::form

:::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}
:::input{name=TICKER label="Ticker" defaultValue="AAPL" description="Ticker symbol to quote"}

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

:::button[Get Quote]

::::

---

## 4. Place equity order

Uses the [Place Order](https://docs.snaptrade.com/reference/Trading/Trading_placeForceOrder) endpoint.

::::warn
If you connected a live brokerage account, be cautious when submitting orders. SnapTrade is not responsible for any financial losses incurred from using the API.
::::

::::form

:::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}
:::enum{name=ACTION label="Action" data="BUY,SELL" defaultValue=BUY}
:::enum{name=ORDER_TYPE label="Order Type" data="Market,Limit,StopLimit,StopLoss" defaultValue="Market"}
:::enum{name=TIME_IN_FORCE label="Time in Force" data="Day,FOK,GTC" defaultValue="Day"}
:::number{name=LIMIT_PRICE label="Limit Price" step=0.01 precision=2 optional description="Required for Limit and StopLimit"}
:::number{name=STOP_PRICE label="Stop Price" step=0.01 precision=2 optional description="Required for StopLoss and StopLimit"}
:::number{name=UNITS label="Units" defaultValue=1 step=0.05 precision=2 description="Number of shares (fractional allowed)"}

```python
try:
    price = LIMIT_PRICE
except NameError:
    price = None

try:
    stop = STOP_PRICE
except NameError:
    stop = None

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

:::button[Place Order]

::::
