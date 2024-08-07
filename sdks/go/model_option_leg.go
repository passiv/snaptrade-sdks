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

// OptionLeg Option Leg
type OptionLeg struct {
	Action *string `json:"action,omitempty"`
	// Obtained from calling options chain endpoint (option_id)
	OptionSymbolId *string `json:"option_symbol_id,omitempty"`
	Quantity *float32 `json:"quantity,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _OptionLeg OptionLeg

// NewOptionLeg instantiates a new OptionLeg object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOptionLeg() *OptionLeg {
	this := OptionLeg{}
	return &this
}

// NewOptionLegWithDefaults instantiates a new OptionLeg object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOptionLegWithDefaults() *OptionLeg {
	this := OptionLeg{}
	return &this
}

// GetAction returns the Action field value if set, zero value otherwise.
func (o *OptionLeg) GetAction() string {
	if o == nil || isNil(o.Action) {
		var ret string
		return ret
	}
	return *o.Action
}

// GetActionOk returns a tuple with the Action field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OptionLeg) GetActionOk() (*string, bool) {
	if o == nil || isNil(o.Action) {
    return nil, false
	}
	return o.Action, true
}

// HasAction returns a boolean if a field has been set.
func (o *OptionLeg) HasAction() bool {
	if o != nil && !isNil(o.Action) {
		return true
	}

	return false
}

// SetAction gets a reference to the given string and assigns it to the Action field.
func (o *OptionLeg) SetAction(v string) {
	o.Action = &v
}

// GetOptionSymbolId returns the OptionSymbolId field value if set, zero value otherwise.
func (o *OptionLeg) GetOptionSymbolId() string {
	if o == nil || isNil(o.OptionSymbolId) {
		var ret string
		return ret
	}
	return *o.OptionSymbolId
}

// GetOptionSymbolIdOk returns a tuple with the OptionSymbolId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OptionLeg) GetOptionSymbolIdOk() (*string, bool) {
	if o == nil || isNil(o.OptionSymbolId) {
    return nil, false
	}
	return o.OptionSymbolId, true
}

// HasOptionSymbolId returns a boolean if a field has been set.
func (o *OptionLeg) HasOptionSymbolId() bool {
	if o != nil && !isNil(o.OptionSymbolId) {
		return true
	}

	return false
}

// SetOptionSymbolId gets a reference to the given string and assigns it to the OptionSymbolId field.
func (o *OptionLeg) SetOptionSymbolId(v string) {
	o.OptionSymbolId = &v
}

// GetQuantity returns the Quantity field value if set, zero value otherwise.
func (o *OptionLeg) GetQuantity() float32 {
	if o == nil || isNil(o.Quantity) {
		var ret float32
		return ret
	}
	return *o.Quantity
}

// GetQuantityOk returns a tuple with the Quantity field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OptionLeg) GetQuantityOk() (*float32, bool) {
	if o == nil || isNil(o.Quantity) {
    return nil, false
	}
	return o.Quantity, true
}

// HasQuantity returns a boolean if a field has been set.
func (o *OptionLeg) HasQuantity() bool {
	if o != nil && !isNil(o.Quantity) {
		return true
	}

	return false
}

// SetQuantity gets a reference to the given float32 and assigns it to the Quantity field.
func (o *OptionLeg) SetQuantity(v float32) {
	o.Quantity = &v
}

func (o OptionLeg) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Action) {
		toSerialize["action"] = o.Action
	}
	if !isNil(o.OptionSymbolId) {
		toSerialize["option_symbol_id"] = o.OptionSymbolId
	}
	if !isNil(o.Quantity) {
		toSerialize["quantity"] = o.Quantity
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *OptionLeg) UnmarshalJSON(bytes []byte) (err error) {
	varOptionLeg := _OptionLeg{}

	if err = json.Unmarshal(bytes, &varOptionLeg); err == nil {
		*o = OptionLeg(varOptionLeg)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "action")
		delete(additionalProperties, "option_symbol_id")
		delete(additionalProperties, "quantity")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableOptionLeg struct {
	value *OptionLeg
	isSet bool
}

func (v NullableOptionLeg) Get() *OptionLeg {
	return v.value
}

func (v *NullableOptionLeg) Set(val *OptionLeg) {
	v.value = val
	v.isSet = true
}

func (v NullableOptionLeg) IsSet() bool {
	return v.isSet
}

func (v *NullableOptionLeg) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOptionLeg(val *OptionLeg) *NullableOptionLeg {
	return &NullableOptionLeg{value: val, isSet: true}
}

func (v NullableOptionLeg) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOptionLeg) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

