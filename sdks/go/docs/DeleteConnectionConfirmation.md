# DeleteConnectionConfirmation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Detail** | Pointer to **string** | Connection queued for deletion; please wait for webhook for confirmation. | [optional] 
**ConnectionId** | Pointer to **string** | The ID of the connection (brokerage authorization) that was scheduled for deletion. | [optional] 

## Methods

### NewDeleteConnectionConfirmation

`func NewDeleteConnectionConfirmation() *DeleteConnectionConfirmation`

NewDeleteConnectionConfirmation instantiates a new DeleteConnectionConfirmation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeleteConnectionConfirmationWithDefaults

`func NewDeleteConnectionConfirmationWithDefaults() *DeleteConnectionConfirmation`

NewDeleteConnectionConfirmationWithDefaults instantiates a new DeleteConnectionConfirmation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDetail

`func (o *DeleteConnectionConfirmation) GetDetail() string`

GetDetail returns the Detail field if non-nil, zero value otherwise.

### GetDetailOk

`func (o *DeleteConnectionConfirmation) GetDetailOk() (*string, bool)`

GetDetailOk returns a tuple with the Detail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetail

`func (o *DeleteConnectionConfirmation) SetDetail(v string)`

SetDetail sets Detail field to given value.

### HasDetail

`func (o *DeleteConnectionConfirmation) HasDetail() bool`

HasDetail returns a boolean if a field has been set.

### GetConnectionId

`func (o *DeleteConnectionConfirmation) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *DeleteConnectionConfirmation) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *DeleteConnectionConfirmation) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.

### HasConnectionId

`func (o *DeleteConnectionConfirmation) HasConnectionId() bool`

HasConnectionId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


