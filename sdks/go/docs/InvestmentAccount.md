# InvestmentAccount

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
**OpeningDate** | Pointer to **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); &#x60;null&#x60; for all other brokerages. | [optional] 
**SyncStatus** | [**ConnectionAccountSyncStatus**](ConnectionAccountSyncStatus.md) |  | 
**RawType** | Pointer to **NullableString** | The account type as provided by the brokerage. | [optional] 
**FundingDate** | Pointer to **NullableTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); &#x60;null&#x60; for all other brokerages. | [optional] 
**IsPaper** | **bool** | Indicates whether the account is a paper (simulated) trading account. | 
**MarketValue** | Pointer to [**NullableInvestmentAccountMarketValue**](InvestmentAccountMarketValue.md) |  | [optional] 

## Methods

### NewInvestmentAccount

`func NewInvestmentAccount(kind string, id string, connectionId string, number string, syncStatus ConnectionAccountSyncStatus, isPaper bool, ) *InvestmentAccount`

NewInvestmentAccount instantiates a new InvestmentAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInvestmentAccountWithDefaults

`func NewInvestmentAccountWithDefaults() *InvestmentAccount`

NewInvestmentAccountWithDefaults instantiates a new InvestmentAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *InvestmentAccount) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *InvestmentAccount) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *InvestmentAccount) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *InvestmentAccount) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *InvestmentAccount) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *InvestmentAccount) SetId(v string)`

SetId sets Id field to given value.


### GetConnectionId

`func (o *InvestmentAccount) GetConnectionId() string`

GetConnectionId returns the ConnectionId field if non-nil, zero value otherwise.

### GetConnectionIdOk

`func (o *InvestmentAccount) GetConnectionIdOk() (*string, bool)`

GetConnectionIdOk returns a tuple with the ConnectionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConnectionId

`func (o *InvestmentAccount) SetConnectionId(v string)`

SetConnectionId sets ConnectionId field to given value.


### GetDisplayName

`func (o *InvestmentAccount) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *InvestmentAccount) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *InvestmentAccount) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *InvestmentAccount) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### SetDisplayNameNil

`func (o *InvestmentAccount) SetDisplayNameNil(b bool)`

 SetDisplayNameNil sets the value for DisplayName to be an explicit nil

### UnsetDisplayName
`func (o *InvestmentAccount) UnsetDisplayName()`

UnsetDisplayName ensures that no value is present for DisplayName, not even an explicit nil
### GetNumber

`func (o *InvestmentAccount) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *InvestmentAccount) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *InvestmentAccount) SetNumber(v string)`

SetNumber sets Number field to given value.


### GetInstitutionAccountId

`func (o *InvestmentAccount) GetInstitutionAccountId() string`

GetInstitutionAccountId returns the InstitutionAccountId field if non-nil, zero value otherwise.

### GetInstitutionAccountIdOk

`func (o *InvestmentAccount) GetInstitutionAccountIdOk() (*string, bool)`

GetInstitutionAccountIdOk returns a tuple with the InstitutionAccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionAccountId

`func (o *InvestmentAccount) SetInstitutionAccountId(v string)`

SetInstitutionAccountId sets InstitutionAccountId field to given value.

### HasInstitutionAccountId

`func (o *InvestmentAccount) HasInstitutionAccountId() bool`

HasInstitutionAccountId returns a boolean if a field has been set.

### SetInstitutionAccountIdNil

`func (o *InvestmentAccount) SetInstitutionAccountIdNil(b bool)`

 SetInstitutionAccountIdNil sets the value for InstitutionAccountId to be an explicit nil

### UnsetInstitutionAccountId
`func (o *InvestmentAccount) UnsetInstitutionAccountId()`

UnsetInstitutionAccountId ensures that no value is present for InstitutionAccountId, not even an explicit nil
### GetInstitutionId

`func (o *InvestmentAccount) GetInstitutionId() string`

GetInstitutionId returns the InstitutionId field if non-nil, zero value otherwise.

### GetInstitutionIdOk

`func (o *InvestmentAccount) GetInstitutionIdOk() (*string, bool)`

GetInstitutionIdOk returns a tuple with the InstitutionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionId

`func (o *InvestmentAccount) SetInstitutionId(v string)`

SetInstitutionId sets InstitutionId field to given value.

### HasInstitutionId

`func (o *InvestmentAccount) HasInstitutionId() bool`

HasInstitutionId returns a boolean if a field has been set.

### GetOpeningDate

`func (o *InvestmentAccount) GetOpeningDate() time.Time`

GetOpeningDate returns the OpeningDate field if non-nil, zero value otherwise.

### GetOpeningDateOk

`func (o *InvestmentAccount) GetOpeningDateOk() (*time.Time, bool)`

GetOpeningDateOk returns a tuple with the OpeningDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpeningDate

`func (o *InvestmentAccount) SetOpeningDate(v time.Time)`

SetOpeningDate sets OpeningDate field to given value.

### HasOpeningDate

`func (o *InvestmentAccount) HasOpeningDate() bool`

HasOpeningDate returns a boolean if a field has been set.

### SetOpeningDateNil

`func (o *InvestmentAccount) SetOpeningDateNil(b bool)`

 SetOpeningDateNil sets the value for OpeningDate to be an explicit nil

### UnsetOpeningDate
`func (o *InvestmentAccount) UnsetOpeningDate()`

UnsetOpeningDate ensures that no value is present for OpeningDate, not even an explicit nil
### GetSyncStatus

`func (o *InvestmentAccount) GetSyncStatus() ConnectionAccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *InvestmentAccount) GetSyncStatusOk() (*ConnectionAccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *InvestmentAccount) SetSyncStatus(v ConnectionAccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.


### GetRawType

`func (o *InvestmentAccount) GetRawType() string`

GetRawType returns the RawType field if non-nil, zero value otherwise.

### GetRawTypeOk

`func (o *InvestmentAccount) GetRawTypeOk() (*string, bool)`

GetRawTypeOk returns a tuple with the RawType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawType

`func (o *InvestmentAccount) SetRawType(v string)`

SetRawType sets RawType field to given value.

### HasRawType

`func (o *InvestmentAccount) HasRawType() bool`

HasRawType returns a boolean if a field has been set.

### SetRawTypeNil

`func (o *InvestmentAccount) SetRawTypeNil(b bool)`

 SetRawTypeNil sets the value for RawType to be an explicit nil

### UnsetRawType
`func (o *InvestmentAccount) UnsetRawType()`

UnsetRawType ensures that no value is present for RawType, not even an explicit nil
### GetFundingDate

`func (o *InvestmentAccount) GetFundingDate() time.Time`

GetFundingDate returns the FundingDate field if non-nil, zero value otherwise.

### GetFundingDateOk

`func (o *InvestmentAccount) GetFundingDateOk() (*time.Time, bool)`

GetFundingDateOk returns a tuple with the FundingDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFundingDate

`func (o *InvestmentAccount) SetFundingDate(v time.Time)`

SetFundingDate sets FundingDate field to given value.

### HasFundingDate

`func (o *InvestmentAccount) HasFundingDate() bool`

HasFundingDate returns a boolean if a field has been set.

### SetFundingDateNil

`func (o *InvestmentAccount) SetFundingDateNil(b bool)`

 SetFundingDateNil sets the value for FundingDate to be an explicit nil

### UnsetFundingDate
`func (o *InvestmentAccount) UnsetFundingDate()`

UnsetFundingDate ensures that no value is present for FundingDate, not even an explicit nil
### GetIsPaper

`func (o *InvestmentAccount) GetIsPaper() bool`

GetIsPaper returns the IsPaper field if non-nil, zero value otherwise.

### GetIsPaperOk

`func (o *InvestmentAccount) GetIsPaperOk() (*bool, bool)`

GetIsPaperOk returns a tuple with the IsPaper field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPaper

`func (o *InvestmentAccount) SetIsPaper(v bool)`

SetIsPaper sets IsPaper field to given value.


### GetMarketValue

`func (o *InvestmentAccount) GetMarketValue() InvestmentAccountMarketValue`

GetMarketValue returns the MarketValue field if non-nil, zero value otherwise.

### GetMarketValueOk

`func (o *InvestmentAccount) GetMarketValueOk() (*InvestmentAccountMarketValue, bool)`

GetMarketValueOk returns a tuple with the MarketValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMarketValue

`func (o *InvestmentAccount) SetMarketValue(v InvestmentAccountMarketValue)`

SetMarketValue sets MarketValue field to given value.

### HasMarketValue

`func (o *InvestmentAccount) HasMarketValue() bool`

HasMarketValue returns a boolean if a field has been set.

### SetMarketValueNil

`func (o *InvestmentAccount) SetMarketValueNil(b bool)`

 SetMarketValueNil sets the value for MarketValue to be an explicit nil

### UnsetMarketValue
`func (o *InvestmentAccount) UnsetMarketValue()`

UnsetMarketValue ensures that no value is present for MarketValue, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


