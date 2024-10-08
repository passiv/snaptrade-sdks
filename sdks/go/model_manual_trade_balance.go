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

// ManualTradeBalance Estimated remaining balance of the account after the trade is executed.
type ManualTradeBalance struct {
	Account *AccountSimple `json:"account,omitempty"`
	Currency *Currency `json:"currency,omitempty"`
	// Estimated amount of cash remaining in the account after the trade. At the moment this is the same as `remaining_cash` under `trade_impacts`.
	Cash NullableFloat32 `json:"cash,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _ManualTradeBalance ManualTradeBalance

// NewManualTradeBalance instantiates a new ManualTradeBalance object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewManualTradeBalance() *ManualTradeBalance {
	this := ManualTradeBalance{}
	return &this
}

// NewManualTradeBalanceWithDefaults instantiates a new ManualTradeBalance object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewManualTradeBalanceWithDefaults() *ManualTradeBalance {
	this := ManualTradeBalance{}
	return &this
}

// GetAccount returns the Account field value if set, zero value otherwise.
func (o *ManualTradeBalance) GetAccount() AccountSimple {
	if o == nil || isNil(o.Account) {
		var ret AccountSimple
		return ret
	}
	return *o.Account
}

// GetAccountOk returns a tuple with the Account field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ManualTradeBalance) GetAccountOk() (*AccountSimple, bool) {
	if o == nil || isNil(o.Account) {
    return nil, false
	}
	return o.Account, true
}

// HasAccount returns a boolean if a field has been set.
func (o *ManualTradeBalance) HasAccount() bool {
	if o != nil && !isNil(o.Account) {
		return true
	}

	return false
}

// SetAccount gets a reference to the given AccountSimple and assigns it to the Account field.
func (o *ManualTradeBalance) SetAccount(v AccountSimple) {
	o.Account = &v
}

// GetCurrency returns the Currency field value if set, zero value otherwise.
func (o *ManualTradeBalance) GetCurrency() Currency {
	if o == nil || isNil(o.Currency) {
		var ret Currency
		return ret
	}
	return *o.Currency
}

// GetCurrencyOk returns a tuple with the Currency field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ManualTradeBalance) GetCurrencyOk() (*Currency, bool) {
	if o == nil || isNil(o.Currency) {
    return nil, false
	}
	return o.Currency, true
}

// HasCurrency returns a boolean if a field has been set.
func (o *ManualTradeBalance) HasCurrency() bool {
	if o != nil && !isNil(o.Currency) {
		return true
	}

	return false
}

// SetCurrency gets a reference to the given Currency and assigns it to the Currency field.
func (o *ManualTradeBalance) SetCurrency(v Currency) {
	o.Currency = &v
}

// GetCash returns the Cash field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ManualTradeBalance) GetCash() float32 {
	if o == nil || isNil(o.Cash.Get()) {
		var ret float32
		return ret
	}
	return *o.Cash.Get()
}

// GetCashOk returns a tuple with the Cash field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ManualTradeBalance) GetCashOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.Cash.Get(), o.Cash.IsSet()
}

// HasCash returns a boolean if a field has been set.
func (o *ManualTradeBalance) HasCash() bool {
	if o != nil && o.Cash.IsSet() {
		return true
	}

	return false
}

// SetCash gets a reference to the given NullableFloat32 and assigns it to the Cash field.
func (o *ManualTradeBalance) SetCash(v float32) {
	o.Cash.Set(&v)
}
// SetCashNil sets the value for Cash to be an explicit nil
func (o *ManualTradeBalance) SetCashNil() {
	o.Cash.Set(nil)
}

// UnsetCash ensures that no value is present for Cash, not even an explicit nil
func (o *ManualTradeBalance) UnsetCash() {
	o.Cash.Unset()
}

func (o ManualTradeBalance) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Account) {
		toSerialize["account"] = o.Account
	}
	if !isNil(o.Currency) {
		toSerialize["currency"] = o.Currency
	}
	if o.Cash.IsSet() {
		toSerialize["cash"] = o.Cash.Get()
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *ManualTradeBalance) UnmarshalJSON(bytes []byte) (err error) {
	varManualTradeBalance := _ManualTradeBalance{}

	if err = json.Unmarshal(bytes, &varManualTradeBalance); err == nil {
		*o = ManualTradeBalance(varManualTradeBalance)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "account")
		delete(additionalProperties, "currency")
		delete(additionalProperties, "cash")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableManualTradeBalance struct {
	value *ManualTradeBalance
	isSet bool
}

func (v NullableManualTradeBalance) Get() *ManualTradeBalance {
	return v.value
}

func (v *NullableManualTradeBalance) Set(val *ManualTradeBalance) {
	v.value = val
	v.isSet = true
}

func (v NullableManualTradeBalance) IsSet() bool {
	return v.isSet
}

func (v *NullableManualTradeBalance) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableManualTradeBalance(val *ManualTradeBalance) *NullableManualTradeBalance {
	return &NullableManualTradeBalance{value: val, isSet: true}
}

func (v NullableManualTradeBalance) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableManualTradeBalance) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


