# Getting Started with SnapTrade

Start with [Choose Your Integration](https://docs.snaptrade.com/docs/authentication-methods) to decide whether you are building for users or accessing your own accounts. Follow one implementation guide from credentials through connecting accounts and making API calls.

<a id="getting-started-api-keys"></a>
<a id="choose-a-customer-model"></a>

## Choose a Guide

- [Commercial OAuth](https://docs.snaptrade.com/docs/oauth-apps): users authorize access to their SnapTrade Personal connections.
- [Commercial API Key](https://docs.snaptrade.com/docs/commercial-api-key): your app manages SnapTrade users and its connection experience.
- [Personal API Key](https://docs.snaptrade.com/docs/personal-api-key): access your own accounts from scripts and tools.

For definitions, see [Terminology](https://docs.snaptrade.com/docs/terminology). For customer-account context, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial). The [interactive demo](https://docs.snaptrade.com/demo/getting-started) demonstrates the Commercial API-key flow.

## SnapTrade SDKs

We recommend using a SnapTrade SDK. For API-key requests sent directly over HTTP, follow [Request Signatures](https://docs.snaptrade.com/docs/request-signatures) to sign each request.

| **Language** | **SDK Link** |
| --- | --- |
| Python | [**https://pypi.org/project/snaptrade-python-sdk**](https://pypi.org/project/snaptrade-python-sdk) |
| TypeScript | [**https://www.npmjs.com/package/snaptrade-typescript-sdk**](https://www.npmjs.com/package/snaptrade-typescript-sdk) |
| Java | [**https://central.sonatype.com/artifact/com.snaptrade/snaptrade-java-sdk**](https://central.sonatype.com/artifact/com.snaptrade/snaptrade-java-sdk) |
| Ruby | [**https://rubygems.org/gems/snaptrade**](https://rubygems.org/gems/snaptrade) |
| C# | [**https://nuget.org/packages/SnapTrade.Net**](https://nuget.org/packages/SnapTrade.Net) |
| PHP | [**https://packagist.org/packages/konfig/snaptrade-php-sdk**](https://packagist.org/packages/konfig/snaptrade-php-sdk) |
| Go | [**https://pkg.go.dev/github.com/passiv/snaptrade-sdks/sdks/go**](https://pkg.go.dev/github.com/passiv/snaptrade-sdks/sdks/go) |

<a id="personal-quickstart"></a>
<a id="1-create-a-personal-account"></a>
<a id="2-choose-how-to-access-your-data"></a>
<a id="share-your-data-through-oauth"></a>
<a id="access-your-data-with-a-personal-api-key"></a>
<a id="getting-started-connections"></a>
<a id="3-connect-a-brokerage-with-your-api-key"></a>
<a id="getting-started-accounts"></a>
<a id="4-retrieve-accounts-and-positions"></a>
<a id="5-place-an-equity-trade"></a>
<a id="personal-next-steps"></a>

The Personal quickstart, credential setup, connection flow, account-data calls, and trading steps are now in [Use a Personal API Key](https://docs.snaptrade.com/docs/personal-api-key). To share accounts with an OAuth-enabled app, connect your brokerage in the Dashboard, then sign in to SnapTrade from that app and approve its requested access. Never share your consumer key. See the [MCP Server](https://docs.snaptrade.com/docs/mcp-server) for AI assistant access.

<a id="commercial-quickstart"></a>
<a id="commercial-oauth-quickstart"></a>
<a id="option-1-build-with-oauth"></a>
<a id="1-register-an-oauth-app"></a>
<a id="2-send-the-user-through-authorization"></a>
<a id="3-exchange-the-code-for-tokens"></a>
<a id="4-retrieve-accounts-and-positions-1"></a>
<a id="5-place-an-equity-trade-1"></a>
<a id="commercial-api-key-quickstart"></a>
<a id="option-2-build-with-a-commercial-api-key"></a>
<a id="1-create-a-commercial-api-key"></a>
<a id="getting-started-users"></a>
<a id="2-register-a-snaptrade-user"></a>
<a id="3-connect-a-brokerage"></a>
<a id="4-retrieve-accounts-and-positions-2"></a>
<a id="5-place-an-equity-trade-2"></a>
<a id="commercial-next-steps"></a>

The Commercial quickstarts moved to [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps) and [Build With a Commercial API Key](https://docs.snaptrade.com/docs/commercial-api-key). Use the [integration overview](https://docs.snaptrade.com/docs/authentication-methods) to compare responsibilities. Production access requires the approval steps described in the selected guide.

For troubleshooting, see [General Errors](https://docs.snaptrade.com/docs/requests) and the [FAQ](https://docs.snaptrade.com/docs/faq).
