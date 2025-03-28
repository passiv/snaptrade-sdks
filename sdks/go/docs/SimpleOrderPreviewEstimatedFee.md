# SimpleOrderPreviewEstimatedFee

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | **string** | Symbol to identify a cryptocurrency or fiat currency on a crypto exchange. Fiat currencies symbols are ISO-4217 codes. | 
**Amount** | **float64** |  | 

## Methods

### NewSimpleOrderPreviewEstimatedFee

`func NewSimpleOrderPreviewEstimatedFee(currency string, amount float64, ) *SimpleOrderPreviewEstimatedFee`

NewSimpleOrderPreviewEstimatedFee instantiates a new SimpleOrderPreviewEstimatedFee object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSimpleOrderPreviewEstimatedFeeWithDefaults

`func NewSimpleOrderPreviewEstimatedFeeWithDefaults() *SimpleOrderPreviewEstimatedFee`

NewSimpleOrderPreviewEstimatedFeeWithDefaults instantiates a new SimpleOrderPreviewEstimatedFee object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCurrency

`func (o *SimpleOrderPreviewEstimatedFee) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *SimpleOrderPreviewEstimatedFee) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *SimpleOrderPreviewEstimatedFee) SetCurrency(v string)`

SetCurrency sets Currency field to given value.


### GetAmount

`func (o *SimpleOrderPreviewEstimatedFee) GetAmount() float64`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *SimpleOrderPreviewEstimatedFee) GetAmountOk() (*float64, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *SimpleOrderPreviewEstimatedFee) SetAmount(v float64)`

SetAmount sets Amount field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


