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

// ManualTradeFormWithOptions Inputs for placing an order with the brokerage.
type ManualTradeFormWithOptions struct {
	// Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
	AccountId string `json:"account_id"`
	Action ActionStrictWithOptions `json:"action"`
	// The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.
	UniversalSymbolId NullableString `json:"universal_symbol_id,omitempty"`
	// The security's trading ticker symbol. This currently only support Options symbols in the 21 character OCC format. For example \"AAPL  131124C00240000\" represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
	Symbol NullableString `json:"symbol,omitempty"`
	OrderType OrderTypeStrict `json:"order_type"`
	TimeInForce TimeInForceStrict `json:"time_in_force"`
	// The limit price for `Limit` and `StopLimit` orders.
	Price NullableFloat32 `json:"price,omitempty"`
	// The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
	Stop NullableFloat32 `json:"stop,omitempty"`
	// For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
	Units NullableFloat32 `json:"units,omitempty"`
	NotionalValue NullableManualTradeFormNotionalValue `json:"notional_value,omitempty"`
}

// NewManualTradeFormWithOptions instantiates a new ManualTradeFormWithOptions object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewManualTradeFormWithOptions(accountId string, action ActionStrictWithOptions, orderType OrderTypeStrict, timeInForce TimeInForceStrict) *ManualTradeFormWithOptions {
	this := ManualTradeFormWithOptions{}
	this.AccountId = accountId
	this.Action = action
	this.OrderType = orderType
	this.TimeInForce = timeInForce
	return &this
}

// NewManualTradeFormWithOptionsWithDefaults instantiates a new ManualTradeFormWithOptions object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewManualTradeFormWithOptionsWithDefaults() *ManualTradeFormWithOptions {
	this := ManualTradeFormWithOptions{}
	return &this
}

// GetAccountId returns the AccountId field value
func (o *ManualTradeFormWithOptions) GetAccountId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.AccountId
}

// GetAccountIdOk returns a tuple with the AccountId field value
// and a boolean to check if the value has been set.
func (o *ManualTradeFormWithOptions) GetAccountIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.AccountId, true
}

// SetAccountId sets field value
func (o *ManualTradeFormWithOptions) SetAccountId(v string) {
	o.AccountId = v
}

// GetAction returns the Action field value
func (o *ManualTradeFormWithOptions) GetAction() ActionStrictWithOptions {
	if o == nil {
		var ret ActionStrictWithOptions
		return ret
	}

	return o.Action
}

// GetActionOk returns a tuple with the Action field value
// and a boolean to check if the value has been set.
func (o *ManualTradeFormWithOptions) GetActionOk() (*ActionStrictWithOptions, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Action, true
}

// SetAction sets field value
func (o *ManualTradeFormWithOptions) SetAction(v ActionStrictWithOptions) {
	o.Action = v
}

// GetUniversalSymbolId returns the UniversalSymbolId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ManualTradeFormWithOptions) GetUniversalSymbolId() string {
	if o == nil || isNil(o.UniversalSymbolId.Get()) {
		var ret string
		return ret
	}
	return *o.UniversalSymbolId.Get()
}

// GetUniversalSymbolIdOk returns a tuple with the UniversalSymbolId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ManualTradeFormWithOptions) GetUniversalSymbolIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.UniversalSymbolId.Get(), o.UniversalSymbolId.IsSet()
}

// HasUniversalSymbolId returns a boolean if a field has been set.
func (o *ManualTradeFormWithOptions) HasUniversalSymbolId() bool {
	if o != nil && o.UniversalSymbolId.IsSet() {
		return true
	}

	return false
}

// SetUniversalSymbolId gets a reference to the given NullableString and assigns it to the UniversalSymbolId field.
func (o *ManualTradeFormWithOptions) SetUniversalSymbolId(v string) {
	o.UniversalSymbolId.Set(&v)
}
// SetUniversalSymbolIdNil sets the value for UniversalSymbolId to be an explicit nil
func (o *ManualTradeFormWithOptions) SetUniversalSymbolIdNil() {
	o.UniversalSymbolId.Set(nil)
}

// UnsetUniversalSymbolId ensures that no value is present for UniversalSymbolId, not even an explicit nil
func (o *ManualTradeFormWithOptions) UnsetUniversalSymbolId() {
	o.UniversalSymbolId.Unset()
}

// GetSymbol returns the Symbol field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ManualTradeFormWithOptions) GetSymbol() string {
	if o == nil || isNil(o.Symbol.Get()) {
		var ret string
		return ret
	}
	return *o.Symbol.Get()
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ManualTradeFormWithOptions) GetSymbolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Symbol.Get(), o.Symbol.IsSet()
}

// HasSymbol returns a boolean if a field has been set.
func (o *ManualTradeFormWithOptions) HasSymbol() bool {
	if o != nil && o.Symbol.IsSet() {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given NullableString and assigns it to the Symbol field.
func (o *ManualTradeFormWithOptions) SetSymbol(v string) {
	o.Symbol.Set(&v)
}
// SetSymbolNil sets the value for Symbol to be an explicit nil
func (o *ManualTradeFormWithOptions) SetSymbolNil() {
	o.Symbol.Set(nil)
}

// UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
func (o *ManualTradeFormWithOptions) UnsetSymbol() {
	o.Symbol.Unset()
}

// GetOrderType returns the OrderType field value
func (o *ManualTradeFormWithOptions) GetOrderType() OrderTypeStrict {
	if o == nil {
		var ret OrderTypeStrict
		return ret
	}

	return o.OrderType
}

// GetOrderTypeOk returns a tuple with the OrderType field value
// and a boolean to check if the value has been set.
func (o *ManualTradeFormWithOptions) GetOrderTypeOk() (*OrderTypeStrict, bool) {
	if o == nil {
    return nil, false
	}
	return &o.OrderType, true
}

// SetOrderType sets field value
func (o *ManualTradeFormWithOptions) SetOrderType(v OrderTypeStrict) {
	o.OrderType = v
}

// GetTimeInForce returns the TimeInForce field value
func (o *ManualTradeFormWithOptions) GetTimeInForce() TimeInForceStrict {
	if o == nil {
		var ret TimeInForceStrict
		return ret
	}

	return o.TimeInForce
}

// GetTimeInForceOk returns a tuple with the TimeInForce field value
// and a boolean to check if the value has been set.
func (o *ManualTradeFormWithOptions) GetTimeInForceOk() (*TimeInForceStrict, bool) {
	if o == nil {
    return nil, false
	}
	return &o.TimeInForce, true
}

// SetTimeInForce sets field value
func (o *ManualTradeFormWithOptions) SetTimeInForce(v TimeInForceStrict) {
	o.TimeInForce = v
}

// GetPrice returns the Price field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ManualTradeFormWithOptions) GetPrice() float32 {
	if o == nil || isNil(o.Price.Get()) {
		var ret float32
		return ret
	}
	return *o.Price.Get()
}

// GetPriceOk returns a tuple with the Price field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ManualTradeFormWithOptions) GetPriceOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.Price.Get(), o.Price.IsSet()
}

// HasPrice returns a boolean if a field has been set.
func (o *ManualTradeFormWithOptions) HasPrice() bool {
	if o != nil && o.Price.IsSet() {
		return true
	}

	return false
}

// SetPrice gets a reference to the given NullableFloat32 and assigns it to the Price field.
func (o *ManualTradeFormWithOptions) SetPrice(v float32) {
	o.Price.Set(&v)
}
// SetPriceNil sets the value for Price to be an explicit nil
func (o *ManualTradeFormWithOptions) SetPriceNil() {
	o.Price.Set(nil)
}

// UnsetPrice ensures that no value is present for Price, not even an explicit nil
func (o *ManualTradeFormWithOptions) UnsetPrice() {
	o.Price.Unset()
}

// GetStop returns the Stop field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ManualTradeFormWithOptions) GetStop() float32 {
	if o == nil || isNil(o.Stop.Get()) {
		var ret float32
		return ret
	}
	return *o.Stop.Get()
}

// GetStopOk returns a tuple with the Stop field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ManualTradeFormWithOptions) GetStopOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.Stop.Get(), o.Stop.IsSet()
}

// HasStop returns a boolean if a field has been set.
func (o *ManualTradeFormWithOptions) HasStop() bool {
	if o != nil && o.Stop.IsSet() {
		return true
	}

	return false
}

// SetStop gets a reference to the given NullableFloat32 and assigns it to the Stop field.
func (o *ManualTradeFormWithOptions) SetStop(v float32) {
	o.Stop.Set(&v)
}
// SetStopNil sets the value for Stop to be an explicit nil
func (o *ManualTradeFormWithOptions) SetStopNil() {
	o.Stop.Set(nil)
}

// UnsetStop ensures that no value is present for Stop, not even an explicit nil
func (o *ManualTradeFormWithOptions) UnsetStop() {
	o.Stop.Unset()
}

// GetUnits returns the Units field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ManualTradeFormWithOptions) GetUnits() float32 {
	if o == nil || isNil(o.Units.Get()) {
		var ret float32
		return ret
	}
	return *o.Units.Get()
}

// GetUnitsOk returns a tuple with the Units field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ManualTradeFormWithOptions) GetUnitsOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.Units.Get(), o.Units.IsSet()
}

// HasUnits returns a boolean if a field has been set.
func (o *ManualTradeFormWithOptions) HasUnits() bool {
	if o != nil && o.Units.IsSet() {
		return true
	}

	return false
}

// SetUnits gets a reference to the given NullableFloat32 and assigns it to the Units field.
func (o *ManualTradeFormWithOptions) SetUnits(v float32) {
	o.Units.Set(&v)
}
// SetUnitsNil sets the value for Units to be an explicit nil
func (o *ManualTradeFormWithOptions) SetUnitsNil() {
	o.Units.Set(nil)
}

// UnsetUnits ensures that no value is present for Units, not even an explicit nil
func (o *ManualTradeFormWithOptions) UnsetUnits() {
	o.Units.Unset()
}

// GetNotionalValue returns the NotionalValue field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ManualTradeFormWithOptions) GetNotionalValue() ManualTradeFormNotionalValue {
	if o == nil || isNil(o.NotionalValue.Get()) {
		var ret ManualTradeFormNotionalValue
		return ret
	}
	return *o.NotionalValue.Get()
}

// GetNotionalValueOk returns a tuple with the NotionalValue field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ManualTradeFormWithOptions) GetNotionalValueOk() (*ManualTradeFormNotionalValue, bool) {
	if o == nil {
    return nil, false
	}
	return o.NotionalValue.Get(), o.NotionalValue.IsSet()
}

// HasNotionalValue returns a boolean if a field has been set.
func (o *ManualTradeFormWithOptions) HasNotionalValue() bool {
	if o != nil && o.NotionalValue.IsSet() {
		return true
	}

	return false
}

// SetNotionalValue gets a reference to the given NullableManualTradeFormNotionalValue and assigns it to the NotionalValue field.
func (o *ManualTradeFormWithOptions) SetNotionalValue(v ManualTradeFormNotionalValue) {
	o.NotionalValue.Set(&v)
}
// SetNotionalValueNil sets the value for NotionalValue to be an explicit nil
func (o *ManualTradeFormWithOptions) SetNotionalValueNil() {
	o.NotionalValue.Set(nil)
}

// UnsetNotionalValue ensures that no value is present for NotionalValue, not even an explicit nil
func (o *ManualTradeFormWithOptions) UnsetNotionalValue() {
	o.NotionalValue.Unset()
}

func (o ManualTradeFormWithOptions) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["account_id"] = o.AccountId
	}
	if true {
		toSerialize["action"] = o.Action
	}
	if o.UniversalSymbolId.IsSet() {
		toSerialize["universal_symbol_id"] = o.UniversalSymbolId.Get()
	}
	if o.Symbol.IsSet() {
		toSerialize["symbol"] = o.Symbol.Get()
	}
	if true {
		toSerialize["order_type"] = o.OrderType
	}
	if true {
		toSerialize["time_in_force"] = o.TimeInForce
	}
	if o.Price.IsSet() {
		toSerialize["price"] = o.Price.Get()
	}
	if o.Stop.IsSet() {
		toSerialize["stop"] = o.Stop.Get()
	}
	if o.Units.IsSet() {
		toSerialize["units"] = o.Units.Get()
	}
	if o.NotionalValue.IsSet() {
		toSerialize["notional_value"] = o.NotionalValue.Get()
	}
	return json.Marshal(toSerialize)
}

type NullableManualTradeFormWithOptions struct {
	value *ManualTradeFormWithOptions
	isSet bool
}

func (v NullableManualTradeFormWithOptions) Get() *ManualTradeFormWithOptions {
	return v.value
}

func (v *NullableManualTradeFormWithOptions) Set(val *ManualTradeFormWithOptions) {
	v.value = val
	v.isSet = true
}

func (v NullableManualTradeFormWithOptions) IsSet() bool {
	return v.isSet
}

func (v *NullableManualTradeFormWithOptions) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableManualTradeFormWithOptions(val *ManualTradeFormWithOptions) *NullableManualTradeFormWithOptions {
	return &NullableManualTradeFormWithOptions{value: val, isSet: true}
}

func (v NullableManualTradeFormWithOptions) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableManualTradeFormWithOptions) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


