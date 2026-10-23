# StopOrderType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**StopPrice** | **float64** | The price at which the order is triggered. | 

## Methods

### NewStopOrderType

`func NewStopOrderType(kind string, stopPrice float64, ) *StopOrderType`

NewStopOrderType instantiates a new StopOrderType object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStopOrderTypeWithDefaults

`func NewStopOrderTypeWithDefaults() *StopOrderType`

NewStopOrderTypeWithDefaults instantiates a new StopOrderType object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *StopOrderType) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *StopOrderType) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *StopOrderType) SetKind(v string)`

SetKind sets Kind field to given value.


### GetStopPrice

`func (o *StopOrderType) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *StopOrderType) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *StopOrderType) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


