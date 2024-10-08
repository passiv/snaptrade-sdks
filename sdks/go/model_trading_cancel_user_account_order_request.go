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

// TradingCancelUserAccountOrderRequest struct for TradingCancelUserAccountOrderRequest
type TradingCancelUserAccountOrderRequest struct {
	// Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
	BrokerageOrderId *string `json:"brokerage_order_id,omitempty"`
}

// NewTradingCancelUserAccountOrderRequest instantiates a new TradingCancelUserAccountOrderRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTradingCancelUserAccountOrderRequest() *TradingCancelUserAccountOrderRequest {
	this := TradingCancelUserAccountOrderRequest{}
	return &this
}

// NewTradingCancelUserAccountOrderRequestWithDefaults instantiates a new TradingCancelUserAccountOrderRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTradingCancelUserAccountOrderRequestWithDefaults() *TradingCancelUserAccountOrderRequest {
	this := TradingCancelUserAccountOrderRequest{}
	return &this
}

// GetBrokerageOrderId returns the BrokerageOrderId field value if set, zero value otherwise.
func (o *TradingCancelUserAccountOrderRequest) GetBrokerageOrderId() string {
	if o == nil || isNil(o.BrokerageOrderId) {
		var ret string
		return ret
	}
	return *o.BrokerageOrderId
}

// GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TradingCancelUserAccountOrderRequest) GetBrokerageOrderIdOk() (*string, bool) {
	if o == nil || isNil(o.BrokerageOrderId) {
    return nil, false
	}
	return o.BrokerageOrderId, true
}

// HasBrokerageOrderId returns a boolean if a field has been set.
func (o *TradingCancelUserAccountOrderRequest) HasBrokerageOrderId() bool {
	if o != nil && !isNil(o.BrokerageOrderId) {
		return true
	}

	return false
}

// SetBrokerageOrderId gets a reference to the given string and assigns it to the BrokerageOrderId field.
func (o *TradingCancelUserAccountOrderRequest) SetBrokerageOrderId(v string) {
	o.BrokerageOrderId = &v
}

func (o TradingCancelUserAccountOrderRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.BrokerageOrderId) {
		toSerialize["brokerage_order_id"] = o.BrokerageOrderId
	}
	return json.Marshal(toSerialize)
}

type NullableTradingCancelUserAccountOrderRequest struct {
	value *TradingCancelUserAccountOrderRequest
	isSet bool
}

func (v NullableTradingCancelUserAccountOrderRequest) Get() *TradingCancelUserAccountOrderRequest {
	return v.value
}

func (v *NullableTradingCancelUserAccountOrderRequest) Set(val *TradingCancelUserAccountOrderRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableTradingCancelUserAccountOrderRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableTradingCancelUserAccountOrderRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTradingCancelUserAccountOrderRequest(val *TradingCancelUserAccountOrderRequest) *NullableTradingCancelUserAccountOrderRequest {
	return &NullableTradingCancelUserAccountOrderRequest{value: val, isSet: true}
}

func (v NullableTradingCancelUserAccountOrderRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTradingCancelUserAccountOrderRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


