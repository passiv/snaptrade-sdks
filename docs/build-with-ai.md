# Build Your Personal Investing App with AI

Use an AI coding assistant to turn your SnapTrade brokerage data into a personal dashboard, portfolio tracker, alerting tool, or investment workflow. This guide gives the assistant the SnapTrade context it needs while keeping your Personal API credentials secure.

By the end, you will have a local, read-only dashboard that can:

- List your brokerage accounts
- Show balances and buying power
- Show positions across your accounts
- Show recent orders and account activity
- Surface incomplete or broken brokerage connections

You can then ask your coding assistant to add allocation charts, contribution tracking, rebalancing suggestions, alerts, exports, and other features for your own investing workflow.

:::info
This guide is for a **SnapTrade Personal** user building an application for their own brokerage accounts. If you only want to ask an AI assistant questions about your portfolio, you can use the [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server) without building an app.
:::

## Choose the Right Way to Build

| What you want to do | Use |
| --- | --- |
| Ask ChatGPT, Claude, or another assistant questions about your accounts | [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server) |
| Build a private dashboard or automation for your own accounts | Personal API key and this guide |
| Build a read-only app that other SnapTrade Personal users can authorize | [SnapTrade OAuth](https://docs.snaptrade.com/docs/oauth-apps) |
| Build a product that creates and manages brokerage connections for its own users | [SnapTrade Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial) |

A Personal API key represents you. It is appropriate for software you operate for yourself, but it must not be distributed in an app or shared with other people.

## Before You Begin

You will need:

- A free [SnapTrade Personal account](https://dashboard.snaptrade.com/signup)
- At least one brokerage connected in the SnapTrade Dashboard
- Two-factor authentication enabled on your SnapTrade account
- A Personal API key from the [API Key page](https://dashboard.snaptrade.com/api-key)
- Node.js and an AI coding assistant that can work with a local project

The examples use TypeScript, Next.js, and the SnapTrade TypeScript SDK. The same approach works with another server-side framework or with the [SnapTrade Python SDK](https://pypi.org/project/snaptrade-python-sdk).

## 1. Start a Local Project

Create an empty directory for your dashboard and open it in your coding assistant. Ask the assistant to use a current, stable version of Next.js with the App Router and TypeScript.

You can start the project yourself:

```bash
npx create-next-app@latest my-investing-dashboard --typescript
cd my-investing-dashboard
npm install snaptrade-typescript-sdk
```

Do not paste your SnapTrade credentials into an AI prompt. Add them directly to a local `.env.local` file:

```dotenv
SNAPTRADE_CLIENT_ID=your_personal_client_id
SNAPTRADE_CONSUMER_KEY=your_personal_consumer_key
```

Confirm that `.env.local` is ignored by Git before continuing:

```bash
git check-ignore .env.local
```

If that command does not print `.env.local`, add `.env.local` to `.gitignore`.

:::info{title="Keep your credentials private"}
Your `consumerKey` can access your brokerage data and may be able to trade where trading is enabled. Keep it in server-side environment variables. Never expose it in browser JavaScript, commit it to Git, include it in a screenshot, or send it to a logging or analytics service.
:::

## 2. Give Your Coding Assistant the Build Prompt

Copy the prompt below into your coding assistant. You can change the visual direction and feature list, but keep the SnapTrade authentication and security requirements.

```text
Build a private, read-only investing dashboard for my own SnapTrade Personal
account.

Technical requirements:
- Use Next.js App Router and TypeScript.
- Use the official snaptrade-typescript-sdk package.
- Initialize the SDK with SnaptradeAuth.personalApiKey using
  SNAPTRADE_CLIENT_ID and SNAPTRADE_CONSUMER_KEY from server-side environment
  variables.
- Put SnapTrade initialization in a server-only module.
- Never send the consumer key, the initialized SnapTrade client, or raw
  environment variables to the browser.
- Do not call registerSnapTradeUser.
- Do not create, request, or pass a userId or userSecret. The Personal API key
  identifies me.
- Do not implement request signing manually.
- Do not add any endpoint that places, modifies, or cancels an order.
- Do not persist or cache raw brokerage responses unless I explicitly ask for
  storage and approve its security design.
- Do not use mock values when a real API request fails. Show a clear error and
  retain any other sections that loaded successfully.

Build a dashboard that:
- Lists my accounts with institution, account name, account number suffix,
  account type, and total value where available.
- Retrieves balances and unified positions for every account.
- Shows portfolio value, cash, positions, and allocation by account.
- Shows recent orders and recent account activity in separate sections.
- Shows loading, empty, partial-data, stale-data, and error states.
- Displays when the data was retrieved.
- Formats currencies using the currency reported by the API instead of assuming
  every account uses USD.
- Works well on desktop and mobile and meets basic accessibility requirements.

Implementation requirements:
- First inspect the installed SDK's TypeScript types and method signatures. Do
  not guess response shapes.
- Use listUserAccounts, getUserAccountBalance, getAllAccountPositions, and
  getAccountActivities where appropriate. Use getUserAccountRecentOrders for
  recent orders and listBrokerageAuthorizations for connection status.
- Keep data fetching on the server.
- Ensure the portfolio page is rendered dynamically instead of being included
  in a static build.
- Fetch independent account data concurrently without failing the entire page
  when one account request fails.
- Normalize the API responses into small view models before rendering.
- Avoid logging complete API responses because they contain financial data.
- Add an .env.example containing empty variable names, but never copy values
  from .env.local.
- Add a README with setup, local development, security, and troubleshooting
  instructions.
- Add focused tests for data normalization and partial API failures.
- Run formatting, linting, type checking, and tests when finished.

Before editing files, show me:
1. The proposed file structure.
2. The SnapTrade calls you intend to use.
3. Which code runs on the server and which code runs in the browser.
4. Any assumptions that need confirmation.
```

Requiring a plan first gives you a chance to catch incorrect authentication, unnecessary complexity, or accidental client-side access before the assistant writes the application.

## 3. Check the SnapTrade Client

The generated application should initialize SnapTrade in a server-only module similar to this:

```typescript
import "server-only";

import { Snaptrade, SnaptradeAuth } from "snaptrade-typescript-sdk";

const clientId = process.env.SNAPTRADE_CLIENT_ID;
const consumerKey = process.env.SNAPTRADE_CONSUMER_KEY;

if (!clientId || !consumerKey) {
  throw new Error(
    "SNAPTRADE_CLIENT_ID and SNAPTRADE_CONSUMER_KEY must be configured",
  );
}

export const snaptrade = new Snaptrade({
  auth: SnaptradeAuth.personalApiKey({
    clientId,
    consumerKey,
  }),
});
```

For Personal authentication, account calls do not include `userId` or `userSecret`:

```typescript
const accounts = await snaptrade.accountInformation.listUserAccounts();

const accountData = await Promise.allSettled(
  accounts.data.map(async (account) => {
    const accountId = account.id!;

    const [balances, positions] = await Promise.all([
      snaptrade.accountInformation.getUserAccountBalance({ accountId }),
      snaptrade.accountInformation.getAllAccountPositions({ accountId }),
    ]);

    return {
      account,
      balances: balances.data,
      positions: positions.data,
    };
  }),
);
```

`Promise.allSettled` is useful for a multi-account dashboard because one brokerage or endpoint can fail without hiding data from every other account. Your application should still report the partial failure rather than silently omitting it.

For more authentication examples, see [Authentication Methods](https://docs.snaptrade.com/docs/authentication-methods). For the available account endpoints, see [Account Data](https://docs.snaptrade.com/docs/account-data).

## 4. Run and Verify the Dashboard

Start the development server:

```bash
npm run dev
```

Before relying on the dashboard, verify:

- The accounts shown match the SnapTrade Dashboard.
- Account names and institution names are attached to the correct accounts.
- The dashboard does not assume every balance or position is denominated in the same currency.
- Empty accounts display as empty rather than as errors.
- A failure from one account produces a visible partial-data message.
- Refreshing the page does not place, modify, or cancel an order.
- Browser developer tools do not expose either SnapTrade credential.
- Server logs do not contain credentials or complete financial API responses.
- `.env.local` is ignored by Git and is absent from `git status`.

Brokerage data may update in real time or on a daily schedule depending on the brokerage and available data access. Display the time your application retrieved the data, but do not label it as a brokerage's last successful synchronization unless the API response provides that value. See [Real-time vs Daily Data](https://docs.snaptrade.com/docs/realtime-data).

## 5. Iterate With Smaller Prompts

Once the first version works, add one capability at a time and ask the assistant to preserve the authentication and security constraints from the original prompt.

Useful read-only additions include:

- Allocation by asset class, account, or currency
- Dividend and interest income summaries
- Deposit and contribution tracking
- Portfolio value history
- Registered versus non-registered account views
- CSV export
- Threshold alerts for cash, concentration, or allocation drift
- A proposed rebalancing plan that does not place orders
- A daily or weekly portfolio summary

For example:

```text
Add a read-only allocation-drift view. Let me define target percentages by asset
class, compare them with current positions, and show proposed dollar changes.
Do not add trading or order-placement calls. Preserve the existing server-only
SnapTrade client and partial-failure behavior. Explain how unknown securities
and multiple currencies are handled before implementing the calculation.
```

Treat AI-generated financial calculations as software that needs verification. Test totals, signs, currencies, dates, missing prices, option quantities, and other asset-specific behavior against known examples before using the output to make decisions.

## Deploying Your App

You can keep the dashboard local or deploy it to private infrastructure that you control. If you deploy it:

- Store credentials in the hosting provider's encrypted server-side environment settings.
- Require authentication before serving any portfolio data.
- Do not use a public, guessable dashboard URL as the only access control.
- Disable request and response body logging for financial endpoints.
- Avoid third-party analytics, replay, and error-reporting tools on pages containing financial data unless you have configured them to exclude sensitive values.
- Rotate your Personal API key immediately if it may have been exposed.

A Personal API key must not be embedded in an application you distribute to other users. If you want other SnapTrade Personal users to connect their accounts, build with [SnapTrade OAuth](https://docs.snaptrade.com/docs/oauth-apps) instead.

## Adding Investment Automation

Start by automating observation: scheduled refreshes, summaries, alerts, calculations, and proposed actions. These workflows are easier to inspect and reverse than automated trading.

Trading is deliberately outside this guide. If you later add it for your own accounts, treat it as a separate project phase and require:

- An explicit preview of the exact account, symbol, side, quantity, order type, limit price, and estimated impact
- A fresh human confirmation before every submitted order
- Maximum order-size and daily notional limits
- Duplicate-order and retry protection
- Durable audit logs that omit credentials
- A tested kill switch
- Clear handling for rejected, partially filled, cancelled, and stale orders

Do not let a language model turn free-form text directly into a submitted brokerage order. Review [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade) before adding any trading endpoint.

## Troubleshooting

### The assistant asks for `userId` or `userSecret`

Stop and correct it. Those credentials belong to the Commercial user model. A Personal API key identifies your SnapTrade user, so Personal account-data calls omit both fields.

### The assistant calls `registerSnapTradeUser`

Remove that call. Personal users do not register a subordinate SnapTrade user.

### The browser can see the consumer key

Move SnapTrade initialization and all API calls into server-only code. Environment variables prefixed with `NEXT_PUBLIC_` are exposed to the browser and must not contain SnapTrade credentials.

### One brokerage causes the whole page to fail

Fetch independent accounts concurrently, retain successful results, and display the failed account or section explicitly. Do not replace failed responses with invented balances or positions.

### Data differs from the brokerage

Check the connection status and data freshness before changing calculations. Some brokerages and plans provide daily rather than real-time holdings. See [Connections](https://docs.snaptrade.com/docs/connections), [Fixing Broken Connections](https://docs.snaptrade.com/docs/fix-broken-connections), and [Real-time vs Daily Data](https://docs.snaptrade.com/docs/realtime-data).

## Related

- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Authentication Methods](https://docs.snaptrade.com/docs/authentication-methods)
- [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial)
- [Account Data](https://docs.snaptrade.com/docs/account-data)
- [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
- [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps)
