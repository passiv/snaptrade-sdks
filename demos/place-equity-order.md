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

if not quotes.body or len(quotes.body) == 0:
    raise ValueError(f"No quotes returned for ticker '{TICKER}'. Check the symbol and try again.")

universal_symbol_id = quotes.body[0]["symbol"]["id"]
print(f"Using Universal Symbol ID: {universal_symbol_id}")
print(f"::SAVE[UNIVERSAL_SYMBOL_ID]/{universal_symbol_id}")
```

:::button[Get Quote]

::::

```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  clientId: process.env.SNAPTRADE_CLIENT_ID!,
});

const quotes = await snaptrade.trading.getUserAccountQuotes({
  userId: process.env.SNAPTRADE_TEST_USER_ID!,
  userSecret: process.env.SNAPTRADE_TEST_USER_SECRET!,
  symbols: "AAPL",
  accountId: "<ACCOUNT_ID>",
  use_ticker: true,
});
if (!quotes.data.length) throw new Error("No quotes returned");
const universalSymbolId = quotes.data[0].symbol!.id!;
console.log({ universalSymbolId });
```

---

## 4. Place equity order

Uses the [Place Order](https://docs.snaptrade.com/reference/Trading/Trading_placeForceOrder) endpoint.

::::warn
If you connected a live brokerage account, be cautious when submitting orders. SnapTrade is not responsible for any financial losses incurred from using the API.
::::

::::form

:::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}
:::enum{name=ACTION label="Action" data="BUY,SELL" defaultValue=BUY}
:::enum{name=ORDER_TYPE label="Order Type" data="Market,Limit,StopLimit,Stop" defaultValue="Market"}
:::enum{name=TIME_IN_FORCE label="Time in Force" data="Day,GTC,FOK,IOC" defaultValue="Day"}
:::number{name=LIMIT_PRICE label="Limit Price" step=0.01 precision=2 optional description="Required for Limit and StopLimit"}
:::number{name=STOP_PRICE label="Stop Price" step=0.01 precision=2 optional description="Required for Stop and StopLimit"}
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

```typescript
import { Snaptrade } from "snaptrade-typescript-sdk";

const snaptrade = new Snaptrade({
  consumerKey: process.env.SNAPTRADE_CONSUMER_KEY!,
  clientId: process.env.SNAPTRADE_CLIENT_ID!,
});

const order = await snaptrade.trading.placeForceOrder({
  userId: process.env.SNAPTRADE_TEST_USER_ID!,
  userSecret: process.env.SNAPTRADE_TEST_USER_SECRET!,
  account_id: "<ACCOUNT_ID>",
  action: "BUY",
  universal_symbol_id: "<UNIVERSAL_SYMBOL_ID>",
  order_type: "Market",
  time_in_force: "Day",
  units: 1.0,
});
console.log(order.data);
```

---

## 5. Verify order status

Use the [List Orders](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoint to fetch recent orders. Note that this endpoint is cached per brokerage; allow some time after placing an order.

::::form{skippable}

:::enum{name=ACCOUNT_ID label="Account ID" placeholder="ACCOUNT_ID" savedData=ACCOUNTS}
:::enum{name=STATE label="State" data="all,open,executed" defaultValue=open optional}
:::number{name=DAYS label="Days" placeholder=7 description="Number of days to look back (default: 30)" optional}

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

:::button[Get Recent Orders]

::::
