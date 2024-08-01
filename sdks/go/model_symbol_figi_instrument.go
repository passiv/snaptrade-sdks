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

// SymbolFigiInstrument struct for SymbolFigiInstrument
type SymbolFigiInstrument struct {
	FigiCode NullableString `json:"figi_code,omitempty"`
	FigiShareClass NullableString `json:"figi_share_class,omitempty"`
}

// NewSymbolFigiInstrument instantiates a new SymbolFigiInstrument object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSymbolFigiInstrument() *SymbolFigiInstrument {
	this := SymbolFigiInstrument{}
	return &this
}

// NewSymbolFigiInstrumentWithDefaults instantiates a new SymbolFigiInstrument object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSymbolFigiInstrumentWithDefaults() *SymbolFigiInstrument {
	this := SymbolFigiInstrument{}
	return &this
}

// GetFigiCode returns the FigiCode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SymbolFigiInstrument) GetFigiCode() string {
	if o == nil || isNil(o.FigiCode.Get()) {
		var ret string
		return ret
	}
	return *o.FigiCode.Get()
}

// GetFigiCodeOk returns a tuple with the FigiCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SymbolFigiInstrument) GetFigiCodeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FigiCode.Get(), o.FigiCode.IsSet()
}

// HasFigiCode returns a boolean if a field has been set.
func (o *SymbolFigiInstrument) HasFigiCode() bool {
	if o != nil && o.FigiCode.IsSet() {
		return true
	}

	return false
}

// SetFigiCode gets a reference to the given NullableString and assigns it to the FigiCode field.
func (o *SymbolFigiInstrument) SetFigiCode(v string) {
	o.FigiCode.Set(&v)
}
// SetFigiCodeNil sets the value for FigiCode to be an explicit nil
func (o *SymbolFigiInstrument) SetFigiCodeNil() {
	o.FigiCode.Set(nil)
}

// UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
func (o *SymbolFigiInstrument) UnsetFigiCode() {
	o.FigiCode.Unset()
}

// GetFigiShareClass returns the FigiShareClass field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SymbolFigiInstrument) GetFigiShareClass() string {
	if o == nil || isNil(o.FigiShareClass.Get()) {
		var ret string
		return ret
	}
	return *o.FigiShareClass.Get()
}

// GetFigiShareClassOk returns a tuple with the FigiShareClass field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SymbolFigiInstrument) GetFigiShareClassOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FigiShareClass.Get(), o.FigiShareClass.IsSet()
}

// HasFigiShareClass returns a boolean if a field has been set.
func (o *SymbolFigiInstrument) HasFigiShareClass() bool {
	if o != nil && o.FigiShareClass.IsSet() {
		return true
	}

	return false
}

// SetFigiShareClass gets a reference to the given NullableString and assigns it to the FigiShareClass field.
func (o *SymbolFigiInstrument) SetFigiShareClass(v string) {
	o.FigiShareClass.Set(&v)
}
// SetFigiShareClassNil sets the value for FigiShareClass to be an explicit nil
func (o *SymbolFigiInstrument) SetFigiShareClassNil() {
	o.FigiShareClass.Set(nil)
}

// UnsetFigiShareClass ensures that no value is present for FigiShareClass, not even an explicit nil
func (o *SymbolFigiInstrument) UnsetFigiShareClass() {
	o.FigiShareClass.Unset()
}

func (o SymbolFigiInstrument) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.FigiCode.IsSet() {
		toSerialize["figi_code"] = o.FigiCode.Get()
	}
	if o.FigiShareClass.IsSet() {
		toSerialize["figi_share_class"] = o.FigiShareClass.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableSymbolFigiInstrument struct {
	value *SymbolFigiInstrument
	isSet bool
}

func (v NullableSymbolFigiInstrument) Get() *SymbolFigiInstrument {
	return v.value
}

func (v *NullableSymbolFigiInstrument) Set(val *SymbolFigiInstrument) {
	v.value = val
	v.isSet = true
}

func (v NullableSymbolFigiInstrument) IsSet() bool {
	return v.isSet
}

func (v *NullableSymbolFigiInstrument) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSymbolFigiInstrument(val *SymbolFigiInstrument) *NullableSymbolFigiInstrument {
	return &NullableSymbolFigiInstrument{value: val, isSet: true}
}

func (v NullableSymbolFigiInstrument) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSymbolFigiInstrument) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


