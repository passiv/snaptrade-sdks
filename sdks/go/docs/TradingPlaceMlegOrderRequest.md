# TradingPlaceMlegOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**MlegOrderTypeStrict**](MlegOrderTypeStrict.md) |  | 
**TimeInForce** | [**TimeInForceStrict**](TimeInForceStrict.md) |  | 
**LimitPrice** | Pointer to **NullableFloat64** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT. | [optional] 
**StopPrice** | Pointer to **NullableFloat64** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT. | [optional] 
**Legs** | [**[]MlegLeg**](MlegLeg.md) |  | 

## Methods

### NewTradingPlaceMlegOrderRequest

`func NewTradingPlaceMlegOrderRequest(type_ MlegOrderTypeStrict, timeInForce TimeInForceStrict, legs []MlegLeg, ) *TradingPlaceMlegOrderRequest`

NewTradingPlaceMlegOrderRequest instantiates a new TradingPlaceMlegOrderRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradingPlaceMlegOrderRequestWithDefaults

`func NewTradingPlaceMlegOrderRequestWithDefaults() *TradingPlaceMlegOrderRequest`

NewTradingPlaceMlegOrderRequestWithDefaults instantiates a new TradingPlaceMlegOrderRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *TradingPlaceMlegOrderRequest) GetType() MlegOrderTypeStrict`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *TradingPlaceMlegOrderRequest) GetTypeOk() (*MlegOrderTypeStrict, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *TradingPlaceMlegOrderRequest) SetType(v MlegOrderTypeStrict)`

SetType sets Type field to given value.


### GetTimeInForce

`func (o *TradingPlaceMlegOrderRequest) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *TradingPlaceMlegOrderRequest) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *TradingPlaceMlegOrderRequest) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.


### GetLimitPrice

`func (o *TradingPlaceMlegOrderRequest) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *TradingPlaceMlegOrderRequest) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *TradingPlaceMlegOrderRequest) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *TradingPlaceMlegOrderRequest) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### SetLimitPriceNil

`func (o *TradingPlaceMlegOrderRequest) SetLimitPriceNil(b bool)`

 SetLimitPriceNil sets the value for LimitPrice to be an explicit nil

### UnsetLimitPrice
`func (o *TradingPlaceMlegOrderRequest) UnsetLimitPrice()`

UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil
### GetStopPrice

`func (o *TradingPlaceMlegOrderRequest) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *TradingPlaceMlegOrderRequest) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *TradingPlaceMlegOrderRequest) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *TradingPlaceMlegOrderRequest) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### SetStopPriceNil

`func (o *TradingPlaceMlegOrderRequest) SetStopPriceNil(b bool)`

 SetStopPriceNil sets the value for StopPrice to be an explicit nil

### UnsetStopPrice
`func (o *TradingPlaceMlegOrderRequest) UnsetStopPrice()`

UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil
### GetLegs

`func (o *TradingPlaceMlegOrderRequest) GetLegs() []MlegLeg`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *TradingPlaceMlegOrderRequest) GetLegsOk() (*[]MlegLeg, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *TradingPlaceMlegOrderRequest) SetLegs(v []MlegLeg)`

SetLegs sets Legs field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


