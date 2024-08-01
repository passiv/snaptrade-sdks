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

// AccountHoldingsAccount Account Holdings with Account ID
type AccountHoldingsAccount struct {
	Account *SnapTradeHoldingsAccountAccountId `json:"account,omitempty"`
	Balances []Balance `json:"balances,omitempty"`
	Positions []Position `json:"positions,omitempty"`
	OptionPositions []OptionsPosition `json:"option_positions,omitempty"`
	Orders []AccountOrderRecord `json:"orders,omitempty"`
	TotalValue *SnapTradeHoldingsTotalValue `json:"total_value,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _AccountHoldingsAccount AccountHoldingsAccount

// NewAccountHoldingsAccount instantiates a new AccountHoldingsAccount object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAccountHoldingsAccount() *AccountHoldingsAccount {
	this := AccountHoldingsAccount{}
	return &this
}

// NewAccountHoldingsAccountWithDefaults instantiates a new AccountHoldingsAccount object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAccountHoldingsAccountWithDefaults() *AccountHoldingsAccount {
	this := AccountHoldingsAccount{}
	return &this
}

// GetAccount returns the Account field value if set, zero value otherwise.
func (o *AccountHoldingsAccount) GetAccount() SnapTradeHoldingsAccountAccountId {
	if o == nil || isNil(o.Account) {
		var ret SnapTradeHoldingsAccountAccountId
		return ret
	}
	return *o.Account
}

// GetAccountOk returns a tuple with the Account field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountHoldingsAccount) GetAccountOk() (*SnapTradeHoldingsAccountAccountId, bool) {
	if o == nil || isNil(o.Account) {
    return nil, false
	}
	return o.Account, true
}

// HasAccount returns a boolean if a field has been set.
func (o *AccountHoldingsAccount) HasAccount() bool {
	if o != nil && !isNil(o.Account) {
		return true
	}

	return false
}

// SetAccount gets a reference to the given SnapTradeHoldingsAccountAccountId and assigns it to the Account field.
func (o *AccountHoldingsAccount) SetAccount(v SnapTradeHoldingsAccountAccountId) {
	o.Account = &v
}

// GetBalances returns the Balances field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountHoldingsAccount) GetBalances() []Balance {
	if o == nil {
		var ret []Balance
		return ret
	}
	return o.Balances
}

// GetBalancesOk returns a tuple with the Balances field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountHoldingsAccount) GetBalancesOk() ([]Balance, bool) {
	if o == nil || isNil(o.Balances) {
    return nil, false
	}
	return o.Balances, true
}

// HasBalances returns a boolean if a field has been set.
func (o *AccountHoldingsAccount) HasBalances() bool {
	if o != nil && isNil(o.Balances) {
		return true
	}

	return false
}

// SetBalances gets a reference to the given []Balance and assigns it to the Balances field.
func (o *AccountHoldingsAccount) SetBalances(v []Balance) {
	o.Balances = v
}

// GetPositions returns the Positions field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountHoldingsAccount) GetPositions() []Position {
	if o == nil {
		var ret []Position
		return ret
	}
	return o.Positions
}

// GetPositionsOk returns a tuple with the Positions field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountHoldingsAccount) GetPositionsOk() ([]Position, bool) {
	if o == nil || isNil(o.Positions) {
    return nil, false
	}
	return o.Positions, true
}

// HasPositions returns a boolean if a field has been set.
func (o *AccountHoldingsAccount) HasPositions() bool {
	if o != nil && isNil(o.Positions) {
		return true
	}

	return false
}

// SetPositions gets a reference to the given []Position and assigns it to the Positions field.
func (o *AccountHoldingsAccount) SetPositions(v []Position) {
	o.Positions = v
}

// GetOptionPositions returns the OptionPositions field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountHoldingsAccount) GetOptionPositions() []OptionsPosition {
	if o == nil {
		var ret []OptionsPosition
		return ret
	}
	return o.OptionPositions
}

// GetOptionPositionsOk returns a tuple with the OptionPositions field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountHoldingsAccount) GetOptionPositionsOk() ([]OptionsPosition, bool) {
	if o == nil || isNil(o.OptionPositions) {
    return nil, false
	}
	return o.OptionPositions, true
}

// HasOptionPositions returns a boolean if a field has been set.
func (o *AccountHoldingsAccount) HasOptionPositions() bool {
	if o != nil && isNil(o.OptionPositions) {
		return true
	}

	return false
}

// SetOptionPositions gets a reference to the given []OptionsPosition and assigns it to the OptionPositions field.
func (o *AccountHoldingsAccount) SetOptionPositions(v []OptionsPosition) {
	o.OptionPositions = v
}

// GetOrders returns the Orders field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountHoldingsAccount) GetOrders() []AccountOrderRecord {
	if o == nil {
		var ret []AccountOrderRecord
		return ret
	}
	return o.Orders
}

// GetOrdersOk returns a tuple with the Orders field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountHoldingsAccount) GetOrdersOk() ([]AccountOrderRecord, bool) {
	if o == nil || isNil(o.Orders) {
    return nil, false
	}
	return o.Orders, true
}

// HasOrders returns a boolean if a field has been set.
func (o *AccountHoldingsAccount) HasOrders() bool {
	if o != nil && isNil(o.Orders) {
		return true
	}

	return false
}

// SetOrders gets a reference to the given []AccountOrderRecord and assigns it to the Orders field.
func (o *AccountHoldingsAccount) SetOrders(v []AccountOrderRecord) {
	o.Orders = v
}

// GetTotalValue returns the TotalValue field value if set, zero value otherwise.
func (o *AccountHoldingsAccount) GetTotalValue() SnapTradeHoldingsTotalValue {
	if o == nil || isNil(o.TotalValue) {
		var ret SnapTradeHoldingsTotalValue
		return ret
	}
	return *o.TotalValue
}

// GetTotalValueOk returns a tuple with the TotalValue field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountHoldingsAccount) GetTotalValueOk() (*SnapTradeHoldingsTotalValue, bool) {
	if o == nil || isNil(o.TotalValue) {
    return nil, false
	}
	return o.TotalValue, true
}

// HasTotalValue returns a boolean if a field has been set.
func (o *AccountHoldingsAccount) HasTotalValue() bool {
	if o != nil && !isNil(o.TotalValue) {
		return true
	}

	return false
}

// SetTotalValue gets a reference to the given SnapTradeHoldingsTotalValue and assigns it to the TotalValue field.
func (o *AccountHoldingsAccount) SetTotalValue(v SnapTradeHoldingsTotalValue) {
	o.TotalValue = &v
}

func (o AccountHoldingsAccount) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Account) {
		toSerialize["account"] = o.Account
	}
	if o.Balances != nil {
		toSerialize["balances"] = o.Balances
	}
	if o.Positions != nil {
		toSerialize["positions"] = o.Positions
	}
	if o.OptionPositions != nil {
		toSerialize["option_positions"] = o.OptionPositions
	}
	if o.Orders != nil {
		toSerialize["orders"] = o.Orders
	}
	if !isNil(o.TotalValue) {
		toSerialize["total_value"] = o.TotalValue
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *AccountHoldingsAccount) UnmarshalJSON(bytes []byte) (err error) {
	varAccountHoldingsAccount := _AccountHoldingsAccount{}

	if err = json.Unmarshal(bytes, &varAccountHoldingsAccount); err == nil {
		*o = AccountHoldingsAccount(varAccountHoldingsAccount)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "account")
		delete(additionalProperties, "balances")
		delete(additionalProperties, "positions")
		delete(additionalProperties, "option_positions")
		delete(additionalProperties, "orders")
		delete(additionalProperties, "total_value")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableAccountHoldingsAccount struct {
	value *AccountHoldingsAccount
	isSet bool
}

func (v NullableAccountHoldingsAccount) Get() *AccountHoldingsAccount {
	return v.value
}

func (v *NullableAccountHoldingsAccount) Set(val *AccountHoldingsAccount) {
	v.value = val
	v.isSet = true
}

func (v NullableAccountHoldingsAccount) IsSet() bool {
	return v.isSet
}

func (v *NullableAccountHoldingsAccount) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAccountHoldingsAccount(val *AccountHoldingsAccount) *NullableAccountHoldingsAccount {
	return &NullableAccountHoldingsAccount{value: val, isSet: true}
}

func (v NullableAccountHoldingsAccount) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAccountHoldingsAccount) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


