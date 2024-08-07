# ManualTradeForm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | Pointer to **string** |  | [optional] 
**Action** | Pointer to [**ActionStrict**](ActionStrict.md) |  | [optional] 
**OrderType** | Pointer to [**OrderTypeStrict**](OrderTypeStrict.md) |  | [optional] 
**Price** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**Stop** | Pointer to **NullableFloat32** | Stop Price. If stop loss or stop limit order, the price to trigger the stop | [optional] 
**TimeInForce** | Pointer to [**TimeInForceStrict**](TimeInForceStrict.md) |  | [optional] 
**Units** | Pointer to **NullableFloat32** |  | [optional] 
**UniversalSymbolId** | Pointer to **string** |  | [optional] 
**NotionalValue** | Pointer to [**NullableManualTradeFormNotionalValue**](ManualTradeFormNotionalValue.md) |  | [optional] 

## Methods

### NewManualTradeForm

`func NewManualTradeForm() *ManualTradeForm`

NewManualTradeForm instantiates a new ManualTradeForm object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeFormWithDefaults

`func NewManualTradeFormWithDefaults() *ManualTradeForm`

NewManualTradeFormWithDefaults instantiates a new ManualTradeForm object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccountId

`func (o *ManualTradeForm) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *ManualTradeForm) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *ManualTradeForm) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.

### HasAccountId

`func (o *ManualTradeForm) HasAccountId() bool`

HasAccountId returns a boolean if a field has been set.

### GetAction

`func (o *ManualTradeForm) GetAction() ActionStrict`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *ManualTradeForm) GetActionOk() (*ActionStrict, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *ManualTradeForm) SetAction(v ActionStrict)`

SetAction sets Action field to given value.

### HasAction

`func (o *ManualTradeForm) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetOrderType

`func (o *ManualTradeForm) GetOrderType() OrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *ManualTradeForm) GetOrderTypeOk() (*OrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *ManualTradeForm) SetOrderType(v OrderTypeStrict)`

SetOrderType sets OrderType field to given value.

### HasOrderType

`func (o *ManualTradeForm) HasOrderType() bool`

HasOrderType returns a boolean if a field has been set.

### GetPrice

`func (o *ManualTradeForm) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *ManualTradeForm) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *ManualTradeForm) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *ManualTradeForm) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *ManualTradeForm) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *ManualTradeForm) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetStop

`func (o *ManualTradeForm) GetStop() float32`

GetStop returns the Stop field if non-nil, zero value otherwise.

### GetStopOk

`func (o *ManualTradeForm) GetStopOk() (*float32, bool)`

GetStopOk returns a tuple with the Stop field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStop

`func (o *ManualTradeForm) SetStop(v float32)`

SetStop sets Stop field to given value.

### HasStop

`func (o *ManualTradeForm) HasStop() bool`

HasStop returns a boolean if a field has been set.

### SetStopNil

`func (o *ManualTradeForm) SetStopNil(b bool)`

 SetStopNil sets the value for Stop to be an explicit nil

### UnsetStop
`func (o *ManualTradeForm) UnsetStop()`

UnsetStop ensures that no value is present for Stop, not even an explicit nil
### GetTimeInForce

`func (o *ManualTradeForm) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *ManualTradeForm) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *ManualTradeForm) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.

### HasTimeInForce

`func (o *ManualTradeForm) HasTimeInForce() bool`

HasTimeInForce returns a boolean if a field has been set.

### GetUnits

`func (o *ManualTradeForm) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *ManualTradeForm) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *ManualTradeForm) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *ManualTradeForm) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### SetUnitsNil

`func (o *ManualTradeForm) SetUnitsNil(b bool)`

 SetUnitsNil sets the value for Units to be an explicit nil

### UnsetUnits
`func (o *ManualTradeForm) UnsetUnits()`

UnsetUnits ensures that no value is present for Units, not even an explicit nil
### GetUniversalSymbolId

`func (o *ManualTradeForm) GetUniversalSymbolId() string`

GetUniversalSymbolId returns the UniversalSymbolId field if non-nil, zero value otherwise.

### GetUniversalSymbolIdOk

`func (o *ManualTradeForm) GetUniversalSymbolIdOk() (*string, bool)`

GetUniversalSymbolIdOk returns a tuple with the UniversalSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUniversalSymbolId

`func (o *ManualTradeForm) SetUniversalSymbolId(v string)`

SetUniversalSymbolId sets UniversalSymbolId field to given value.

### HasUniversalSymbolId

`func (o *ManualTradeForm) HasUniversalSymbolId() bool`

HasUniversalSymbolId returns a boolean if a field has been set.

### GetNotionalValue

`func (o *ManualTradeForm) GetNotionalValue() ManualTradeFormNotionalValue`

GetNotionalValue returns the NotionalValue field if non-nil, zero value otherwise.

### GetNotionalValueOk

`func (o *ManualTradeForm) GetNotionalValueOk() (*ManualTradeFormNotionalValue, bool)`

GetNotionalValueOk returns a tuple with the NotionalValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotionalValue

`func (o *ManualTradeForm) SetNotionalValue(v ManualTradeFormNotionalValue)`

SetNotionalValue sets NotionalValue field to given value.

### HasNotionalValue

`func (o *ManualTradeForm) HasNotionalValue() bool`

HasNotionalValue returns a boolean if a field has been set.

### SetNotionalValueNil

`func (o *ManualTradeForm) SetNotionalValueNil(b bool)`

 SetNotionalValueNil sets the value for NotionalValue to be an explicit nil

### UnsetNotionalValue
`func (o *ManualTradeForm) UnsetNotionalValue()`

UnsetNotionalValue ensures that no value is present for NotionalValue, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


