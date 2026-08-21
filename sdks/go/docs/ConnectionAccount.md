# ConnectionAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Discriminator for the account kind. | 
**Id** | **string** | Unique identifier for the connected institution account. This is the UUID used to reference the account in SnapTrade. | 
**ConnectionId** | **string** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. | 
**DisplayName** | Pointer to **NullableString** | A display name for the account. Either assigned by the user or by the institution itself. | [optional] 
**Number** | **string** | The account number assigned by the institution, masked to the last 4 characters (e.g. &#x60;****1881&#x60;). | 
**InstitutionAccountId** | Pointer to **NullableString** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same institution account across multiple connections. | [optional] 
**InstitutionId** | Pointer to **string** | Unique identifier for the institution that holds the account. | [optional] 
**OpeningDate** | Pointer to **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the institution. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. | [optional] 
**FundingDate** | Pointer to **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. See [supported institutions](https://support.snaptrade.com/brokerages) for the full list. | [optional] 
**SyncStatus** | [**LineOfCreditAccountSyncStatus**](LineOfCreditAccountSyncStatus.md) |  | 
**RawType** | Pointer to **NullableString** | The account type as provided by the institution. | [optional] 
**IsPaper** | **bool** | Indicates whether the account is a paper (simulated) trading account. | 
**NetValue** | Pointer to [**NullableLineOfCreditAccountNetValue**](LineOfCreditAccountNetValue.md) |  | [optional] 
**CreditDetails** | Pointer to [**NullableLineOfCreditAccountCreditDetails**](LineOfCreditAccountCreditDetails.md) |  | [optional] 

## Methods

### NewConnectionAccount

`func NewConnectionAccount(kind string, id string, connectionId string, number string, syncStatus LineOfCreditAccountSyncStatus, isPaper bool, ) *ConnectionAccount`

NewConnectionAccount instantiates a new ConnectionAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewConnectionAccountWithDefaults

`func NewConnectionAccountWithDefaults() *ConnectionAccount`

NewConnectionAccountWithDefaults instantiates a new ConnectionAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *ConnectionAccount) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *ConnectionAccount) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *ConnectionAccount) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *ConnectionAccount) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ConnectionAccount) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ConnectionAccount) SetId(v string)`

SetId sets Id field to given value.


### GetConnectionId

`func (o *ConnectionAccount) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *ConnectionAccount) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *ConnectionAccount) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.


### GetDisplayName

`func (o *ConnectionAccount) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *ConnectionAccount) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *ConnectionAccount) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *ConnectionAccount) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### SetDisplayNameNil

`func (o *ConnectionAccount) SetDisplayNameNil(b bool)`

 SetDisplayNameNil sets the value for DisplayName to be an explicit nil

### UnsetDisplayName
`func (o *ConnectionAccount) UnsetDisplayName()`

UnsetDisplayName ensures that no value is present for DisplayName, not even an explicit nil
### GetNumber

`func (o *ConnectionAccount) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *ConnectionAccount) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *ConnectionAccount) SetNumber(v string)`

SetNumber sets Number field to given value.


### GetInstitutionAccountId

`func (o *ConnectionAccount) GetInstitutionAccountId() string`

GetInstitutionAccountId returns the InstitutionAccountId field if non-nil, zero value otherwise.

### GetInstitutionAccountIdOk

`func (o *ConnectionAccount) GetInstitutionAccountIdOk() (*string, bool)`

GetInstitutionAccountIdOk returns a tuple with the InstitutionAccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionAccountId

`func (o *ConnectionAccount) SetInstitutionAccountId(v string)`

SetInstitutionAccountId sets InstitutionAccountId field to given value.

### HasInstitutionAccountId

`func (o *ConnectionAccount) HasInstitutionAccountId() bool`

HasInstitutionAccountId returns a boolean if a field has been set.

### SetInstitutionAccountIdNil

`func (o *ConnectionAccount) SetInstitutionAccountIdNil(b bool)`

 SetInstitutionAccountIdNil sets the value for InstitutionAccountId to be an explicit nil

### UnsetInstitutionAccountId
`func (o *ConnectionAccount) UnsetInstitutionAccountId()`

UnsetInstitutionAccountId ensures that no value is present for InstitutionAccountId, not even an explicit nil
### GetInstitutionId

`func (o *ConnectionAccount) GetInstitutionId() string`

GetInstitutionId returns the InstitutionId field if non-nil, zero value otherwise.

### GetInstitutionIdOk

`func (o *ConnectionAccount) GetInstitutionIdOk() (*string, bool)`

GetInstitutionIdOk returns a tuple with the InstitutionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionId

`func (o *ConnectionAccount) SetInstitutionId(v string)`

SetInstitutionId sets InstitutionId field to given value.

### HasInstitutionId

`func (o *ConnectionAccount) HasInstitutionId() bool`

HasInstitutionId returns a boolean if a field has been set.

### GetOpeningDate

`func (o *ConnectionAccount) GetOpeningDate() time.Time`

GetOpeningDate returns the OpeningDate field if non-nil, zero value otherwise.

### GetOpeningDateOk

`func (o *ConnectionAccount) GetOpeningDateOk() (*time.Time, bool)`

GetOpeningDateOk returns a tuple with the OpeningDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpeningDate

`func (o *ConnectionAccount) SetOpeningDate(v time.Time)`

SetOpeningDate sets OpeningDate field to given value.

### HasOpeningDate

`func (o *ConnectionAccount) HasOpeningDate() bool`

HasOpeningDate returns a boolean if a field has been set.

### SetOpeningDateNil

`func (o *ConnectionAccount) SetOpeningDateNil(b bool)`

 SetOpeningDateNil sets the value for OpeningDate to be an explicit nil

### UnsetOpeningDate
`func (o *ConnectionAccount) UnsetOpeningDate()`

UnsetOpeningDate ensures that no value is present for OpeningDate, not even an explicit nil
### GetFundingDate

`func (o *ConnectionAccount) GetFundingDate() time.Time`

GetFundingDate returns the FundingDate field if non-nil, zero value otherwise.

### GetFundingDateOk

`func (o *ConnectionAccount) GetFundingDateOk() (*time.Time, bool)`

GetFundingDateOk returns a tuple with the FundingDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFundingDate

`func (o *ConnectionAccount) SetFundingDate(v time.Time)`

SetFundingDate sets FundingDate field to given value.

### HasFundingDate

`func (o *ConnectionAccount) HasFundingDate() bool`

HasFundingDate returns a boolean if a field has been set.

### SetFundingDateNil

`func (o *ConnectionAccount) SetFundingDateNil(b bool)`

 SetFundingDateNil sets the value for FundingDate to be an explicit nil

### UnsetFundingDate
`func (o *ConnectionAccount) UnsetFundingDate()`

UnsetFundingDate ensures that no value is present for FundingDate, not even an explicit nil
### GetSyncStatus

`func (o *ConnectionAccount) GetSyncStatus() LineOfCreditAccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *ConnectionAccount) GetSyncStatusOk() (*LineOfCreditAccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *ConnectionAccount) SetSyncStatus(v LineOfCreditAccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.


### GetRawType

`func (o *ConnectionAccount) GetRawType() string`

GetRawType returns the RawType field if non-nil, zero value otherwise.

### GetRawTypeOk

`func (o *ConnectionAccount) GetRawTypeOk() (*string, bool)`

GetRawTypeOk returns a tuple with the RawType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawType

`func (o *ConnectionAccount) SetRawType(v string)`

SetRawType sets RawType field to given value.

### HasRawType

`func (o *ConnectionAccount) HasRawType() bool`

HasRawType returns a boolean if a field has been set.

### SetRawTypeNil

`func (o *ConnectionAccount) SetRawTypeNil(b bool)`

 SetRawTypeNil sets the value for RawType to be an explicit nil

### UnsetRawType
`func (o *ConnectionAccount) UnsetRawType()`

UnsetRawType ensures that no value is present for RawType, not even an explicit nil
### GetIsPaper

`func (o *ConnectionAccount) GetIsPaper() bool`

GetIsPaper returns the IsPaper field if non-nil, zero value otherwise.

### GetIsPaperOk

`func (o *ConnectionAccount) GetIsPaperOk() (*bool, bool)`

GetIsPaperOk returns a tuple with the IsPaper field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPaper

`func (o *ConnectionAccount) SetIsPaper(v bool)`

SetIsPaper sets IsPaper field to given value.


### GetNetValue

`func (o *ConnectionAccount) GetNetValue() LineOfCreditAccountNetValue`

GetNetValue returns the NetValue field if non-nil, zero value otherwise.

### GetNetValueOk

`func (o *ConnectionAccount) GetNetValueOk() (*LineOfCreditAccountNetValue, bool)`

GetNetValueOk returns a tuple with the NetValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNetValue

`func (o *ConnectionAccount) SetNetValue(v LineOfCreditAccountNetValue)`

SetNetValue sets NetValue field to given value.

### HasNetValue

`func (o *ConnectionAccount) HasNetValue() bool`

HasNetValue returns a boolean if a field has been set.

### SetNetValueNil

`func (o *ConnectionAccount) SetNetValueNil(b bool)`

 SetNetValueNil sets the value for NetValue to be an explicit nil

### UnsetNetValue
`func (o *ConnectionAccount) UnsetNetValue()`

UnsetNetValue ensures that no value is present for NetValue, not even an explicit nil
### GetCreditDetails

`func (o *ConnectionAccount) GetCreditDetails() LineOfCreditAccountCreditDetails`

GetCreditDetails returns the CreditDetails field if non-nil, zero value otherwise.

### GetCreditDetailsOk

`func (o *ConnectionAccount) GetCreditDetailsOk() (*LineOfCreditAccountCreditDetails, bool)`

GetCreditDetailsOk returns a tuple with the CreditDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditDetails

`func (o *ConnectionAccount) SetCreditDetails(v LineOfCreditAccountCreditDetails)`

SetCreditDetails sets CreditDetails field to given value.

### HasCreditDetails

`func (o *ConnectionAccount) HasCreditDetails() bool`

HasCreditDetails returns a boolean if a field has been set.

### SetCreditDetailsNil

`func (o *ConnectionAccount) SetCreditDetailsNil(b bool)`

 SetCreditDetailsNil sets the value for CreditDetails to be an explicit nil

### UnsetCreditDetails
`func (o *ConnectionAccount) UnsetCreditDetails()`

UnsetCreditDetails ensures that no value is present for CreditDetails, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


