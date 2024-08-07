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

// Model500UnexpectedExceptionResponse Example for a response that failed for unexpected reasons
type Model500UnexpectedExceptionResponse struct {
	Detail interface{} `json:"detail,omitempty"`
	StatusCode interface{} `json:"status_code,omitempty"`
	Code interface{} `json:"code,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _Model500UnexpectedExceptionResponse Model500UnexpectedExceptionResponse

// NewModel500UnexpectedExceptionResponse instantiates a new Model500UnexpectedExceptionResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewModel500UnexpectedExceptionResponse() *Model500UnexpectedExceptionResponse {
	this := Model500UnexpectedExceptionResponse{}
	return &this
}

// NewModel500UnexpectedExceptionResponseWithDefaults instantiates a new Model500UnexpectedExceptionResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewModel500UnexpectedExceptionResponseWithDefaults() *Model500UnexpectedExceptionResponse {
	this := Model500UnexpectedExceptionResponse{}
	return &this
}

// GetDetail returns the Detail field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Model500UnexpectedExceptionResponse) GetDetail() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.Detail
}

// GetDetailOk returns a tuple with the Detail field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Model500UnexpectedExceptionResponse) GetDetailOk() (*interface{}, bool) {
	if o == nil || isNil(o.Detail) {
    return nil, false
	}
	return &o.Detail, true
}

// HasDetail returns a boolean if a field has been set.
func (o *Model500UnexpectedExceptionResponse) HasDetail() bool {
	if o != nil && isNil(o.Detail) {
		return true
	}

	return false
}

// SetDetail gets a reference to the given interface{} and assigns it to the Detail field.
func (o *Model500UnexpectedExceptionResponse) SetDetail(v interface{}) {
	o.Detail = v
}

// GetStatusCode returns the StatusCode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Model500UnexpectedExceptionResponse) GetStatusCode() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.StatusCode
}

// GetStatusCodeOk returns a tuple with the StatusCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Model500UnexpectedExceptionResponse) GetStatusCodeOk() (*interface{}, bool) {
	if o == nil || isNil(o.StatusCode) {
    return nil, false
	}
	return &o.StatusCode, true
}

// HasStatusCode returns a boolean if a field has been set.
func (o *Model500UnexpectedExceptionResponse) HasStatusCode() bool {
	if o != nil && isNil(o.StatusCode) {
		return true
	}

	return false
}

// SetStatusCode gets a reference to the given interface{} and assigns it to the StatusCode field.
func (o *Model500UnexpectedExceptionResponse) SetStatusCode(v interface{}) {
	o.StatusCode = v
}

// GetCode returns the Code field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Model500UnexpectedExceptionResponse) GetCode() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.Code
}

// GetCodeOk returns a tuple with the Code field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Model500UnexpectedExceptionResponse) GetCodeOk() (*interface{}, bool) {
	if o == nil || isNil(o.Code) {
    return nil, false
	}
	return &o.Code, true
}

// HasCode returns a boolean if a field has been set.
func (o *Model500UnexpectedExceptionResponse) HasCode() bool {
	if o != nil && isNil(o.Code) {
		return true
	}

	return false
}

// SetCode gets a reference to the given interface{} and assigns it to the Code field.
func (o *Model500UnexpectedExceptionResponse) SetCode(v interface{}) {
	o.Code = v
}

func (o Model500UnexpectedExceptionResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Detail != nil {
		toSerialize["detail"] = o.Detail
	}
	if o.StatusCode != nil {
		toSerialize["status_code"] = o.StatusCode
	}
	if o.Code != nil {
		toSerialize["code"] = o.Code
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *Model500UnexpectedExceptionResponse) UnmarshalJSON(bytes []byte) (err error) {
	varModel500UnexpectedExceptionResponse := _Model500UnexpectedExceptionResponse{}

	if err = json.Unmarshal(bytes, &varModel500UnexpectedExceptionResponse); err == nil {
		*o = Model500UnexpectedExceptionResponse(varModel500UnexpectedExceptionResponse)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "detail")
		delete(additionalProperties, "status_code")
		delete(additionalProperties, "code")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableModel500UnexpectedExceptionResponse struct {
	value *Model500UnexpectedExceptionResponse
	isSet bool
}

func (v NullableModel500UnexpectedExceptionResponse) Get() *Model500UnexpectedExceptionResponse {
	return v.value
}

func (v *NullableModel500UnexpectedExceptionResponse) Set(val *Model500UnexpectedExceptionResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableModel500UnexpectedExceptionResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableModel500UnexpectedExceptionResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableModel500UnexpectedExceptionResponse(val *Model500UnexpectedExceptionResponse) *NullableModel500UnexpectedExceptionResponse {
	return &NullableModel500UnexpectedExceptionResponse{value: val, isSet: true}
}

func (v NullableModel500UnexpectedExceptionResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableModel500UnexpectedExceptionResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


