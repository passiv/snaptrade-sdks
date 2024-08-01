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

// OptionsPositionCurrency struct for OptionsPositionCurrency
type OptionsPositionCurrency struct {
	Id *string `json:"id,omitempty"`
	Code *string `json:"code,omitempty"`
	Name *string `json:"name,omitempty"`
}

// NewOptionsPositionCurrency instantiates a new OptionsPositionCurrency object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewOptionsPositionCurrency() *OptionsPositionCurrency {
	this := OptionsPositionCurrency{}
	return &this
}

// NewOptionsPositionCurrencyWithDefaults instantiates a new OptionsPositionCurrency object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewOptionsPositionCurrencyWithDefaults() *OptionsPositionCurrency {
	this := OptionsPositionCurrency{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *OptionsPositionCurrency) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OptionsPositionCurrency) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *OptionsPositionCurrency) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *OptionsPositionCurrency) SetId(v string) {
	o.Id = &v
}

// GetCode returns the Code field value if set, zero value otherwise.
func (o *OptionsPositionCurrency) GetCode() string {
	if o == nil || isNil(o.Code) {
		var ret string
		return ret
	}
	return *o.Code
}

// GetCodeOk returns a tuple with the Code field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OptionsPositionCurrency) GetCodeOk() (*string, bool) {
	if o == nil || isNil(o.Code) {
    return nil, false
	}
	return o.Code, true
}

// HasCode returns a boolean if a field has been set.
func (o *OptionsPositionCurrency) HasCode() bool {
	if o != nil && !isNil(o.Code) {
		return true
	}

	return false
}

// SetCode gets a reference to the given string and assigns it to the Code field.
func (o *OptionsPositionCurrency) SetCode(v string) {
	o.Code = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *OptionsPositionCurrency) GetName() string {
	if o == nil || isNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *OptionsPositionCurrency) GetNameOk() (*string, bool) {
	if o == nil || isNil(o.Name) {
    return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *OptionsPositionCurrency) HasName() bool {
	if o != nil && !isNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *OptionsPositionCurrency) SetName(v string) {
	o.Name = &v
}

func (o OptionsPositionCurrency) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.Code) {
		toSerialize["code"] = o.Code
	}
	if !isNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	return json.Marshal(toSerialize)
}

type NullableOptionsPositionCurrency struct {
	value *OptionsPositionCurrency
	isSet bool
}

func (v NullableOptionsPositionCurrency) Get() *OptionsPositionCurrency {
	return v.value
}

func (v *NullableOptionsPositionCurrency) Set(val *OptionsPositionCurrency) {
	v.value = val
	v.isSet = true
}

func (v NullableOptionsPositionCurrency) IsSet() bool {
	return v.isSet
}

func (v *NullableOptionsPositionCurrency) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOptionsPositionCurrency(val *OptionsPositionCurrency) *NullableOptionsPositionCurrency {
	return &NullableOptionsPositionCurrency{value: val, isSet: true}
}

func (v NullableOptionsPositionCurrency) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOptionsPositionCurrency) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


