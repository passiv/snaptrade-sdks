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

// AccountBalance Contains balance related information for the account.
type AccountBalance struct {
	Total NullableAccountBalanceTotal `json:"total,omitempty"`
}

// NewAccountBalance instantiates a new AccountBalance object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAccountBalance() *AccountBalance {
	this := AccountBalance{}
	return &this
}

// NewAccountBalanceWithDefaults instantiates a new AccountBalance object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAccountBalanceWithDefaults() *AccountBalance {
	this := AccountBalance{}
	return &this
}

// GetTotal returns the Total field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountBalance) GetTotal() AccountBalanceTotal {
	if o == nil || isNil(o.Total.Get()) {
		var ret AccountBalanceTotal
		return ret
	}
	return *o.Total.Get()
}

// GetTotalOk returns a tuple with the Total field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountBalance) GetTotalOk() (*AccountBalanceTotal, bool) {
	if o == nil {
    return nil, false
	}
	return o.Total.Get(), o.Total.IsSet()
}

// HasTotal returns a boolean if a field has been set.
func (o *AccountBalance) HasTotal() bool {
	if o != nil && o.Total.IsSet() {
		return true
	}

	return false
}

// SetTotal gets a reference to the given NullableAccountBalanceTotal and assigns it to the Total field.
func (o *AccountBalance) SetTotal(v AccountBalanceTotal) {
	o.Total.Set(&v)
}
// SetTotalNil sets the value for Total to be an explicit nil
func (o *AccountBalance) SetTotalNil() {
	o.Total.Set(nil)
}

// UnsetTotal ensures that no value is present for Total, not even an explicit nil
func (o *AccountBalance) UnsetTotal() {
	o.Total.Unset()
}

func (o AccountBalance) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Total.IsSet() {
		toSerialize["total"] = o.Total.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableAccountBalance struct {
	value *AccountBalance
	isSet bool
}

func (v NullableAccountBalance) Get() *AccountBalance {
	return v.value
}

func (v *NullableAccountBalance) Set(val *AccountBalance) {
	v.value = val
	v.isSet = true
}

func (v NullableAccountBalance) IsSet() bool {
	return v.isSet
}

func (v *NullableAccountBalance) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAccountBalance(val *AccountBalance) *NullableAccountBalance {
	return &NullableAccountBalance{value: val, isSet: true}
}

func (v NullableAccountBalance) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAccountBalance) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


