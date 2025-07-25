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

// MlegPriceEffectStrict The desired price_effect for LIMIT and STOP_LOSS_LIMIT orders. Only required for certain brokerages like ETrade.
type MlegPriceEffectStrict string

// List of MlegPriceEffectStrict
const (
	MLEGPRICEEFFECTSTRICT_CREDIT MlegPriceEffectStrict = "CREDIT"
	MLEGPRICEEFFECTSTRICT_DEBIT MlegPriceEffectStrict = "DEBIT"
	MLEGPRICEEFFECTSTRICT_EVEN MlegPriceEffectStrict = "EVEN"
)

// All allowed values of MlegPriceEffectStrict enum
var AllowedMlegPriceEffectStrictEnumValues = []MlegPriceEffectStrict{
	"CREDIT",
	"DEBIT",
	"EVEN",
}

func (v *MlegPriceEffectStrict) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := MlegPriceEffectStrict(value)
	for _, existing := range AllowedMlegPriceEffectStrictEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid MlegPriceEffectStrict", value)
}

// NewMlegPriceEffectStrictFromValue returns a pointer to a valid MlegPriceEffectStrict
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewMlegPriceEffectStrictFromValue(v string) (*MlegPriceEffectStrict, error) {
	ev := MlegPriceEffectStrict(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for MlegPriceEffectStrict: valid values are %v", v, AllowedMlegPriceEffectStrictEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v MlegPriceEffectStrict) IsValid() bool {
	for _, existing := range AllowedMlegPriceEffectStrictEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to MlegPriceEffectStrict value
func (v MlegPriceEffectStrict) Ptr() *MlegPriceEffectStrict {
	return &v
}

type NullableMlegPriceEffectStrict struct {
	value *MlegPriceEffectStrict
	isSet bool
}

func (v NullableMlegPriceEffectStrict) Get() *MlegPriceEffectStrict {
	return v.value
}

func (v *NullableMlegPriceEffectStrict) Set(val *MlegPriceEffectStrict) {
	v.value = val
	v.isSet = true
}

func (v NullableMlegPriceEffectStrict) IsSet() bool {
	return v.isSet
}

func (v *NullableMlegPriceEffectStrict) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMlegPriceEffectStrict(val *MlegPriceEffectStrict) *NullableMlegPriceEffectStrict {
	return &NullableMlegPriceEffectStrict{value: val, isSet: true}
}

func (v NullableMlegPriceEffectStrict) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMlegPriceEffectStrict) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

