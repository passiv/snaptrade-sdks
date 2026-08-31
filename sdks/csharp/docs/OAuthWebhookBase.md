# SnapTrade.Net.Model.OAuthWebhookBase
The versioned webhook content sent to an authorized OAuth application.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemaVersion** | **string** |  | 
**WebhookId** | **string** |  | 
**OauthClientId** | **string** | The OAuth client ID of the application receiving the webhook. | 
**EventTimestamp** | **DateTime** |  | 
**UserId** | **string** | The SnapTrade Personal user UUID, matching the &#x60;sub&#x60; claim of the OIDC &#x60;id_token&#x60; (issued when the &#x60;openid&#x60; scope is requested) and the deprecated top-level &#x60;sub.snaptrade_user_id&#x60; field in the OAuth token response. | 
**EventType** | **string** |  | 
**AccountId** | **string** |  | [optional] 
**ConnectionId** | **string** |  | [optional] 
**BrokerageId** | **string** |  | [optional] 
**ConnectionAttemptedResult** | **string** |  | [optional] 
**Details** | **Dictionary&lt;string, Object&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

