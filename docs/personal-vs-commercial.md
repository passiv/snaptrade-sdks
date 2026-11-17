# SnapTrade Personal vs Commercial

SnapTrade supports two primary customer experiences: **Personal** and **Commercial**. Both can use SnapTrade to connect brokerage accounts, retrieve account data, and, where enabled, place trades. The important difference is who owns the SnapTrade account and how users are represented.

This page explains customer accounts and billing context. To choose an authentication and connection flow, start with [Choose Your Integration](https://docs.snaptrade.com/docs/authentication-methods). Commercial apps can use either OAuth or a Commercial API key.

:::info
Personal and Commercial are customer experiences, not billing plan names. Billing plans such as Build, Launch, and Custom control limits, pricing, and feature availability. A customer's Personal or Commercial experience controls how SnapTrade users, credentials, and Connection Portal flows behave.
:::

## Quick Comparison

| Area | Personal | Commercial |
| --- | --- | --- |
| Intended user | An individual using SnapTrade for their own brokerage accounts | A company building an app for its own end users |
| SnapTrade account owner | The individual investor | The developer, company, or partner |
| End-user model | The signed-in Personal user is the SnapTrade user | API key: your app creates a SnapTrade user per end user. OAuth: users authorize their existing Personal identity |
| Authentication options | OAuth for sharing connected account data, or a Personal client ID and consumer key for direct access | Commercial API key or registered OAuth app |
| API authorization | OAuth bearer tokens for apps, or signed requests with a Personal consumer key | API key: signed requests. OAuth: Bearer access tokens |
| User registration | Do not call :api[Authentication_registerSnapTradeUser] for Personal API key authentication | Required for Commercial API keys; not used for OAuth |
| Connection Portal | Opens for the Personal user's own brokerage connections | API key: opens for an app-managed user. OAuth: users manage connections in their Personal Dashboard |
| Trading | Supported for the Personal user's own accounts where enabled | Supported for app users where enabled |
| Webhooks | Available | Available |
| MCP server | Supported; the MCP server is designed for SnapTrade Personal users | Not used with Commercial developer API keys |
| Key lifecycle | Personal customers can create one Personal client ID and consumer key in the dashboard | Commercial customers create test API keys or OAuth apps; production requires approval |
| Billing | Free | Connected users and usage under the Commercial customer agreement |

## Choose Personal When

Choose the Personal experience when the person using SnapTrade is connecting and managing their own brokerage accounts.

Common Personal use cases include:

- An individual using the SnapTrade Dashboard directly.
- A CLI, desktop app, or AI assistant connector that lets the user sign in with their own SnapTrade account.
- Portfolio analysis and trading for the user's own accounts.
- Connection management for the user's own brokerages.

Most Personal users connect their brokerage accounts in the SnapTrade Dashboard and authorize OAuth-enabled apps or AI assistants to read their data. OAuth apps receive scoped tokens rather than the user's API credentials.

Personal client ID and consumer key authentication is available for Personal users who need direct signed-request workflows, including trading with their own accounts where enabled. The Personal user represents themselves. As with OAuth, do not create a separate SnapTrade user for them.

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
- Production integrations that need billing, compliance review, and higher limits.

OAuth apps request permission to use connections managed by SnapTrade Personal users; they use OAuth tokens for API calls. See [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps).

The following user-management workflow applies to **Commercial API-key integrations**. Your backend signs requests with its consumer key and keeps that key secret. See [Build With a Commercial API Key](https://docs.snaptrade.com/docs/commercial-api-key).

For each end user in your application:

1. Create a stable SnapTrade `userId` with :api[Authentication_registerSnapTradeUser].
2. Store the returned `userSecret` securely.
3. Generate a Connection Portal link with :api[Authentication_loginSnapTradeUser].
4. Send your end user through the Connection Portal.
5. Use the `userId`, `userSecret`, and account IDs to retrieve data or perform enabled trading workflows.

Commercial `userId` values should be immutable identifiers from your system. Avoid email addresses because users can change emails and because user IDs may appear in logs, support workflows, or billing reconciliation.

## Credentials And Keys

API-key integrations in both experiences use a client ID and consumer key. OAuth instead uses a registered app’s client ID and client secret for token requests, and user-granted access tokens for API calls. The consumer key may still be needed for webhook signature verification; it is not an OAuth API credential.

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

In the SnapTrade Dashboard, Commercial customers typically create a test key first. Production key creation requires KYC approval and a payment method. Personal customers are limited to one free Personal client ID and consumer key for their own brokerage accounts.

## Users And Connections

User creation depends on the integration method: Commercial API-key apps create users, while Personal API keys and OAuth resolve existing users from their credentials.

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

For Commercial API-key integrations, trading requires:

- A Commercial key with trading features enabled.
- A brokerage and account that support trading.
- A connection created with the appropriate connection type.
- Your application's own user confirmation and compliance flow before submitting orders.

OAuth trading additionally requires the user-granted `trade` scope and a trading-enabled connection. See the [OAuth trading guide](https://docs.snaptrade.com/docs/oauth-apps#8-trading).

Both Personal and Commercial API keys can receive webhooks after a webhook listener URL is configured in the SnapTrade Dashboard.

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

For your own brokerage accounts, use Personal. For an app serving other users, choose OAuth or Commercial API Key based on who manages users and connections; see [Choose Your Integration](https://docs.snaptrade.com/docs/authentication-methods).

## Related

- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Choose Your Integration](https://docs.snaptrade.com/docs/authentication-methods)
- [Terminology](https://docs.snaptrade.com/docs/terminology)
- [Billing](https://docs.snaptrade.com/docs/billing)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
