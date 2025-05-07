# MlegTradeForm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderType** | [**MlegOrderTypeStrict**](MlegOrderTypeStrict.md) |  | 
**TimeInForce** | [**TimeInForceStrict**](TimeInForceStrict.md) |  | 
**LimitPrice** | Pointer to **NullableFloat64** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT. | [optional] 
**StopPrice** | Pointer to **NullableFloat64** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT. | [optional] 
**Legs** | [**[]MlegLeg**](MlegLeg.md) |  | 

## Methods

### NewMlegTradeForm

`func NewMlegTradeForm(orderType MlegOrderTypeStrict, timeInForce TimeInForceStrict, legs []MlegLeg, ) *MlegTradeForm`

NewMlegTradeForm instantiates a new MlegTradeForm object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMlegTradeFormWithDefaults

`func NewMlegTradeFormWithDefaults() *MlegTradeForm`

NewMlegTradeFormWithDefaults instantiates a new MlegTradeForm object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrderType

`func (o *MlegTradeForm) GetOrderType() MlegOrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *MlegTradeForm) GetOrderTypeOk() (*MlegOrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *MlegTradeForm) SetOrderType(v MlegOrderTypeStrict)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *MlegTradeForm) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *MlegTradeForm) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *MlegTradeForm) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.


### GetLimitPrice

`func (o *MlegTradeForm) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *MlegTradeForm) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *MlegTradeForm) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *MlegTradeForm) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### SetLimitPriceNil

`func (o *MlegTradeForm) SetLimitPriceNil(b bool)`

 SetLimitPriceNil sets the value for LimitPrice to be an explicit nil

### UnsetLimitPrice
`func (o *MlegTradeForm) UnsetLimitPrice()`

UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil
### GetStopPrice

`func (o *MlegTradeForm) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *MlegTradeForm) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *MlegTradeForm) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *MlegTradeForm) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### SetStopPriceNil

`func (o *MlegTradeForm) SetStopPriceNil(b bool)`

 SetStopPriceNil sets the value for StopPrice to be an explicit nil

### UnsetStopPrice
`func (o *MlegTradeForm) UnsetStopPrice()`

UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil
### GetLegs

`func (o *MlegTradeForm) GetLegs() []MlegLeg`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *MlegTradeForm) GetLegsOk() (*[]MlegLeg, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *MlegTradeForm) SetLegs(v []MlegLeg)`

SetLegs sets Legs field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


