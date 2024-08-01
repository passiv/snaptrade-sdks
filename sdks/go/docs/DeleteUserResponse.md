# DeleteUserResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | Pointer to **string** | Delete status | [optional] 
**UserId** | Pointer to **string** | SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable. | [optional] 

## Methods

### NewDeleteUserResponse

`func NewDeleteUserResponse() *DeleteUserResponse`

NewDeleteUserResponse instantiates a new DeleteUserResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeleteUserResponseWithDefaults

`func NewDeleteUserResponseWithDefaults() *DeleteUserResponse`

NewDeleteUserResponseWithDefaults instantiates a new DeleteUserResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *DeleteUserResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *DeleteUserResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *DeleteUserResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *DeleteUserResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetUserId

`func (o *DeleteUserResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *DeleteUserResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *DeleteUserResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *DeleteUserResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


