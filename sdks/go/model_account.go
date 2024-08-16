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
	"time"
)

// Account A single brokerage account at a financial institution.
type Account struct {
	// Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated. If you want a stable identifier for the account, use the `number` field.
	Id *string `json:"id,omitempty"`
	// Unique identifier for the connection (brokerage authorization). This is the UUID used to reference the connection in SnapTrade.
	BrokerageAuthorization *string `json:"brokerage_authorization,omitempty"`
	// Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it.
	// Deprecated
	PortfolioGroup *string `json:"portfolio_group,omitempty"`
	// A display name for the account. Either assigned by the user or by the financial institution itself. For certain institutions, SnapTrade appends the institution name to the account name for clarity.
	Name NullableString `json:"name,omitempty"`
	// The account number assigned by the financial institution.
	Number *string `json:"number,omitempty"`
	// The name of the financial institution that holds the account.
	InstitutionName *string `json:"institution_name,omitempty"`
	// Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the financial institution.
	CreatedDate *time.Time `json:"created_date,omitempty"`
	// Additional information about the account, such as account type, status, etc. This information is specific to the financial institution and there's no standard format for this data. Please use at your own risk.
	// Deprecated
	Meta map[string]interface{} `json:"meta,omitempty"`
	// This field is deprecated.
	// Deprecated
	CashRestrictions []string `json:"cash_restrictions,omitempty"`
	SyncStatus *AccountSyncStatus `json:"sync_status,omitempty"`
	Balance *AccountBalance `json:"balance,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _Account Account

// NewAccount instantiates a new Account object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAccount() *Account {
	this := Account{}
	return &this
}

// NewAccountWithDefaults instantiates a new Account object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAccountWithDefaults() *Account {
	this := Account{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *Account) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Account) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *Account) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *Account) SetId(v string) {
	o.Id = &v
}

// GetBrokerageAuthorization returns the BrokerageAuthorization field value if set, zero value otherwise.
func (o *Account) GetBrokerageAuthorization() string {
	if o == nil || isNil(o.BrokerageAuthorization) {
		var ret string
		return ret
	}
	return *o.BrokerageAuthorization
}

// GetBrokerageAuthorizationOk returns a tuple with the BrokerageAuthorization field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Account) GetBrokerageAuthorizationOk() (*string, bool) {
	if o == nil || isNil(o.BrokerageAuthorization) {
    return nil, false
	}
	return o.BrokerageAuthorization, true
}

// HasBrokerageAuthorization returns a boolean if a field has been set.
func (o *Account) HasBrokerageAuthorization() bool {
	if o != nil && !isNil(o.BrokerageAuthorization) {
		return true
	}

	return false
}

// SetBrokerageAuthorization gets a reference to the given string and assigns it to the BrokerageAuthorization field.
func (o *Account) SetBrokerageAuthorization(v string) {
	o.BrokerageAuthorization = &v
}

// GetPortfolioGroup returns the PortfolioGroup field value if set, zero value otherwise.
// Deprecated
func (o *Account) GetPortfolioGroup() string {
	if o == nil || isNil(o.PortfolioGroup) {
		var ret string
		return ret
	}
	return *o.PortfolioGroup
}

// GetPortfolioGroupOk returns a tuple with the PortfolioGroup field value if set, nil otherwise
// and a boolean to check if the value has been set.
// Deprecated
func (o *Account) GetPortfolioGroupOk() (*string, bool) {
	if o == nil || isNil(o.PortfolioGroup) {
    return nil, false
	}
	return o.PortfolioGroup, true
}

// HasPortfolioGroup returns a boolean if a field has been set.
func (o *Account) HasPortfolioGroup() bool {
	if o != nil && !isNil(o.PortfolioGroup) {
		return true
	}

	return false
}

// SetPortfolioGroup gets a reference to the given string and assigns it to the PortfolioGroup field.
// Deprecated
func (o *Account) SetPortfolioGroup(v string) {
	o.PortfolioGroup = &v
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *Account) GetName() string {
	if o == nil || isNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *Account) GetNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *Account) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *Account) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *Account) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *Account) UnsetName() {
	o.Name.Unset()
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *Account) GetNumber() string {
	if o == nil || isNil(o.Number) {
		var ret string
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Account) GetNumberOk() (*string, bool) {
	if o == nil || isNil(o.Number) {
    return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *Account) HasNumber() bool {
	if o != nil && !isNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given string and assigns it to the Number field.
func (o *Account) SetNumber(v string) {
	o.Number = &v
}

// GetInstitutionName returns the InstitutionName field value if set, zero value otherwise.
func (o *Account) GetInstitutionName() string {
	if o == nil || isNil(o.InstitutionName) {
		var ret string
		return ret
	}
	return *o.InstitutionName
}

// GetInstitutionNameOk returns a tuple with the InstitutionName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Account) GetInstitutionNameOk() (*string, bool) {
	if o == nil || isNil(o.InstitutionName) {
    return nil, false
	}
	return o.InstitutionName, true
}

// HasInstitutionName returns a boolean if a field has been set.
func (o *Account) HasInstitutionName() bool {
	if o != nil && !isNil(o.InstitutionName) {
		return true
	}

	return false
}

// SetInstitutionName gets a reference to the given string and assigns it to the InstitutionName field.
func (o *Account) SetInstitutionName(v string) {
	o.InstitutionName = &v
}

// GetCreatedDate returns the CreatedDate field value if set, zero value otherwise.
func (o *Account) GetCreatedDate() time.Time {
	if o == nil || isNil(o.CreatedDate) {
		var ret time.Time
		return ret
	}
	return *o.CreatedDate
}

// GetCreatedDateOk returns a tuple with the CreatedDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Account) GetCreatedDateOk() (*time.Time, bool) {
	if o == nil || isNil(o.CreatedDate) {
    return nil, false
	}
	return o.CreatedDate, true
}

// HasCreatedDate returns a boolean if a field has been set.
func (o *Account) HasCreatedDate() bool {
	if o != nil && !isNil(o.CreatedDate) {
		return true
	}

	return false
}

// SetCreatedDate gets a reference to the given time.Time and assigns it to the CreatedDate field.
func (o *Account) SetCreatedDate(v time.Time) {
	o.CreatedDate = &v
}

// GetMeta returns the Meta field value if set, zero value otherwise.
// Deprecated
func (o *Account) GetMeta() map[string]interface{} {
	if o == nil || isNil(o.Meta) {
		var ret map[string]interface{}
		return ret
	}
	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value if set, nil otherwise
// and a boolean to check if the value has been set.
// Deprecated
func (o *Account) GetMetaOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Meta) {
    return map[string]interface{}{}, false
	}
	return o.Meta, true
}

// HasMeta returns a boolean if a field has been set.
func (o *Account) HasMeta() bool {
	if o != nil && !isNil(o.Meta) {
		return true
	}

	return false
}

// SetMeta gets a reference to the given map[string]interface{} and assigns it to the Meta field.
// Deprecated
func (o *Account) SetMeta(v map[string]interface{}) {
	o.Meta = v
}

// GetCashRestrictions returns the CashRestrictions field value if set, zero value otherwise.
// Deprecated
func (o *Account) GetCashRestrictions() []string {
	if o == nil || isNil(o.CashRestrictions) {
		var ret []string
		return ret
	}
	return o.CashRestrictions
}

// GetCashRestrictionsOk returns a tuple with the CashRestrictions field value if set, nil otherwise
// and a boolean to check if the value has been set.
// Deprecated
func (o *Account) GetCashRestrictionsOk() ([]string, bool) {
	if o == nil || isNil(o.CashRestrictions) {
    return nil, false
	}
	return o.CashRestrictions, true
}

// HasCashRestrictions returns a boolean if a field has been set.
func (o *Account) HasCashRestrictions() bool {
	if o != nil && !isNil(o.CashRestrictions) {
		return true
	}

	return false
}

// SetCashRestrictions gets a reference to the given []string and assigns it to the CashRestrictions field.
// Deprecated
func (o *Account) SetCashRestrictions(v []string) {
	o.CashRestrictions = v
}

// GetSyncStatus returns the SyncStatus field value if set, zero value otherwise.
func (o *Account) GetSyncStatus() AccountSyncStatus {
	if o == nil || isNil(o.SyncStatus) {
		var ret AccountSyncStatus
		return ret
	}
	return *o.SyncStatus
}

// GetSyncStatusOk returns a tuple with the SyncStatus field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Account) GetSyncStatusOk() (*AccountSyncStatus, bool) {
	if o == nil || isNil(o.SyncStatus) {
    return nil, false
	}
	return o.SyncStatus, true
}

// HasSyncStatus returns a boolean if a field has been set.
func (o *Account) HasSyncStatus() bool {
	if o != nil && !isNil(o.SyncStatus) {
		return true
	}

	return false
}

// SetSyncStatus gets a reference to the given AccountSyncStatus and assigns it to the SyncStatus field.
func (o *Account) SetSyncStatus(v AccountSyncStatus) {
	o.SyncStatus = &v
}

// GetBalance returns the Balance field value if set, zero value otherwise.
func (o *Account) GetBalance() AccountBalance {
	if o == nil || isNil(o.Balance) {
		var ret AccountBalance
		return ret
	}
	return *o.Balance
}

// GetBalanceOk returns a tuple with the Balance field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Account) GetBalanceOk() (*AccountBalance, bool) {
	if o == nil || isNil(o.Balance) {
    return nil, false
	}
	return o.Balance, true
}

// HasBalance returns a boolean if a field has been set.
func (o *Account) HasBalance() bool {
	if o != nil && !isNil(o.Balance) {
		return true
	}

	return false
}

// SetBalance gets a reference to the given AccountBalance and assigns it to the Balance field.
func (o *Account) SetBalance(v AccountBalance) {
	o.Balance = &v
}

func (o Account) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.BrokerageAuthorization) {
		toSerialize["brokerage_authorization"] = o.BrokerageAuthorization
	}
	if !isNil(o.PortfolioGroup) {
		toSerialize["portfolio_group"] = o.PortfolioGroup
	}
	if o.Name.IsSet() {
		toSerialize["name"] = o.Name.Get()
	}
	if !isNil(o.Number) {
		toSerialize["number"] = o.Number
	}
	if !isNil(o.InstitutionName) {
		toSerialize["institution_name"] = o.InstitutionName
	}
	if !isNil(o.CreatedDate) {
		toSerialize["created_date"] = o.CreatedDate
	}
	if !isNil(o.Meta) {
		toSerialize["meta"] = o.Meta
	}
	if !isNil(o.CashRestrictions) {
		toSerialize["cash_restrictions"] = o.CashRestrictions
	}
	if !isNil(o.SyncStatus) {
		toSerialize["sync_status"] = o.SyncStatus
	}
	if !isNil(o.Balance) {
		toSerialize["balance"] = o.Balance
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *Account) UnmarshalJSON(bytes []byte) (err error) {
	varAccount := _Account{}

	if err = json.Unmarshal(bytes, &varAccount); err == nil {
		*o = Account(varAccount)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "brokerage_authorization")
		delete(additionalProperties, "portfolio_group")
		delete(additionalProperties, "name")
		delete(additionalProperties, "number")
		delete(additionalProperties, "institution_name")
		delete(additionalProperties, "created_date")
		delete(additionalProperties, "meta")
		delete(additionalProperties, "cash_restrictions")
		delete(additionalProperties, "sync_status")
		delete(additionalProperties, "balance")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableAccount struct {
	value *Account
	isSet bool
}

func (v NullableAccount) Get() *Account {
	return v.value
}

func (v *NullableAccount) Set(val *Account) {
	v.value = val
	v.isSet = true
}

func (v NullableAccount) IsSet() bool {
	return v.isSet
}

func (v *NullableAccount) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAccount(val *Account) *NullableAccount {
	return &NullableAccount{value: val, isSet: true}
}

func (v NullableAccount) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAccount) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


