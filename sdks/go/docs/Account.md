# Account

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated. | [optional] 
**BrokerageAuthorization** | Pointer to **string** | Unique identifier for the connection (brokerage authorization). This is the UUID used to reference the connection in SnapTrade. | [optional] 
**PortfolioGroup** | Pointer to **string** | Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it. | [optional] 
**Name** | Pointer to **NullableString** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. | [optional] 
**Number** | Pointer to **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | [optional] 
**InstitutionName** | Pointer to **string** | The name of the brokerage that holds the account. | [optional] 
**CreatedDate** | Pointer to **time.Time** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage. | [optional] 
**Meta** | Pointer to **map[string]interface{}** | Additional information about the account, such as account type, status, etc. This information is specific to the brokerage and there&#39;s no standard format for this data. Please use at your own risk. | [optional] 
**CashRestrictions** | Pointer to **[]string** | This field is deprecated. | [optional] 
**SyncStatus** | Pointer to [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 
**Balance** | Pointer to [**AccountBalance**](AccountBalance.md) |  | [optional] 

## Methods

### NewAccount

`func NewAccount() *Account`

NewAccount instantiates a new Account object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountWithDefaults

`func NewAccountWithDefaults() *Account`

NewAccountWithDefaults instantiates a new Account object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Account) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Account) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Account) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Account) HasId() bool`

HasId returns a boolean if a field has been set.

### GetBrokerageAuthorization

`func (o *Account) GetBrokerageAuthorization() string`

GetBrokerageAuthorization returns the BrokerageAuthorization field if non-nil, zero value otherwise.

### GetBrokerageAuthorizationOk

`func (o *Account) GetBrokerageAuthorizationOk() (*string, bool)`

GetBrokerageAuthorizationOk returns a tuple with the BrokerageAuthorization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageAuthorization

`func (o *Account) SetBrokerageAuthorization(v string)`

SetBrokerageAuthorization sets BrokerageAuthorization field to given value.

### HasBrokerageAuthorization

`func (o *Account) HasBrokerageAuthorization() bool`

HasBrokerageAuthorization returns a boolean if a field has been set.

### GetPortfolioGroup

`func (o *Account) GetPortfolioGroup() string`

GetPortfolioGroup returns the PortfolioGroup field if non-nil, zero value otherwise.

### GetPortfolioGroupOk

`func (o *Account) GetPortfolioGroupOk() (*string, bool)`

GetPortfolioGroupOk returns a tuple with the PortfolioGroup field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortfolioGroup

`func (o *Account) SetPortfolioGroup(v string)`

SetPortfolioGroup sets PortfolioGroup field to given value.

### HasPortfolioGroup

`func (o *Account) HasPortfolioGroup() bool`

HasPortfolioGroup returns a boolean if a field has been set.

### GetName

`func (o *Account) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Account) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Account) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Account) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *Account) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *Account) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetNumber

`func (o *Account) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *Account) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *Account) SetNumber(v string)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *Account) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetInstitutionName

`func (o *Account) GetInstitutionName() string`

GetInstitutionName returns the InstitutionName field if non-nil, zero value otherwise.

### GetInstitutionNameOk

`func (o *Account) GetInstitutionNameOk() (*string, bool)`

GetInstitutionNameOk returns a tuple with the InstitutionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionName

`func (o *Account) SetInstitutionName(v string)`

SetInstitutionName sets InstitutionName field to given value.

### HasInstitutionName

`func (o *Account) HasInstitutionName() bool`

HasInstitutionName returns a boolean if a field has been set.

### GetCreatedDate

`func (o *Account) GetCreatedDate() time.Time`

GetCreatedDate returns the CreatedDate field if non-nil, zero value otherwise.

### GetCreatedDateOk

`func (o *Account) GetCreatedDateOk() (*time.Time, bool)`

GetCreatedDateOk returns a tuple with the CreatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedDate

`func (o *Account) SetCreatedDate(v time.Time)`

SetCreatedDate sets CreatedDate field to given value.

### HasCreatedDate

`func (o *Account) HasCreatedDate() bool`

HasCreatedDate returns a boolean if a field has been set.

### GetMeta

`func (o *Account) GetMeta() map[string]interface{}`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *Account) GetMetaOk() (*map[string]interface{}, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *Account) SetMeta(v map[string]interface{})`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *Account) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetCashRestrictions

`func (o *Account) GetCashRestrictions() []string`

GetCashRestrictions returns the CashRestrictions field if non-nil, zero value otherwise.

### GetCashRestrictionsOk

`func (o *Account) GetCashRestrictionsOk() (*[]string, bool)`

GetCashRestrictionsOk returns a tuple with the CashRestrictions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCashRestrictions

`func (o *Account) SetCashRestrictions(v []string)`

SetCashRestrictions sets CashRestrictions field to given value.

### HasCashRestrictions

`func (o *Account) HasCashRestrictions() bool`

HasCashRestrictions returns a boolean if a field has been set.

### GetSyncStatus

`func (o *Account) GetSyncStatus() AccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *Account) GetSyncStatusOk() (*AccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *Account) SetSyncStatus(v AccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.

### HasSyncStatus

`func (o *Account) HasSyncStatus() bool`

HasSyncStatus returns a boolean if a field has been set.

### GetBalance

`func (o *Account) GetBalance() AccountBalance`

GetBalance returns the Balance field if non-nil, zero value otherwise.

### GetBalanceOk

`func (o *Account) GetBalanceOk() (*AccountBalance, bool)`

GetBalanceOk returns a tuple with the Balance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalance

`func (o *Account) SetBalance(v AccountBalance)`

SetBalance sets Balance field to given value.

### HasBalance

`func (o *Account) HasBalance() bool`

HasBalance returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


