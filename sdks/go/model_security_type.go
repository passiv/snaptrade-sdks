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

// SecurityType Security Type
type SecurityType struct {
	Id *string `json:"id,omitempty"`
	Code *string `json:"code,omitempty"`
	Description *string `json:"description,omitempty"`
	IsSupported *bool `json:"is_supported,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _SecurityType SecurityType

// NewSecurityType instantiates a new SecurityType object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSecurityType() *SecurityType {
	this := SecurityType{}
	return &this
}

// NewSecurityTypeWithDefaults instantiates a new SecurityType object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSecurityTypeWithDefaults() *SecurityType {
	this := SecurityType{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *SecurityType) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SecurityType) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *SecurityType) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *SecurityType) SetId(v string) {
	o.Id = &v
}

// GetCode returns the Code field value if set, zero value otherwise.
func (o *SecurityType) GetCode() string {
	if o == nil || isNil(o.Code) {
		var ret string
		return ret
	}
	return *o.Code
}

// GetCodeOk returns a tuple with the Code field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SecurityType) GetCodeOk() (*string, bool) {
	if o == nil || isNil(o.Code) {
    return nil, false
	}
	return o.Code, true
}

// HasCode returns a boolean if a field has been set.
func (o *SecurityType) HasCode() bool {
	if o != nil && !isNil(o.Code) {
		return true
	}

	return false
}

// SetCode gets a reference to the given string and assigns it to the Code field.
func (o *SecurityType) SetCode(v string) {
	o.Code = &v
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *SecurityType) GetDescription() string {
	if o == nil || isNil(o.Description) {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SecurityType) GetDescriptionOk() (*string, bool) {
	if o == nil || isNil(o.Description) {
    return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *SecurityType) HasDescription() bool {
	if o != nil && !isNil(o.Description) {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *SecurityType) SetDescription(v string) {
	o.Description = &v
}

// GetIsSupported returns the IsSupported field value if set, zero value otherwise.
func (o *SecurityType) GetIsSupported() bool {
	if o == nil || isNil(o.IsSupported) {
		var ret bool
		return ret
	}
	return *o.IsSupported
}

// GetIsSupportedOk returns a tuple with the IsSupported field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SecurityType) GetIsSupportedOk() (*bool, bool) {
	if o == nil || isNil(o.IsSupported) {
    return nil, false
	}
	return o.IsSupported, true
}

// HasIsSupported returns a boolean if a field has been set.
func (o *SecurityType) HasIsSupported() bool {
	if o != nil && !isNil(o.IsSupported) {
		return true
	}

	return false
}

// SetIsSupported gets a reference to the given bool and assigns it to the IsSupported field.
func (o *SecurityType) SetIsSupported(v bool) {
	o.IsSupported = &v
}

func (o SecurityType) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.Code) {
		toSerialize["code"] = o.Code
	}
	if !isNil(o.Description) {
		toSerialize["description"] = o.Description
	}
	if !isNil(o.IsSupported) {
		toSerialize["is_supported"] = o.IsSupported
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *SecurityType) UnmarshalJSON(bytes []byte) (err error) {
	varSecurityType := _SecurityType{}

	if err = json.Unmarshal(bytes, &varSecurityType); err == nil {
		*o = SecurityType(varSecurityType)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "code")
		delete(additionalProperties, "description")
		delete(additionalProperties, "is_supported")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableSecurityType struct {
	value *SecurityType
	isSet bool
}

func (v NullableSecurityType) Get() *SecurityType {
	return v.value
}

func (v *NullableSecurityType) Set(val *SecurityType) {
	v.value = val
	v.isSet = true
}

func (v NullableSecurityType) IsSet() bool {
	return v.isSet
}

func (v *NullableSecurityType) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSecurityType(val *SecurityType) *NullableSecurityType {
	return &NullableSecurityType{value: val, isSet: true}
}

func (v NullableSecurityType) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSecurityType) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

