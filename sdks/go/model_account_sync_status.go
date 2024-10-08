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

// AccountSyncStatus Contains status update for the account sync process between SnapTrade and the brokerage.
type AccountSyncStatus struct {
	Transactions *TransactionsStatus `json:"transactions,omitempty"`
	Holdings *HoldingsStatus `json:"holdings,omitempty"`
}

// NewAccountSyncStatus instantiates a new AccountSyncStatus object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAccountSyncStatus() *AccountSyncStatus {
	this := AccountSyncStatus{}
	return &this
}

// NewAccountSyncStatusWithDefaults instantiates a new AccountSyncStatus object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAccountSyncStatusWithDefaults() *AccountSyncStatus {
	this := AccountSyncStatus{}
	return &this
}

// GetTransactions returns the Transactions field value if set, zero value otherwise.
func (o *AccountSyncStatus) GetTransactions() TransactionsStatus {
	if o == nil || isNil(o.Transactions) {
		var ret TransactionsStatus
		return ret
	}
	return *o.Transactions
}

// GetTransactionsOk returns a tuple with the Transactions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountSyncStatus) GetTransactionsOk() (*TransactionsStatus, bool) {
	if o == nil || isNil(o.Transactions) {
    return nil, false
	}
	return o.Transactions, true
}

// HasTransactions returns a boolean if a field has been set.
func (o *AccountSyncStatus) HasTransactions() bool {
	if o != nil && !isNil(o.Transactions) {
		return true
	}

	return false
}

// SetTransactions gets a reference to the given TransactionsStatus and assigns it to the Transactions field.
func (o *AccountSyncStatus) SetTransactions(v TransactionsStatus) {
	o.Transactions = &v
}

// GetHoldings returns the Holdings field value if set, zero value otherwise.
func (o *AccountSyncStatus) GetHoldings() HoldingsStatus {
	if o == nil || isNil(o.Holdings) {
		var ret HoldingsStatus
		return ret
	}
	return *o.Holdings
}

// GetHoldingsOk returns a tuple with the Holdings field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountSyncStatus) GetHoldingsOk() (*HoldingsStatus, bool) {
	if o == nil || isNil(o.Holdings) {
    return nil, false
	}
	return o.Holdings, true
}

// HasHoldings returns a boolean if a field has been set.
func (o *AccountSyncStatus) HasHoldings() bool {
	if o != nil && !isNil(o.Holdings) {
		return true
	}

	return false
}

// SetHoldings gets a reference to the given HoldingsStatus and assigns it to the Holdings field.
func (o *AccountSyncStatus) SetHoldings(v HoldingsStatus) {
	o.Holdings = &v
}

func (o AccountSyncStatus) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Transactions) {
		toSerialize["transactions"] = o.Transactions
	}
	if !isNil(o.Holdings) {
		toSerialize["holdings"] = o.Holdings
	}
	return json.Marshal(toSerialize)
}

type NullableAccountSyncStatus struct {
	value *AccountSyncStatus
	isSet bool
}

func (v NullableAccountSyncStatus) Get() *AccountSyncStatus {
	return v.value
}

func (v *NullableAccountSyncStatus) Set(val *AccountSyncStatus) {
	v.value = val
	v.isSet = true
}

func (v NullableAccountSyncStatus) IsSet() bool {
	return v.isSet
}

func (v *NullableAccountSyncStatus) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAccountSyncStatus(val *AccountSyncStatus) *NullableAccountSyncStatus {
	return &NullableAccountSyncStatus{value: val, isSet: true}
}

func (v NullableAccountSyncStatus) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAccountSyncStatus) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


