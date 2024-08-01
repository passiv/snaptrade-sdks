# SnapTradeHoldingsAccountAccountId

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**BrokerageAuthorization** | Pointer to **string** |  | [optional] 
**PortfolioGroup** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Number** | Pointer to **string** |  | [optional] 
**InstitutionName** | Pointer to **string** |  | [optional] 
**Balance** | Pointer to [**NullableSnapTradeHoldingsAccountAccountIdBalance**](SnapTradeHoldingsAccountAccountIdBalance.md) |  | [optional] 
**Meta** | Pointer to **map[string]interface{}** |  | [optional] 
**CashRestrictions** | Pointer to [**[]CashRestriction**](CashRestriction.md) |  | [optional] 
**CreatedDate** | Pointer to **string** | Time | [optional] 

## Methods

### NewSnapTradeHoldingsAccountAccountId

`func NewSnapTradeHoldingsAccountAccountId() *SnapTradeHoldingsAccountAccountId`

NewSnapTradeHoldingsAccountAccountId instantiates a new SnapTradeHoldingsAccountAccountId object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSnapTradeHoldingsAccountAccountIdWithDefaults

`func NewSnapTradeHoldingsAccountAccountIdWithDefaults() *SnapTradeHoldingsAccountAccountId`

NewSnapTradeHoldingsAccountAccountIdWithDefaults instantiates a new SnapTradeHoldingsAccountAccountId object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SnapTradeHoldingsAccountAccountId) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SnapTradeHoldingsAccountAccountId) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SnapTradeHoldingsAccountAccountId) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SnapTradeHoldingsAccountAccountId) HasId() bool`

HasId returns a boolean if a field has been set.

### GetBrokerageAuthorization

`func (o *SnapTradeHoldingsAccountAccountId) GetBrokerageAuthorization() string`

GetBrokerageAuthorization returns the BrokerageAuthorization field if non-nil, zero value otherwise.

### GetBrokerageAuthorizationOk

`func (o *SnapTradeHoldingsAccountAccountId) GetBrokerageAuthorizationOk() (*string, bool)`

GetBrokerageAuthorizationOk returns a tuple with the BrokerageAuthorization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageAuthorization

`func (o *SnapTradeHoldingsAccountAccountId) SetBrokerageAuthorization(v string)`

SetBrokerageAuthorization sets BrokerageAuthorization field to given value.

### HasBrokerageAuthorization

`func (o *SnapTradeHoldingsAccountAccountId) HasBrokerageAuthorization() bool`

HasBrokerageAuthorization returns a boolean if a field has been set.

### GetPortfolioGroup

`func (o *SnapTradeHoldingsAccountAccountId) GetPortfolioGroup() string`

GetPortfolioGroup returns the PortfolioGroup field if non-nil, zero value otherwise.

### GetPortfolioGroupOk

`func (o *SnapTradeHoldingsAccountAccountId) GetPortfolioGroupOk() (*string, bool)`

GetPortfolioGroupOk returns a tuple with the PortfolioGroup field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPortfolioGroup

`func (o *SnapTradeHoldingsAccountAccountId) SetPortfolioGroup(v string)`

SetPortfolioGroup sets PortfolioGroup field to given value.

### HasPortfolioGroup

`func (o *SnapTradeHoldingsAccountAccountId) HasPortfolioGroup() bool`

HasPortfolioGroup returns a boolean if a field has been set.

### GetName

`func (o *SnapTradeHoldingsAccountAccountId) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SnapTradeHoldingsAccountAccountId) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SnapTradeHoldingsAccountAccountId) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SnapTradeHoldingsAccountAccountId) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *SnapTradeHoldingsAccountAccountId) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *SnapTradeHoldingsAccountAccountId) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetNumber

`func (o *SnapTradeHoldingsAccountAccountId) GetNumber() string`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *SnapTradeHoldingsAccountAccountId) GetNumberOk() (*string, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *SnapTradeHoldingsAccountAccountId) SetNumber(v string)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *SnapTradeHoldingsAccountAccountId) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetInstitutionName

`func (o *SnapTradeHoldingsAccountAccountId) GetInstitutionName() string`

GetInstitutionName returns the InstitutionName field if non-nil, zero value otherwise.

### GetInstitutionNameOk

`func (o *SnapTradeHoldingsAccountAccountId) GetInstitutionNameOk() (*string, bool)`

GetInstitutionNameOk returns a tuple with the InstitutionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstitutionName

`func (o *SnapTradeHoldingsAccountAccountId) SetInstitutionName(v string)`

SetInstitutionName sets InstitutionName field to given value.

### HasInstitutionName

`func (o *SnapTradeHoldingsAccountAccountId) HasInstitutionName() bool`

HasInstitutionName returns a boolean if a field has been set.

### GetBalance

`func (o *SnapTradeHoldingsAccountAccountId) GetBalance() SnapTradeHoldingsAccountAccountIdBalance`

GetBalance returns the Balance field if non-nil, zero value otherwise.

### GetBalanceOk

`func (o *SnapTradeHoldingsAccountAccountId) GetBalanceOk() (*SnapTradeHoldingsAccountAccountIdBalance, bool)`

GetBalanceOk returns a tuple with the Balance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalance

`func (o *SnapTradeHoldingsAccountAccountId) SetBalance(v SnapTradeHoldingsAccountAccountIdBalance)`

SetBalance sets Balance field to given value.

### HasBalance

`func (o *SnapTradeHoldingsAccountAccountId) HasBalance() bool`

HasBalance returns a boolean if a field has been set.

### SetBalanceNil

`func (o *SnapTradeHoldingsAccountAccountId) SetBalanceNil(b bool)`

 SetBalanceNil sets the value for Balance to be an explicit nil

### UnsetBalance
`func (o *SnapTradeHoldingsAccountAccountId) UnsetBalance()`

UnsetBalance ensures that no value is present for Balance, not even an explicit nil
### GetMeta

`func (o *SnapTradeHoldingsAccountAccountId) GetMeta() map[string]interface{}`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *SnapTradeHoldingsAccountAccountId) GetMetaOk() (*map[string]interface{}, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *SnapTradeHoldingsAccountAccountId) SetMeta(v map[string]interface{})`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *SnapTradeHoldingsAccountAccountId) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetCashRestrictions

`func (o *SnapTradeHoldingsAccountAccountId) GetCashRestrictions() []CashRestriction`

GetCashRestrictions returns the CashRestrictions field if non-nil, zero value otherwise.

### GetCashRestrictionsOk

`func (o *SnapTradeHoldingsAccountAccountId) GetCashRestrictionsOk() (*[]CashRestriction, bool)`

GetCashRestrictionsOk returns a tuple with the CashRestrictions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCashRestrictions

`func (o *SnapTradeHoldingsAccountAccountId) SetCashRestrictions(v []CashRestriction)`

SetCashRestrictions sets CashRestrictions field to given value.

### HasCashRestrictions

`func (o *SnapTradeHoldingsAccountAccountId) HasCashRestrictions() bool`

HasCashRestrictions returns a boolean if a field has been set.

### GetCreatedDate

`func (o *SnapTradeHoldingsAccountAccountId) GetCreatedDate() string`

GetCreatedDate returns the CreatedDate field if non-nil, zero value otherwise.

### GetCreatedDateOk

`func (o *SnapTradeHoldingsAccountAccountId) GetCreatedDateOk() (*string, bool)`

GetCreatedDateOk returns a tuple with the CreatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedDate

`func (o *SnapTradeHoldingsAccountAccountId) SetCreatedDate(v string)`

SetCreatedDate sets CreatedDate field to given value.

### HasCreatedDate

`func (o *SnapTradeHoldingsAccountAccountId) HasCreatedDate() bool`

HasCreatedDate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


