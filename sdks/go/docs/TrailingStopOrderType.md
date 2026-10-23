# TrailingStopOrderType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**Trail** | [**TrailingStop**](TrailingStop.md) |  | 
**StopPrice** | Pointer to **NullableFloat64** | The current trigger price, when the brokerage reports it. | [optional] 

## Methods

### NewTrailingStopOrderType

`func NewTrailingStopOrderType(kind string, trail TrailingStop, ) *TrailingStopOrderType`

NewTrailingStopOrderType instantiates a new TrailingStopOrderType object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTrailingStopOrderTypeWithDefaults

`func NewTrailingStopOrderTypeWithDefaults() *TrailingStopOrderType`

NewTrailingStopOrderTypeWithDefaults instantiates a new TrailingStopOrderType object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *TrailingStopOrderType) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *TrailingStopOrderType) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *TrailingStopOrderType) SetKind(v string)`

SetKind sets Kind field to given value.


### GetTrail

`func (o *TrailingStopOrderType) GetTrail() TrailingStop`

GetTrail returns the Trail field if non-nil, zero value otherwise.

### GetTrailOk

`func (o *TrailingStopOrderType) GetTrailOk() (*TrailingStop, bool)`

GetTrailOk returns a tuple with the Trail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrail

`func (o *TrailingStopOrderType) SetTrail(v TrailingStop)`

SetTrail sets Trail field to given value.


### GetStopPrice

`func (o *TrailingStopOrderType) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *TrailingStopOrderType) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *TrailingStopOrderType) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *TrailingStopOrderType) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### SetStopPriceNil

`func (o *TrailingStopOrderType) SetStopPriceNil(b bool)`

 SetStopPriceNil sets the value for StopPrice to be an explicit nil

### UnsetStopPrice
`func (o *TrailingStopOrderType) UnsetStopPrice()`

UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


