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

// FigiInstrument Open FIGI Identifiers
type FigiInstrument struct {
	FigiCode NullableString `json:"figi_code,omitempty"`
	FigiShareClass NullableString `json:"figi_share_class,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _FigiInstrument FigiInstrument

// NewFigiInstrument instantiates a new FigiInstrument object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFigiInstrument() *FigiInstrument {
	this := FigiInstrument{}
	return &this
}

// NewFigiInstrumentWithDefaults instantiates a new FigiInstrument object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFigiInstrumentWithDefaults() *FigiInstrument {
	this := FigiInstrument{}
	return &this
}

// GetFigiCode returns the FigiCode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *FigiInstrument) GetFigiCode() string {
	if o == nil || isNil(o.FigiCode.Get()) {
		var ret string
		return ret
	}
	return *o.FigiCode.Get()
}

// GetFigiCodeOk returns a tuple with the FigiCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *FigiInstrument) GetFigiCodeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FigiCode.Get(), o.FigiCode.IsSet()
}

// HasFigiCode returns a boolean if a field has been set.
func (o *FigiInstrument) HasFigiCode() bool {
	if o != nil && o.FigiCode.IsSet() {
		return true
	}

	return false
}

// SetFigiCode gets a reference to the given NullableString and assigns it to the FigiCode field.
func (o *FigiInstrument) SetFigiCode(v string) {
	o.FigiCode.Set(&v)
}
// SetFigiCodeNil sets the value for FigiCode to be an explicit nil
func (o *FigiInstrument) SetFigiCodeNil() {
	o.FigiCode.Set(nil)
}

// UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
func (o *FigiInstrument) UnsetFigiCode() {
	o.FigiCode.Unset()
}

// GetFigiShareClass returns the FigiShareClass field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *FigiInstrument) GetFigiShareClass() string {
	if o == nil || isNil(o.FigiShareClass.Get()) {
		var ret string
		return ret
	}
	return *o.FigiShareClass.Get()
}

// GetFigiShareClassOk returns a tuple with the FigiShareClass field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *FigiInstrument) GetFigiShareClassOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FigiShareClass.Get(), o.FigiShareClass.IsSet()
}

// HasFigiShareClass returns a boolean if a field has been set.
func (o *FigiInstrument) HasFigiShareClass() bool {
	if o != nil && o.FigiShareClass.IsSet() {
		return true
	}

	return false
}

// SetFigiShareClass gets a reference to the given NullableString and assigns it to the FigiShareClass field.
func (o *FigiInstrument) SetFigiShareClass(v string) {
	o.FigiShareClass.Set(&v)
}
// SetFigiShareClassNil sets the value for FigiShareClass to be an explicit nil
func (o *FigiInstrument) SetFigiShareClassNil() {
	o.FigiShareClass.Set(nil)
}

// UnsetFigiShareClass ensures that no value is present for FigiShareClass, not even an explicit nil
func (o *FigiInstrument) UnsetFigiShareClass() {
	o.FigiShareClass.Unset()
}

func (o FigiInstrument) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.FigiCode.IsSet() {
		toSerialize["figi_code"] = o.FigiCode.Get()
	}
	if o.FigiShareClass.IsSet() {
		toSerialize["figi_share_class"] = o.FigiShareClass.Get()
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *FigiInstrument) UnmarshalJSON(bytes []byte) (err error) {
	varFigiInstrument := _FigiInstrument{}

	if err = json.Unmarshal(bytes, &varFigiInstrument); err == nil {
		*o = FigiInstrument(varFigiInstrument)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "figi_code")
		delete(additionalProperties, "figi_share_class")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableFigiInstrument struct {
	value *FigiInstrument
	isSet bool
}

func (v NullableFigiInstrument) Get() *FigiInstrument {
	return v.value
}

func (v *NullableFigiInstrument) Set(val *FigiInstrument) {
	v.value = val
	v.isSet = true
}

func (v NullableFigiInstrument) IsSet() bool {
	return v.isSet
}

func (v *NullableFigiInstrument) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFigiInstrument(val *FigiInstrument) *NullableFigiInstrument {
	return &NullableFigiInstrument{value: val, isSet: true}
}

func (v NullableFigiInstrument) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFigiInstrument) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

