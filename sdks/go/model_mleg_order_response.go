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

// MlegOrderResponse struct for MlegOrderResponse
type MlegOrderResponse struct {
	// Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
	BrokerageOrderId string `json:"brokerage_order_id"`
	Orders []AccountOrderRecord `json:"orders"`
	AdditionalProperties map[string]interface{}
}

type _MlegOrderResponse MlegOrderResponse

// NewMlegOrderResponse instantiates a new MlegOrderResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMlegOrderResponse(brokerageOrderId string, orders []AccountOrderRecord) *MlegOrderResponse {
	this := MlegOrderResponse{}
	this.BrokerageOrderId = brokerageOrderId
	this.Orders = orders
	return &this
}

// NewMlegOrderResponseWithDefaults instantiates a new MlegOrderResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMlegOrderResponseWithDefaults() *MlegOrderResponse {
	this := MlegOrderResponse{}
	return &this
}

// GetBrokerageOrderId returns the BrokerageOrderId field value
func (o *MlegOrderResponse) GetBrokerageOrderId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.BrokerageOrderId
}

// GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field value
// and a boolean to check if the value has been set.
func (o *MlegOrderResponse) GetBrokerageOrderIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.BrokerageOrderId, true
}

// SetBrokerageOrderId sets field value
func (o *MlegOrderResponse) SetBrokerageOrderId(v string) {
	o.BrokerageOrderId = v
}

// GetOrders returns the Orders field value
func (o *MlegOrderResponse) GetOrders() []AccountOrderRecord {
	if o == nil {
		var ret []AccountOrderRecord
		return ret
	}

	return o.Orders
}

// GetOrdersOk returns a tuple with the Orders field value
// and a boolean to check if the value has been set.
func (o *MlegOrderResponse) GetOrdersOk() ([]AccountOrderRecord, bool) {
	if o == nil {
    return nil, false
	}
	return o.Orders, true
}

// SetOrders sets field value
func (o *MlegOrderResponse) SetOrders(v []AccountOrderRecord) {
	o.Orders = v
}

func (o MlegOrderResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["brokerage_order_id"] = o.BrokerageOrderId
	}
	if true {
		toSerialize["orders"] = o.Orders
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *MlegOrderResponse) UnmarshalJSON(bytes []byte) (err error) {
	varMlegOrderResponse := _MlegOrderResponse{}

	if err = json.Unmarshal(bytes, &varMlegOrderResponse); err == nil {
		*o = MlegOrderResponse(varMlegOrderResponse)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "brokerage_order_id")
		delete(additionalProperties, "orders")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableMlegOrderResponse struct {
	value *MlegOrderResponse
	isSet bool
}

func (v NullableMlegOrderResponse) Get() *MlegOrderResponse {
	return v.value
}

func (v *NullableMlegOrderResponse) Set(val *MlegOrderResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableMlegOrderResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableMlegOrderResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMlegOrderResponse(val *MlegOrderResponse) *NullableMlegOrderResponse {
	return &NullableMlegOrderResponse{value: val, isSet: true}
}

func (v NullableMlegOrderResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMlegOrderResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


