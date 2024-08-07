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

// SnapTradeHoldingsAccount SnapTradeUser Investment Account
type SnapTradeHoldingsAccount struct {
	Id *string `json:"id,omitempty"`
	BrokerageAuthorization *BrokerageAuthorization `json:"brokerage_authorization,omitempty"`
	PortfolioGroup *string `json:"portfolio_group,omitempty"`
	Name NullableString `json:"name,omitempty"`
	Number *string `json:"number,omitempty"`
	InstitutionName *string `json:"institution_name,omitempty"`
	SyncStatus *AccountSyncStatus `json:"sync_status,omitempty"`
	Meta map[string]interface{} `json:"meta,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _SnapTradeHoldingsAccount SnapTradeHoldingsAccount

// NewSnapTradeHoldingsAccount instantiates a new SnapTradeHoldingsAccount object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSnapTradeHoldingsAccount() *SnapTradeHoldingsAccount {
	this := SnapTradeHoldingsAccount{}
	return &this
}

// NewSnapTradeHoldingsAccountWithDefaults instantiates a new SnapTradeHoldingsAccount object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSnapTradeHoldingsAccountWithDefaults() *SnapTradeHoldingsAccount {
	this := SnapTradeHoldingsAccount{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *SnapTradeHoldingsAccount) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeHoldingsAccount) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *SnapTradeHoldingsAccount) SetId(v string) {
	o.Id = &v
}

// GetBrokerageAuthorization returns the BrokerageAuthorization field value if set, zero value otherwise.
func (o *SnapTradeHoldingsAccount) GetBrokerageAuthorization() BrokerageAuthorization {
	if o == nil || isNil(o.BrokerageAuthorization) {
		var ret BrokerageAuthorization
		return ret
	}
	return *o.BrokerageAuthorization
}

// GetBrokerageAuthorizationOk returns a tuple with the BrokerageAuthorization field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeHoldingsAccount) GetBrokerageAuthorizationOk() (*BrokerageAuthorization, bool) {
	if o == nil || isNil(o.BrokerageAuthorization) {
    return nil, false
	}
	return o.BrokerageAuthorization, true
}

// HasBrokerageAuthorization returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasBrokerageAuthorization() bool {
	if o != nil && !isNil(o.BrokerageAuthorization) {
		return true
	}

	return false
}

// SetBrokerageAuthorization gets a reference to the given BrokerageAuthorization and assigns it to the BrokerageAuthorization field.
func (o *SnapTradeHoldingsAccount) SetBrokerageAuthorization(v BrokerageAuthorization) {
	o.BrokerageAuthorization = &v
}

// GetPortfolioGroup returns the PortfolioGroup field value if set, zero value otherwise.
func (o *SnapTradeHoldingsAccount) GetPortfolioGroup() string {
	if o == nil || isNil(o.PortfolioGroup) {
		var ret string
		return ret
	}
	return *o.PortfolioGroup
}

// GetPortfolioGroupOk returns a tuple with the PortfolioGroup field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeHoldingsAccount) GetPortfolioGroupOk() (*string, bool) {
	if o == nil || isNil(o.PortfolioGroup) {
    return nil, false
	}
	return o.PortfolioGroup, true
}

// HasPortfolioGroup returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasPortfolioGroup() bool {
	if o != nil && !isNil(o.PortfolioGroup) {
		return true
	}

	return false
}

// SetPortfolioGroup gets a reference to the given string and assigns it to the PortfolioGroup field.
func (o *SnapTradeHoldingsAccount) SetPortfolioGroup(v string) {
	o.PortfolioGroup = &v
}

// GetName returns the Name field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SnapTradeHoldingsAccount) GetName() string {
	if o == nil || isNil(o.Name.Get()) {
		var ret string
		return ret
	}
	return *o.Name.Get()
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SnapTradeHoldingsAccount) GetNameOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Name.Get(), o.Name.IsSet()
}

// HasName returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasName() bool {
	if o != nil && o.Name.IsSet() {
		return true
	}

	return false
}

// SetName gets a reference to the given NullableString and assigns it to the Name field.
func (o *SnapTradeHoldingsAccount) SetName(v string) {
	o.Name.Set(&v)
}
// SetNameNil sets the value for Name to be an explicit nil
func (o *SnapTradeHoldingsAccount) SetNameNil() {
	o.Name.Set(nil)
}

// UnsetName ensures that no value is present for Name, not even an explicit nil
func (o *SnapTradeHoldingsAccount) UnsetName() {
	o.Name.Unset()
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *SnapTradeHoldingsAccount) GetNumber() string {
	if o == nil || isNil(o.Number) {
		var ret string
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeHoldingsAccount) GetNumberOk() (*string, bool) {
	if o == nil || isNil(o.Number) {
    return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasNumber() bool {
	if o != nil && !isNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given string and assigns it to the Number field.
func (o *SnapTradeHoldingsAccount) SetNumber(v string) {
	o.Number = &v
}

// GetInstitutionName returns the InstitutionName field value if set, zero value otherwise.
func (o *SnapTradeHoldingsAccount) GetInstitutionName() string {
	if o == nil || isNil(o.InstitutionName) {
		var ret string
		return ret
	}
	return *o.InstitutionName
}

// GetInstitutionNameOk returns a tuple with the InstitutionName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeHoldingsAccount) GetInstitutionNameOk() (*string, bool) {
	if o == nil || isNil(o.InstitutionName) {
    return nil, false
	}
	return o.InstitutionName, true
}

// HasInstitutionName returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasInstitutionName() bool {
	if o != nil && !isNil(o.InstitutionName) {
		return true
	}

	return false
}

// SetInstitutionName gets a reference to the given string and assigns it to the InstitutionName field.
func (o *SnapTradeHoldingsAccount) SetInstitutionName(v string) {
	o.InstitutionName = &v
}

// GetSyncStatus returns the SyncStatus field value if set, zero value otherwise.
func (o *SnapTradeHoldingsAccount) GetSyncStatus() AccountSyncStatus {
	if o == nil || isNil(o.SyncStatus) {
		var ret AccountSyncStatus
		return ret
	}
	return *o.SyncStatus
}

// GetSyncStatusOk returns a tuple with the SyncStatus field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeHoldingsAccount) GetSyncStatusOk() (*AccountSyncStatus, bool) {
	if o == nil || isNil(o.SyncStatus) {
    return nil, false
	}
	return o.SyncStatus, true
}

// HasSyncStatus returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasSyncStatus() bool {
	if o != nil && !isNil(o.SyncStatus) {
		return true
	}

	return false
}

// SetSyncStatus gets a reference to the given AccountSyncStatus and assigns it to the SyncStatus field.
func (o *SnapTradeHoldingsAccount) SetSyncStatus(v AccountSyncStatus) {
	o.SyncStatus = &v
}

// GetMeta returns the Meta field value if set, zero value otherwise.
func (o *SnapTradeHoldingsAccount) GetMeta() map[string]interface{} {
	if o == nil || isNil(o.Meta) {
		var ret map[string]interface{}
		return ret
	}
	return o.Meta
}

// GetMetaOk returns a tuple with the Meta field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SnapTradeHoldingsAccount) GetMetaOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Meta) {
    return map[string]interface{}{}, false
	}
	return o.Meta, true
}

// HasMeta returns a boolean if a field has been set.
func (o *SnapTradeHoldingsAccount) HasMeta() bool {
	if o != nil && !isNil(o.Meta) {
		return true
	}

	return false
}

// SetMeta gets a reference to the given map[string]interface{} and assigns it to the Meta field.
func (o *SnapTradeHoldingsAccount) SetMeta(v map[string]interface{}) {
	o.Meta = v
}

func (o SnapTradeHoldingsAccount) MarshalJSON() ([]byte, error) {
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
	if !isNil(o.SyncStatus) {
		toSerialize["sync_status"] = o.SyncStatus
	}
	if !isNil(o.Meta) {
		toSerialize["meta"] = o.Meta
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *SnapTradeHoldingsAccount) UnmarshalJSON(bytes []byte) (err error) {
	varSnapTradeHoldingsAccount := _SnapTradeHoldingsAccount{}

	if err = json.Unmarshal(bytes, &varSnapTradeHoldingsAccount); err == nil {
		*o = SnapTradeHoldingsAccount(varSnapTradeHoldingsAccount)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "brokerage_authorization")
		delete(additionalProperties, "portfolio_group")
		delete(additionalProperties, "name")
		delete(additionalProperties, "number")
		delete(additionalProperties, "institution_name")
		delete(additionalProperties, "sync_status")
		delete(additionalProperties, "meta")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableSnapTradeHoldingsAccount struct {
	value *SnapTradeHoldingsAccount
	isSet bool
}

func (v NullableSnapTradeHoldingsAccount) Get() *SnapTradeHoldingsAccount {
	return v.value
}

func (v *NullableSnapTradeHoldingsAccount) Set(val *SnapTradeHoldingsAccount) {
	v.value = val
	v.isSet = true
}

func (v NullableSnapTradeHoldingsAccount) IsSet() bool {
	return v.isSet
}

func (v *NullableSnapTradeHoldingsAccount) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSnapTradeHoldingsAccount(val *SnapTradeHoldingsAccount) *NullableSnapTradeHoldingsAccount {
	return &NullableSnapTradeHoldingsAccount{value: val, isSet: true}
}

func (v NullableSnapTradeHoldingsAccount) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSnapTradeHoldingsAccount) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


