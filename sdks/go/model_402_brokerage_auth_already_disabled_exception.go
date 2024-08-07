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

// Model402BrokerageAuthAlreadyDisabledException This connection is already disabled.
type Model402BrokerageAuthAlreadyDisabledException struct {
	Detail interface{} `json:"detail,omitempty"`
	Code interface{} `json:"code,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _Model402BrokerageAuthAlreadyDisabledException Model402BrokerageAuthAlreadyDisabledException

// NewModel402BrokerageAuthAlreadyDisabledException instantiates a new Model402BrokerageAuthAlreadyDisabledException object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewModel402BrokerageAuthAlreadyDisabledException() *Model402BrokerageAuthAlreadyDisabledException {
	this := Model402BrokerageAuthAlreadyDisabledException{}
	return &this
}

// NewModel402BrokerageAuthAlreadyDisabledExceptionWithDefaults instantiates a new Model402BrokerageAuthAlreadyDisabledException object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewModel402BrokerageAuthAlreadyDisabledExceptionWithDefaults() *Model402BrokerageAuthAlreadyDisabledException {
	this := Model402BrokerageAuthAlreadyDisabledException{}
	return &this
}

// GetDetail returns the Detail field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Model402BrokerageAuthAlreadyDisabledException) GetDetail() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.Detail
}

// GetDetailOk returns a tuple with the Detail field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Model402BrokerageAuthAlreadyDisabledException) GetDetailOk() (*interface{}, bool) {
	if o == nil || isNil(o.Detail) {
    return nil, false
	}
	return &o.Detail, true
}

// HasDetail returns a boolean if a field has been set.
func (o *Model402BrokerageAuthAlreadyDisabledException) HasDetail() bool {
	if o != nil && isNil(o.Detail) {
		return true
	}

	return false
}

// SetDetail gets a reference to the given interface{} and assigns it to the Detail field.
func (o *Model402BrokerageAuthAlreadyDisabledException) SetDetail(v interface{}) {
	o.Detail = v
}

// GetCode returns the Code field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Model402BrokerageAuthAlreadyDisabledException) GetCode() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.Code
}

// GetCodeOk returns a tuple with the Code field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Model402BrokerageAuthAlreadyDisabledException) GetCodeOk() (*interface{}, bool) {
	if o == nil || isNil(o.Code) {
    return nil, false
	}
	return &o.Code, true
}

// HasCode returns a boolean if a field has been set.
func (o *Model402BrokerageAuthAlreadyDisabledException) HasCode() bool {
	if o != nil && isNil(o.Code) {
		return true
	}

	return false
}

// SetCode gets a reference to the given interface{} and assigns it to the Code field.
func (o *Model402BrokerageAuthAlreadyDisabledException) SetCode(v interface{}) {
	o.Code = v
}

func (o Model402BrokerageAuthAlreadyDisabledException) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Detail != nil {
		toSerialize["detail"] = o.Detail
	}
	if o.Code != nil {
		toSerialize["code"] = o.Code
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *Model402BrokerageAuthAlreadyDisabledException) UnmarshalJSON(bytes []byte) (err error) {
	varModel402BrokerageAuthAlreadyDisabledException := _Model402BrokerageAuthAlreadyDisabledException{}

	if err = json.Unmarshal(bytes, &varModel402BrokerageAuthAlreadyDisabledException); err == nil {
		*o = Model402BrokerageAuthAlreadyDisabledException(varModel402BrokerageAuthAlreadyDisabledException)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "detail")
		delete(additionalProperties, "code")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableModel402BrokerageAuthAlreadyDisabledException struct {
	value *Model402BrokerageAuthAlreadyDisabledException
	isSet bool
}

func (v NullableModel402BrokerageAuthAlreadyDisabledException) Get() *Model402BrokerageAuthAlreadyDisabledException {
	return v.value
}

func (v *NullableModel402BrokerageAuthAlreadyDisabledException) Set(val *Model402BrokerageAuthAlreadyDisabledException) {
	v.value = val
	v.isSet = true
}

func (v NullableModel402BrokerageAuthAlreadyDisabledException) IsSet() bool {
	return v.isSet
}

func (v *NullableModel402BrokerageAuthAlreadyDisabledException) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableModel402BrokerageAuthAlreadyDisabledException(val *Model402BrokerageAuthAlreadyDisabledException) *NullableModel402BrokerageAuthAlreadyDisabledException {
	return &NullableModel402BrokerageAuthAlreadyDisabledException{value: val, isSet: true}
}

func (v NullableModel402BrokerageAuthAlreadyDisabledException) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableModel402BrokerageAuthAlreadyDisabledException) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


