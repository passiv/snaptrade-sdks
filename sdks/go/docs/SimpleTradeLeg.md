# SimpleTradeLeg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**SimpleTradeInstrument**](SimpleTradeInstrument.md) |  | 
**Action** | **string** | Equities and futures require buy or sell. Equity options and future options require buy_to_open, buy_to_close, sell_to_open, or sell_to_close. | 
**Units** | Pointer to [**SimpleTradeLegUnits**](SimpleTradeLegUnits.md) |  | [optional] 

## Methods

### NewSimpleTradeLeg

`func NewSimpleTradeLeg(instrument SimpleTradeInstrument, action string, ) *SimpleTradeLeg`

NewSimpleTradeLeg instantiates a new SimpleTradeLeg object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSimpleTradeLegWithDefaults

`func NewSimpleTradeLegWithDefaults() *SimpleTradeLeg`

NewSimpleTradeLegWithDefaults instantiates a new SimpleTradeLeg object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInstrument

`func (o *SimpleTradeLeg) GetInstrument() SimpleTradeInstrument`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *SimpleTradeLeg) GetInstrumentOk() (*SimpleTradeInstrument, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *SimpleTradeLeg) SetInstrument(v SimpleTradeInstrument)`

SetInstrument sets Instrument field to given value.


### GetAction

`func (o *SimpleTradeLeg) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *SimpleTradeLeg) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *SimpleTradeLeg) SetAction(v string)`

SetAction sets Action field to given value.


### GetUnits

`func (o *SimpleTradeLeg) GetUnits() SimpleTradeLegUnits`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *SimpleTradeLeg) GetUnitsOk() (*SimpleTradeLegUnits, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *SimpleTradeLeg) SetUnits(v SimpleTradeLegUnits)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *SimpleTradeLeg) HasUnits() bool`

HasUnits returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


