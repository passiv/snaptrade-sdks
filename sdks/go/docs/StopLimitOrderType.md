# StopLimitOrderType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**StopPrice** | **float64** | The price at which the order is triggered. | 
**LimitPrice** | **float64** | The limit price that applies once triggered. | 

## Methods

### NewStopLimitOrderType

`func NewStopLimitOrderType(kind string, stopPrice float64, limitPrice float64, ) *StopLimitOrderType`

NewStopLimitOrderType instantiates a new StopLimitOrderType object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStopLimitOrderTypeWithDefaults

`func NewStopLimitOrderTypeWithDefaults() *StopLimitOrderType`

NewStopLimitOrderTypeWithDefaults instantiates a new StopLimitOrderType object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *StopLimitOrderType) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *StopLimitOrderType) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *StopLimitOrderType) SetKind(v string)`

SetKind sets Kind field to given value.


### GetStopPrice

`func (o *StopLimitOrderType) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *StopLimitOrderType) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *StopLimitOrderType) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.


### GetLimitPrice

`func (o *StopLimitOrderType) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *StopLimitOrderType) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *StopLimitOrderType) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


