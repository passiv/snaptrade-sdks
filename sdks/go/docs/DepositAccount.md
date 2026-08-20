# DepositAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Discriminator for the account kind. | 
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**ConnectionId** | **string** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. | 
**DisplayName** | Pointer to **NullableString** | A display name for the account. Either assigned by the user or by the brokerage itself. | [optional] 
**Number** | **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | 
**InstitutionAccountId** | Pointer to **NullableString** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections. | [optional] 
**InstitutionId** | Pointer to **string** | Unique identifier for the institution (brokerage) that holds the account. | [optional] 
**OpeningDate** | Pointer to **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. Only populated for brokerages that expose this data; &#x60;null&#x60; for all other brokerages. | [optional] 
**SyncStatus** | [**ConnectionAccountSyncStatus**](ConnectionAccountSyncStatus.md) |  | 
**RawType** | Pointer to **NullableString** | The account type as provided by the brokerage. | [optional] 
**Balance** | Pointer to [**NullableDepositAccountBalance**](DepositAccountBalance.md) |  | [optional] 

## Methods

### NewDepositAccount

`func NewDepositAccount(kind string, id string, connectionId string, number string, syncStatus ConnectionAccountSyncStatus, ) *DepositAccount`

NewDepositAccount instantiates a new DepositAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDepositAccountWithDefaults

`func NewDepositAccountWithDefaults() *DepositAccount`

NewDepositAccountWithDefaults instantiates a new DepositAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *DepositAccount) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *DepositAccount) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *DepositAccount) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *DepositAccount) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DepositAccount) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DepositAccount) SetId(v string)`

SetId sets Id field to given value.


### GetConnectionId

`func (o *DepositAccount) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *DepositAccount) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *DepositAccount) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.


### GetDisplayName

`func (o *DepositAccount) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *DepositAccount) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *DepositAccount) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *DepositAccount) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### SetDisplayNameNil

`func (o *DepositAccount) SetDisplayNameNil(b bool)`

 SetDisplayNameNil sets the value for DisplayName to be an explicit nil

### UnsetDisplayName
`func (o *DepositAccount) UnsetDisplayName()`

UnsetDisplayName ensures that no value is present for DisplayName, not even an explicit nil
### GetNumber

`func (o *DepositAccount) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *DepositAccount) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *DepositAccount) SetNumber(v string)`

SetNumber sets Number field to given value.


### GetInstitutionAccountId

`func (o *DepositAccount) GetInstitutionAccountId() string`

GetInstitutionAccountId returns the InstitutionAccountId field if non-nil, zero value otherwise.

### GetInstitutionAccountIdOk

`func (o *DepositAccount) GetInstitutionAccountIdOk() (*string, bool)`

GetInstitutionAccountIdOk returns a tuple with the InstitutionAccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionAccountId

`func (o *DepositAccount) SetInstitutionAccountId(v string)`

SetInstitutionAccountId sets InstitutionAccountId field to given value.

### HasInstitutionAccountId

`func (o *DepositAccount) HasInstitutionAccountId() bool`

HasInstitutionAccountId returns a boolean if a field has been set.

### SetInstitutionAccountIdNil

`func (o *DepositAccount) SetInstitutionAccountIdNil(b bool)`

 SetInstitutionAccountIdNil sets the value for InstitutionAccountId to be an explicit nil

### UnsetInstitutionAccountId
`func (o *DepositAccount) UnsetInstitutionAccountId()`

UnsetInstitutionAccountId ensures that no value is present for InstitutionAccountId, not even an explicit nil
### GetInstitutionId

`func (o *DepositAccount) GetInstitutionId() string`

GetInstitutionId returns the InstitutionId field if non-nil, zero value otherwise.

### GetInstitutionIdOk

`func (o *DepositAccount) GetInstitutionIdOk() (*string, bool)`

GetInstitutionIdOk returns a tuple with the InstitutionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionId

`func (o *DepositAccount) SetInstitutionId(v string)`

SetInstitutionId sets InstitutionId field to given value.

### HasInstitutionId

`func (o *DepositAccount) HasInstitutionId() bool`

HasInstitutionId returns a boolean if a field has been set.

### GetOpeningDate

`func (o *DepositAccount) GetOpeningDate() time.Time`

GetOpeningDate returns the OpeningDate field if non-nil, zero value otherwise.

### GetOpeningDateOk

`func (o *DepositAccount) GetOpeningDateOk() (*time.Time, bool)`

GetOpeningDateOk returns a tuple with the OpeningDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpeningDate

`func (o *DepositAccount) SetOpeningDate(v time.Time)`

SetOpeningDate sets OpeningDate field to given value.

### HasOpeningDate

`func (o *DepositAccount) HasOpeningDate() bool`

HasOpeningDate returns a boolean if a field has been set.

### SetOpeningDateNil

`func (o *DepositAccount) SetOpeningDateNil(b bool)`

 SetOpeningDateNil sets the value for OpeningDate to be an explicit nil

### UnsetOpeningDate
`func (o *DepositAccount) UnsetOpeningDate()`

UnsetOpeningDate ensures that no value is present for OpeningDate, not even an explicit nil
### GetSyncStatus

`func (o *DepositAccount) GetSyncStatus() ConnectionAccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *DepositAccount) GetSyncStatusOk() (*ConnectionAccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *DepositAccount) SetSyncStatus(v ConnectionAccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.


### GetRawType

`func (o *DepositAccount) GetRawType() string`

GetRawType returns the RawType field if non-nil, zero value otherwise.

### GetRawTypeOk

`func (o *DepositAccount) GetRawTypeOk() (*string, bool)`

GetRawTypeOk returns a tuple with the RawType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawType

`func (o *DepositAccount) SetRawType(v string)`

SetRawType sets RawType field to given value.

### HasRawType

`func (o *DepositAccount) HasRawType() bool`

HasRawType returns a boolean if a field has been set.

### SetRawTypeNil

`func (o *DepositAccount) SetRawTypeNil(b bool)`

 SetRawTypeNil sets the value for RawType to be an explicit nil

### UnsetRawType
`func (o *DepositAccount) UnsetRawType()`

UnsetRawType ensures that no value is present for RawType, not even an explicit nil
### GetBalance

`func (o *DepositAccount) GetBalance() DepositAccountBalance`

GetBalance returns the Balance field if non-nil, zero value otherwise.

### GetBalanceOk

`func (o *DepositAccount) GetBalanceOk() (*DepositAccountBalance, bool)`

GetBalanceOk returns a tuple with the Balance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalance

`func (o *DepositAccount) SetBalance(v DepositAccountBalance)`

SetBalance sets Balance field to given value.

### HasBalance

`func (o *DepositAccount) HasBalance() bool`

HasBalance returns a boolean if a field has been set.

### SetBalanceNil

`func (o *DepositAccount) SetBalanceNil(b bool)`

 SetBalanceNil sets the value for Balance to be an explicit nil

### UnsetBalance
`func (o *DepositAccount) UnsetBalance()`

UnsetBalance ensures that no value is present for Balance, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


