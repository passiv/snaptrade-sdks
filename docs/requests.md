# Sending Requests

When sending requests to SnapTrade, we recommend using an SDK. You can also send requests directly through the API reference on this site, this is especially useful for managing users and connections during development.

## SDKs

It is possible to integrate without an SDK, but will require you to lift the signing code from one of our SDKs for making requests. SnapTrade provides the following SDKs for you to use.

| **Language** | **SDK Link** |
| --- | --- |
| Python | [**https://pypi.org/project/snaptrade-python-sdk**](https://pypi.org/project/snaptrade-python-sdk) |
| TypeScript | [**https://www.npmjs.com/package/snaptrade-typescript-sdk**](https://www.npmjs.com/package/snaptrade-typescript-sdk) |
| Java | [**https://central.sonatype.com/artifact/com.snaptrade/snaptrade-java-sdk**](https://central.sonatype.com/artifact/com.snaptrade/snaptrade-java-sdk) |
| Ruby | [**https://rubygems.org/gems/snaptrade**](https://rubygems.org/gems/snaptrade) |
| C# | [**https://nuget.org/packages/SnapTrade.Net**](https://nuget.org/packages/SnapTrade.Net) |
| PHP | [**https://packagist.org/packages/konfig/snaptrade-php-sdk**](https://packagist.org/packages/konfig/snaptrade-php-sdk) |
| Go | [**https://pkg.go.dev/github.com/passiv/snaptrade-sdks/sdks/go**](https://pkg.go.dev/github.com/passiv/snaptrade-sdks/sdks/go) |

## Ratelimiting

The SnapTrade API uses a number of safety mechanisms to protect against bursts of incoming traffic and help maximize its stability.

Sending many requests in quick succession might trigger error responses that show up as HTTP status code 429.

## Response Headers

### x-request-id

Each SnapTrade API request has an associated request identifier. If you need to contact us about a specific request, providing the request identifier is helpful to ensure the fastest possible resolution.

### x-ratelimit-limit

With each request, you will receive your ratelimit as a header. This denotes how many requests you can make in one minute before being throttled.

### x-ratelimit-remaining

Within each request, you will receive how many requests are remaining until SnapTrade begins throttling your requests. 

---

See also:
- [Ratelimiting](https://docs.snaptrade.com/docs/ratelimiting)
- [Request IDs](https://docs.snaptrade.com/docs/request-ids)
