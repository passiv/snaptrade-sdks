# PastValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | Pointer to **string** | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format). These dates are inclusive. | [optional] 
**Value** | Pointer to **float32** |  | [optional] 
**Currency** | Pointer to **string** |  | [optional] 

## Methods

### NewPastValue

`func NewPastValue() *PastValue`

NewPastValue instantiates a new PastValue object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPastValueWithDefaults

`func NewPastValueWithDefaults() *PastValue`

NewPastValueWithDefaults instantiates a new PastValue object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDate

`func (o *PastValue) GetDate() string`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *PastValue) GetDateOk() (*string, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *PastValue) SetDate(v string)`

SetDate sets Date field to given value.

### HasDate

`func (o *PastValue) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetValue

`func (o *PastValue) GetValue() float32`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *PastValue) GetValueOk() (*float32, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *PastValue) SetValue(v float32)`

SetValue sets Value field to given value.

### HasValue

`func (o *PastValue) HasValue() bool`

HasValue returns a boolean if a field has been set.

### GetCurrency

`func (o *PastValue) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *PastValue) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *PastValue) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *PastValue) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


