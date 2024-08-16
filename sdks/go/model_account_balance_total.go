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

// AccountBalanceTotal Total market value of this account (includes cash, equity, fixed income, etc). This value is directly obtained from the brokerage and should reflect the most accurate value of the account.
type AccountBalanceTotal struct {
	// Total value denominated in the currency of the `currency` field.
	Amount *float32 `json:"amount,omitempty"`
	// The ISO-4217 currency code for the amount.
	Currency *string `json:"currency,omitempty"`
}

// NewAccountBalanceTotal instantiates a new AccountBalanceTotal object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAccountBalanceTotal() *AccountBalanceTotal {
	this := AccountBalanceTotal{}
	return &this
}

// NewAccountBalanceTotalWithDefaults instantiates a new AccountBalanceTotal object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAccountBalanceTotalWithDefaults() *AccountBalanceTotal {
	this := AccountBalanceTotal{}
	return &this
}

// GetAmount returns the Amount field value if set, zero value otherwise.
func (o *AccountBalanceTotal) GetAmount() float32 {
	if o == nil || isNil(o.Amount) {
		var ret float32
		return ret
	}
	return *o.Amount
}

// GetAmountOk returns a tuple with the Amount field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountBalanceTotal) GetAmountOk() (*float32, bool) {
	if o == nil || isNil(o.Amount) {
    return nil, false
	}
	return o.Amount, true
}

// HasAmount returns a boolean if a field has been set.
func (o *AccountBalanceTotal) HasAmount() bool {
	if o != nil && !isNil(o.Amount) {
		return true
	}

	return false
}

// SetAmount gets a reference to the given float32 and assigns it to the Amount field.
func (o *AccountBalanceTotal) SetAmount(v float32) {
	o.Amount = &v
}

// GetCurrency returns the Currency field value if set, zero value otherwise.
func (o *AccountBalanceTotal) GetCurrency() string {
	if o == nil || isNil(o.Currency) {
		var ret string
		return ret
	}
	return *o.Currency
}

// GetCurrencyOk returns a tuple with the Currency field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountBalanceTotal) GetCurrencyOk() (*string, bool) {
	if o == nil || isNil(o.Currency) {
    return nil, false
	}
	return o.Currency, true
}

// HasCurrency returns a boolean if a field has been set.
func (o *AccountBalanceTotal) HasCurrency() bool {
	if o != nil && !isNil(o.Currency) {
		return true
	}

	return false
}

// SetCurrency gets a reference to the given string and assigns it to the Currency field.
func (o *AccountBalanceTotal) SetCurrency(v string) {
	o.Currency = &v
}

func (o AccountBalanceTotal) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Amount) {
		toSerialize["amount"] = o.Amount
	}
	if !isNil(o.Currency) {
		toSerialize["currency"] = o.Currency
	}
	return json.Marshal(toSerialize)
}

type NullableAccountBalanceTotal struct {
	value *AccountBalanceTotal
	isSet bool
}

func (v NullableAccountBalanceTotal) Get() *AccountBalanceTotal {
	return v.value
}

func (v *NullableAccountBalanceTotal) Set(val *AccountBalanceTotal) {
	v.value = val
	v.isSet = true
}

func (v NullableAccountBalanceTotal) IsSet() bool {
	return v.isSet
}

func (v *NullableAccountBalanceTotal) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAccountBalanceTotal(val *AccountBalanceTotal) *NullableAccountBalanceTotal {
	return &NullableAccountBalanceTotal{value: val, isSet: true}
}

func (v NullableAccountBalanceTotal) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAccountBalanceTotal) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


