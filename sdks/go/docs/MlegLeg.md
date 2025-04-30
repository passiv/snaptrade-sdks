# MlegLeg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**MlegTradingInstrument**](MlegTradingInstrument.md) |  | 
**Action** | [**MlegActionStrict**](MlegActionStrict.md) |  | 
**Units** | **int32** | The quantity to trade. For options this represents the number of contracts. For equity this represents the number of shares. | 

## Methods

### NewMlegLeg

`func NewMlegLeg(instrument MlegTradingInstrument, action MlegActionStrict, units int32, ) *MlegLeg`

NewMlegLeg instantiates a new MlegLeg object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMlegLegWithDefaults

`func NewMlegLegWithDefaults() *MlegLeg`

NewMlegLegWithDefaults instantiates a new MlegLeg object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInstrument

`func (o *MlegLeg) GetInstrument() MlegTradingInstrument`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *MlegLeg) GetInstrumentOk() (*MlegTradingInstrument, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *MlegLeg) SetInstrument(v MlegTradingInstrument)`

SetInstrument sets Instrument field to given value.


### GetAction

`func (o *MlegLeg) GetAction() MlegActionStrict`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *MlegLeg) GetActionOk() (*MlegActionStrict, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *MlegLeg) SetAction(v MlegActionStrict)`

SetAction sets Action field to given value.


### GetUnits

`func (o *MlegLeg) GetUnits() int32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *MlegLeg) GetUnitsOk() (*int32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *MlegLeg) SetUnits(v int32)`

SetUnits sets Units field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


