# ComplexOrderLeg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderRole** | **string** | The role of this leg within the complex order. | 
**Action** | [**ActionStrict**](ActionStrict.md) |  | 
**Instrument** | [**TradingInstrument**](TradingInstrument.md) |  | 
**OrderType** | [**OrderTypeStrict**](OrderTypeStrict.md) |  | 
**Units** | **float32** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. | 
**TimeInForce** | [**TimeInForceStrict**](TimeInForceStrict.md) |  | 
**Price** | Pointer to **NullableFloat32** | The limit price. Required when &#x60;order_type&#x60; is &#x60;Limit&#x60; or &#x60;StopLimit&#x60;. | [optional] 
**Stop** | Pointer to **NullableFloat32** | The stop trigger price. Required when &#x60;order_type&#x60; is &#x60;Stop&#x60; or &#x60;StopLimit&#x60;. | [optional] 

## Methods

### NewComplexOrderLeg

`func NewComplexOrderLeg(orderRole string, action ActionStrict, instrument TradingInstrument, orderType OrderTypeStrict, units float32, timeInForce TimeInForceStrict, ) *ComplexOrderLeg`

NewComplexOrderLeg instantiates a new ComplexOrderLeg object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewComplexOrderLegWithDefaults

`func NewComplexOrderLegWithDefaults() *ComplexOrderLeg`

NewComplexOrderLegWithDefaults instantiates a new ComplexOrderLeg object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrderRole

`func (o *ComplexOrderLeg) GetOrderRole() string`

GetOrderRole returns the OrderRole field if non-nil, zero value otherwise.

### GetOrderRoleOk

`func (o *ComplexOrderLeg) GetOrderRoleOk() (*string, bool)`

GetOrderRoleOk returns a tuple with the OrderRole field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderRole

`func (o *ComplexOrderLeg) SetOrderRole(v string)`

SetOrderRole sets OrderRole field to given value.


### GetAction

`func (o *ComplexOrderLeg) GetAction() ActionStrict`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *ComplexOrderLeg) GetActionOk() (*ActionStrict, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *ComplexOrderLeg) SetAction(v ActionStrict)`

SetAction sets Action field to given value.


### GetInstrument

`func (o *ComplexOrderLeg) GetInstrument() TradingInstrument`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *ComplexOrderLeg) GetInstrumentOk() (*TradingInstrument, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *ComplexOrderLeg) SetInstrument(v TradingInstrument)`

SetInstrument sets Instrument field to given value.


### GetOrderType

`func (o *ComplexOrderLeg) GetOrderType() OrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *ComplexOrderLeg) GetOrderTypeOk() (*OrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *ComplexOrderLeg) SetOrderType(v OrderTypeStrict)`

SetOrderType sets OrderType field to given value.


### GetUnits

`func (o *ComplexOrderLeg) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *ComplexOrderLeg) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *ComplexOrderLeg) SetUnits(v float32)`

SetUnits sets Units field to given value.


### GetTimeInForce

`func (o *ComplexOrderLeg) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *ComplexOrderLeg) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *ComplexOrderLeg) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.


### GetPrice

`func (o *ComplexOrderLeg) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *ComplexOrderLeg) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *ComplexOrderLeg) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *ComplexOrderLeg) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *ComplexOrderLeg) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *ComplexOrderLeg) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetStop

`func (o *ComplexOrderLeg) GetStop() float32`

GetStop returns the Stop field if non-nil, zero value otherwise.

### GetStopOk

`func (o *ComplexOrderLeg) GetStopOk() (*float32, bool)`

GetStopOk returns a tuple with the Stop field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStop

`func (o *ComplexOrderLeg) SetStop(v float32)`

SetStop sets Stop field to given value.

### HasStop

`func (o *ComplexOrderLeg) HasStop() bool`

HasStop returns a boolean if a field has been set.

### SetStopNil

`func (o *ComplexOrderLeg) SetStopNil(b bool)`

 SetStopNil sets the value for Stop to be an explicit nil

### UnsetStop
`func (o *ComplexOrderLeg) UnsetStop()`

UnsetStop ensures that no value is present for Stop, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


