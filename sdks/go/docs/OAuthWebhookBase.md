# OAuthWebhookBase

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemaVersion** | **string** |  | 
**WebhookId** | **string** |  | 
**OauthClientId** | **string** | The OAuth client ID of the application receiving the webhook. | 
**EventTimestamp** | **time.Time** |  | 
**UserId** | **string** | The SnapTrade Personal user UUID, matching the &#x60;sub&#x60; claim of the OIDC &#x60;id_token&#x60; (issued when the &#x60;openid&#x60; scope is requested) and the deprecated top-level &#x60;sub.snaptrade_user_id&#x60; field in the OAuth token response. | 
**EventType** | **string** |  | 
**AccountId** | Pointer to **string** |  | [optional] 
**ConnectionId** | Pointer to **string** |  | [optional] 
**BrokerageId** | Pointer to **string** |  | [optional] 
**ConnectionAttemptedResult** | Pointer to **string** |  | [optional] 
**Details** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewOAuthWebhookBase

`func NewOAuthWebhookBase(schemaVersion string, webhookId string, oauthClientId string, eventTimestamp time.Time, userId string, eventType string, ) *OAuthWebhookBase`

NewOAuthWebhookBase instantiates a new OAuthWebhookBase object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOAuthWebhookBaseWithDefaults

`func NewOAuthWebhookBaseWithDefaults() *OAuthWebhookBase`

NewOAuthWebhookBaseWithDefaults instantiates a new OAuthWebhookBase object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSchemaVersion

`func (o *OAuthWebhookBase) GetSchemaVersion() string`

GetSchemaVersion returns the SchemaVersion field if non-nil, zero value otherwise.

### GetSchemaVersionOk

`func (o *OAuthWebhookBase) GetSchemaVersionOk() (*string, bool)`

GetSchemaVersionOk returns a tuple with the SchemaVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSchemaVersion

`func (o *OAuthWebhookBase) SetSchemaVersion(v string)`

SetSchemaVersion sets SchemaVersion field to given value.


### GetWebhookId

`func (o *OAuthWebhookBase) GetWebhookId() string`

GetWebhookId returns the WebhookId field if non-nil, zero value otherwise.

### GetWebhookIdOk

`func (o *OAuthWebhookBase) GetWebhookIdOk() (*string, bool)`

GetWebhookIdOk returns a tuple with the WebhookId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWebhookId

`func (o *OAuthWebhookBase) SetWebhookId(v string)`

SetWebhookId sets WebhookId field to given value.


### GetOauthClientId

`func (o *OAuthWebhookBase) GetOauthClientId() string`

GetOauthClientId returns the OauthClientId field if non-nil, zero value otherwise.

### GetOauthClientIdOk

`func (o *OAuthWebhookBase) GetOauthClientIdOk() (*string, bool)`

GetOauthClientIdOk returns a tuple with the OauthClientId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOauthClientId

`func (o *OAuthWebhookBase) SetOauthClientId(v string)`

SetOauthClientId sets OauthClientId field to given value.


### GetEventTimestamp

`func (o *OAuthWebhookBase) GetEventTimestamp() time.Time`

GetEventTimestamp returns the EventTimestamp field if non-nil, zero value otherwise.

### GetEventTimestampOk

`func (o *OAuthWebhookBase) GetEventTimestampOk() (*time.Time, bool)`

GetEventTimestampOk returns a tuple with the EventTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventTimestamp

`func (o *OAuthWebhookBase) SetEventTimestamp(v time.Time)`

SetEventTimestamp sets EventTimestamp field to given value.


### GetUserId

`func (o *OAuthWebhookBase) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *OAuthWebhookBase) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *OAuthWebhookBase) SetUserId(v string)`

SetUserId sets UserId field to given value.


### GetEventType

`func (o *OAuthWebhookBase) GetEventType() string`

GetEventType returns the EventType field if non-nil, zero value otherwise.

### GetEventTypeOk

`func (o *OAuthWebhookBase) GetEventTypeOk() (*string, bool)`

GetEventTypeOk returns a tuple with the EventType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEventType

`func (o *OAuthWebhookBase) SetEventType(v string)`

SetEventType sets EventType field to given value.


### GetAccountId

`func (o *OAuthWebhookBase) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *OAuthWebhookBase) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *OAuthWebhookBase) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.

### HasAccountId

`func (o *OAuthWebhookBase) HasAccountId() bool`

HasAccountId returns a boolean if a field has been set.

### GetConnectionId

`func (o *OAuthWebhookBase) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *OAuthWebhookBase) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *OAuthWebhookBase) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.

### HasConnectionId

`func (o *OAuthWebhookBase) HasConnectionId() bool`

HasConnectionId returns a boolean if a field has been set.

### GetBrokerageId

`func (o *OAuthWebhookBase) GetBrokerageId() string`

GetBrokerageId returns the BrokerageId field if non-nil, zero value otherwise.

### GetBrokerageIdOk

`func (o *OAuthWebhookBase) GetBrokerageIdOk() (*string, bool)`

GetBrokerageIdOk returns a tuple with the BrokerageId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageId

`func (o *OAuthWebhookBase) SetBrokerageId(v string)`

SetBrokerageId sets BrokerageId field to given value.

### HasBrokerageId

`func (o *OAuthWebhookBase) HasBrokerageId() bool`

HasBrokerageId returns a boolean if a field has been set.

### GetConnectionAttemptedResult

`func (o *OAuthWebhookBase) GetConnectionAttemptedResult() string`

GetConnectionAttemptedResult returns the ConnectionAttemptedResult field if non-nil, zero value otherwise.

### GetConnectionAttemptedResultOk

`func (o *OAuthWebhookBase) GetConnectionAttemptedResultOk() (*string, bool)`

GetConnectionAttemptedResultOk returns a tuple with the ConnectionAttemptedResult field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionAttemptedResult

`func (o *OAuthWebhookBase) SetConnectionAttemptedResult(v string)`

SetConnectionAttemptedResult sets ConnectionAttemptedResult field to given value.

### HasConnectionAttemptedResult

`func (o *OAuthWebhookBase) HasConnectionAttemptedResult() bool`

HasConnectionAttemptedResult returns a boolean if a field has been set.

### GetDetails

`func (o *OAuthWebhookBase) GetDetails() map[string]interface{}`

GetDetails returns the Details field if non-nil, zero value otherwise.

### GetDetailsOk

`func (o *OAuthWebhookBase) GetDetailsOk() (*map[string]interface{}, bool)`

GetDetailsOk returns a tuple with the Details field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetails

`func (o *OAuthWebhookBase) SetDetails(v map[string]interface{})`

SetDetails sets Details field to given value.

### HasDetails

`func (o *OAuthWebhookBase) HasDetails() bool`

HasDetails returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


