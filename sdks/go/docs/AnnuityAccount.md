# AnnuityAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Discriminator for the account kind. | 
**Id** | **string** | Unique identifier for the connected institution account. This is the UUID used to reference the account in SnapTrade. | 
**ConnectionId** | **string** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. | 
**Status** | Pointer to [**ConnectionAccountStatus**](ConnectionAccountStatus.md) |  | [optional] 
**DisplayName** | Pointer to **NullableString** | A display name for the account. Either assigned by the user or by the institution itself. | [optional] 
**MaskedAccountNumber** | **string** | The account number assigned by the institution, masked to the last 4 characters (e.g. &#x60;****4821&#x60;). | 
**InstitutionAccountId** | Pointer to **NullableString** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same institution account across multiple connections. | [optional] 
**InstitutionId** | Pointer to **string** | Unique identifier for the institution that holds the account. | [optional] 
**OpeningDate** | Pointer to **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the institution. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. | [optional] 
**SyncStatus** | [**AnnuityAccountSyncStatus**](AnnuityAccountSyncStatus.md) |  | 
**RawType** | Pointer to **NullableString** | The account type as provided by the institution. | [optional] 
**NetValue** | Pointer to [**NullableAnnuityAccountNetValue**](AnnuityAccountNetValue.md) |  | [optional] 

## Methods

### NewAnnuityAccount

`func NewAnnuityAccount(kind string, id string, connectionId string, maskedAccountNumber string, syncStatus AnnuityAccountSyncStatus, ) *AnnuityAccount`

NewAnnuityAccount instantiates a new AnnuityAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAnnuityAccountWithDefaults

`func NewAnnuityAccountWithDefaults() *AnnuityAccount`

NewAnnuityAccountWithDefaults instantiates a new AnnuityAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *AnnuityAccount) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *AnnuityAccount) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *AnnuityAccount) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *AnnuityAccount) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AnnuityAccount) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AnnuityAccount) SetId(v string)`

SetId sets Id field to given value.


### GetConnectionId

`func (o *AnnuityAccount) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *AnnuityAccount) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *AnnuityAccount) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.


### GetStatus

`func (o *AnnuityAccount) GetStatus() ConnectionAccountStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AnnuityAccount) GetStatusOk() (*ConnectionAccountStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AnnuityAccount) SetStatus(v ConnectionAccountStatus)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AnnuityAccount) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetDisplayName

`func (o *AnnuityAccount) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *AnnuityAccount) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *AnnuityAccount) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *AnnuityAccount) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### SetDisplayNameNil

`func (o *AnnuityAccount) SetDisplayNameNil(b bool)`

 SetDisplayNameNil sets the value for DisplayName to be an explicit nil

### UnsetDisplayName
`func (o *AnnuityAccount) UnsetDisplayName()`

UnsetDisplayName ensures that no value is present for DisplayName, not even an explicit nil
### GetMaskedAccountNumber

`func (o *AnnuityAccount) GetMaskedAccountNumber() string`

GetMaskedAccountNumber returns the MaskedAccountNumber field if non-nil, zero value otherwise.

### GetMaskedAccountNumberOk

`func (o *AnnuityAccount) GetMaskedAccountNumberOk() (*string, bool)`

GetMaskedAccountNumberOk returns a tuple with the MaskedAccountNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaskedAccountNumber

`func (o *AnnuityAccount) SetMaskedAccountNumber(v string)`

SetMaskedAccountNumber sets MaskedAccountNumber field to given value.


### GetInstitutionAccountId

`func (o *AnnuityAccount) GetInstitutionAccountId() string`

GetInstitutionAccountId returns the InstitutionAccountId field if non-nil, zero value otherwise.

### GetInstitutionAccountIdOk

`func (o *AnnuityAccount) GetInstitutionAccountIdOk() (*string, bool)`

GetInstitutionAccountIdOk returns a tuple with the InstitutionAccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionAccountId

`func (o *AnnuityAccount) SetInstitutionAccountId(v string)`

SetInstitutionAccountId sets InstitutionAccountId field to given value.

### HasInstitutionAccountId

`func (o *AnnuityAccount) HasInstitutionAccountId() bool`

HasInstitutionAccountId returns a boolean if a field has been set.

### SetInstitutionAccountIdNil

`func (o *AnnuityAccount) SetInstitutionAccountIdNil(b bool)`

 SetInstitutionAccountIdNil sets the value for InstitutionAccountId to be an explicit nil

### UnsetInstitutionAccountId
`func (o *AnnuityAccount) UnsetInstitutionAccountId()`

UnsetInstitutionAccountId ensures that no value is present for InstitutionAccountId, not even an explicit nil
### GetInstitutionId

`func (o *AnnuityAccount) GetInstitutionId() string`

GetInstitutionId returns the InstitutionId field if non-nil, zero value otherwise.

### GetInstitutionIdOk

`func (o *AnnuityAccount) GetInstitutionIdOk() (*string, bool)`

GetInstitutionIdOk returns a tuple with the InstitutionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionId

`func (o *AnnuityAccount) SetInstitutionId(v string)`

SetInstitutionId sets InstitutionId field to given value.

### HasInstitutionId

`func (o *AnnuityAccount) HasInstitutionId() bool`

HasInstitutionId returns a boolean if a field has been set.

### GetOpeningDate

`func (o *AnnuityAccount) GetOpeningDate() time.Time`

GetOpeningDate returns the OpeningDate field if non-nil, zero value otherwise.

### GetOpeningDateOk

`func (o *AnnuityAccount) GetOpeningDateOk() (*time.Time, bool)`

GetOpeningDateOk returns a tuple with the OpeningDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpeningDate

`func (o *AnnuityAccount) SetOpeningDate(v time.Time)`

SetOpeningDate sets OpeningDate field to given value.

### HasOpeningDate

`func (o *AnnuityAccount) HasOpeningDate() bool`

HasOpeningDate returns a boolean if a field has been set.

### SetOpeningDateNil

`func (o *AnnuityAccount) SetOpeningDateNil(b bool)`

 SetOpeningDateNil sets the value for OpeningDate to be an explicit nil

### UnsetOpeningDate
`func (o *AnnuityAccount) UnsetOpeningDate()`

UnsetOpeningDate ensures that no value is present for OpeningDate, not even an explicit nil
### GetSyncStatus

`func (o *AnnuityAccount) GetSyncStatus() AnnuityAccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *AnnuityAccount) GetSyncStatusOk() (*AnnuityAccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *AnnuityAccount) SetSyncStatus(v AnnuityAccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.


### GetRawType

`func (o *AnnuityAccount) GetRawType() string`

GetRawType returns the RawType field if non-nil, zero value otherwise.

### GetRawTypeOk

`func (o *AnnuityAccount) GetRawTypeOk() (*string, bool)`

GetRawTypeOk returns a tuple with the RawType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawType

`func (o *AnnuityAccount) SetRawType(v string)`

SetRawType sets RawType field to given value.

### HasRawType

`func (o *AnnuityAccount) HasRawType() bool`

HasRawType returns a boolean if a field has been set.

### SetRawTypeNil

`func (o *AnnuityAccount) SetRawTypeNil(b bool)`

 SetRawTypeNil sets the value for RawType to be an explicit nil

### UnsetRawType
`func (o *AnnuityAccount) UnsetRawType()`

UnsetRawType ensures that no value is present for RawType, not even an explicit nil
### GetNetValue

`func (o *AnnuityAccount) GetNetValue() AnnuityAccountNetValue`

GetNetValue returns the NetValue field if non-nil, zero value otherwise.

### GetNetValueOk

`func (o *AnnuityAccount) GetNetValueOk() (*AnnuityAccountNetValue, bool)`

GetNetValueOk returns a tuple with the NetValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNetValue

`func (o *AnnuityAccount) SetNetValue(v AnnuityAccountNetValue)`

SetNetValue sets NetValue field to given value.

### HasNetValue

`func (o *AnnuityAccount) HasNetValue() bool`

HasNetValue returns a boolean if a field has been set.

### SetNetValueNil

`func (o *AnnuityAccount) SetNetValueNil(b bool)`

 SetNetValueNil sets the value for NetValue to be an explicit nil

### UnsetNetValue
`func (o *AnnuityAccount) UnsetNetValue()`

UnsetNetValue ensures that no value is present for NetValue, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


