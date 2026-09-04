# LineOfCreditAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Discriminator for the account kind. | 
**Id** | **string** | Unique identifier for the connected institution account. This is the UUID used to reference the account in SnapTrade. | 
**ConnectionId** | **string** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. | 
**DisplayName** | Pointer to **NullableString** | A display name for the account. Either assigned by the user or by the institution itself. | [optional] 
**MaskedAccountNumber** | **string** | The account number assigned by the institution, masked to the last 4 characters (e.g. &#x60;****1881&#x60;). | 
**InstitutionAccountId** | Pointer to **NullableString** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same institution account across multiple connections. | [optional] 
**InstitutionId** | Pointer to **string** | Unique identifier for the institution that holds the account. | [optional] 
**OpeningDate** | Pointer to **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the institution. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. | [optional] 
**SyncStatus** | [**LineOfCreditAccountSyncStatus**](LineOfCreditAccountSyncStatus.md) |  | 
**RawType** | Pointer to **NullableString** | The account type as provided by the institution. | [optional] 
**NetValue** | Pointer to [**NullableLineOfCreditAccountNetValue**](LineOfCreditAccountNetValue.md) |  | [optional] 
**MinimumPaymentAmount** | Pointer to [**NullableLineOfCreditAccountMinimumPaymentAmount**](LineOfCreditAccountMinimumPaymentAmount.md) |  | [optional] 

## Methods

### NewLineOfCreditAccount

`func NewLineOfCreditAccount(kind string, id string, connectionId string, maskedAccountNumber string, syncStatus LineOfCreditAccountSyncStatus, ) *LineOfCreditAccount`

NewLineOfCreditAccount instantiates a new LineOfCreditAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLineOfCreditAccountWithDefaults

`func NewLineOfCreditAccountWithDefaults() *LineOfCreditAccount`

NewLineOfCreditAccountWithDefaults instantiates a new LineOfCreditAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *LineOfCreditAccount) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *LineOfCreditAccount) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *LineOfCreditAccount) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *LineOfCreditAccount) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *LineOfCreditAccount) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *LineOfCreditAccount) SetId(v string)`

SetId sets Id field to given value.


### GetConnectionId

`func (o *LineOfCreditAccount) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *LineOfCreditAccount) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *LineOfCreditAccount) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.


### GetDisplayName

`func (o *LineOfCreditAccount) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *LineOfCreditAccount) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *LineOfCreditAccount) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *LineOfCreditAccount) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### SetDisplayNameNil

`func (o *LineOfCreditAccount) SetDisplayNameNil(b bool)`

 SetDisplayNameNil sets the value for DisplayName to be an explicit nil

### UnsetDisplayName
`func (o *LineOfCreditAccount) UnsetDisplayName()`

UnsetDisplayName ensures that no value is present for DisplayName, not even an explicit nil
### GetMaskedAccountNumber

`func (o *LineOfCreditAccount) GetMaskedAccountNumber() string`

GetMaskedAccountNumber returns the MaskedAccountNumber field if non-nil, zero value otherwise.

### GetMaskedAccountNumberOk

`func (o *LineOfCreditAccount) GetMaskedAccountNumberOk() (*string, bool)`

GetMaskedAccountNumberOk returns a tuple with the MaskedAccountNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaskedAccountNumber

`func (o *LineOfCreditAccount) SetMaskedAccountNumber(v string)`

SetMaskedAccountNumber sets MaskedAccountNumber field to given value.


### GetInstitutionAccountId

`func (o *LineOfCreditAccount) GetInstitutionAccountId() string`

GetInstitutionAccountId returns the InstitutionAccountId field if non-nil, zero value otherwise.

### GetInstitutionAccountIdOk

`func (o *LineOfCreditAccount) GetInstitutionAccountIdOk() (*string, bool)`

GetInstitutionAccountIdOk returns a tuple with the InstitutionAccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionAccountId

`func (o *LineOfCreditAccount) SetInstitutionAccountId(v string)`

SetInstitutionAccountId sets InstitutionAccountId field to given value.

### HasInstitutionAccountId

`func (o *LineOfCreditAccount) HasInstitutionAccountId() bool`

HasInstitutionAccountId returns a boolean if a field has been set.

### SetInstitutionAccountIdNil

`func (o *LineOfCreditAccount) SetInstitutionAccountIdNil(b bool)`

 SetInstitutionAccountIdNil sets the value for InstitutionAccountId to be an explicit nil

### UnsetInstitutionAccountId
`func (o *LineOfCreditAccount) UnsetInstitutionAccountId()`

UnsetInstitutionAccountId ensures that no value is present for InstitutionAccountId, not even an explicit nil
### GetInstitutionId

`func (o *LineOfCreditAccount) GetInstitutionId() string`

GetInstitutionId returns the InstitutionId field if non-nil, zero value otherwise.

### GetInstitutionIdOk

`func (o *LineOfCreditAccount) GetInstitutionIdOk() (*string, bool)`

GetInstitutionIdOk returns a tuple with the InstitutionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionId

`func (o *LineOfCreditAccount) SetInstitutionId(v string)`

SetInstitutionId sets InstitutionId field to given value.

### HasInstitutionId

`func (o *LineOfCreditAccount) HasInstitutionId() bool`

HasInstitutionId returns a boolean if a field has been set.

### GetOpeningDate

`func (o *LineOfCreditAccount) GetOpeningDate() time.Time`

GetOpeningDate returns the OpeningDate field if non-nil, zero value otherwise.

### GetOpeningDateOk

`func (o *LineOfCreditAccount) GetOpeningDateOk() (*time.Time, bool)`

GetOpeningDateOk returns a tuple with the OpeningDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpeningDate

`func (o *LineOfCreditAccount) SetOpeningDate(v time.Time)`

SetOpeningDate sets OpeningDate field to given value.

### HasOpeningDate

`func (o *LineOfCreditAccount) HasOpeningDate() bool`

HasOpeningDate returns a boolean if a field has been set.

### SetOpeningDateNil

`func (o *LineOfCreditAccount) SetOpeningDateNil(b bool)`

 SetOpeningDateNil sets the value for OpeningDate to be an explicit nil

### UnsetOpeningDate
`func (o *LineOfCreditAccount) UnsetOpeningDate()`

UnsetOpeningDate ensures that no value is present for OpeningDate, not even an explicit nil
### GetSyncStatus

`func (o *LineOfCreditAccount) GetSyncStatus() LineOfCreditAccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *LineOfCreditAccount) GetSyncStatusOk() (*LineOfCreditAccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *LineOfCreditAccount) SetSyncStatus(v LineOfCreditAccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.


### GetRawType

`func (o *LineOfCreditAccount) GetRawType() string`

GetRawType returns the RawType field if non-nil, zero value otherwise.

### GetRawTypeOk

`func (o *LineOfCreditAccount) GetRawTypeOk() (*string, bool)`

GetRawTypeOk returns a tuple with the RawType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawType

`func (o *LineOfCreditAccount) SetRawType(v string)`

SetRawType sets RawType field to given value.

### HasRawType

`func (o *LineOfCreditAccount) HasRawType() bool`

HasRawType returns a boolean if a field has been set.

### SetRawTypeNil

`func (o *LineOfCreditAccount) SetRawTypeNil(b bool)`

 SetRawTypeNil sets the value for RawType to be an explicit nil

### UnsetRawType
`func (o *LineOfCreditAccount) UnsetRawType()`

UnsetRawType ensures that no value is present for RawType, not even an explicit nil
### GetNetValue

`func (o *LineOfCreditAccount) GetNetValue() LineOfCreditAccountNetValue`

GetNetValue returns the NetValue field if non-nil, zero value otherwise.

### GetNetValueOk

`func (o *LineOfCreditAccount) GetNetValueOk() (*LineOfCreditAccountNetValue, bool)`

GetNetValueOk returns a tuple with the NetValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNetValue

`func (o *LineOfCreditAccount) SetNetValue(v LineOfCreditAccountNetValue)`

SetNetValue sets NetValue field to given value.

### HasNetValue

`func (o *LineOfCreditAccount) HasNetValue() bool`

HasNetValue returns a boolean if a field has been set.

### SetNetValueNil

`func (o *LineOfCreditAccount) SetNetValueNil(b bool)`

 SetNetValueNil sets the value for NetValue to be an explicit nil

### UnsetNetValue
`func (o *LineOfCreditAccount) UnsetNetValue()`

UnsetNetValue ensures that no value is present for NetValue, not even an explicit nil
### GetMinimumPaymentAmount

`func (o *LineOfCreditAccount) GetMinimumPaymentAmount() LineOfCreditAccountMinimumPaymentAmount`

GetMinimumPaymentAmount returns the MinimumPaymentAmount field if non-nil, zero value otherwise.

### GetMinimumPaymentAmountOk

`func (o *LineOfCreditAccount) GetMinimumPaymentAmountOk() (*LineOfCreditAccountMinimumPaymentAmount, bool)`

GetMinimumPaymentAmountOk returns a tuple with the MinimumPaymentAmount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinimumPaymentAmount

`func (o *LineOfCreditAccount) SetMinimumPaymentAmount(v LineOfCreditAccountMinimumPaymentAmount)`

SetMinimumPaymentAmount sets MinimumPaymentAmount field to given value.

### HasMinimumPaymentAmount

`func (o *LineOfCreditAccount) HasMinimumPaymentAmount() bool`

HasMinimumPaymentAmount returns a boolean if a field has been set.

### SetMinimumPaymentAmountNil

`func (o *LineOfCreditAccount) SetMinimumPaymentAmountNil(b bool)`

 SetMinimumPaymentAmountNil sets the value for MinimumPaymentAmount to be an explicit nil

### UnsetMinimumPaymentAmount
`func (o *LineOfCreditAccount) UnsetMinimumPaymentAmount()`

UnsetMinimumPaymentAmount ensures that no value is present for MinimumPaymentAmount, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


