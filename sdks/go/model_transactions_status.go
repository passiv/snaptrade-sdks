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

// TransactionsStatus Status of account transaction sync. SnapTrade syncs transactions from the brokerage under the following conditions: 1. Initial connection - SnapTrade syncs all transactions from the brokerage account as far back as the brokerage allows. Check [our integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=6fab8012ade6441fa0c6d9af9c55ce3a) for details on how far back we sync for each brokerage. 2. Daily sync - Once a day SnapTrade syncs new transactions from the brokerage. 3. Manual sync - You can retrigger an incremental sync of transactions with the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 
type TransactionsStatus struct {
	// Indicates if the initial sync of transactions has been completed. For accounts with a large number of transactions, the initial sync may take a while to complete.
	InitialSyncCompleted *bool `json:"initial_sync_completed,omitempty"`
	// All transactions up to this date have been successfully synced. Please note that this is not the date of the last transaction, nor the last time SnapTrade attempted to sync transactions.
	LastSuccessfulSync NullableString `json:"last_successful_sync,omitempty"`
	// The date of the first transaction in the account known to SnapTrade. It's possible that the account has transactions before this date, but they are not known to SnapTrade.
	FirstTransactionDate *string `json:"first_transaction_date,omitempty"`
}

// NewTransactionsStatus instantiates a new TransactionsStatus object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTransactionsStatus() *TransactionsStatus {
	this := TransactionsStatus{}
	return &this
}

// NewTransactionsStatusWithDefaults instantiates a new TransactionsStatus object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTransactionsStatusWithDefaults() *TransactionsStatus {
	this := TransactionsStatus{}
	return &this
}

// GetInitialSyncCompleted returns the InitialSyncCompleted field value if set, zero value otherwise.
func (o *TransactionsStatus) GetInitialSyncCompleted() bool {
	if o == nil || isNil(o.InitialSyncCompleted) {
		var ret bool
		return ret
	}
	return *o.InitialSyncCompleted
}

// GetInitialSyncCompletedOk returns a tuple with the InitialSyncCompleted field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TransactionsStatus) GetInitialSyncCompletedOk() (*bool, bool) {
	if o == nil || isNil(o.InitialSyncCompleted) {
    return nil, false
	}
	return o.InitialSyncCompleted, true
}

// HasInitialSyncCompleted returns a boolean if a field has been set.
func (o *TransactionsStatus) HasInitialSyncCompleted() bool {
	if o != nil && !isNil(o.InitialSyncCompleted) {
		return true
	}

	return false
}

// SetInitialSyncCompleted gets a reference to the given bool and assigns it to the InitialSyncCompleted field.
func (o *TransactionsStatus) SetInitialSyncCompleted(v bool) {
	o.InitialSyncCompleted = &v
}

// GetLastSuccessfulSync returns the LastSuccessfulSync field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *TransactionsStatus) GetLastSuccessfulSync() string {
	if o == nil || isNil(o.LastSuccessfulSync.Get()) {
		var ret string
		return ret
	}
	return *o.LastSuccessfulSync.Get()
}

// GetLastSuccessfulSyncOk returns a tuple with the LastSuccessfulSync field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *TransactionsStatus) GetLastSuccessfulSyncOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.LastSuccessfulSync.Get(), o.LastSuccessfulSync.IsSet()
}

// HasLastSuccessfulSync returns a boolean if a field has been set.
func (o *TransactionsStatus) HasLastSuccessfulSync() bool {
	if o != nil && o.LastSuccessfulSync.IsSet() {
		return true
	}

	return false
}

// SetLastSuccessfulSync gets a reference to the given NullableString and assigns it to the LastSuccessfulSync field.
func (o *TransactionsStatus) SetLastSuccessfulSync(v string) {
	o.LastSuccessfulSync.Set(&v)
}
// SetLastSuccessfulSyncNil sets the value for LastSuccessfulSync to be an explicit nil
func (o *TransactionsStatus) SetLastSuccessfulSyncNil() {
	o.LastSuccessfulSync.Set(nil)
}

// UnsetLastSuccessfulSync ensures that no value is present for LastSuccessfulSync, not even an explicit nil
func (o *TransactionsStatus) UnsetLastSuccessfulSync() {
	o.LastSuccessfulSync.Unset()
}

// GetFirstTransactionDate returns the FirstTransactionDate field value if set, zero value otherwise.
func (o *TransactionsStatus) GetFirstTransactionDate() string {
	if o == nil || isNil(o.FirstTransactionDate) {
		var ret string
		return ret
	}
	return *o.FirstTransactionDate
}

// GetFirstTransactionDateOk returns a tuple with the FirstTransactionDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TransactionsStatus) GetFirstTransactionDateOk() (*string, bool) {
	if o == nil || isNil(o.FirstTransactionDate) {
    return nil, false
	}
	return o.FirstTransactionDate, true
}

// HasFirstTransactionDate returns a boolean if a field has been set.
func (o *TransactionsStatus) HasFirstTransactionDate() bool {
	if o != nil && !isNil(o.FirstTransactionDate) {
		return true
	}

	return false
}

// SetFirstTransactionDate gets a reference to the given string and assigns it to the FirstTransactionDate field.
func (o *TransactionsStatus) SetFirstTransactionDate(v string) {
	o.FirstTransactionDate = &v
}

func (o TransactionsStatus) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.InitialSyncCompleted) {
		toSerialize["initial_sync_completed"] = o.InitialSyncCompleted
	}
	if o.LastSuccessfulSync.IsSet() {
		toSerialize["last_successful_sync"] = o.LastSuccessfulSync.Get()
	}
	if !isNil(o.FirstTransactionDate) {
		toSerialize["first_transaction_date"] = o.FirstTransactionDate
	}
	return json.Marshal(toSerialize)
}

type NullableTransactionsStatus struct {
	value *TransactionsStatus
	isSet bool
}

func (v NullableTransactionsStatus) Get() *TransactionsStatus {
	return v.value
}

func (v *NullableTransactionsStatus) Set(val *TransactionsStatus) {
	v.value = val
	v.isSet = true
}

func (v NullableTransactionsStatus) IsSet() bool {
	return v.isSet
}

func (v *NullableTransactionsStatus) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTransactionsStatus(val *TransactionsStatus) *NullableTransactionsStatus {
	return &NullableTransactionsStatus{value: val, isSet: true}
}

func (v NullableTransactionsStatus) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTransactionsStatus) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


