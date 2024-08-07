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

// ExcludedAsset An excluded asset in a portfolio group
type ExcludedAsset struct {
	Symbol *UniversalSymbol `json:"symbol,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _ExcludedAsset ExcludedAsset

// NewExcludedAsset instantiates a new ExcludedAsset object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExcludedAsset() *ExcludedAsset {
	this := ExcludedAsset{}
	return &this
}

// NewExcludedAssetWithDefaults instantiates a new ExcludedAsset object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExcludedAssetWithDefaults() *ExcludedAsset {
	this := ExcludedAsset{}
	return &this
}

// GetSymbol returns the Symbol field value if set, zero value otherwise.
func (o *ExcludedAsset) GetSymbol() UniversalSymbol {
	if o == nil || isNil(o.Symbol) {
		var ret UniversalSymbol
		return ret
	}
	return *o.Symbol
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExcludedAsset) GetSymbolOk() (*UniversalSymbol, bool) {
	if o == nil || isNil(o.Symbol) {
    return nil, false
	}
	return o.Symbol, true
}

// HasSymbol returns a boolean if a field has been set.
func (o *ExcludedAsset) HasSymbol() bool {
	if o != nil && !isNil(o.Symbol) {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given UniversalSymbol and assigns it to the Symbol field.
func (o *ExcludedAsset) SetSymbol(v UniversalSymbol) {
	o.Symbol = &v
}

func (o ExcludedAsset) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Symbol) {
		toSerialize["symbol"] = o.Symbol
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *ExcludedAsset) UnmarshalJSON(bytes []byte) (err error) {
	varExcludedAsset := _ExcludedAsset{}

	if err = json.Unmarshal(bytes, &varExcludedAsset); err == nil {
		*o = ExcludedAsset(varExcludedAsset)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "symbol")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableExcludedAsset struct {
	value *ExcludedAsset
	isSet bool
}

func (v NullableExcludedAsset) Get() *ExcludedAsset {
	return v.value
}

func (v *NullableExcludedAsset) Set(val *ExcludedAsset) {
	v.value = val
	v.isSet = true
}

func (v NullableExcludedAsset) IsSet() bool {
	return v.isSet
}

func (v *NullableExcludedAsset) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExcludedAsset(val *ExcludedAsset) *NullableExcludedAsset {
	return &NullableExcludedAsset{value: val, isSet: true}
}

func (v NullableExcludedAsset) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExcludedAsset) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


