# AccountBalancesV2ResponseBuyingPowerInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | **string** | ISO-4217 currency code. | 
**Amount** | **float64** | Buying power in this currency. Can be negative, for example on a margin account that has exceeded its margin requirement. | 
**Basis** | **string** | What the amount may include. - &#x60;settled&#x60;: settled cash only. Excludes proceeds from sales that haven&#39;t settled and cash already committed to purchases that haven&#39;t settled, so spending it won&#39;t cause a good-faith violation. - &#x60;cash&#x60;: may include proceeds from trades that haven&#39;t settled. - &#x60;margin&#x60;: may include money borrowed on margin.  To avoid good-faith violations on cash accounts, only treat the amount as safe to spend when &#x60;basis&#x60; is &#x60;settled&#x60;.  | 

## Methods

### NewAccountBalancesV2ResponseBuyingPowerInner

`func NewAccountBalancesV2ResponseBuyingPowerInner(currency string, amount float64, basis string, ) *AccountBalancesV2ResponseBuyingPowerInner`

NewAccountBalancesV2ResponseBuyingPowerInner instantiates a new AccountBalancesV2ResponseBuyingPowerInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountBalancesV2ResponseBuyingPowerInnerWithDefaults

`func NewAccountBalancesV2ResponseBuyingPowerInnerWithDefaults() *AccountBalancesV2ResponseBuyingPowerInner`

NewAccountBalancesV2ResponseBuyingPowerInnerWithDefaults instantiates a new AccountBalancesV2ResponseBuyingPowerInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCurrency

`func (o *AccountBalancesV2ResponseBuyingPowerInner) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *AccountBalancesV2ResponseBuyingPowerInner) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *AccountBalancesV2ResponseBuyingPowerInner) SetCurrency(v string)`

SetCurrency sets Currency field to given value.


### GetAmount

`func (o *AccountBalancesV2ResponseBuyingPowerInner) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *AccountBalancesV2ResponseBuyingPowerInner) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *AccountBalancesV2ResponseBuyingPowerInner) SetAmount(v float64)`

SetAmount sets Amount field to given value.


### GetBasis

`func (o *AccountBalancesV2ResponseBuyingPowerInner) GetBasis() string`

GetBasis returns the Basis field if non-nil, zero value otherwise.

### GetBasisOk

`func (o *AccountBalancesV2ResponseBuyingPowerInner) GetBasisOk() (*string, bool)`

GetBasisOk returns a tuple with the Basis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBasis

`func (o *AccountBalancesV2ResponseBuyingPowerInner) SetBasis(v string)`

SetBasis sets Basis field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


