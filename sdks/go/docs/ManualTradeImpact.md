# ManualTradeImpact

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | Pointer to **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | [optional] 
**Currency** | Pointer to **string** | Unique identifier for the currency. This is the UUID used to reference the currency in SnapTrade. | [optional] 
**RemainingCash** | Pointer to **NullableFloat32** | Estimated amount of cash remaining in the account after the trade. | [optional] 
**EstimatedCommission** | Pointer to **NullableFloat32** | Estimated commission for the trade. | [optional] 
**ForexFees** | Pointer to **NullableFloat32** | Estimated foreign transaction fees for the trade. | [optional] 

## Methods

### NewManualTradeImpact

`func NewManualTradeImpact() *ManualTradeImpact`

NewManualTradeImpact instantiates a new ManualTradeImpact object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeImpactWithDefaults

`func NewManualTradeImpactWithDefaults() *ManualTradeImpact`

NewManualTradeImpactWithDefaults instantiates a new ManualTradeImpact object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccount

`func (o *ManualTradeImpact) GetAccount() string`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *ManualTradeImpact) GetAccountOk() (*string, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *ManualTradeImpact) SetAccount(v string)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *ManualTradeImpact) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetCurrency

`func (o *ManualTradeImpact) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *ManualTradeImpact) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *ManualTradeImpact) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *ManualTradeImpact) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetRemainingCash

`func (o *ManualTradeImpact) GetRemainingCash() float32`

GetRemainingCash returns the RemainingCash field if non-nil, zero value otherwise.

### GetRemainingCashOk

`func (o *ManualTradeImpact) GetRemainingCashOk() (*float32, bool)`

GetRemainingCashOk returns a tuple with the RemainingCash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemainingCash

`func (o *ManualTradeImpact) SetRemainingCash(v float32)`

SetRemainingCash sets RemainingCash field to given value.

### HasRemainingCash

`func (o *ManualTradeImpact) HasRemainingCash() bool`

HasRemainingCash returns a boolean if a field has been set.

### SetRemainingCashNil

`func (o *ManualTradeImpact) SetRemainingCashNil(b bool)`

 SetRemainingCashNil sets the value for RemainingCash to be an explicit nil

### UnsetRemainingCash
`func (o *ManualTradeImpact) UnsetRemainingCash()`

UnsetRemainingCash ensures that no value is present for RemainingCash, not even an explicit nil
### GetEstimatedCommission

`func (o *ManualTradeImpact) GetEstimatedCommission() float32`

GetEstimatedCommission returns the EstimatedCommission field if non-nil, zero value otherwise.

### GetEstimatedCommissionOk

`func (o *ManualTradeImpact) GetEstimatedCommissionOk() (*float32, bool)`

GetEstimatedCommissionOk returns a tuple with the EstimatedCommission field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCommission

`func (o *ManualTradeImpact) SetEstimatedCommission(v float32)`

SetEstimatedCommission sets EstimatedCommission field to given value.

### HasEstimatedCommission

`func (o *ManualTradeImpact) HasEstimatedCommission() bool`

HasEstimatedCommission returns a boolean if a field has been set.

### SetEstimatedCommissionNil

`func (o *ManualTradeImpact) SetEstimatedCommissionNil(b bool)`

 SetEstimatedCommissionNil sets the value for EstimatedCommission to be an explicit nil

### UnsetEstimatedCommission
`func (o *ManualTradeImpact) UnsetEstimatedCommission()`

UnsetEstimatedCommission ensures that no value is present for EstimatedCommission, not even an explicit nil
### GetForexFees

`func (o *ManualTradeImpact) GetForexFees() float32`

GetForexFees returns the ForexFees field if non-nil, zero value otherwise.

### GetForexFeesOk

`func (o *ManualTradeImpact) GetForexFeesOk() (*float32, bool)`

GetForexFeesOk returns a tuple with the ForexFees field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForexFees

`func (o *ManualTradeImpact) SetForexFees(v float32)`

SetForexFees sets ForexFees field to given value.

### HasForexFees

`func (o *ManualTradeImpact) HasForexFees() bool`

HasForexFees returns a boolean if a field has been set.

### SetForexFeesNil

`func (o *ManualTradeImpact) SetForexFeesNil(b bool)`

 SetForexFeesNil sets the value for ForexFees to be an explicit nil

### UnsetForexFees
`func (o *ManualTradeImpact) UnsetForexFees()`

UnsetForexFees ensures that no value is present for ForexFees, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


