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

// RedirectTokenandPin Response when register user is successful
type RedirectTokenandPin struct {
	Token *string `json:"token,omitempty"`
	Pin *string `json:"pin,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _RedirectTokenandPin RedirectTokenandPin

// NewRedirectTokenandPin instantiates a new RedirectTokenandPin object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRedirectTokenandPin() *RedirectTokenandPin {
	this := RedirectTokenandPin{}
	return &this
}

// NewRedirectTokenandPinWithDefaults instantiates a new RedirectTokenandPin object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRedirectTokenandPinWithDefaults() *RedirectTokenandPin {
	this := RedirectTokenandPin{}
	return &this
}

// GetToken returns the Token field value if set, zero value otherwise.
func (o *RedirectTokenandPin) GetToken() string {
	if o == nil || isNil(o.Token) {
		var ret string
		return ret
	}
	return *o.Token
}

// GetTokenOk returns a tuple with the Token field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RedirectTokenandPin) GetTokenOk() (*string, bool) {
	if o == nil || isNil(o.Token) {
    return nil, false
	}
	return o.Token, true
}

// HasToken returns a boolean if a field has been set.
func (o *RedirectTokenandPin) HasToken() bool {
	if o != nil && !isNil(o.Token) {
		return true
	}

	return false
}

// SetToken gets a reference to the given string and assigns it to the Token field.
func (o *RedirectTokenandPin) SetToken(v string) {
	o.Token = &v
}

// GetPin returns the Pin field value if set, zero value otherwise.
func (o *RedirectTokenandPin) GetPin() string {
	if o == nil || isNil(o.Pin) {
		var ret string
		return ret
	}
	return *o.Pin
}

// GetPinOk returns a tuple with the Pin field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RedirectTokenandPin) GetPinOk() (*string, bool) {
	if o == nil || isNil(o.Pin) {
    return nil, false
	}
	return o.Pin, true
}

// HasPin returns a boolean if a field has been set.
func (o *RedirectTokenandPin) HasPin() bool {
	if o != nil && !isNil(o.Pin) {
		return true
	}

	return false
}

// SetPin gets a reference to the given string and assigns it to the Pin field.
func (o *RedirectTokenandPin) SetPin(v string) {
	o.Pin = &v
}

func (o RedirectTokenandPin) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Token) {
		toSerialize["token"] = o.Token
	}
	if !isNil(o.Pin) {
		toSerialize["pin"] = o.Pin
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *RedirectTokenandPin) UnmarshalJSON(bytes []byte) (err error) {
	varRedirectTokenandPin := _RedirectTokenandPin{}

	if err = json.Unmarshal(bytes, &varRedirectTokenandPin); err == nil {
		*o = RedirectTokenandPin(varRedirectTokenandPin)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "token")
		delete(additionalProperties, "pin")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableRedirectTokenandPin struct {
	value *RedirectTokenandPin
	isSet bool
}

func (v NullableRedirectTokenandPin) Get() *RedirectTokenandPin {
	return v.value
}

func (v *NullableRedirectTokenandPin) Set(val *RedirectTokenandPin) {
	v.value = val
	v.isSet = true
}

func (v NullableRedirectTokenandPin) IsSet() bool {
	return v.isSet
}

func (v *NullableRedirectTokenandPin) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRedirectTokenandPin(val *RedirectTokenandPin) *NullableRedirectTokenandPin {
	return &NullableRedirectTokenandPin{value: val, isSet: true}
}

func (v NullableRedirectTokenandPin) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRedirectTokenandPin) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

