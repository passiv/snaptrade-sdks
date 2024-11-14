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

// RecentOrdersResponse List of orders executed within the last 24 hours
type RecentOrdersResponse struct {
	// List of orders executed in the last 24 hours
	Orders []AccountOrderRecord `json:"orders,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _RecentOrdersResponse RecentOrdersResponse

// NewRecentOrdersResponse instantiates a new RecentOrdersResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRecentOrdersResponse() *RecentOrdersResponse {
	this := RecentOrdersResponse{}
	return &this
}

// NewRecentOrdersResponseWithDefaults instantiates a new RecentOrdersResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRecentOrdersResponseWithDefaults() *RecentOrdersResponse {
	this := RecentOrdersResponse{}
	return &this
}

// GetOrders returns the Orders field value if set, zero value otherwise.
func (o *RecentOrdersResponse) GetOrders() []AccountOrderRecord {
	if o == nil || isNil(o.Orders) {
		var ret []AccountOrderRecord
		return ret
	}
	return o.Orders
}

// GetOrdersOk returns a tuple with the Orders field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *RecentOrdersResponse) GetOrdersOk() ([]AccountOrderRecord, bool) {
	if o == nil || isNil(o.Orders) {
    return nil, false
	}
	return o.Orders, true
}

// HasOrders returns a boolean if a field has been set.
func (o *RecentOrdersResponse) HasOrders() bool {
	if o != nil && !isNil(o.Orders) {
		return true
	}

	return false
}

// SetOrders gets a reference to the given []AccountOrderRecord and assigns it to the Orders field.
func (o *RecentOrdersResponse) SetOrders(v []AccountOrderRecord) {
	o.Orders = v
}

func (o RecentOrdersResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Orders) {
		toSerialize["orders"] = o.Orders
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *RecentOrdersResponse) UnmarshalJSON(bytes []byte) (err error) {
	varRecentOrdersResponse := _RecentOrdersResponse{}

	if err = json.Unmarshal(bytes, &varRecentOrdersResponse); err == nil {
		*o = RecentOrdersResponse(varRecentOrdersResponse)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "orders")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableRecentOrdersResponse struct {
	value *RecentOrdersResponse
	isSet bool
}

func (v NullableRecentOrdersResponse) Get() *RecentOrdersResponse {
	return v.value
}

func (v *NullableRecentOrdersResponse) Set(val *RecentOrdersResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableRecentOrdersResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableRecentOrdersResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRecentOrdersResponse(val *RecentOrdersResponse) *NullableRecentOrdersResponse {
	return &NullableRecentOrdersResponse{value: val, isSet: true}
}

func (v NullableRecentOrdersResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRecentOrdersResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

