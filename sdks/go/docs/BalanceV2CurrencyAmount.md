# BalanceV2CurrencyAmount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | **string** | ISO-4217 currency code. | 
**Amount** | **float64** | Rounded to 2 decimal places. | 

## Methods

### NewBalanceV2CurrencyAmount

`func NewBalanceV2CurrencyAmount(currency string, amount float64, ) *BalanceV2CurrencyAmount`

NewBalanceV2CurrencyAmount instantiates a new BalanceV2CurrencyAmount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBalanceV2CurrencyAmountWithDefaults

`func NewBalanceV2CurrencyAmountWithDefaults() *BalanceV2CurrencyAmount`

NewBalanceV2CurrencyAmountWithDefaults instantiates a new BalanceV2CurrencyAmount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCurrency

`func (o *BalanceV2CurrencyAmount) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *BalanceV2CurrencyAmount) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *BalanceV2CurrencyAmount) SetCurrency(v string)`

SetCurrency sets Currency field to given value.


### GetAmount

`func (o *BalanceV2CurrencyAmount) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *BalanceV2CurrencyAmount) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *BalanceV2CurrencyAmount) SetAmount(v float64)`

SetAmount sets Amount field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


