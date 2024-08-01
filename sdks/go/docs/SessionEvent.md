# SessionEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**SessionEventType** | Pointer to **string** |  | [optional] 
**SessionId** | Pointer to **string** |  | [optional] 
**UserId** | Pointer to **string** | SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable. | [optional] 
**CreatedDate** | Pointer to **string** | Time | [optional] 
**BrokerageStatusCode** | Pointer to **NullableInt32** |  | [optional] 
**BrokerageAuthorizationId** | Pointer to **string** |  | [optional] 

## Methods

### NewSessionEvent

`func NewSessionEvent() *SessionEvent`

NewSessionEvent instantiates a new SessionEvent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSessionEventWithDefaults

`func NewSessionEventWithDefaults() *SessionEvent`

NewSessionEventWithDefaults instantiates a new SessionEvent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SessionEvent) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SessionEvent) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SessionEvent) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SessionEvent) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSessionEventType

`func (o *SessionEvent) GetSessionEventType() string`

GetSessionEventType returns the SessionEventType field if non-nil, zero value otherwise.

### GetSessionEventTypeOk

`func (o *SessionEvent) GetSessionEventTypeOk() (*string, bool)`

GetSessionEventTypeOk returns a tuple with the SessionEventType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSessionEventType

`func (o *SessionEvent) SetSessionEventType(v string)`

SetSessionEventType sets SessionEventType field to given value.

### HasSessionEventType

`func (o *SessionEvent) HasSessionEventType() bool`

HasSessionEventType returns a boolean if a field has been set.

### GetSessionId

`func (o *SessionEvent) GetSessionId() string`

GetSessionId returns the SessionId field if non-nil, zero value otherwise.

### GetSessionIdOk

`func (o *SessionEvent) GetSessionIdOk() (*string, bool)`

GetSessionIdOk returns a tuple with the SessionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSessionId

`func (o *SessionEvent) SetSessionId(v string)`

SetSessionId sets SessionId field to given value.

### HasSessionId

`func (o *SessionEvent) HasSessionId() bool`

HasSessionId returns a boolean if a field has been set.

### GetUserId

`func (o *SessionEvent) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *SessionEvent) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *SessionEvent) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *SessionEvent) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetCreatedDate

`func (o *SessionEvent) GetCreatedDate() string`

GetCreatedDate returns the CreatedDate field if non-nil, zero value otherwise.

### GetCreatedDateOk

`func (o *SessionEvent) GetCreatedDateOk() (*string, bool)`

GetCreatedDateOk returns a tuple with the CreatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedDate

`func (o *SessionEvent) SetCreatedDate(v string)`

SetCreatedDate sets CreatedDate field to given value.

### HasCreatedDate

`func (o *SessionEvent) HasCreatedDate() bool`

HasCreatedDate returns a boolean if a field has been set.

### GetBrokerageStatusCode

`func (o *SessionEvent) GetBrokerageStatusCode() int32`

GetBrokerageStatusCode returns the BrokerageStatusCode field if non-nil, zero value otherwise.

### GetBrokerageStatusCodeOk

`func (o *SessionEvent) GetBrokerageStatusCodeOk() (*int32, bool)`

GetBrokerageStatusCodeOk returns a tuple with the BrokerageStatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageStatusCode

`func (o *SessionEvent) SetBrokerageStatusCode(v int32)`

SetBrokerageStatusCode sets BrokerageStatusCode field to given value.

### HasBrokerageStatusCode

`func (o *SessionEvent) HasBrokerageStatusCode() bool`

HasBrokerageStatusCode returns a boolean if a field has been set.

### SetBrokerageStatusCodeNil

`func (o *SessionEvent) SetBrokerageStatusCodeNil(b bool)`

 SetBrokerageStatusCodeNil sets the value for BrokerageStatusCode to be an explicit nil

### UnsetBrokerageStatusCode
`func (o *SessionEvent) UnsetBrokerageStatusCode()`

UnsetBrokerageStatusCode ensures that no value is present for BrokerageStatusCode, not even an explicit nil
### GetBrokerageAuthorizationId

`func (o *SessionEvent) GetBrokerageAuthorizationId() string`

GetBrokerageAuthorizationId returns the BrokerageAuthorizationId field if non-nil, zero value otherwise.

### GetBrokerageAuthorizationIdOk

`func (o *SessionEvent) GetBrokerageAuthorizationIdOk() (*string, bool)`

GetBrokerageAuthorizationIdOk returns a tuple with the BrokerageAuthorizationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageAuthorizationId

`func (o *SessionEvent) SetBrokerageAuthorizationId(v string)`

SetBrokerageAuthorizationId sets BrokerageAuthorizationId field to given value.

### HasBrokerageAuthorizationId

`func (o *SessionEvent) HasBrokerageAuthorizationId() bool`

HasBrokerageAuthorizationId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


