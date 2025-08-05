# CryptoOrderPreviewEstimatedFee

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | **string** | Symbol to identify a cryptocurrency or fiat currency on a crypto exchange. Fiat currencies symbols are ISO-4217 codes. | 
**Amount** | **float64** |  | 

## Methods

### NewCryptoOrderPreviewEstimatedFee

`func NewCryptoOrderPreviewEstimatedFee(currency string, amount float64, ) *CryptoOrderPreviewEstimatedFee`

NewCryptoOrderPreviewEstimatedFee instantiates a new CryptoOrderPreviewEstimatedFee object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCryptoOrderPreviewEstimatedFeeWithDefaults

`func NewCryptoOrderPreviewEstimatedFeeWithDefaults() *CryptoOrderPreviewEstimatedFee`

NewCryptoOrderPreviewEstimatedFeeWithDefaults instantiates a new CryptoOrderPreviewEstimatedFee object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCurrency

`func (o *CryptoOrderPreviewEstimatedFee) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *CryptoOrderPreviewEstimatedFee) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *CryptoOrderPreviewEstimatedFee) SetCurrency(v string)`

SetCurrency sets Currency field to given value.


### GetAmount

`func (o *CryptoOrderPreviewEstimatedFee) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *CryptoOrderPreviewEstimatedFee) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *CryptoOrderPreviewEstimatedFee) SetAmount(v float64)`

SetAmount sets Amount field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


