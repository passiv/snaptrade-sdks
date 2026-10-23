# TrailingStopLimitOrderType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**Trail** | [**TrailingStop**](TrailingStop.md) |  | 
**LimitPrice** | **float64** | The limit price that applies once triggered. | 
**StopPrice** | Pointer to **NullableFloat64** | The current trigger price, when the brokerage reports it. | [optional] 

## Methods

### NewTrailingStopLimitOrderType

`func NewTrailingStopLimitOrderType(kind string, trail TrailingStop, limitPrice float64, ) *TrailingStopLimitOrderType`

NewTrailingStopLimitOrderType instantiates a new TrailingStopLimitOrderType object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTrailingStopLimitOrderTypeWithDefaults

`func NewTrailingStopLimitOrderTypeWithDefaults() *TrailingStopLimitOrderType`

NewTrailingStopLimitOrderTypeWithDefaults instantiates a new TrailingStopLimitOrderType object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *TrailingStopLimitOrderType) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *TrailingStopLimitOrderType) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *TrailingStopLimitOrderType) SetKind(v string)`

SetKind sets Kind field to given value.


### GetTrail

`func (o *TrailingStopLimitOrderType) GetTrail() TrailingStop`

GetTrail returns the Trail field if non-nil, zero value otherwise.

### GetTrailOk

`func (o *TrailingStopLimitOrderType) GetTrailOk() (*TrailingStop, bool)`

GetTrailOk returns a tuple with the Trail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrail

`func (o *TrailingStopLimitOrderType) SetTrail(v TrailingStop)`

SetTrail sets Trail field to given value.


### GetLimitPrice

`func (o *TrailingStopLimitOrderType) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *TrailingStopLimitOrderType) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *TrailingStopLimitOrderType) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.


### GetStopPrice

`func (o *TrailingStopLimitOrderType) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *TrailingStopLimitOrderType) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *TrailingStopLimitOrderType) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *TrailingStopLimitOrderType) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### SetStopPriceNil

`func (o *TrailingStopLimitOrderType) SetStopPriceNil(b bool)`

 SetStopPriceNil sets the value for StopPrice to be an explicit nil

### UnsetStopPrice
`func (o *TrailingStopLimitOrderType) UnsetStopPrice()`

UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


