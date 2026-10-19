# AccountBalancesV2ResponseNetValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Amount** | **float64** |  | 
**Currency** | **string** | ISO-4217 currency code. | 

## Methods

### NewAccountBalancesV2ResponseNetValue

`func NewAccountBalancesV2ResponseNetValue(amount float64, currency string, ) *AccountBalancesV2ResponseNetValue`

NewAccountBalancesV2ResponseNetValue instantiates a new AccountBalancesV2ResponseNetValue object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountBalancesV2ResponseNetValueWithDefaults

`func NewAccountBalancesV2ResponseNetValueWithDefaults() *AccountBalancesV2ResponseNetValue`

NewAccountBalancesV2ResponseNetValueWithDefaults instantiates a new AccountBalancesV2ResponseNetValue object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAmount

`func (o *AccountBalancesV2ResponseNetValue) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *AccountBalancesV2ResponseNetValue) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *AccountBalancesV2ResponseNetValue) SetAmount(v float64)`

SetAmount sets Amount field to given value.


### GetCurrency

`func (o *AccountBalancesV2ResponseNetValue) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *AccountBalancesV2ResponseNetValue) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *AccountBalancesV2ResponseNetValue) SetCurrency(v string)`

SetCurrency sets Currency field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


