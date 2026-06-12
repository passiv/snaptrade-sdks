# Sandbox

A simulated brokerage for exercising your integration end-to-end — connection flow, accounts, balances, holdings, orders, and transactions — without a real brokerage login. It returns deterministic data and lets you trigger specific success and failure outcomes.

## Getting access

- The sandbox feature is currently only available for users with **Commercial Test Keys**
- Sandbox is **off by default** — it won't appear for your users until it's enabled for your account.
- Request it from **support@snaptrade.com** with your **Client ID**.
- Once enabled, **Sandbox** shows at the **top** of the connection portal's institution list, flagged **For testing only**.

![Sandbox pinned to the top of the connection portal, flagged "For testing only"](./assets/sandbox-portal.png)

## Connecting

1. Generate a Connection Portal URL as usual (`loginSnapTradeUser`) and use a **read** connection type. Optionally pass `broker=SANDBOX` to jump straight past the institution list, skipping step 2.
2. Select **Sandbox**.
3. Pick a **scenario** to simulate → **Connect**.

## Scenarios

**Data — connection succeeds:**

- **Self-directed** (default) → 2 funded accounts with positions, orders, and transaction history
- **Cash only** → 1 cash account, no holdings
- **No transactions** → accounts with positions but no activity history
- **No accounts** → succeeds but returns zero accounts

**Errors — connection fails:**

- **Invalid credentials** → invalid-credentials error
- **Rate limited** → rate-limit error

## What the data covers (data scenarios)

- Accounts, balances (cash + buying power), and positions across a handful of well-known tickers
- Orders spanning every status — executed, partially filled, accepted, canceled, rejected
- Transactions covering **trades** (`BUY`, `SELL`), **cash & fees** (`CONTRIBUTION`, `WITHDRAWAL`, `INTEREST`, `FEE`, `TAX`, `REBATE`), **dividends & income** (`DIVIDEND`, `REI`, `STOCK_DIVIDEND`, `RETURN_OF_CAPITAL`, `DISTRIBUTION`), **corporate actions** (`SPLIT`, `REVERSE_SPLIT`, `SPINOFF`, `STOCK_MERGER`, `ADJUSTMENT`), and **transfers** (`TRANSFER`, `EXTERNAL_ASSET_TRANSFER_IN`/`_OUT`, `INTERNAL_CASH_TRANSFER_IN`/`_OUT`, `INTERNAL_ASSET_TRANSFER_IN`/`_OUT`)
- In the default **Self-directed** scenario these are **spread across the two accounts** (e.g. splits & dividends on one, transfers & mergers on the other) — iterate **all** accounts to see the full set

## Limitations

- **Read-only** — placing/canceling trades isn't supported, and Sandbox won't appear in **trade-only** connection sessions
- Data is **static and simulated** (timestamps are relative to the current time)
