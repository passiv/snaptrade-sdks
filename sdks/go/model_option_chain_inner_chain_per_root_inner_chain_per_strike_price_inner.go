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

// OptionChainInnerChainPerRootInnerChainPerStrikePriceInner struct for OptionChainInnerChainPerRootInnerChainPerStrikePriceInner
type OptionChainInnerChainPerRootInnerChainPerStrikePriceInner struct {
	StrikePrice NullableInt32 `json:"strikePrice,omitempty"`
	CallSymbolId NullableInt32 `json:"callSymbolId,omitempty"`
	PutSymbolId NullableInt32 `json:"putSymbolId,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _OptionChainInnerChainPerRootInnerChainPerStrikePriceInner OptionChainInnerChainPerRootInnerChainPerStrikePriceInner

// NewOptionChainInnerChainPerRootInnerChainPerStrikePriceInner instantiates a new OptionChainInnerChainPerRootInnerChainPerStrikePriceInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOptionChainInnerChainPerRootInnerChainPerStrikePriceInner() *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner {
	this := OptionChainInnerChainPerRootInnerChainPerStrikePriceInner{}
	return &this
}

// NewOptionChainInnerChainPerRootInnerChainPerStrikePriceInnerWithDefaults instantiates a new OptionChainInnerChainPerRootInnerChainPerStrikePriceInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOptionChainInnerChainPerRootInnerChainPerStrikePriceInnerWithDefaults() *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner {
	this := OptionChainInnerChainPerRootInnerChainPerStrikePriceInner{}
	return &this
}

// GetStrikePrice returns the StrikePrice field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) GetStrikePrice() int32 {
	if o == nil || isNil(o.StrikePrice.Get()) {
		var ret int32
		return ret
	}
	return *o.StrikePrice.Get()
}

// GetStrikePriceOk returns a tuple with the StrikePrice field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) GetStrikePriceOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.StrikePrice.Get(), o.StrikePrice.IsSet()
}

// HasStrikePrice returns a boolean if a field has been set.
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) HasStrikePrice() bool {
	if o != nil && o.StrikePrice.IsSet() {
		return true
	}

	return false
}

// SetStrikePrice gets a reference to the given NullableInt32 and assigns it to the StrikePrice field.
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) SetStrikePrice(v int32) {
	o.StrikePrice.Set(&v)
}
// SetStrikePriceNil sets the value for StrikePrice to be an explicit nil
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) SetStrikePriceNil() {
	o.StrikePrice.Set(nil)
}

// UnsetStrikePrice ensures that no value is present for StrikePrice, not even an explicit nil
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) UnsetStrikePrice() {
	o.StrikePrice.Unset()
}

// GetCallSymbolId returns the CallSymbolId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) GetCallSymbolId() int32 {
	if o == nil || isNil(o.CallSymbolId.Get()) {
		var ret int32
		return ret
	}
	return *o.CallSymbolId.Get()
}

// GetCallSymbolIdOk returns a tuple with the CallSymbolId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) GetCallSymbolIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.CallSymbolId.Get(), o.CallSymbolId.IsSet()
}

// HasCallSymbolId returns a boolean if a field has been set.
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) HasCallSymbolId() bool {
	if o != nil && o.CallSymbolId.IsSet() {
		return true
	}

	return false
}

// SetCallSymbolId gets a reference to the given NullableInt32 and assigns it to the CallSymbolId field.
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) SetCallSymbolId(v int32) {
	o.CallSymbolId.Set(&v)
}
// SetCallSymbolIdNil sets the value for CallSymbolId to be an explicit nil
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) SetCallSymbolIdNil() {
	o.CallSymbolId.Set(nil)
}

// UnsetCallSymbolId ensures that no value is present for CallSymbolId, not even an explicit nil
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) UnsetCallSymbolId() {
	o.CallSymbolId.Unset()
}

// GetPutSymbolId returns the PutSymbolId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) GetPutSymbolId() int32 {
	if o == nil || isNil(o.PutSymbolId.Get()) {
		var ret int32
		return ret
	}
	return *o.PutSymbolId.Get()
}

// GetPutSymbolIdOk returns a tuple with the PutSymbolId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) GetPutSymbolIdOk() (*int32, bool) {
	if o == nil {
    return nil, false
	}
	return o.PutSymbolId.Get(), o.PutSymbolId.IsSet()
}

// HasPutSymbolId returns a boolean if a field has been set.
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) HasPutSymbolId() bool {
	if o != nil && o.PutSymbolId.IsSet() {
		return true
	}

	return false
}

// SetPutSymbolId gets a reference to the given NullableInt32 and assigns it to the PutSymbolId field.
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) SetPutSymbolId(v int32) {
	o.PutSymbolId.Set(&v)
}
// SetPutSymbolIdNil sets the value for PutSymbolId to be an explicit nil
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) SetPutSymbolIdNil() {
	o.PutSymbolId.Set(nil)
}

// UnsetPutSymbolId ensures that no value is present for PutSymbolId, not even an explicit nil
func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) UnsetPutSymbolId() {
	o.PutSymbolId.Unset()
}

func (o OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.StrikePrice.IsSet() {
		toSerialize["strikePrice"] = o.StrikePrice.Get()
	}
	if o.CallSymbolId.IsSet() {
		toSerialize["callSymbolId"] = o.CallSymbolId.Get()
	}
	if o.PutSymbolId.IsSet() {
		toSerialize["putSymbolId"] = o.PutSymbolId.Get()
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) UnmarshalJSON(bytes []byte) (err error) {
	varOptionChainInnerChainPerRootInnerChainPerStrikePriceInner := _OptionChainInnerChainPerRootInnerChainPerStrikePriceInner{}

	if err = json.Unmarshal(bytes, &varOptionChainInnerChainPerRootInnerChainPerStrikePriceInner); err == nil {
		*o = OptionChainInnerChainPerRootInnerChainPerStrikePriceInner(varOptionChainInnerChainPerRootInnerChainPerStrikePriceInner)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "strikePrice")
		delete(additionalProperties, "callSymbolId")
		delete(additionalProperties, "putSymbolId")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner struct {
	value *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner
	isSet bool
}

func (v NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner) Get() *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner {
	return v.value
}

func (v *NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner) Set(val *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) {
	v.value = val
	v.isSet = true
}

func (v NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner) IsSet() bool {
	return v.isSet
}

func (v *NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner(val *OptionChainInnerChainPerRootInnerChainPerStrikePriceInner) *NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner {
	return &NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner{value: val, isSet: true}
}

func (v NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOptionChainInnerChainPerRootInnerChainPerStrikePriceInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

