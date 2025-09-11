# StopLoss

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StopPrice** | Pointer to **string** |  | [optional] 
**LimitPrice** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewStopLoss

`func NewStopLoss() *StopLoss`

NewStopLoss instantiates a new StopLoss object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStopLossWithDefaults

`func NewStopLossWithDefaults() *StopLoss`

NewStopLossWithDefaults instantiates a new StopLoss object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStopPrice

`func (o *StopLoss) GetStopPrice() string`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *StopLoss) GetStopPriceOk() (*string, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *StopLoss) SetStopPrice(v string)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *StopLoss) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### GetLimitPrice

`func (o *StopLoss) GetLimitPrice() string`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *StopLoss) GetLimitPriceOk() (*string, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *StopLoss) SetLimitPrice(v string)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *StopLoss) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### SetLimitPriceNil

`func (o *StopLoss) SetLimitPriceNil(b bool)`

 SetLimitPriceNil sets the value for LimitPrice to be an explicit nil

### UnsetLimitPrice
`func (o *StopLoss) UnsetLimitPrice()`

UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


