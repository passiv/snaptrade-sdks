# Balance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**Cash** | Pointer to **NullableFloat32** | The amount of available cash in the account denominated in the currency of the &#x60;currency&#x60; field. | [optional] 
**BuyingPower** | Pointer to **NullableFloat32** | Buying power only applies to margin accounts. For non-margin accounts, buying power should be the same as cash. Please note that this field is not always available for all brokerages. | [optional] 

## Methods

### NewBalance

`func NewBalance() *Balance`

NewBalance instantiates a new Balance object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBalanceWithDefaults

`func NewBalanceWithDefaults() *Balance`

NewBalanceWithDefaults instantiates a new Balance object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCurrency

`func (o *Balance) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *Balance) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *Balance) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *Balance) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetCash

`func (o *Balance) GetCash() float32`

GetCash returns the Cash field if non-nil, zero value otherwise.

### GetCashOk

`func (o *Balance) GetCashOk() (*float32, bool)`

GetCashOk returns a tuple with the Cash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCash

`func (o *Balance) SetCash(v float32)`

SetCash sets Cash field to given value.

### HasCash

`func (o *Balance) HasCash() bool`

HasCash returns a boolean if a field has been set.

### SetCashNil

`func (o *Balance) SetCashNil(b bool)`

 SetCashNil sets the value for Cash to be an explicit nil

### UnsetCash
`func (o *Balance) UnsetCash()`

UnsetCash ensures that no value is present for Cash, not even an explicit nil
### GetBuyingPower

`func (o *Balance) GetBuyingPower() float32`

GetBuyingPower returns the BuyingPower field if non-nil, zero value otherwise.

### GetBuyingPowerOk

`func (o *Balance) GetBuyingPowerOk() (*float32, bool)`

GetBuyingPowerOk returns a tuple with the BuyingPower field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyingPower

`func (o *Balance) SetBuyingPower(v float32)`

SetBuyingPower sets BuyingPower field to given value.

### HasBuyingPower

`func (o *Balance) HasBuyingPower() bool`

HasBuyingPower returns a boolean if a field has been set.

### SetBuyingPowerNil

`func (o *Balance) SetBuyingPowerNil(b bool)`

 SetBuyingPowerNil sets the value for BuyingPower to be an explicit nil

### UnsetBuyingPower
`func (o *Balance) UnsetBuyingPower()`

UnsetBuyingPower ensures that no value is present for BuyingPower, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


