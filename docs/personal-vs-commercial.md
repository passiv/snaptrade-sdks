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

Most Personal users connect their brokerage accounts in the SnapTrade Dashboard and authorize OAuth-enabled apps or AI assistants to read their data.

Personal users can also access their own accounts with a Personal API key. The Personal user represents themselves.

## Choose Commercial When

Choose the Commercial experience when you are building an application for your own end users and need SnapTrade as infrastructure behind your product.

Common Commercial use cases include:

- A fintech app that lets many app users connect their brokerages.
- A portfolio management, tax, financial planning, trading, or analytics product.
- A backend service that needs to create, track, and support many SnapTrade users.
- Production integrations that need billing, compliance review, and higher limits.

Commercial API Key integrations manage their own end-user identities and connection experience. OAuth integrations access connections managed by SnapTrade Personal users.

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

## Implementation Guides

<a id="credentials-and-keys"></a>
<a id="users-and-connections"></a>
<a id="trading-and-write-access"></a>
<a id="implementation-checklist"></a>

- [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps)

<a id="commercial"></a>

- [Build With a Commercial API Key](https://docs.snaptrade.com/docs/commercial-api-key)

<a id="personal"></a>

- [Use a Personal API Key](https://docs.snaptrade.com/docs/personal-api-key)

## Related

- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Choose Your Integration](https://docs.snaptrade.com/docs/authentication-methods)
- [Terminology](https://docs.snaptrade.com/docs/terminology)
- [Billing](https://docs.snaptrade.com/docs/billing)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
