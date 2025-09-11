# Ratelimiting

The SnapTrade API uses a number of safety mechanisms to protect against bursts of incoming traffic and help maximize its stability.

Sending many requests in quick succession might trigger error responses that show up as HTTP status code 429.

Every SnapTrade client is ratelimited to 250 requests per minute by default. If you have a large number of users and would like to request a higher ratelimit, please contact your Customer Success Manager.

## What Happens When You Hit a Ratelimit

When you hit a ratelimit, the API will return an HTTP status code 429. This means that you have exceeded the maximum number of requests you can make in a given time period.

The response body will have data on how long you should wait before making more requests. Here is an example of what the response body looks like:

```json
{"detail":"Request was throttled. Expected available in 7 seconds.","status_code":429,"code":"0000"}
```

## Keeping Track of Your Ratelimit

The SnapTrade API returns several helpful response headers that you can use to keep track of your ratelimit usage:

- `X-RateLimit-Limit`: the maximum number of requests you can make in a given minute
- `X-RateLimit-Remaining`: the number of requests remaining in the current minute
- `X-RateLimit-Reset`: the number of seconds until the next minutely ratelimit resets

These are rolling limits that look at the trailing 60 seconds.

## Common Causes and Mitigations

There are a number of situations that may cause your ratelimiting to kick in. Here are a few scenarios and suggested mitigations:

- **Aggressive syncs**: syncing user portfolios all-at-once will increase the chance that you hit your ratelimit threshold. To avoid 429s, these data syncs should be spaced out over a period of time.
- **Increased user signup volumes**: for example if you make an announcement to your users that a new integration is available with SnapTrade. To prevent hitting ratelimits, it is prudent to space out these requests so users onboard over a period of time.

## Best Practices for Handling 429s

You should add logic to your integration to watch for `429` responses from our API, and handle them with a retry mechanism.

The retry mechanism should use exponential backoff, and ideally have some randomness to prevent [thundering herd problems](https://en.wikipedia.org/wiki/Thundering_herd_problem).
