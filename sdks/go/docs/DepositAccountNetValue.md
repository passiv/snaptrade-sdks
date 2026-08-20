# DepositAccountNetValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Amount** | Pointer to **NullableFloat32** |  | [optional] 
**Currency** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewDepositAccountNetValue

`func NewDepositAccountNetValue() *DepositAccountNetValue`

NewDepositAccountNetValue instantiates a new DepositAccountNetValue object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDepositAccountNetValueWithDefaults

`func NewDepositAccountNetValueWithDefaults() *DepositAccountNetValue`

NewDepositAccountNetValueWithDefaults instantiates a new DepositAccountNetValue object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAmount

`func (o *DepositAccountNetValue) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *DepositAccountNetValue) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *DepositAccountNetValue) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *DepositAccountNetValue) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *DepositAccountNetValue) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *DepositAccountNetValue) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetCurrency

`func (o *DepositAccountNetValue) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *DepositAccountNetValue) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *DepositAccountNetValue) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *DepositAccountNetValue) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *DepositAccountNetValue) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *DepositAccountNetValue) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


