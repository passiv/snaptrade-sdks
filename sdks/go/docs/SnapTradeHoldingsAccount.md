# SnapTradeHoldingsAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**BrokerageAuthorization** | Pointer to [**BrokerageAuthorization**](BrokerageAuthorization.md) |  | [optional] 
**PortfolioGroup** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Number** | Pointer to **string** |  | [optional] 
**InstitutionName** | Pointer to **string** |  | [optional] 
**SyncStatus** | Pointer to [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 
**Meta** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewSnapTradeHoldingsAccount

`func NewSnapTradeHoldingsAccount() *SnapTradeHoldingsAccount`

NewSnapTradeHoldingsAccount instantiates a new SnapTradeHoldingsAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSnapTradeHoldingsAccountWithDefaults

`func NewSnapTradeHoldingsAccountWithDefaults() *SnapTradeHoldingsAccount`

NewSnapTradeHoldingsAccountWithDefaults instantiates a new SnapTradeHoldingsAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SnapTradeHoldingsAccount) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SnapTradeHoldingsAccount) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SnapTradeHoldingsAccount) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SnapTradeHoldingsAccount) HasId() bool`

HasId returns a boolean if a field has been set.

### GetBrokerageAuthorization

`func (o *SnapTradeHoldingsAccount) GetBrokerageAuthorization() BrokerageAuthorization`

GetBrokerageAuthorization returns the BrokerageAuthorization field if non-nil, zero value otherwise.

### GetBrokerageAuthorizationOk

`func (o *SnapTradeHoldingsAccount) GetBrokerageAuthorizationOk() (*BrokerageAuthorization, bool)`

GetBrokerageAuthorizationOk returns a tuple with the BrokerageAuthorization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageAuthorization

`func (o *SnapTradeHoldingsAccount) SetBrokerageAuthorization(v BrokerageAuthorization)`

SetBrokerageAuthorization sets BrokerageAuthorization field to given value.

### HasBrokerageAuthorization

`func (o *SnapTradeHoldingsAccount) HasBrokerageAuthorization() bool`

HasBrokerageAuthorization returns a boolean if a field has been set.

### GetPortfolioGroup

`func (o *SnapTradeHoldingsAccount) GetPortfolioGroup() string`

GetPortfolioGroup returns the PortfolioGroup field if non-nil, zero value otherwise.

### GetPortfolioGroupOk

`func (o *SnapTradeHoldingsAccount) GetPortfolioGroupOk() (*string, bool)`

GetPortfolioGroupOk returns a tuple with the PortfolioGroup field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortfolioGroup

`func (o *SnapTradeHoldingsAccount) SetPortfolioGroup(v string)`

SetPortfolioGroup sets PortfolioGroup field to given value.

### HasPortfolioGroup

`func (o *SnapTradeHoldingsAccount) HasPortfolioGroup() bool`

HasPortfolioGroup returns a boolean if a field has been set.

### GetName

`func (o *SnapTradeHoldingsAccount) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SnapTradeHoldingsAccount) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SnapTradeHoldingsAccount) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SnapTradeHoldingsAccount) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *SnapTradeHoldingsAccount) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *SnapTradeHoldingsAccount) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetNumber

`func (o *SnapTradeHoldingsAccount) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SnapTradeHoldingsAccount) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SnapTradeHoldingsAccount) SetNumber(v string)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SnapTradeHoldingsAccount) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetInstitutionName

`func (o *SnapTradeHoldingsAccount) GetInstitutionName() string`

GetInstitutionName returns the InstitutionName field if non-nil, zero value otherwise.

### GetInstitutionNameOk

`func (o *SnapTradeHoldingsAccount) GetInstitutionNameOk() (*string, bool)`

GetInstitutionNameOk returns a tuple with the InstitutionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionName

`func (o *SnapTradeHoldingsAccount) SetInstitutionName(v string)`

SetInstitutionName sets InstitutionName field to given value.

### HasInstitutionName

`func (o *SnapTradeHoldingsAccount) HasInstitutionName() bool`

HasInstitutionName returns a boolean if a field has been set.

### GetSyncStatus

`func (o *SnapTradeHoldingsAccount) GetSyncStatus() AccountSyncStatus`

GetSyncStatus returns the SyncStatus field if non-nil, zero value otherwise.

### GetSyncStatusOk

`func (o *SnapTradeHoldingsAccount) GetSyncStatusOk() (*AccountSyncStatus, bool)`

GetSyncStatusOk returns a tuple with the SyncStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyncStatus

`func (o *SnapTradeHoldingsAccount) SetSyncStatus(v AccountSyncStatus)`

SetSyncStatus sets SyncStatus field to given value.

### HasSyncStatus

`func (o *SnapTradeHoldingsAccount) HasSyncStatus() bool`

HasSyncStatus returns a boolean if a field has been set.

### GetMeta

`func (o *SnapTradeHoldingsAccount) GetMeta() map[string]interface{}`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *SnapTradeHoldingsAccount) GetMetaOk() (*map[string]interface{}, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *SnapTradeHoldingsAccount) SetMeta(v map[string]interface{})`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *SnapTradeHoldingsAccount) HasMeta() bool`

HasMeta returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


