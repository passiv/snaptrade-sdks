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

// TargetAsset Target percentage of a certain asset
type TargetAsset struct {
	Id *string `json:"id,omitempty"`
	Symbol *UniversalSymbol `json:"symbol,omitempty"`
	Percent *float32 `json:"percent,omitempty"`
	IsSupported *bool `json:"is_supported,omitempty"`
	IsExcluded *bool `json:"is_excluded,omitempty"`
	Meta map[string]interface{} `json:"meta,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _TargetAsset TargetAsset

// NewTargetAsset instantiates a new TargetAsset object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTargetAsset() *TargetAsset {
	this := TargetAsset{}
	return &this
}

// NewTargetAssetWithDefaults instantiates a new TargetAsset object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTargetAssetWithDefaults() *TargetAsset {
	this := TargetAsset{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *TargetAsset) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TargetAsset) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *TargetAsset) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *TargetAsset) SetId(v string) {
	o.Id = &v
}

// GetSymbol returns the Symbol field value if set, zero value otherwise.
func (o *TargetAsset) GetSymbol() UniversalSymbol {
	if o == nil || isNil(o.Symbol) {
		var ret UniversalSymbol
		return ret
	}
	return *o.Symbol
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TargetAsset) GetSymbolOk() (*UniversalSymbol, bool) {
	if o == nil || isNil(o.Symbol) {
    return nil, false
	}
	return o.Symbol, true
}

// HasSymbol returns a boolean if a field has been set.
func (o *TargetAsset) HasSymbol() bool {
	if o != nil && !isNil(o.Symbol) {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given UniversalSymbol and assigns it to the Symbol field.
func (o *TargetAsset) SetSymbol(v UniversalSymbol) {
	o.Symbol = &v
}

// GetPercent returns the Percent field value if set, zero value otherwise.
func (o *TargetAsset) GetPercent() float32 {
	if o == nil || isNil(o.Percent) {
		var ret float32
		return ret
	}
	return *o.Percent
}

// GetPercentOk returns a tuple with the Percent field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TargetAsset) GetPercentOk() (*float32, bool) {
	if o == nil || isNil(o.Percent) {
    return nil, false
	}
	return o.Percent, true
}

// HasPercent returns a boolean if a field has been set.
func (o *TargetAsset) HasPercent() bool {
	if o != nil && !isNil(o.Percent) {
		return true
	}

	return false
}

// SetPercent gets a reference to the given float32 and assigns it to the Percent field.
func (o *TargetAsset) SetPercent(v float32) {
	o.Percent = &v
}

// GetIsSupported returns the IsSupported field value if set, zero value otherwise.
func (o *TargetAsset) GetIsSupported() bool {
	if o == nil || isNil(o.IsSupported) {
		var ret bool
		return ret
	}
	return *o.IsSupported
}

// GetIsSupportedOk returns a tuple with the IsSupported field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TargetAsset) GetIsSupportedOk() (*bool, bool) {
	if o == nil || isNil(o.IsSupported) {
    return nil, false
	}
	return o.IsSupported, true
}

// HasIsSupported returns a boolean if a field has been set.
func (o *TargetAsset) HasIsSupported() bool {
	if o != nil && !isNil(o.IsSupported) {
		return true
	}

	return false
}

// SetIsSupported gets a reference to the given bool and assigns it to the IsSupported field.
func (o *TargetAsset) SetIsSupported(v bool) {
	o.IsSupported = &v
}

// GetIsExcluded returns the IsExcluded field value if set, zero value otherwise.
func (o *TargetAsset) GetIsExcluded() bool {
	if o == nil || isNil(o.IsExcluded) {
		var ret bool
		return ret
	}
	return *o.IsExcluded
}

// GetIsExcludedOk returns a tuple with the IsExcluded field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TargetAsset) GetIsExcludedOk() (*bool, bool) {
	if o == nil || isNil(o.IsExcluded) {
    return nil, false
	}
	return o.IsExcluded, true
}

// HasIsExcluded returns a boolean if a field has been set.
func (o *TargetAsset) HasIsExcluded() bool {
	if o != nil && !isNil(o.IsExcluded) {
		return true
	}

	return false
}

// SetIsExcluded gets a reference to the given bool and assigns it to the IsExcluded field.
func (o *TargetAsset) SetIsExcluded(v bool) {
	o.IsExcluded = &v
}

// GetMeta returns the Meta field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TargetAsset) GetMeta() map[string]interface{} {
	if o == nil {
		var ret map[string]interface{}
		return ret
	}
	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TargetAsset) GetMetaOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Meta) {
    return map[string]interface{}{}, false
	}
	return o.Meta, true
}

// HasMeta returns a boolean if a field has been set.
func (o *TargetAsset) HasMeta() bool {
	if o != nil && isNil(o.Meta) {
		return true
	}

	return false
}

// SetMeta gets a reference to the given map[string]interface{} and assigns it to the Meta field.
func (o *TargetAsset) SetMeta(v map[string]interface{}) {
	o.Meta = v
}

func (o TargetAsset) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.Symbol) {
		toSerialize["symbol"] = o.Symbol
	}
	if !isNil(o.Percent) {
		toSerialize["percent"] = o.Percent
	}
	if !isNil(o.IsSupported) {
		toSerialize["is_supported"] = o.IsSupported
	}
	if !isNil(o.IsExcluded) {
		toSerialize["is_excluded"] = o.IsExcluded
	}
	if o.Meta != nil {
		toSerialize["meta"] = o.Meta
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *TargetAsset) UnmarshalJSON(bytes []byte) (err error) {
	varTargetAsset := _TargetAsset{}

	if err = json.Unmarshal(bytes, &varTargetAsset); err == nil {
		*o = TargetAsset(varTargetAsset)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "symbol")
		delete(additionalProperties, "percent")
		delete(additionalProperties, "is_supported")
		delete(additionalProperties, "is_excluded")
		delete(additionalProperties, "meta")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableTargetAsset struct {
	value *TargetAsset
	isSet bool
}

func (v NullableTargetAsset) Get() *TargetAsset {
	return v.value
}

func (v *NullableTargetAsset) Set(val *TargetAsset) {
	v.value = val
	v.isSet = true
}

func (v NullableTargetAsset) IsSet() bool {
	return v.isSet
}

func (v *NullableTargetAsset) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTargetAsset(val *TargetAsset) *NullableTargetAsset {
	return &NullableTargetAsset{value: val, isSet: true}
}

func (v NullableTargetAsset) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTargetAsset) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

