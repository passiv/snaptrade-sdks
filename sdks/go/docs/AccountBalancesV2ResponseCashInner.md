# AccountBalancesV2ResponseCashInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | **string** | ISO-4217 currency code. | 
**Amount** | **float64** |  | 

## Methods

### NewAccountBalancesV2ResponseCashInner

`func NewAccountBalancesV2ResponseCashInner(currency string, amount float64, ) *AccountBalancesV2ResponseCashInner`

NewAccountBalancesV2ResponseCashInner instantiates a new AccountBalancesV2ResponseCashInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountBalancesV2ResponseCashInnerWithDefaults

`func NewAccountBalancesV2ResponseCashInnerWithDefaults() *AccountBalancesV2ResponseCashInner`

NewAccountBalancesV2ResponseCashInnerWithDefaults instantiates a new AccountBalancesV2ResponseCashInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCurrency

`func (o *AccountBalancesV2ResponseCashInner) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *AccountBalancesV2ResponseCashInner) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *AccountBalancesV2ResponseCashInner) SetCurrency(v string)`

SetCurrency sets Currency field to given value.


### GetAmount

`func (o *AccountBalancesV2ResponseCashInner) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *AccountBalancesV2ResponseCashInner) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *AccountBalancesV2ResponseCashInner) SetAmount(v float64)`

SetAmount sets Amount field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


