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

// SnapTradeRegisterUserRequestBody Data required to register a user via SnapTrade Partner
type SnapTradeRegisterUserRequestBody struct {
	// SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
	UserId string `json:"userId"`
}

// NewSnapTradeRegisterUserRequestBody instantiates a new SnapTradeRegisterUserRequestBody object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSnapTradeRegisterUserRequestBody(userId string) *SnapTradeRegisterUserRequestBody {
	this := SnapTradeRegisterUserRequestBody{}
	this.UserId = userId
	return &this
}

// NewSnapTradeRegisterUserRequestBodyWithDefaults instantiates a new SnapTradeRegisterUserRequestBody object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSnapTradeRegisterUserRequestBodyWithDefaults() *SnapTradeRegisterUserRequestBody {
	this := SnapTradeRegisterUserRequestBody{}
	return &this
}

// GetUserId returns the UserId field value
func (o *SnapTradeRegisterUserRequestBody) GetUserId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.UserId
}

// GetUserIdOk returns a tuple with the UserId field value
// and a boolean to check if the value has been set.
func (o *SnapTradeRegisterUserRequestBody) GetUserIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.UserId, true
}

// SetUserId sets field value
func (o *SnapTradeRegisterUserRequestBody) SetUserId(v string) {
	o.UserId = v
}

func (o SnapTradeRegisterUserRequestBody) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["userId"] = o.UserId
	}
	return json.Marshal(toSerialize)
}

type NullableSnapTradeRegisterUserRequestBody struct {
	value *SnapTradeRegisterUserRequestBody
	isSet bool
}

func (v NullableSnapTradeRegisterUserRequestBody) Get() *SnapTradeRegisterUserRequestBody {
	return v.value
}

func (v *NullableSnapTradeRegisterUserRequestBody) Set(val *SnapTradeRegisterUserRequestBody) {
	v.value = val
	v.isSet = true
}

func (v NullableSnapTradeRegisterUserRequestBody) IsSet() bool {
	return v.isSet
}

func (v *NullableSnapTradeRegisterUserRequestBody) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSnapTradeRegisterUserRequestBody(val *SnapTradeRegisterUserRequestBody) *NullableSnapTradeRegisterUserRequestBody {
	return &NullableSnapTradeRegisterUserRequestBody{value: val, isSet: true}
}

func (v NullableSnapTradeRegisterUserRequestBody) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSnapTradeRegisterUserRequestBody) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


