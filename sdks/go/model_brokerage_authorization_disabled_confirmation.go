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

// BrokerageAuthorizationDisabledConfirmation Confirmation that the connection has been disabled.
type BrokerageAuthorizationDisabledConfirmation struct {
	// Connection disabled confirmation
	Detail *string `json:"detail,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _BrokerageAuthorizationDisabledConfirmation BrokerageAuthorizationDisabledConfirmation

// NewBrokerageAuthorizationDisabledConfirmation instantiates a new BrokerageAuthorizationDisabledConfirmation object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewBrokerageAuthorizationDisabledConfirmation() *BrokerageAuthorizationDisabledConfirmation {
	this := BrokerageAuthorizationDisabledConfirmation{}
	return &this
}

// NewBrokerageAuthorizationDisabledConfirmationWithDefaults instantiates a new BrokerageAuthorizationDisabledConfirmation object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewBrokerageAuthorizationDisabledConfirmationWithDefaults() *BrokerageAuthorizationDisabledConfirmation {
	this := BrokerageAuthorizationDisabledConfirmation{}
	return &this
}

// GetDetail returns the Detail field value if set, zero value otherwise.
func (o *BrokerageAuthorizationDisabledConfirmation) GetDetail() string {
	if o == nil || isNil(o.Detail) {
		var ret string
		return ret
	}
	return *o.Detail
}

// GetDetailOk returns a tuple with the Detail field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BrokerageAuthorizationDisabledConfirmation) GetDetailOk() (*string, bool) {
	if o == nil || isNil(o.Detail) {
    return nil, false
	}
	return o.Detail, true
}

// HasDetail returns a boolean if a field has been set.
func (o *BrokerageAuthorizationDisabledConfirmation) HasDetail() bool {
	if o != nil && !isNil(o.Detail) {
		return true
	}

	return false
}

// SetDetail gets a reference to the given string and assigns it to the Detail field.
func (o *BrokerageAuthorizationDisabledConfirmation) SetDetail(v string) {
	o.Detail = &v
}

func (o BrokerageAuthorizationDisabledConfirmation) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Detail) {
		toSerialize["detail"] = o.Detail
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *BrokerageAuthorizationDisabledConfirmation) UnmarshalJSON(bytes []byte) (err error) {
	varBrokerageAuthorizationDisabledConfirmation := _BrokerageAuthorizationDisabledConfirmation{}

	if err = json.Unmarshal(bytes, &varBrokerageAuthorizationDisabledConfirmation); err == nil {
		*o = BrokerageAuthorizationDisabledConfirmation(varBrokerageAuthorizationDisabledConfirmation)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "detail")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableBrokerageAuthorizationDisabledConfirmation struct {
	value *BrokerageAuthorizationDisabledConfirmation
	isSet bool
}

func (v NullableBrokerageAuthorizationDisabledConfirmation) Get() *BrokerageAuthorizationDisabledConfirmation {
	return v.value
}

func (v *NullableBrokerageAuthorizationDisabledConfirmation) Set(val *BrokerageAuthorizationDisabledConfirmation) {
	v.value = val
	v.isSet = true
}

func (v NullableBrokerageAuthorizationDisabledConfirmation) IsSet() bool {
	return v.isSet
}

func (v *NullableBrokerageAuthorizationDisabledConfirmation) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableBrokerageAuthorizationDisabledConfirmation(val *BrokerageAuthorizationDisabledConfirmation) *NullableBrokerageAuthorizationDisabledConfirmation {
	return &NullableBrokerageAuthorizationDisabledConfirmation{value: val, isSet: true}
}

func (v NullableBrokerageAuthorizationDisabledConfirmation) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableBrokerageAuthorizationDisabledConfirmation) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


