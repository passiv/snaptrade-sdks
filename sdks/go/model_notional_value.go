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

// NotionalValue - Total notional amount for the order. Must be `null` if `units` is provided. Can only work with `Market` for `order_type` and `Day` for `time_in_force`. This is only available for certain brokerages. Please check the [integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=e7bbcbf9f272441593f93decde660687) for more information.
type NotionalValue struct {
	Float32 *float32
	String *string
}

// float32AsNotionalValue is a convenience function that returns float32 wrapped in NotionalValue
func Float32AsNotionalValue(v *float32) NotionalValue {
	return NotionalValue{
		Float32: v,
	}
}

// stringAsNotionalValue is a convenience function that returns string wrapped in NotionalValue
func StringAsNotionalValue(v *string) NotionalValue {
	return NotionalValue{
		String: v,
	}
}


// Unmarshal JSON data into one of the pointers in the struct
func (dst *NotionalValue) UnmarshalJSON(data []byte) error {
	var err error
	match := 0
	// try to unmarshal data into Float32
	err = newStrictDecoder(data).Decode(&dst.Float32)
	if err == nil {
		jsonFloat32, _ := json.Marshal(dst.Float32)
		if string(jsonFloat32) == "{}" { // empty struct
			dst.Float32 = nil
		} else {
			match++
		}
	} else {
		dst.Float32 = nil
	}

	// try to unmarshal data into String
	err = newStrictDecoder(data).Decode(&dst.String)
	if err == nil {
		jsonString, _ := json.Marshal(dst.String)
		if string(jsonString) == "{}" { // empty struct
			dst.String = nil
		} else {
			match++
		}
	} else {
		dst.String = nil
	}

	if match > 1 { // more than 1 match
		// reset to nil
		dst.Float32 = nil
		dst.String = nil

		return fmt.Errorf("data matches more than one schema in oneOf(NotionalValue)")
	} else if match == 1 {
		return nil // exactly one match
	} else { // no match
		return fmt.Errorf("data failed to match schemas in oneOf(NotionalValue)")
	}
}

// Marshal data from the first non-nil pointers in the struct to JSON
func (src NotionalValue) MarshalJSON() ([]byte, error) {
	if src.Float32 != nil {
		return json.Marshal(&src.Float32)
	}

	if src.String != nil {
		return json.Marshal(&src.String)
	}

	return nil, nil // no data in oneOf schemas
}

// Get the actual instance
func (obj *NotionalValue) GetActualInstance() (interface{}) {
	if obj == nil {
		return nil
	}
	if obj.Float32 != nil {
		return obj.Float32
	}

	if obj.String != nil {
		return obj.String
	}

	// all schemas are nil
	return nil
}

type NullableNotionalValue struct {
	value *NotionalValue
	isSet bool
}

func (v NullableNotionalValue) Get() *NotionalValue {
	return v.value
}

func (v *NullableNotionalValue) Set(val *NotionalValue) {
	v.value = val
	v.isSet = true
}

func (v NullableNotionalValue) IsSet() bool {
	return v.isSet
}

func (v *NullableNotionalValue) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableNotionalValue(val *NotionalValue) *NullableNotionalValue {
	return &NullableNotionalValue{value: val, isSet: true}
}

func (v NullableNotionalValue) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableNotionalValue) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


