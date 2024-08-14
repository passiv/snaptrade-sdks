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

// UnderlyingSymbolExchange The exchange on which the security is listed and traded.
type UnderlyingSymbolExchange struct {
	Id *string `json:"id,omitempty"`
	Code *string `json:"code,omitempty"`
	MicCode *string `json:"mic_code,omitempty"`
	Name *string `json:"name,omitempty"`
	Timezone *string `json:"timezone,omitempty"`
	StartTime *string `json:"start_time,omitempty"`
	CloseTime *string `json:"close_time,omitempty"`
	Suffix NullableString `json:"suffix,omitempty"`
	AllowsCryptocurrencySymbols *bool `json:"allows_cryptocurrency_symbols,omitempty"`
}

// NewUnderlyingSymbolExchange instantiates a new UnderlyingSymbolExchange object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUnderlyingSymbolExchange() *UnderlyingSymbolExchange {
	this := UnderlyingSymbolExchange{}
	return &this
}

// NewUnderlyingSymbolExchangeWithDefaults instantiates a new UnderlyingSymbolExchange object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUnderlyingSymbolExchangeWithDefaults() *UnderlyingSymbolExchange {
	this := UnderlyingSymbolExchange{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetId() string {
	if o == nil || isNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetIdOk() (*string, bool) {
	if o == nil || isNil(o.Id) {
    return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasId() bool {
	if o != nil && !isNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *UnderlyingSymbolExchange) SetId(v string) {
	o.Id = &v
}

// GetCode returns the Code field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetCode() string {
	if o == nil || isNil(o.Code) {
		var ret string
		return ret
	}
	return *o.Code
}

// GetCodeOk returns a tuple with the Code field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetCodeOk() (*string, bool) {
	if o == nil || isNil(o.Code) {
    return nil, false
	}
	return o.Code, true
}

// HasCode returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasCode() bool {
	if o != nil && !isNil(o.Code) {
		return true
	}

	return false
}

// SetCode gets a reference to the given string and assigns it to the Code field.
func (o *UnderlyingSymbolExchange) SetCode(v string) {
	o.Code = &v
}

// GetMicCode returns the MicCode field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetMicCode() string {
	if o == nil || isNil(o.MicCode) {
		var ret string
		return ret
	}
	return *o.MicCode
}

// GetMicCodeOk returns a tuple with the MicCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetMicCodeOk() (*string, bool) {
	if o == nil || isNil(o.MicCode) {
    return nil, false
	}
	return o.MicCode, true
}

// HasMicCode returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasMicCode() bool {
	if o != nil && !isNil(o.MicCode) {
		return true
	}

	return false
}

// SetMicCode gets a reference to the given string and assigns it to the MicCode field.
func (o *UnderlyingSymbolExchange) SetMicCode(v string) {
	o.MicCode = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetName() string {
	if o == nil || isNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetNameOk() (*string, bool) {
	if o == nil || isNil(o.Name) {
    return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasName() bool {
	if o != nil && !isNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *UnderlyingSymbolExchange) SetName(v string) {
	o.Name = &v
}

// GetTimezone returns the Timezone field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetTimezone() string {
	if o == nil || isNil(o.Timezone) {
		var ret string
		return ret
	}
	return *o.Timezone
}

// GetTimezoneOk returns a tuple with the Timezone field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetTimezoneOk() (*string, bool) {
	if o == nil || isNil(o.Timezone) {
    return nil, false
	}
	return o.Timezone, true
}

// HasTimezone returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasTimezone() bool {
	if o != nil && !isNil(o.Timezone) {
		return true
	}

	return false
}

// SetTimezone gets a reference to the given string and assigns it to the Timezone field.
func (o *UnderlyingSymbolExchange) SetTimezone(v string) {
	o.Timezone = &v
}

// GetStartTime returns the StartTime field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetStartTime() string {
	if o == nil || isNil(o.StartTime) {
		var ret string
		return ret
	}
	return *o.StartTime
}

// GetStartTimeOk returns a tuple with the StartTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetStartTimeOk() (*string, bool) {
	if o == nil || isNil(o.StartTime) {
    return nil, false
	}
	return o.StartTime, true
}

// HasStartTime returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasStartTime() bool {
	if o != nil && !isNil(o.StartTime) {
		return true
	}

	return false
}

// SetStartTime gets a reference to the given string and assigns it to the StartTime field.
func (o *UnderlyingSymbolExchange) SetStartTime(v string) {
	o.StartTime = &v
}

// GetCloseTime returns the CloseTime field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetCloseTime() string {
	if o == nil || isNil(o.CloseTime) {
		var ret string
		return ret
	}
	return *o.CloseTime
}

// GetCloseTimeOk returns a tuple with the CloseTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetCloseTimeOk() (*string, bool) {
	if o == nil || isNil(o.CloseTime) {
    return nil, false
	}
	return o.CloseTime, true
}

// HasCloseTime returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasCloseTime() bool {
	if o != nil && !isNil(o.CloseTime) {
		return true
	}

	return false
}

// SetCloseTime gets a reference to the given string and assigns it to the CloseTime field.
func (o *UnderlyingSymbolExchange) SetCloseTime(v string) {
	o.CloseTime = &v
}

// GetSuffix returns the Suffix field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UnderlyingSymbolExchange) GetSuffix() string {
	if o == nil || isNil(o.Suffix.Get()) {
		var ret string
		return ret
	}
	return *o.Suffix.Get()
}

// GetSuffixOk returns a tuple with the Suffix field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UnderlyingSymbolExchange) GetSuffixOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Suffix.Get(), o.Suffix.IsSet()
}

// HasSuffix returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasSuffix() bool {
	if o != nil && o.Suffix.IsSet() {
		return true
	}

	return false
}

// SetSuffix gets a reference to the given NullableString and assigns it to the Suffix field.
func (o *UnderlyingSymbolExchange) SetSuffix(v string) {
	o.Suffix.Set(&v)
}
// SetSuffixNil sets the value for Suffix to be an explicit nil
func (o *UnderlyingSymbolExchange) SetSuffixNil() {
	o.Suffix.Set(nil)
}

// UnsetSuffix ensures that no value is present for Suffix, not even an explicit nil
func (o *UnderlyingSymbolExchange) UnsetSuffix() {
	o.Suffix.Unset()
}

// GetAllowsCryptocurrencySymbols returns the AllowsCryptocurrencySymbols field value if set, zero value otherwise.
func (o *UnderlyingSymbolExchange) GetAllowsCryptocurrencySymbols() bool {
	if o == nil || isNil(o.AllowsCryptocurrencySymbols) {
		var ret bool
		return ret
	}
	return *o.AllowsCryptocurrencySymbols
}

// GetAllowsCryptocurrencySymbolsOk returns a tuple with the AllowsCryptocurrencySymbols field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UnderlyingSymbolExchange) GetAllowsCryptocurrencySymbolsOk() (*bool, bool) {
	if o == nil || isNil(o.AllowsCryptocurrencySymbols) {
    return nil, false
	}
	return o.AllowsCryptocurrencySymbols, true
}

// HasAllowsCryptocurrencySymbols returns a boolean if a field has been set.
func (o *UnderlyingSymbolExchange) HasAllowsCryptocurrencySymbols() bool {
	if o != nil && !isNil(o.AllowsCryptocurrencySymbols) {
		return true
	}

	return false
}

// SetAllowsCryptocurrencySymbols gets a reference to the given bool and assigns it to the AllowsCryptocurrencySymbols field.
func (o *UnderlyingSymbolExchange) SetAllowsCryptocurrencySymbols(v bool) {
	o.AllowsCryptocurrencySymbols = &v
}

func (o UnderlyingSymbolExchange) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !isNil(o.Code) {
		toSerialize["code"] = o.Code
	}
	if !isNil(o.MicCode) {
		toSerialize["mic_code"] = o.MicCode
	}
	if !isNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !isNil(o.Timezone) {
		toSerialize["timezone"] = o.Timezone
	}
	if !isNil(o.StartTime) {
		toSerialize["start_time"] = o.StartTime
	}
	if !isNil(o.CloseTime) {
		toSerialize["close_time"] = o.CloseTime
	}
	if o.Suffix.IsSet() {
		toSerialize["suffix"] = o.Suffix.Get()
	}
	if !isNil(o.AllowsCryptocurrencySymbols) {
		toSerialize["allows_cryptocurrency_symbols"] = o.AllowsCryptocurrencySymbols
	}
	return json.Marshal(toSerialize)
}

type NullableUnderlyingSymbolExchange struct {
	value *UnderlyingSymbolExchange
	isSet bool
}

func (v NullableUnderlyingSymbolExchange) Get() *UnderlyingSymbolExchange {
	return v.value
}

func (v *NullableUnderlyingSymbolExchange) Set(val *UnderlyingSymbolExchange) {
	v.value = val
	v.isSet = true
}

func (v NullableUnderlyingSymbolExchange) IsSet() bool {
	return v.isSet
}

func (v *NullableUnderlyingSymbolExchange) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUnderlyingSymbolExchange(val *UnderlyingSymbolExchange) *NullableUnderlyingSymbolExchange {
	return &NullableUnderlyingSymbolExchange{value: val, isSet: true}
}

func (v NullableUnderlyingSymbolExchange) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUnderlyingSymbolExchange) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

