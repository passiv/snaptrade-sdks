/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

API version: 1.0.0
Contact: api@snaptrade.com
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package snaptrade

import (
	"encoding/json"
)

// MlegLeg struct for MlegLeg
type MlegLeg struct {
	Instrument MlegTradingInstrument `json:"instrument"`
	Action MlegActionStrict `json:"action"`
	// The quantity to trade. For options this represents the number of contracts. For equity this represents the number of shares.
	Units int32 `json:"units"`
	AdditionalProperties map[string]interface{}
}

type _MlegLeg MlegLeg

// NewMlegLeg instantiates a new MlegLeg object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMlegLeg(instrument MlegTradingInstrument, action MlegActionStrict, units int32) *MlegLeg {
	this := MlegLeg{}
	this.Instrument = instrument
	this.Action = action
	this.Units = units
	return &this
}

// NewMlegLegWithDefaults instantiates a new MlegLeg object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMlegLegWithDefaults() *MlegLeg {
	this := MlegLeg{}
	return &this
}

// GetInstrument returns the Instrument field value
func (o *MlegLeg) GetInstrument() MlegTradingInstrument {
	if o == nil {
		var ret MlegTradingInstrument
		return ret
	}

	return o.Instrument
}

// GetInstrumentOk returns a tuple with the Instrument field value
// and a boolean to check if the value has been set.
func (o *MlegLeg) GetInstrumentOk() (*MlegTradingInstrument, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Instrument, true
}

// SetInstrument sets field value
func (o *MlegLeg) SetInstrument(v MlegTradingInstrument) {
	o.Instrument = v
}

// GetAction returns the Action field value
func (o *MlegLeg) GetAction() MlegActionStrict {
	if o == nil {
		var ret MlegActionStrict
		return ret
	}

	return o.Action
}

// GetActionOk returns a tuple with the Action field value
// and a boolean to check if the value has been set.
func (o *MlegLeg) GetActionOk() (*MlegActionStrict, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Action, true
}

// SetAction sets field value
func (o *MlegLeg) SetAction(v MlegActionStrict) {
	o.Action = v
}

// GetUnits returns the Units field value
func (o *MlegLeg) GetUnits() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Units
}

// GetUnitsOk returns a tuple with the Units field value
// and a boolean to check if the value has been set.
func (o *MlegLeg) GetUnitsOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Units, true
}

// SetUnits sets field value
func (o *MlegLeg) SetUnits(v int32) {
	o.Units = v
}

func (o MlegLeg) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["instrument"] = o.Instrument
	}
	if true {
		toSerialize["action"] = o.Action
	}
	if true {
		toSerialize["units"] = o.Units
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *MlegLeg) UnmarshalJSON(bytes []byte) (err error) {
	varMlegLeg := _MlegLeg{}

	if err = json.Unmarshal(bytes, &varMlegLeg); err == nil {
		*o = MlegLeg(varMlegLeg)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "instrument")
		delete(additionalProperties, "action")
		delete(additionalProperties, "units")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableMlegLeg struct {
	value *MlegLeg
	isSet bool
}

func (v NullableMlegLeg) Get() *MlegLeg {
	return v.value
}

func (v *NullableMlegLeg) Set(val *MlegLeg) {
	v.value = val
	v.isSet = true
}

func (v NullableMlegLeg) IsSet() bool {
	return v.isSet
}

func (v *NullableMlegLeg) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMlegLeg(val *MlegLeg) *NullableMlegLeg {
	return &NullableMlegLeg{value: val, isSet: true}
}

func (v NullableMlegLeg) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMlegLeg) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


