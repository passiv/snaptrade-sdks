# Authentication Methods

We currently support three authentication methods. Choose the method based on whether the caller is a Commercial app acting for its own end users, or a Personal user managing their own brokerage accounts through their SnapTrade account.

:::info
The current SDKs and parts of the API reference still describe **Commercial** authentication. Updates to the API reference and SDKs will follow shortly. Until then, use the rules below as the source of truth for which credentials to send.

If you'd like to try early SDK support, you can use the TypeScript SDK `11.0.0-canary.0` or Python SDK `12.0.0rc0`. These are early design explorations, and feedback is very welcome.
:::

## Quick Comparison

| Method | Best for | Credentials used | User identity |
| --- | --- | --- | --- |
| Commercial app authentication | Apps managing many end users | `clientId`, `consumerKey`, `userId`, `userSecret` | The `userId` and `userSecret` identify one SnapTrade user under the Commercial app |
| Personal API key authentication | SnapTrade Personal accounts using signed API requests for connected brokerage accounts | `clientId`, `consumerKey` | The Personal API key identifies the account owner |
| Personal OAuth authentication | Apps or connectors where the account owner signs in with their SnapTrade Personal account | OAuth access token | The Bearer token identifies the account owner |

For a broader product-model comparison, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial).

## Commercial App Authentication

Use Commercial app authentication when you are building an application that manages brokerage connections for your own end users.

This is the existing Commercial flow:

1. Your backend stores the Commercial `clientId` and `consumerKey`.
2. Your backend creates one SnapTrade user per end user with :api[Authentication_registerSnapTradeUser].
3. We return a `userId` and `userSecret` for that SnapTrade user.
4. Your backend uses `clientId`, `consumerKey`, `userId`, and `userSecret` when making user-scoped API requests.

The `consumerKey` is never sent directly to us. It is used to generate the request `Signature` header. Direct API requests using this method include:

- `clientId` as a query parameter.
- `timestamp` as a query parameter.
- `Signature` as a request header.
- `userId` and `userSecret` as query parameters for user-scoped endpoints.

Example request shape:

```http
GET /api/v1/accounts?clientId=<client_id>&timestamp=<unix_timestamp>&userId=<user_id>&userSecret=<user_secret>
Signature: <signature>
```

Commercial apps should keep the `consumerKey` and each user's `userSecret` on a secure backend. Do not expose them in browser or mobile clients.

For signature generation details, see [Request Signatures](https://docs.snaptrade.com/docs/request-signatures). For user registration and connection setup, see [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started).

## Personal API Key Authentication

Use Personal API key authentication when you are using a SnapTrade Personal account and need signed API requests for that account's connected brokerages.

This method uses a Personal `clientId` and `consumerKey`, but does not use a separate `userId` or `userSecret`. The Personal API key already belongs to the SnapTrade account owner, so we resolve the user from the key.

Direct API requests using this method include:

- `clientId` as a query parameter.
- `timestamp` as a query parameter.
- `Signature` as a request header.
- No `userId`.
- No `userSecret`.

Example request shape:

```http
GET /api/v1/accounts?clientId=<client_id>&timestamp=<unix_timestamp>
Signature: <signature>
```

:::info
Some user-scoped endpoints may still show `userId` and `userSecret` as required in the API reference. For Personal API key authentication, omit those fields even if the API reference currently shows them as required.
:::

Do not call :api[Authentication_registerSnapTradeUser] for Personal API key authentication. That endpoint is for Commercial apps creating SnapTrade users for their own end users.

For more context on Personal API keys, see [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial). For signing direct API requests, see [Request Signatures](https://docs.snaptrade.com/docs/request-signatures).

## Personal OAuth Authentication

Use Personal OAuth authentication when the account owner signs in with their SnapTrade Personal account and grants your app access to their brokerage accounts with an OAuth access token.

With this method, API requests use the OAuth access token as a Bearer token. Do not send `clientId`, `consumerKey`, `userId`, or `userSecret` in the API request.

Direct API requests using this method include:

- `Authorization: Bearer <access_token>` as a request header.
- No `clientId`.
- No `consumerKey`.
- No `userId`.
- No `userSecret`.
- No request `Signature` header.

Example request shape:

```http
GET /api/v1/accounts
Authorization: Bearer <access_token>
```

:::info
The API reference may still show API key fields, `userId`, or `userSecret` for endpoints that support Personal OAuth. For Bearer token requests, omit those fields and send only the OAuth access token in the `Authorization` header.
:::

The Bearer token identifies the account owner and scopes what the caller can do. Store access tokens securely and treat them as sensitive credentials.

Personal OAuth follows the OAuth 2.0 authorization code flow with PKCE. OAuth clients can discover our current OAuth metadata at `https://api.snaptrade.com/.well-known/oauth-authorization-server`, including the authorization, token, introspection, revocation, and client registration endpoints.

## Choosing a Method

Use Commercial app authentication if your backend owns the integration and maps many app users to SnapTrade users. This is the only method that requires your app to manage `userId` and `userSecret`.

Use Personal API key authentication if you are using a SnapTrade Personal account and are comfortable with signed API requests.

Use Personal OAuth authentication if the caller should never handle a `consumerKey`, `userId`, or `userSecret`, or if the access should be delegated through user consent.

## Related

- [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial)
- [Getting Started with SnapTrade](https://docs.snaptrade.com/docs/getting-started)
- [Request Signatures](https://docs.snaptrade.com/docs/request-signatures)
- [SnapTrade MCP Server](https://docs.snaptrade.com/docs/mcp-server)
