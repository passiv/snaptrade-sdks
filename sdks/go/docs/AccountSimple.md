# AccountSimple

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | [optional] 
**Name** | Pointer to **string** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. | [optional] 
**Number** | Pointer to **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | [optional] 
**InstitutionAccountId** | Pointer to **NullableString** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections. | [optional] 
**SyncStatus** | Pointer to [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 

## Methods

### NewAccountSimple

`func NewAccountSimple() *AccountSimple`

NewAccountSimple instantiates a new AccountSimple object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountSimpleWithDefaults

`func NewAccountSimpleWithDefaults() *AccountSimple`

NewAccountSimpleWithDefaults instantiates a new AccountSimple object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AccountSimple) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AccountSimple) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AccountSimple) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *AccountSimple) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *AccountSimple) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AccountSimple) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AccountSimple) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AccountSimple) HasName() bool`

HasName returns a boolean if a field has been set.

### GetNumber

`func (o *AccountSimple) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *AccountSimple) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *AccountSimple) SetNumber(v string)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *AccountSimple) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetInstitutionAccountId

`func (o *AccountSimple) GetInstitutionAccountId() string`

GetInstitutionAccountId returns the InstitutionAccountId field if non-nil, zero value otherwise.

### GetInstitutionAccountIdOk

`func (o *AccountSimple) GetInstitutionAccountIdOk() (*string, bool)`

GetInstitutionAccountIdOk returns a tuple with the InstitutionAccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionAccountId

`func (o *AccountSimple) SetInstitutionAccountId(v string)`

SetInstitutionAccountId sets InstitutionAccountId field to given value.

### HasInstitutionAccountId

`func (o *AccountSimple) HasInstitutionAccountId() bool`

HasInstitutionAccountId returns a boolean if a field has been set.

### SetInstitutionAccountIdNil

`func (o *AccountSimple) SetInstitutionAccountIdNil(b bool)`

 SetInstitutionAccountIdNil sets the value for InstitutionAccountId to be an explicit nil

### UnsetInstitutionAccountId
`func (o *AccountSimple) UnsetInstitutionAccountId()`

UnsetInstitutionAccountId ensures that no value is present for InstitutionAccountId, not even an explicit nil
### GetSyncStatus

`func (o *AccountSimple) GetSyncStatus() AccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *AccountSimple) GetSyncStatusOk() (*AccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *AccountSimple) SetSyncStatus(v AccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.

### HasSyncStatus

`func (o *AccountSimple) HasSyncStatus() bool`

HasSyncStatus returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


