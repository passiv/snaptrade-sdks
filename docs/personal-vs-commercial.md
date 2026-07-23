# SnapTrade Personal vs Commercial

SnapTrade supports two primary customer experiences: **Personal** and **Commercial**. Both can use SnapTrade to connect brokerage accounts, retrieve account data, and, where enabled, place trades. The important difference is who owns the SnapTrade account and how users are represented.

Use this guide to choose the right integration model before building authentication, user registration, connection management, billing, and support flows.

:::info
Personal and Commercial are customer experiences, not billing plan names. Billing plans such as Free, Pay-as-you-go, and Custom control limits, pricing, and feature availability. A customer's Personal or Commercial experience controls how SnapTrade users, credentials, and Connection Portal flows behave.
:::

## Quick Comparison

| Area | Personal | Commercial |
| --- | --- | --- |
| Intended user | An individual using SnapTrade for their own brokerage accounts | A company building an app for its own end users |
| SnapTrade account owner | The individual investor | The developer, company, or partner |
| End-user model | The signed-in Personal user is the SnapTrade user | Your app creates one SnapTrade `userId` and `userSecret` per end user |
| Authentication options | Personal client ID and consumer key | Commercial client ID and consumer key |
| API authorization | Signed requests with a Personal consumer key | Signed requests using the Commercial consumer key |
| User registration | Do not call :api[Authentication_registerSnapTradeUser] for Personal API key authentication | Call :api[Authentication_registerSnapTradeUser] before creating connections |
| Connection Portal | Opens for the Personal user's own brokerage connections | Opens for a specific SnapTrade user managed by your app |
| MCP server | Supported; the MCP server is designed for SnapTrade Personal users | Not used with Commercial developer API keys |
| Key lifecycle | Personal customers can create one Personal client ID and consumer key in the dashboard | Commercial customers start with a test key and can create production keys after KYC approval |
| Billing | Free | Connected users and usage under the Commercial customer agreement |

## Choose Personal When

Choose the Personal experience when the person using SnapTrade is connecting and managing their own brokerage accounts.

Common Personal use cases include:

- An individual using the SnapTrade Dashboard directly.
- A CLI, desktop app, or AI assistant connector that lets the user sign in with their own SnapTrade account.
- Portfolio analysis and trading for the user's own accounts.
- Connection management for the user's own brokerages.

Personal client ID and consumer key authentication is available for Personal users who need signed-request workflows, including trading with their own accounts where enabled. The Personal user represents themselves. Unlike a Commercial integration, your app should not create a separate SnapTrade user for them.

For Personal API key authentication:

- Sign requests with the Personal `consumerKey`.
- Do not create a SnapTrade user with :api[Authentication_registerSnapTradeUser].
- Do not store or send a `userSecret`.
- Omit `userId` and `userSecret` when making API requests; SnapTrade resolves the user from the Personal API key.

## Choose Commercial When

Choose the Commercial experience when you are building an application for your own end users and need SnapTrade as infrastructure behind your product.

Common Commercial use cases include:

- A fintech app that lets many app users connect their brokerages.
- A portfolio management, tax, financial planning, trading, or analytics product.
- A backend service that needs to create, track, and support many SnapTrade users.
- Production integrations that need webhooks, billing, compliance review, and higher limits.

Commercial integrations use a SnapTrade client ID and consumer key. Your backend signs requests with the consumer key and keeps that key secret.

For each end user in your application:

1. Create a stable SnapTrade `userId` with :api[Authentication_registerSnapTradeUser].
2. Store the returned `userSecret` securely.
3. Generate a Connection Portal link with :api[Authentication_loginSnapTradeUser].
4. Send your end user through the Connection Portal.
5. Use the `userId`, `userSecret`, and account IDs to retrieve data or perform enabled trading workflows.

Commercial `userId` values should be immutable identifiers from your system. Avoid email addresses because users can change emails and because user IDs may appear in logs, support workflows, or billing reconciliation.

## Credentials And Keys

Both experiences can involve a SnapTrade client ID and consumer key, but they are used differently.

**Personal client ID and consumer key**

- Belong to an individual Personal customer.
- Represent that individual's SnapTrade access.
- Do not imply that your app should create subordinate SnapTrade users.
- Are useful for local tools or advanced Personal workflows where signed-request authentication is available.

**Commercial client ID and consumer key**

- Belong to a company or developer customer.
- Represent an integration that manages many SnapTrade users.
- Must be stored only on a backend or other secure server-side environment.
- Are used to generate request signatures and validate webhook signatures.

In the SnapTrade Dashboard, Commercial customers typically create a test key first. Production key creation requires KYC approval and a payment method. Personal customers are limited to one free Personal client ID and consumer key, which they can use for their own production use cases.

## Users And Connections

The biggest implementation difference is whether your app creates SnapTrade users.

### Personal

With Personal API key authentication, the Personal API key identifies the SnapTrade user. Your app can call normal SnapTrade APIs, but user identity is inferred from the key. Do not call user-registration endpoints or store a `userSecret`.

When opening the Connection Portal for a Personal API key user, generate the portal link without `userId` or `userSecret`. SnapTrade resolves the Personal user's context from the API key.

### Commercial

With Commercial client ID and consumer key authentication, your app owns user mapping. Each end user of your app should have a corresponding SnapTrade user.

A typical mapping is:

```
Your app user  ->  SnapTrade userId + userSecret  ->  connections  ->  accounts
```

Create one SnapTrade user per end user, then create one or more brokerage connections under that user. When a brokerage login contains multiple brokerage accounts, those accounts appear under the same connection.

## Trading And Write Access

Feature availability depends on the customer, key, brokerage, account, and plan.

Personal users can trade with their own accounts using SnapTrade client ID and consumer key authentication where trading is enabled for the account and brokerage.

For Commercial integrations, trading requires:

- A Commercial key with trading features enabled.
- A brokerage and account that support trading.
- A connection created with the appropriate connection type.
- Your application's own user confirmation and compliance flow before submitting orders.

## Billing And Limits

Personal versus Commercial determines the user model. Personal users are currently completely free. Commercial billing plans determine pricing, limits, and enabled features for Commercial customers.

Commercial billing is usually based on connected users and usage under the customer's agreement. A connected user is an end user who has at least one completed brokerage connection or relevant sync activity during the billing period.

Plan-level settings can affect:

- Number of allowed connections.
- Whether data is real-time or daily.
- Whether manual refreshes are enabled or billable.
- Access to recent orders, trading, and other paid features.
- Whether production keys can be created.

For Commercial integrations, design your onboarding, usage tracking, and support workflows around the connected-user model described in [Billing](https://docs.snaptrade.com/docs/billing). Personal users do not need to design around Commercial connected-user billing.

## Implementation Checklist

Before building, decide:

- Is the person connecting accounts the SnapTrade customer, or is your company the SnapTrade customer?
- Will your backend sign API requests with a consumer key?
- Should your app call :api[Authentication_registerSnapTradeUser]?
- Where will credentials and user secrets be stored?
- Who owns support for reconnecting brokerages and removing connections?
- If you are building a Commercial integration, which billing plan controls limits, data freshness, and feature access?

If the user owns the SnapTrade account, use the Personal model. If your app owns the integration and manages many end users, use the Commercial model.

## Related

- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Authentication Methods](https://docs.snaptrade.com/docs/authentication-methods)
- [Terminology](https://docs.snaptrade.com/docs/terminology)
- [Billing](https://docs.snaptrade.com/docs/billing)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
