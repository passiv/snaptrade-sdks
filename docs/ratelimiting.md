# Rate Limiting

The SnapTrade API uses rate limiting to protect against bursts of incoming traffic and help maximize stability. Sending too many requests in quick succession will trigger error responses with HTTP status code `429`.

There are two layers of rate limiting that may apply to your requests:

1. **Customer-level rate limiting** -- a global limit across all requests from your `clientId`.
2. **Account-level rate limiting** -- a [per-account](https://docs.snaptrade.com/docs/account-data) limit on specific account data endpoints.

A request must pass both layers. Even if you have remaining capacity at the customer level, you can still be throttled at the account level, and vice versa.

## Customer-Level Rate Limiting

Every SnapTrade client is rate limited to **250 requests per minute** by default. This limit applies globally across all API endpoints and all accounts. If you need a higher limit:

- **Free plan users** can upgrade to Pay-as-you-go at [snaptrade.com/pricing](https://snaptrade.com/pricing).
- **Pay-as-you-go users** can contact [SnapTrade support](https://snaptrade.com/contact) to request a limit increase.
- **Custom plan customers** can contact their Customer Success Manager.

### Response Headers

The following headers are returned on every response to help you track your customer-level usage:

| Header | Description |
|---|---|
| `X-RateLimit-Limit` | The maximum number of requests you can make per minute. |
| `X-RateLimit-Remaining` | The number of requests remaining in the current rolling window. |
| `X-RateLimit-Reset` | The number of seconds until the next minutely rate limit resets. |

These are rolling limits that look at the trailing 60 seconds.

## Account-Level Rate Limiting

In addition to the customer-level limit, the SnapTrade API enforces a **per-account** rate limit on endpoints that fetch account data. This limit is **5 requests per minute per account** by default.

Account-level rate limiting is scoped to the combination of your `clientId` and the `accountId` in the request URL. This means:

- Different accounts have **separate** rate limit buckets. Exhausting the limit on one account does not affect requests to other accounts.
- Different endpoints for the **same account share** a single bucket. For example, fetching balances and positions for the same account both count toward that account's limit.

### Affected Endpoints

Account-level rate limiting applies to the following endpoints:

- [Account Holdings](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserHoldings)
- [Account Detail](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountDetails)
- [Account Balances](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountBalance)
- [Account Positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountPositions)
- [Option Positions](https://docs.snaptrade.com/reference/Options/Options_listOptionHoldings)
- [Account Orders](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrders)
- [Recent Orders](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountRecentOrders)
- [Account Activities](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAccountActivities)
- [Account Order Detail](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getUserAccountOrderDetail)

> **Note:** While the per-account rate limit allows up to 5 requests per minute, these endpoints should not be polled at this frequency. See [API Polling Patterns](https://docs.snaptrade.com/docs/launching-your-application#3-api-polling-patterns) for recommended usage patterns.

### Response Headers

When account-level rate limiting is active, the following additional headers are returned:

| Header | Description |
|---|---|
| `X-RateLimit-Account-Limit` | The maximum number of requests allowed per minute for this account. |
| `X-RateLimit-Account-Remaining` | The number of requests remaining for this account in the current rolling window. |
| `X-RateLimit-Account-Reset` | The number of seconds until the next request slot opens up for this account. This value counts down as time passes, reflecting the actual time until the oldest request in the window expires. |

These are rolling limits that look at the trailing 60 seconds.

## How the Two Layers Interact

Every request to an account endpoint is checked against both rate limits. The stricter limit wins:

| Customer-Level | Account-Level | Result |
|---|---|---|
| Remaining capacity | Remaining capacity | **Allowed** |
| Remaining capacity | Exhausted | **429** (account limit) |
| Exhausted | Remaining capacity | **429** (customer limit) |
| Exhausted | Exhausted | **429** (both limits) |

When you receive a `429`, check both sets of response headers to determine which limit you hit. If `X-RateLimit-Remaining` is `0`, you have hit the customer-level limit. If `X-RateLimit-Account-Remaining` is `0`, you have hit the account-level limit.

## Common Causes and Mitigations

- **Aggressive syncs**: Syncing user portfolios all at once increases the chance of hitting both rate limit tiers. Space out data syncs over time, and rotate across accounts rather than polling a single account repeatedly.
- **Polling a single account**: Rapidly polling the same account for updates (e.g., order status) will quickly exhaust the per-account limit. Use webhooks where available, or poll at intervals of at least 15 seconds per account.
- **Increased user signup volumes**: A sudden influx of new users (e.g., after announcing a new integration) can spike customer-level usage. Space out onboarding requests over a period of time.

## Best Practices for Handling 429s

You should add logic to your integration to watch for `429` responses from the API and handle them with a retry mechanism.

- **Check the `Reset` header**: Use `X-RateLimit-Account-Reset` or wait for `X-RateLimit-Remaining` to replenish before retrying. This tells you exactly how long to wait.
- **Use exponential backoff**: If headers are unavailable or you prefer a general approach, retry with exponential backoff.
- **Add jitter**: Introduce randomness into your retry timing to prevent [thundering herd problems](https://en.wikipedia.org/wiki/Thundering_herd_problem).
- **Spread requests across accounts**: If you need to sync multiple accounts, round-robin across them rather than exhausting one account's limit before moving to the next.
