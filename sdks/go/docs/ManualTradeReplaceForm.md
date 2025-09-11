# ManualTradeReplaceForm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 
**Action** | [**ActionStrict**](ActionStrict.md) |  | 
**OrderType** | [**OrderTypeStrict**](OrderTypeStrict.md) |  | 
**TimeInForce** | [**TimeInForceStrict**](TimeInForceStrict.md) |  | 
**Price** | Pointer to **NullableFloat32** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Symbol** | Pointer to **string** | The security&#39;s trading ticker symbol | [optional] 
**Stop** | Pointer to **NullableFloat32** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Units** | Pointer to **NullableFloat32** |  | [optional] 

## Methods

### NewManualTradeReplaceForm

`func NewManualTradeReplaceForm(brokerageOrderId string, action ActionStrict, orderType OrderTypeStrict, timeInForce TimeInForceStrict, ) *ManualTradeReplaceForm`

NewManualTradeReplaceForm instantiates a new ManualTradeReplaceForm object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeReplaceFormWithDefaults

`func NewManualTradeReplaceFormWithDefaults() *ManualTradeReplaceForm`

NewManualTradeReplaceFormWithDefaults instantiates a new ManualTradeReplaceForm object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *ManualTradeReplaceForm) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *ManualTradeReplaceForm) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *ManualTradeReplaceForm) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.


### GetAction

`func (o *ManualTradeReplaceForm) GetAction() ActionStrict`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *ManualTradeReplaceForm) GetActionOk() (*ActionStrict, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *ManualTradeReplaceForm) SetAction(v ActionStrict)`

SetAction sets Action field to given value.


### GetOrderType

`func (o *ManualTradeReplaceForm) GetOrderType() OrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *ManualTradeReplaceForm) GetOrderTypeOk() (*OrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *ManualTradeReplaceForm) SetOrderType(v OrderTypeStrict)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *ManualTradeReplaceForm) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *ManualTradeReplaceForm) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *ManualTradeReplaceForm) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.


### GetPrice

`func (o *ManualTradeReplaceForm) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *ManualTradeReplaceForm) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *ManualTradeReplaceForm) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *ManualTradeReplaceForm) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *ManualTradeReplaceForm) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *ManualTradeReplaceForm) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetSymbol

`func (o *ManualTradeReplaceForm) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *ManualTradeReplaceForm) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *ManualTradeReplaceForm) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *ManualTradeReplaceForm) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetStop

`func (o *ManualTradeReplaceForm) GetStop() float32`

GetStop returns the Stop field if non-nil, zero value otherwise.

### GetStopOk

`func (o *ManualTradeReplaceForm) GetStopOk() (*float32, bool)`

GetStopOk returns a tuple with the Stop field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStop

`func (o *ManualTradeReplaceForm) SetStop(v float32)`

SetStop sets Stop field to given value.

### HasStop

`func (o *ManualTradeReplaceForm) HasStop() bool`

HasStop returns a boolean if a field has been set.

### SetStopNil

`func (o *ManualTradeReplaceForm) SetStopNil(b bool)`

 SetStopNil sets the value for Stop to be an explicit nil

### UnsetStop
`func (o *ManualTradeReplaceForm) UnsetStop()`

UnsetStop ensures that no value is present for Stop, not even an explicit nil
### GetUnits

`func (o *ManualTradeReplaceForm) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *ManualTradeReplaceForm) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *ManualTradeReplaceForm) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *ManualTradeReplaceForm) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### SetUnitsNil

`func (o *ManualTradeReplaceForm) SetUnitsNil(b bool)`

 SetUnitsNil sets the value for Units to be an explicit nil

### UnsetUnits
`func (o *ManualTradeReplaceForm) UnsetUnits()`

UnsetUnits ensures that no value is present for Units, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


