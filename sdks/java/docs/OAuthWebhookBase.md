

# OAuthWebhookBase

The versioned webhook content sent to an authorized OAuth application.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**schemaVersion** | [**SchemaVersionEnum**](#SchemaVersionEnum) |  |  |
|**webhookId** | **UUID** |  |  |
|**oauthClientId** | **String** | The OAuth client ID of the application receiving the webhook. |  |
|**eventTimestamp** | **OffsetDateTime** |  |  |
|**userId** | **UUID** | The SnapTrade Personal user UUID, matching the &#x60;sub&#x60; claim of the OIDC &#x60;id_token&#x60; (issued when the &#x60;openid&#x60; scope is requested) and the deprecated top-level &#x60;sub.snaptrade_user_id&#x60; field in the OAuth token response. |  |
|**eventType** | **String** |  |  |
|**accountId** | **UUID** |  |  [optional] |
|**connectionId** | **UUID** |  |  [optional] |
|**brokerageId** | **UUID** |  |  [optional] |
|**connectionAttemptedResult** | **String** |  |  [optional] |
|**details** | **Map&lt;String, Object&gt;** |  |  [optional] |



## Enum: SchemaVersionEnum

| Name | Value |
|---- | -----|
| OAUTH_V1 | &quot;oauth_v1&quot; |



