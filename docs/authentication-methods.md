# Choose Your Integration

## Building for Users

Both **Commercial API Key** and **OAuth** support third-party commercial apps. Choose based on the user journey and the integration responsibilities your app needs to own.

<a id="commercial-oauth"></a>

### OAuth

Use OAuth when users will authorize access to brokerage accounts they manage in SnapTrade Personal. The user signs in to SnapTrade, reviews your app’s requested permissions, and approves or denies access. Your app receives tokens for that authorization.

Users manage their connections in the SnapTrade Dashboard. This typically requires less custom integration work: your app handles authorization, token storage, and refresh rather than registering SnapTrade users and building a connection flow.

[Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps)

### Commercial API Key

Use a Commercial API key when your app needs to control the SnapTrade user lifecycle and its own connection experience. Your backend registers a SnapTrade user for each end user, stores their credentials, and opens or embeds the Connection Portal for them.

This gives your app more control over onboarding and connection support, with more integration responsibility. Your backend signs requests and supplies the appropriate end-user credentials.

[Build With a Commercial API Key](https://docs.snaptrade.com/docs/commercial-api-key)

## Building for Yourself

Use a **Personal API Key** for scripts and tools that access your own brokerage accounts. Your key identifies your SnapTrade account; you do not register separate end users. Connect your brokerage in the Dashboard or through the Connection Portal, then call the API with your key.

[Use a Personal API Key](https://docs.snaptrade.com/docs/personal-api-key)

## Compare Responsibilities

| Integration | User journey | Your app owns |
| --- | --- | --- |
| OAuth | User signs in to SnapTrade and grants access to their Personal connections | App registration, callback validation, token storage and refresh |
| Commercial API Key | User connects a brokerage through your app’s Connection Portal flow | SnapTrade user lifecycle, per-user credentials, connection experience and support |
| Personal API Key | You connect and access your own brokerage accounts | Your own key and tools |

For customer accounts and billing context, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial). Scope, brokerage capability, and production requirements are covered in each implementation guide.

<!-- Preserve inbound links to the former authentication reference sections. -->
<a id="authentication-methods"></a>
<a id="quick-comparison"></a>
<a id="commercial-api-key-authentication"></a>
<a id="typescript"></a>
<a id="python"></a>

Commercial API-key examples moved to the [Commercial API Key guide](https://docs.snaptrade.com/docs/commercial-api-key#connect-and-read-account-data).

<a id="personal-api-key-authentication"></a>
<a id="typescript-1"></a>
<a id="python-1"></a>

Personal API-key examples moved to the [Personal API Key guide](https://docs.snaptrade.com/docs/personal-api-key#connect-and-read-account-data).

<a id="commercial-oauth-authentication"></a>
<a id="typescript-2"></a>
<a id="python-2"></a>

OAuth examples are in [Build an OAuth App](https://docs.snaptrade.com/docs/oauth-apps#use-the-sdk-helpers).

<a id="credential-rules"></a>
<a id="direct-http-reference"></a>
<a id="related"></a>

For credential rules, use the implementation guides above. Direct HTTP API-key calls are covered in [Request Signatures](https://docs.snaptrade.com/docs/request-signatures); request failures are covered in [General Errors](https://docs.snaptrade.com/docs/requests).
