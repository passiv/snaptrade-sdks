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
	"fmt"
)

// OrderTypeStrict The type of order to place.  - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
type OrderTypeStrict string

// List of OrderTypeStrict
const (
	ORDERTYPESTRICT_LIMIT OrderTypeStrict = "Limit"
	ORDERTYPESTRICT_MARKET OrderTypeStrict = "Market"
	ORDERTYPESTRICT_STOP_LIMIT OrderTypeStrict = "StopLimit"
	ORDERTYPESTRICT_STOP OrderTypeStrict = "Stop"
)

// All allowed values of OrderTypeStrict enum
var AllowedOrderTypeStrictEnumValues = []OrderTypeStrict{
	"Limit",
	"Market",
	"StopLimit",
	"Stop",
}

func (v *OrderTypeStrict) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := OrderTypeStrict(value)
	for _, existing := range AllowedOrderTypeStrictEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid OrderTypeStrict", value)
}

// NewOrderTypeStrictFromValue returns a pointer to a valid OrderTypeStrict
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewOrderTypeStrictFromValue(v string) (*OrderTypeStrict, error) {
	ev := OrderTypeStrict(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for OrderTypeStrict: valid values are %v", v, AllowedOrderTypeStrictEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v OrderTypeStrict) IsValid() bool {
	for _, existing := range AllowedOrderTypeStrictEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to OrderTypeStrict value
func (v OrderTypeStrict) Ptr() *OrderTypeStrict {
	return &v
}

type NullableOrderTypeStrict struct {
	value *OrderTypeStrict
	isSet bool
}

func (v NullableOrderTypeStrict) Get() *OrderTypeStrict {
	return v.value
}

func (v *NullableOrderTypeStrict) Set(val *OrderTypeStrict) {
	v.value = val
	v.isSet = true
}

func (v NullableOrderTypeStrict) IsSet() bool {
	return v.isSet
}

func (v *NullableOrderTypeStrict) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableOrderTypeStrict(val *OrderTypeStrict) *NullableOrderTypeStrict {
	return &NullableOrderTypeStrict{value: val, isSet: true}
}

func (v NullableOrderTypeStrict) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableOrderTypeStrict) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

