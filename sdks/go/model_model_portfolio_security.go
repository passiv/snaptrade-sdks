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

// ModelPortfolioSecurity struct for ModelPortfolioSecurity
type ModelPortfolioSecurity struct {
	Symbol *UniversalSymbol `json:"symbol,omitempty"`
	Percent *int32 `json:"percent,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _ModelPortfolioSecurity ModelPortfolioSecurity

// NewModelPortfolioSecurity instantiates a new ModelPortfolioSecurity object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewModelPortfolioSecurity() *ModelPortfolioSecurity {
	this := ModelPortfolioSecurity{}
	return &this
}

// NewModelPortfolioSecurityWithDefaults instantiates a new ModelPortfolioSecurity object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewModelPortfolioSecurityWithDefaults() *ModelPortfolioSecurity {
	this := ModelPortfolioSecurity{}
	return &this
}

// GetSymbol returns the Symbol field value if set, zero value otherwise.
func (o *ModelPortfolioSecurity) GetSymbol() UniversalSymbol {
	if o == nil || isNil(o.Symbol) {
		var ret UniversalSymbol
		return ret
	}
	return *o.Symbol
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ModelPortfolioSecurity) GetSymbolOk() (*UniversalSymbol, bool) {
	if o == nil || isNil(o.Symbol) {
    return nil, false
	}
	return o.Symbol, true
}

// HasSymbol returns a boolean if a field has been set.
func (o *ModelPortfolioSecurity) HasSymbol() bool {
	if o != nil && !isNil(o.Symbol) {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given UniversalSymbol and assigns it to the Symbol field.
func (o *ModelPortfolioSecurity) SetSymbol(v UniversalSymbol) {
	o.Symbol = &v
}

// GetPercent returns the Percent field value if set, zero value otherwise.
func (o *ModelPortfolioSecurity) GetPercent() int32 {
	if o == nil || isNil(o.Percent) {
		var ret int32
		return ret
	}
	return *o.Percent
}

// GetPercentOk returns a tuple with the Percent field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ModelPortfolioSecurity) GetPercentOk() (*int32, bool) {
	if o == nil || isNil(o.Percent) {
    return nil, false
	}
	return o.Percent, true
}

// HasPercent returns a boolean if a field has been set.
func (o *ModelPortfolioSecurity) HasPercent() bool {
	if o != nil && !isNil(o.Percent) {
		return true
	}

	return false
}

// SetPercent gets a reference to the given int32 and assigns it to the Percent field.
func (o *ModelPortfolioSecurity) SetPercent(v int32) {
	o.Percent = &v
}

func (o ModelPortfolioSecurity) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Symbol) {
		toSerialize["symbol"] = o.Symbol
	}
	if !isNil(o.Percent) {
		toSerialize["percent"] = o.Percent
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *ModelPortfolioSecurity) UnmarshalJSON(bytes []byte) (err error) {
	varModelPortfolioSecurity := _ModelPortfolioSecurity{}

	if err = json.Unmarshal(bytes, &varModelPortfolioSecurity); err == nil {
		*o = ModelPortfolioSecurity(varModelPortfolioSecurity)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "symbol")
		delete(additionalProperties, "percent")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableModelPortfolioSecurity struct {
	value *ModelPortfolioSecurity
	isSet bool
}

func (v NullableModelPortfolioSecurity) Get() *ModelPortfolioSecurity {
	return v.value
}

func (v *NullableModelPortfolioSecurity) Set(val *ModelPortfolioSecurity) {
	v.value = val
	v.isSet = true
}

func (v NullableModelPortfolioSecurity) IsSet() bool {
	return v.isSet
}

func (v *NullableModelPortfolioSecurity) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableModelPortfolioSecurity(val *ModelPortfolioSecurity) *NullableModelPortfolioSecurity {
	return &NullableModelPortfolioSecurity{value: val, isSet: true}
}

func (v NullableModelPortfolioSecurity) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableModelPortfolioSecurity) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


