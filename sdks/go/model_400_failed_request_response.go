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

// Model400FailedRequestResponse Example for failed request response
type Model400FailedRequestResponse struct {
	DefaultDetail interface{} `json:"default_detail,omitempty"`
	DefaultCode interface{} `json:"default_code,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _Model400FailedRequestResponse Model400FailedRequestResponse

// NewModel400FailedRequestResponse instantiates a new Model400FailedRequestResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewModel400FailedRequestResponse() *Model400FailedRequestResponse {
	this := Model400FailedRequestResponse{}
	return &this
}

// NewModel400FailedRequestResponseWithDefaults instantiates a new Model400FailedRequestResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewModel400FailedRequestResponseWithDefaults() *Model400FailedRequestResponse {
	this := Model400FailedRequestResponse{}
	return &this
}

// GetDefaultDetail returns the DefaultDetail field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Model400FailedRequestResponse) GetDefaultDetail() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.DefaultDetail
}

// GetDefaultDetailOk returns a tuple with the DefaultDetail field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Model400FailedRequestResponse) GetDefaultDetailOk() (*interface{}, bool) {
	if o == nil || isNil(o.DefaultDetail) {
    return nil, false
	}
	return &o.DefaultDetail, true
}

// HasDefaultDetail returns a boolean if a field has been set.
func (o *Model400FailedRequestResponse) HasDefaultDetail() bool {
	if o != nil && isNil(o.DefaultDetail) {
		return true
	}

	return false
}

// SetDefaultDetail gets a reference to the given interface{} and assigns it to the DefaultDetail field.
func (o *Model400FailedRequestResponse) SetDefaultDetail(v interface{}) {
	o.DefaultDetail = v
}

// GetDefaultCode returns the DefaultCode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Model400FailedRequestResponse) GetDefaultCode() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.DefaultCode
}

// GetDefaultCodeOk returns a tuple with the DefaultCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Model400FailedRequestResponse) GetDefaultCodeOk() (*interface{}, bool) {
	if o == nil || isNil(o.DefaultCode) {
    return nil, false
	}
	return &o.DefaultCode, true
}

// HasDefaultCode returns a boolean if a field has been set.
func (o *Model400FailedRequestResponse) HasDefaultCode() bool {
	if o != nil && isNil(o.DefaultCode) {
		return true
	}

	return false
}

// SetDefaultCode gets a reference to the given interface{} and assigns it to the DefaultCode field.
func (o *Model400FailedRequestResponse) SetDefaultCode(v interface{}) {
	o.DefaultCode = v
}

func (o Model400FailedRequestResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.DefaultDetail != nil {
		toSerialize["default_detail"] = o.DefaultDetail
	}
	if o.DefaultCode != nil {
		toSerialize["default_code"] = o.DefaultCode
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *Model400FailedRequestResponse) UnmarshalJSON(bytes []byte) (err error) {
	varModel400FailedRequestResponse := _Model400FailedRequestResponse{}

	if err = json.Unmarshal(bytes, &varModel400FailedRequestResponse); err == nil {
		*o = Model400FailedRequestResponse(varModel400FailedRequestResponse)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "default_detail")
		delete(additionalProperties, "default_code")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableModel400FailedRequestResponse struct {
	value *Model400FailedRequestResponse
	isSet bool
}

func (v NullableModel400FailedRequestResponse) Get() *Model400FailedRequestResponse {
	return v.value
}

func (v *NullableModel400FailedRequestResponse) Set(val *Model400FailedRequestResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableModel400FailedRequestResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableModel400FailedRequestResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableModel400FailedRequestResponse(val *Model400FailedRequestResponse) *NullableModel400FailedRequestResponse {
	return &NullableModel400FailedRequestResponse{value: val, isSet: true}
}

func (v NullableModel400FailedRequestResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableModel400FailedRequestResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


