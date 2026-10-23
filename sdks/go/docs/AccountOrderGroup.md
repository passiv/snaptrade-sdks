# AccountOrderGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Brokerage-assigned identifier shared by every order in the group. | 
**Role** | Pointer to [**NullableAccountOrderRecordV2OrderRoleNullable**](AccountOrderRecordV2OrderRoleNullable.md) |  | [optional] 

## Methods

### NewAccountOrderGroup

`func NewAccountOrderGroup(id string, ) *AccountOrderGroup`

NewAccountOrderGroup instantiates a new AccountOrderGroup object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrderGroupWithDefaults

`func NewAccountOrderGroupWithDefaults() *AccountOrderGroup`

NewAccountOrderGroupWithDefaults instantiates a new AccountOrderGroup object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AccountOrderGroup) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AccountOrderGroup) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AccountOrderGroup) SetId(v string)`

SetId sets Id field to given value.


### GetRole

`func (o *AccountOrderGroup) GetRole() AccountOrderRecordV2OrderRoleNullable`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *AccountOrderGroup) GetRoleOk() (*AccountOrderRecordV2OrderRoleNullable, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *AccountOrderGroup) SetRole(v AccountOrderRecordV2OrderRoleNullable)`

SetRole sets Role field to given value.

### HasRole

`func (o *AccountOrderGroup) HasRole() bool`

HasRole returns a boolean if a field has been set.

### SetRoleNil

`func (o *AccountOrderGroup) SetRoleNil(b bool)`

 SetRoleNil sets the value for Role to be an explicit nil

### UnsetRole
`func (o *AccountOrderGroup) UnsetRole()`

UnsetRole ensures that no value is present for Role, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


