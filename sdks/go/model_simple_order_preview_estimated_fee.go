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

// SimpleOrderPreviewEstimatedFee The estimated order fee.
type SimpleOrderPreviewEstimatedFee struct {
	// Symbol to identify a cryptocurrency or fiat currency on a crypto exchange. Fiat currencies symbols are ISO-4217 codes.
	Currency string `json:"currency"`
	Amount float64 `json:"amount"`
	AdditionalProperties map[string]interface{}
}

type _SimpleOrderPreviewEstimatedFee SimpleOrderPreviewEstimatedFee

// NewSimpleOrderPreviewEstimatedFee instantiates a new SimpleOrderPreviewEstimatedFee object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSimpleOrderPreviewEstimatedFee(currency string, amount float64) *SimpleOrderPreviewEstimatedFee {
	this := SimpleOrderPreviewEstimatedFee{}
	this.Currency = currency
	this.Amount = amount
	return &this
}

// NewSimpleOrderPreviewEstimatedFeeWithDefaults instantiates a new SimpleOrderPreviewEstimatedFee object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSimpleOrderPreviewEstimatedFeeWithDefaults() *SimpleOrderPreviewEstimatedFee {
	this := SimpleOrderPreviewEstimatedFee{}
	return &this
}

// GetCurrency returns the Currency field value
func (o *SimpleOrderPreviewEstimatedFee) GetCurrency() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Currency
}

// GetCurrencyOk returns a tuple with the Currency field value
// and a boolean to check if the value has been set.
func (o *SimpleOrderPreviewEstimatedFee) GetCurrencyOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Currency, true
}

// SetCurrency sets field value
func (o *SimpleOrderPreviewEstimatedFee) SetCurrency(v string) {
	o.Currency = v
}

// GetAmount returns the Amount field value
func (o *SimpleOrderPreviewEstimatedFee) GetAmount() float64 {
	if o == nil {
		var ret float64
		return ret
	}

	return o.Amount
}

// GetAmountOk returns a tuple with the Amount field value
// and a boolean to check if the value has been set.
func (o *SimpleOrderPreviewEstimatedFee) GetAmountOk() (*float64, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Amount, true
}

// SetAmount sets field value
func (o *SimpleOrderPreviewEstimatedFee) SetAmount(v float64) {
	o.Amount = v
}

func (o SimpleOrderPreviewEstimatedFee) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["currency"] = o.Currency
	}
	if true {
		toSerialize["amount"] = o.Amount
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *SimpleOrderPreviewEstimatedFee) UnmarshalJSON(bytes []byte) (err error) {
	varSimpleOrderPreviewEstimatedFee := _SimpleOrderPreviewEstimatedFee{}

	if err = json.Unmarshal(bytes, &varSimpleOrderPreviewEstimatedFee); err == nil {
		*o = SimpleOrderPreviewEstimatedFee(varSimpleOrderPreviewEstimatedFee)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "currency")
		delete(additionalProperties, "amount")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableSimpleOrderPreviewEstimatedFee struct {
	value *SimpleOrderPreviewEstimatedFee
	isSet bool
}

func (v NullableSimpleOrderPreviewEstimatedFee) Get() *SimpleOrderPreviewEstimatedFee {
	return v.value
}

func (v *NullableSimpleOrderPreviewEstimatedFee) Set(val *SimpleOrderPreviewEstimatedFee) {
	v.value = val
	v.isSet = true
}

func (v NullableSimpleOrderPreviewEstimatedFee) IsSet() bool {
	return v.isSet
}

func (v *NullableSimpleOrderPreviewEstimatedFee) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSimpleOrderPreviewEstimatedFee(val *SimpleOrderPreviewEstimatedFee) *NullableSimpleOrderPreviewEstimatedFee {
	return &NullableSimpleOrderPreviewEstimatedFee{value: val, isSet: true}
}

func (v NullableSimpleOrderPreviewEstimatedFee) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSimpleOrderPreviewEstimatedFee) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


