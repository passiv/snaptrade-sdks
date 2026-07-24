# OpenBB SnapTrade Widget

The OpenBB SnapTrade widget connects your own brokerage accounts to OpenBB Workspace through [SnapTrade](https://snaptrade.com), so you can see your live holdings, balances, orders, and activity next to the rest of your research — plus let the Workspace AI agent answer questions about your real portfolio.

---

## 1. Create a SnapTrade account

Sign up for a personal SnapTrade account at **https://dashboard.snaptrade.com/signup?personal=**.

---

## 2. Get your API keys

Go to **https://dashboard.snaptrade.com/api-key**. Your key pair is already there:

- **Client ID**
- **Consumer key**

Copy both — you'll paste them into Workspace in the next step.

Treat these keys like a password: they unlock the brokerage accounts you connect. Don't share them, and don't put them into a Workspace instance other people can use.

---

## 3. Add your credentials in OpenBB Workspace

The OpenBB SnapTrade widget is available in the OpenBB Workspace app marketplace.

Click **Add Authentication** and add these two headers, using the values from step 2:

| Header name                       | Value             |
| --------------------------------- | ----------------- |
| `x-openbb-snaptrade-client-id`    | Your client ID    |
| `x-openbb-snaptrade-consumer-key` | Your consumer key |

---

## 4. Connect a brokerage account

Connections are **read-only**.

1. Open the **SnapTrade** app → **Connections** tab. (Or add the **Manage Connections** widget to any dashboard of your own.)
2. Click **Get Started**. SnapTrade's Connection Portal opens inside the widget.
3. Pick your brokerage from the list and sign in **on your brokerage's own page**.
4. When the portal finishes, you're returned to the connections list with the new connection showing. Your accounts now populate every widget.

The same widget is where you manage connections afterward:

- **Connect an Account** — link another brokerage.
- **Disconnect Account** — remove a connection; its accounts drop out of the dashboards immediately.
- **Reconnect** — re-authorize a connection your brokerage has expired.
