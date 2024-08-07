# OptionsPlaceOptionStrategyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderType** | [**OrderTypeStrict**](OrderTypeStrict.md) |  | 
**TimeInForce** | [**TimeInForceStrict**](TimeInForceStrict.md) |  | 
**Price** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 

## Methods

### NewOptionsPlaceOptionStrategyRequest

`func NewOptionsPlaceOptionStrategyRequest(orderType OrderTypeStrict, timeInForce TimeInForceStrict, ) *OptionsPlaceOptionStrategyRequest`

NewOptionsPlaceOptionStrategyRequest instantiates a new OptionsPlaceOptionStrategyRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionsPlaceOptionStrategyRequestWithDefaults

`func NewOptionsPlaceOptionStrategyRequestWithDefaults() *OptionsPlaceOptionStrategyRequest`

NewOptionsPlaceOptionStrategyRequestWithDefaults instantiates a new OptionsPlaceOptionStrategyRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrderType

`func (o *OptionsPlaceOptionStrategyRequest) GetOrderType() OrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *OptionsPlaceOptionStrategyRequest) GetOrderTypeOk() (*OrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *OptionsPlaceOptionStrategyRequest) SetOrderType(v OrderTypeStrict)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *OptionsPlaceOptionStrategyRequest) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *OptionsPlaceOptionStrategyRequest) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *OptionsPlaceOptionStrategyRequest) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.


### GetPrice

`func (o *OptionsPlaceOptionStrategyRequest) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *OptionsPlaceOptionStrategyRequest) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *OptionsPlaceOptionStrategyRequest) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *OptionsPlaceOptionStrategyRequest) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *OptionsPlaceOptionStrategyRequest) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *OptionsPlaceOptionStrategyRequest) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


