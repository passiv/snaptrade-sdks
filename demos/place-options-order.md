# Place an Options Order

---

:::::info
Trading is only available to certain brokerages and requires a trade-enabled connection. See the supported brokerages list (Capabilities) in the docs. To enable trading, generate a Connection Portal URL with `connection_type` set to `trade`.
:::::

This demo places a single-leg options order using an OCC-formatted option symbol.

---

## 1. Initialize SnapTrade client and user

:::::form

::::input{name=SNAPTRADE_CLIENT_ID label="Client ID" placeholder="YOUR_CLIENT_ID"}

::::input{name=SNAPTRADE_CONSUMER_KEY label="Consumer Key" placeholder="YOUR_CONSUMER_KEY" type="password"}

::::input{name=USER_ID label="User ID" placeholder="YOUR_USER_ID"}

::::input{name=USER_SECRET label="User Secret" placeholder="YOUR_USER_SECRET" type="password"}

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

::::button[Initialize SDK Client]

:::::

---

## 2. Select an account

:::::form

```python
accounts = snaptrade.account_information.list_user_accounts(
  user_id=user_id,
  user_secret=user_secret
)
print(json.dumps(accounts.body, indent=2))

for account in accounts.body:
    print("::SAVE[ACCOUNTS]/{}".format(account["id"]))
```

::::button[Get Accounts]

:::::

---

## 3. Place options order (single leg)

Uses the [Place Options Order](https://docs.snaptrade.com/reference/Trading/Trading_placeMlegOrder) endpoint with one leg.

- Provide an OCC option symbol, e.g., `AAPL  251219C00240000` (two spaces between underlying and date).

:::::warn
If you connected a live brokerage account, be cautious when submitting orders. SnapTrade is not responsible for any financial losses incurred from using the API.
:::::

:::::form

::::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}
::::input{name=OPTION_SYMBOL label="OCC Option Symbol" placeholder="AAPL  251219C00240000"}
::::enum{name=ACTION label="Action" data="BUY_TO_OPEN,BUY_TO_CLOSE,SELL_TO_OPEN,SELL_TO_CLOSE" defaultValue=BUY_TO_OPEN}
::::enum{name=ORDER_TYPE label="Order Type" data="MARKET,LIMIT,STOP_LOSS_MARKET,STOP_LOSS_LIMIT" defaultValue=MARKET}
::::enum{name=TIME_IN_FORCE label="Time in Force" data="Day,GTC,FOK,IOC" defaultValue=Day}
::::enum{name=PRICE_EFFECT label="Price Effect" data="CREDIT,DEBIT,EVEN" optional}
::::number{name=LIMIT_PRICE label="Limit Price" step=0.01 precision=2 optional description="Required for LIMIT and STOP_LOSS_LIMIT"}
::::number{name=STOP_PRICE label="Stop Price" step=0.01 precision=2 optional description="Required for STOP_LOSS_MARKET and STOP_LOSS_LIMIT"}
::::number{name=UNITS label="Contracts" defaultValue=1 step=1 precision=0 description="Number of contracts"}

```python
mleg_trade_form = {
  "order_type": ORDER_TYPE,
  "time_in_force": TIME_IN_FORCE,
  "legs": [
    {
      "instrument": {
        "symbol": OPTION_SYMBOL,
        "instrument_type": "OPTION",
      },
      "action": ACTION,
      "units": UNITS,
    }
  ]
}

try:
  mleg_trade_form["limit_price"] = LIMIT_PRICE
except NameError:
  pass

try:
  mleg_trade_form["stop_price"] = STOP_PRICE
except NameError:
  pass

try:
  mleg_trade_form["price_effect"] = PRICE_EFFECT
except NameError:
  pass

result = snaptrade.trading.place_mleg_order(
  user_id=user_id,
  user_secret=user_secret,
  account_id=ACCOUNT_ID,
  **mleg_trade_form
)
print(json.dumps(result.body, indent=2))
```

::::button[Place Options Order]

:::::

```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  clientId: process.env.SNAPTRADE_CLIENT_ID!,
});

const res = await snaptrade.trading.placeMlegOrder({
  userId: process.env.SNAPTRADE_TEST_USER_ID!,
  userSecret: process.env.SNAPTRADE_TEST_USER_SECRET!,
  accountId: "<ACCOUNT_ID>",
  order_type: "MARKET",
  time_in_force: "Day",
  legs: [
    {
      instrument: { symbol: "AAPL  251219C00240000", instrument_type: "OPTION" },
      action: "BUY_TO_OPEN",
      units: 1,
    },
  ],
});
console.log(res.data);
```

---

## 4. Verify order status

Use the [List Orders](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoint to fetch recent orders.

:::::form{skippable}

::::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}
::::enum{name=STATE label="State" data="all,open,executed" defaultValue=open optional}
::::number{name=DAYS label="Days" placeholder=7 description="Number of days to look back (default: 30)" optional}

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

::::button[Get Recent Orders]

:::::
