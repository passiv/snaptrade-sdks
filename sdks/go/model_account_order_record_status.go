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

// AccountOrderRecordStatus Indicates the status of an order. SnapTrade does a best effort to map brokerage statuses to statuses in this enum.
type AccountOrderRecordStatus string

// List of AccountOrderRecordStatus
const (
	ACCOUNTORDERRECORDSTATUS_NONE AccountOrderRecordStatus = "NONE"
	ACCOUNTORDERRECORDSTATUS_PENDING AccountOrderRecordStatus = "PENDING"
	ACCOUNTORDERRECORDSTATUS_ACCEPTED AccountOrderRecordStatus = "ACCEPTED"
	ACCOUNTORDERRECORDSTATUS_FAILED AccountOrderRecordStatus = "FAILED"
	ACCOUNTORDERRECORDSTATUS_REJECTED AccountOrderRecordStatus = "REJECTED"
	ACCOUNTORDERRECORDSTATUS_CANCELED AccountOrderRecordStatus = "CANCELED"
	ACCOUNTORDERRECORDSTATUS_PARTIAL_CANCELED AccountOrderRecordStatus = "PARTIAL_CANCELED"
	ACCOUNTORDERRECORDSTATUS_CANCEL_PENDING AccountOrderRecordStatus = "CANCEL_PENDING"
	ACCOUNTORDERRECORDSTATUS_EXECUTED AccountOrderRecordStatus = "EXECUTED"
	ACCOUNTORDERRECORDSTATUS_PARTIAL AccountOrderRecordStatus = "PARTIAL"
	ACCOUNTORDERRECORDSTATUS_REPLACE_PENDING AccountOrderRecordStatus = "REPLACE_PENDING"
	ACCOUNTORDERRECORDSTATUS_REPLACED AccountOrderRecordStatus = "REPLACED"
	ACCOUNTORDERRECORDSTATUS_STOPPED AccountOrderRecordStatus = "STOPPED"
	ACCOUNTORDERRECORDSTATUS_SUSPENDED AccountOrderRecordStatus = "SUSPENDED"
	ACCOUNTORDERRECORDSTATUS_EXPIRED AccountOrderRecordStatus = "EXPIRED"
	ACCOUNTORDERRECORDSTATUS_QUEUED AccountOrderRecordStatus = "QUEUED"
	ACCOUNTORDERRECORDSTATUS_TRIGGERED AccountOrderRecordStatus = "TRIGGERED"
	ACCOUNTORDERRECORDSTATUS_ACTIVATED AccountOrderRecordStatus = "ACTIVATED"
	ACCOUNTORDERRECORDSTATUS_PENDING_RISK_REVIEW AccountOrderRecordStatus = "PENDING_RISK_REVIEW"
	ACCOUNTORDERRECORDSTATUS_CONTINGENT_ORDER AccountOrderRecordStatus = "CONTINGENT_ORDER"
)

// All allowed values of AccountOrderRecordStatus enum
var AllowedAccountOrderRecordStatusEnumValues = []AccountOrderRecordStatus{
	"NONE",
	"PENDING",
	"ACCEPTED",
	"FAILED",
	"REJECTED",
	"CANCELED",
	"PARTIAL_CANCELED",
	"CANCEL_PENDING",
	"EXECUTED",
	"PARTIAL",
	"REPLACE_PENDING",
	"REPLACED",
	"STOPPED",
	"SUSPENDED",
	"EXPIRED",
	"QUEUED",
	"TRIGGERED",
	"ACTIVATED",
	"PENDING_RISK_REVIEW",
	"CONTINGENT_ORDER",
}

func (v *AccountOrderRecordStatus) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := AccountOrderRecordStatus(value)
	for _, existing := range AllowedAccountOrderRecordStatusEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid AccountOrderRecordStatus", value)
}

// NewAccountOrderRecordStatusFromValue returns a pointer to a valid AccountOrderRecordStatus
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewAccountOrderRecordStatusFromValue(v string) (*AccountOrderRecordStatus, error) {
	ev := AccountOrderRecordStatus(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for AccountOrderRecordStatus: valid values are %v", v, AllowedAccountOrderRecordStatusEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v AccountOrderRecordStatus) IsValid() bool {
	for _, existing := range AllowedAccountOrderRecordStatusEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to AccountOrderRecordStatus value
func (v AccountOrderRecordStatus) Ptr() *AccountOrderRecordStatus {
	return &v
}

type NullableAccountOrderRecordStatus struct {
	value *AccountOrderRecordStatus
	isSet bool
}

func (v NullableAccountOrderRecordStatus) Get() *AccountOrderRecordStatus {
	return v.value
}

func (v *NullableAccountOrderRecordStatus) Set(val *AccountOrderRecordStatus) {
	v.value = val
	v.isSet = true
}

func (v NullableAccountOrderRecordStatus) IsSet() bool {
	return v.isSet
}

func (v *NullableAccountOrderRecordStatus) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAccountOrderRecordStatus(val *AccountOrderRecordStatus) *NullableAccountOrderRecordStatus {
	return &NullableAccountOrderRecordStatus{value: val, isSet: true}
}

func (v NullableAccountOrderRecordStatus) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAccountOrderRecordStatus) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

