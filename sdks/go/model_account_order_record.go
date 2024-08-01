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

// AccountOrderRecord Record of order in brokerageaccount
type AccountOrderRecord struct {
	// Order id returned by brokerage
	BrokerageOrderId *string `json:"brokerage_order_id,omitempty"`
	Status *AccountOrderRecordStatus `json:"status,omitempty"`
	Symbol *string `json:"symbol,omitempty"`
	UniversalSymbol *UniversalSymbol `json:"universal_symbol,omitempty"`
	OptionSymbol *OptionsSymbol `json:"option_symbol,omitempty"`
	// Trade Action potential values include (but are not limited to) - BUY - SELL - BUY_COVER - SELL_SHORT - BUY_OPEN - BUY_CLOSE - SELL_OPEN - SELL_CLOSE
	Action *string `json:"action,omitempty"`
	TotalQuantity NullableFloat32 `json:"total_quantity,omitempty"`
	// Trade Units
	OpenQuantity NullableFloat32 `json:"open_quantity,omitempty"`
	// Trade Units
	CanceledQuantity NullableFloat32 `json:"canceled_quantity,omitempty"`
	// Trade Units
	FilledQuantity NullableFloat32 `json:"filled_quantity,omitempty"`
	// Trade Price if limit or stop limit order
	ExecutionPrice NullableFloat32 `json:"execution_price,omitempty"`
	// Trade Price if limit or stop limit order
	LimitPrice NullableFloat32 `json:"limit_price,omitempty"`
	// Stop Price. If stop loss or stop limit order, the price to trigger the stop
	StopPrice NullableFloat32 `json:"stop_price,omitempty"`
	// Order Type potential values include (but are not limited to) - Limit - Market - StopLimit - StopLoss
	OrderType NullableString `json:"order_type,omitempty"`
	// Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled   * GTD - Good Til Date 
	TimeInForce *string `json:"time_in_force,omitempty"`
	// Time
	TimePlaced *string `json:"time_placed,omitempty"`
	TimeUpdated NullableString `json:"time_updated,omitempty"`
	TimeExecuted NullableString `json:"time_executed,omitempty"`
	// Time
	ExpiryDate *string `json:"expiry_date,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _AccountOrderRecord AccountOrderRecord

// NewAccountOrderRecord instantiates a new AccountOrderRecord object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAccountOrderRecord() *AccountOrderRecord {
	this := AccountOrderRecord{}
	return &this
}

// NewAccountOrderRecordWithDefaults instantiates a new AccountOrderRecord object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAccountOrderRecordWithDefaults() *AccountOrderRecord {
	this := AccountOrderRecord{}
	return &this
}

// GetBrokerageOrderId returns the BrokerageOrderId field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetBrokerageOrderId() string {
	if o == nil || isNil(o.BrokerageOrderId) {
		var ret string
		return ret
	}
	return *o.BrokerageOrderId
}

// GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetBrokerageOrderIdOk() (*string, bool) {
	if o == nil || isNil(o.BrokerageOrderId) {
    return nil, false
	}
	return o.BrokerageOrderId, true
}

// HasBrokerageOrderId returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasBrokerageOrderId() bool {
	if o != nil && !isNil(o.BrokerageOrderId) {
		return true
	}

	return false
}

// SetBrokerageOrderId gets a reference to the given string and assigns it to the BrokerageOrderId field.
func (o *AccountOrderRecord) SetBrokerageOrderId(v string) {
	o.BrokerageOrderId = &v
}

// GetStatus returns the Status field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetStatus() AccountOrderRecordStatus {
	if o == nil || isNil(o.Status) {
		var ret AccountOrderRecordStatus
		return ret
	}
	return *o.Status
}

// GetStatusOk returns a tuple with the Status field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetStatusOk() (*AccountOrderRecordStatus, bool) {
	if o == nil || isNil(o.Status) {
    return nil, false
	}
	return o.Status, true
}

// HasStatus returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasStatus() bool {
	if o != nil && !isNil(o.Status) {
		return true
	}

	return false
}

// SetStatus gets a reference to the given AccountOrderRecordStatus and assigns it to the Status field.
func (o *AccountOrderRecord) SetStatus(v AccountOrderRecordStatus) {
	o.Status = &v
}

// GetSymbol returns the Symbol field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetSymbol() string {
	if o == nil || isNil(o.Symbol) {
		var ret string
		return ret
	}
	return *o.Symbol
}

// GetSymbolOk returns a tuple with the Symbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetSymbolOk() (*string, bool) {
	if o == nil || isNil(o.Symbol) {
    return nil, false
	}
	return o.Symbol, true
}

// HasSymbol returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasSymbol() bool {
	if o != nil && !isNil(o.Symbol) {
		return true
	}

	return false
}

// SetSymbol gets a reference to the given string and assigns it to the Symbol field.
func (o *AccountOrderRecord) SetSymbol(v string) {
	o.Symbol = &v
}

// GetUniversalSymbol returns the UniversalSymbol field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetUniversalSymbol() UniversalSymbol {
	if o == nil || isNil(o.UniversalSymbol) {
		var ret UniversalSymbol
		return ret
	}
	return *o.UniversalSymbol
}

// GetUniversalSymbolOk returns a tuple with the UniversalSymbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetUniversalSymbolOk() (*UniversalSymbol, bool) {
	if o == nil || isNil(o.UniversalSymbol) {
    return nil, false
	}
	return o.UniversalSymbol, true
}

// HasUniversalSymbol returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasUniversalSymbol() bool {
	if o != nil && !isNil(o.UniversalSymbol) {
		return true
	}

	return false
}

// SetUniversalSymbol gets a reference to the given UniversalSymbol and assigns it to the UniversalSymbol field.
func (o *AccountOrderRecord) SetUniversalSymbol(v UniversalSymbol) {
	o.UniversalSymbol = &v
}

// GetOptionSymbol returns the OptionSymbol field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetOptionSymbol() OptionsSymbol {
	if o == nil || isNil(o.OptionSymbol) {
		var ret OptionsSymbol
		return ret
	}
	return *o.OptionSymbol
}

// GetOptionSymbolOk returns a tuple with the OptionSymbol field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetOptionSymbolOk() (*OptionsSymbol, bool) {
	if o == nil || isNil(o.OptionSymbol) {
    return nil, false
	}
	return o.OptionSymbol, true
}

// HasOptionSymbol returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasOptionSymbol() bool {
	if o != nil && !isNil(o.OptionSymbol) {
		return true
	}

	return false
}

// SetOptionSymbol gets a reference to the given OptionsSymbol and assigns it to the OptionSymbol field.
func (o *AccountOrderRecord) SetOptionSymbol(v OptionsSymbol) {
	o.OptionSymbol = &v
}

// GetAction returns the Action field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetAction() string {
	if o == nil || isNil(o.Action) {
		var ret string
		return ret
	}
	return *o.Action
}

// GetActionOk returns a tuple with the Action field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetActionOk() (*string, bool) {
	if o == nil || isNil(o.Action) {
    return nil, false
	}
	return o.Action, true
}

// HasAction returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasAction() bool {
	if o != nil && !isNil(o.Action) {
		return true
	}

	return false
}

// SetAction gets a reference to the given string and assigns it to the Action field.
func (o *AccountOrderRecord) SetAction(v string) {
	o.Action = &v
}

// GetTotalQuantity returns the TotalQuantity field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetTotalQuantity() float32 {
	if o == nil || isNil(o.TotalQuantity.Get()) {
		var ret float32
		return ret
	}
	return *o.TotalQuantity.Get()
}

// GetTotalQuantityOk returns a tuple with the TotalQuantity field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetTotalQuantityOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.TotalQuantity.Get(), o.TotalQuantity.IsSet()
}

// HasTotalQuantity returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasTotalQuantity() bool {
	if o != nil && o.TotalQuantity.IsSet() {
		return true
	}

	return false
}

// SetTotalQuantity gets a reference to the given NullableFloat32 and assigns it to the TotalQuantity field.
func (o *AccountOrderRecord) SetTotalQuantity(v float32) {
	o.TotalQuantity.Set(&v)
}
// SetTotalQuantityNil sets the value for TotalQuantity to be an explicit nil
func (o *AccountOrderRecord) SetTotalQuantityNil() {
	o.TotalQuantity.Set(nil)
}

// UnsetTotalQuantity ensures that no value is present for TotalQuantity, not even an explicit nil
func (o *AccountOrderRecord) UnsetTotalQuantity() {
	o.TotalQuantity.Unset()
}

// GetOpenQuantity returns the OpenQuantity field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetOpenQuantity() float32 {
	if o == nil || isNil(o.OpenQuantity.Get()) {
		var ret float32
		return ret
	}
	return *o.OpenQuantity.Get()
}

// GetOpenQuantityOk returns a tuple with the OpenQuantity field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetOpenQuantityOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.OpenQuantity.Get(), o.OpenQuantity.IsSet()
}

// HasOpenQuantity returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasOpenQuantity() bool {
	if o != nil && o.OpenQuantity.IsSet() {
		return true
	}

	return false
}

// SetOpenQuantity gets a reference to the given NullableFloat32 and assigns it to the OpenQuantity field.
func (o *AccountOrderRecord) SetOpenQuantity(v float32) {
	o.OpenQuantity.Set(&v)
}
// SetOpenQuantityNil sets the value for OpenQuantity to be an explicit nil
func (o *AccountOrderRecord) SetOpenQuantityNil() {
	o.OpenQuantity.Set(nil)
}

// UnsetOpenQuantity ensures that no value is present for OpenQuantity, not even an explicit nil
func (o *AccountOrderRecord) UnsetOpenQuantity() {
	o.OpenQuantity.Unset()
}

// GetCanceledQuantity returns the CanceledQuantity field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetCanceledQuantity() float32 {
	if o == nil || isNil(o.CanceledQuantity.Get()) {
		var ret float32
		return ret
	}
	return *o.CanceledQuantity.Get()
}

// GetCanceledQuantityOk returns a tuple with the CanceledQuantity field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetCanceledQuantityOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.CanceledQuantity.Get(), o.CanceledQuantity.IsSet()
}

// HasCanceledQuantity returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasCanceledQuantity() bool {
	if o != nil && o.CanceledQuantity.IsSet() {
		return true
	}

	return false
}

// SetCanceledQuantity gets a reference to the given NullableFloat32 and assigns it to the CanceledQuantity field.
func (o *AccountOrderRecord) SetCanceledQuantity(v float32) {
	o.CanceledQuantity.Set(&v)
}
// SetCanceledQuantityNil sets the value for CanceledQuantity to be an explicit nil
func (o *AccountOrderRecord) SetCanceledQuantityNil() {
	o.CanceledQuantity.Set(nil)
}

// UnsetCanceledQuantity ensures that no value is present for CanceledQuantity, not even an explicit nil
func (o *AccountOrderRecord) UnsetCanceledQuantity() {
	o.CanceledQuantity.Unset()
}

// GetFilledQuantity returns the FilledQuantity field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetFilledQuantity() float32 {
	if o == nil || isNil(o.FilledQuantity.Get()) {
		var ret float32
		return ret
	}
	return *o.FilledQuantity.Get()
}

// GetFilledQuantityOk returns a tuple with the FilledQuantity field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetFilledQuantityOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.FilledQuantity.Get(), o.FilledQuantity.IsSet()
}

// HasFilledQuantity returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasFilledQuantity() bool {
	if o != nil && o.FilledQuantity.IsSet() {
		return true
	}

	return false
}

// SetFilledQuantity gets a reference to the given NullableFloat32 and assigns it to the FilledQuantity field.
func (o *AccountOrderRecord) SetFilledQuantity(v float32) {
	o.FilledQuantity.Set(&v)
}
// SetFilledQuantityNil sets the value for FilledQuantity to be an explicit nil
func (o *AccountOrderRecord) SetFilledQuantityNil() {
	o.FilledQuantity.Set(nil)
}

// UnsetFilledQuantity ensures that no value is present for FilledQuantity, not even an explicit nil
func (o *AccountOrderRecord) UnsetFilledQuantity() {
	o.FilledQuantity.Unset()
}

// GetExecutionPrice returns the ExecutionPrice field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetExecutionPrice() float32 {
	if o == nil || isNil(o.ExecutionPrice.Get()) {
		var ret float32
		return ret
	}
	return *o.ExecutionPrice.Get()
}

// GetExecutionPriceOk returns a tuple with the ExecutionPrice field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetExecutionPriceOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.ExecutionPrice.Get(), o.ExecutionPrice.IsSet()
}

// HasExecutionPrice returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasExecutionPrice() bool {
	if o != nil && o.ExecutionPrice.IsSet() {
		return true
	}

	return false
}

// SetExecutionPrice gets a reference to the given NullableFloat32 and assigns it to the ExecutionPrice field.
func (o *AccountOrderRecord) SetExecutionPrice(v float32) {
	o.ExecutionPrice.Set(&v)
}
// SetExecutionPriceNil sets the value for ExecutionPrice to be an explicit nil
func (o *AccountOrderRecord) SetExecutionPriceNil() {
	o.ExecutionPrice.Set(nil)
}

// UnsetExecutionPrice ensures that no value is present for ExecutionPrice, not even an explicit nil
func (o *AccountOrderRecord) UnsetExecutionPrice() {
	o.ExecutionPrice.Unset()
}

// GetLimitPrice returns the LimitPrice field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetLimitPrice() float32 {
	if o == nil || isNil(o.LimitPrice.Get()) {
		var ret float32
		return ret
	}
	return *o.LimitPrice.Get()
}

// GetLimitPriceOk returns a tuple with the LimitPrice field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetLimitPriceOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.LimitPrice.Get(), o.LimitPrice.IsSet()
}

// HasLimitPrice returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasLimitPrice() bool {
	if o != nil && o.LimitPrice.IsSet() {
		return true
	}

	return false
}

// SetLimitPrice gets a reference to the given NullableFloat32 and assigns it to the LimitPrice field.
func (o *AccountOrderRecord) SetLimitPrice(v float32) {
	o.LimitPrice.Set(&v)
}
// SetLimitPriceNil sets the value for LimitPrice to be an explicit nil
func (o *AccountOrderRecord) SetLimitPriceNil() {
	o.LimitPrice.Set(nil)
}

// UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil
func (o *AccountOrderRecord) UnsetLimitPrice() {
	o.LimitPrice.Unset()
}

// GetStopPrice returns the StopPrice field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetStopPrice() float32 {
	if o == nil || isNil(o.StopPrice.Get()) {
		var ret float32
		return ret
	}
	return *o.StopPrice.Get()
}

// GetStopPriceOk returns a tuple with the StopPrice field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetStopPriceOk() (*float32, bool) {
	if o == nil {
    return nil, false
	}
	return o.StopPrice.Get(), o.StopPrice.IsSet()
}

// HasStopPrice returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasStopPrice() bool {
	if o != nil && o.StopPrice.IsSet() {
		return true
	}

	return false
}

// SetStopPrice gets a reference to the given NullableFloat32 and assigns it to the StopPrice field.
func (o *AccountOrderRecord) SetStopPrice(v float32) {
	o.StopPrice.Set(&v)
}
// SetStopPriceNil sets the value for StopPrice to be an explicit nil
func (o *AccountOrderRecord) SetStopPriceNil() {
	o.StopPrice.Set(nil)
}

// UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil
func (o *AccountOrderRecord) UnsetStopPrice() {
	o.StopPrice.Unset()
}

// GetOrderType returns the OrderType field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetOrderType() string {
	if o == nil || isNil(o.OrderType.Get()) {
		var ret string
		return ret
	}
	return *o.OrderType.Get()
}

// GetOrderTypeOk returns a tuple with the OrderType field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetOrderTypeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.OrderType.Get(), o.OrderType.IsSet()
}

// HasOrderType returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasOrderType() bool {
	if o != nil && o.OrderType.IsSet() {
		return true
	}

	return false
}

// SetOrderType gets a reference to the given NullableString and assigns it to the OrderType field.
func (o *AccountOrderRecord) SetOrderType(v string) {
	o.OrderType.Set(&v)
}
// SetOrderTypeNil sets the value for OrderType to be an explicit nil
func (o *AccountOrderRecord) SetOrderTypeNil() {
	o.OrderType.Set(nil)
}

// UnsetOrderType ensures that no value is present for OrderType, not even an explicit nil
func (o *AccountOrderRecord) UnsetOrderType() {
	o.OrderType.Unset()
}

// GetTimeInForce returns the TimeInForce field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetTimeInForce() string {
	if o == nil || isNil(o.TimeInForce) {
		var ret string
		return ret
	}
	return *o.TimeInForce
}

// GetTimeInForceOk returns a tuple with the TimeInForce field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetTimeInForceOk() (*string, bool) {
	if o == nil || isNil(o.TimeInForce) {
    return nil, false
	}
	return o.TimeInForce, true
}

// HasTimeInForce returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasTimeInForce() bool {
	if o != nil && !isNil(o.TimeInForce) {
		return true
	}

	return false
}

// SetTimeInForce gets a reference to the given string and assigns it to the TimeInForce field.
func (o *AccountOrderRecord) SetTimeInForce(v string) {
	o.TimeInForce = &v
}

// GetTimePlaced returns the TimePlaced field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetTimePlaced() string {
	if o == nil || isNil(o.TimePlaced) {
		var ret string
		return ret
	}
	return *o.TimePlaced
}

// GetTimePlacedOk returns a tuple with the TimePlaced field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetTimePlacedOk() (*string, bool) {
	if o == nil || isNil(o.TimePlaced) {
    return nil, false
	}
	return o.TimePlaced, true
}

// HasTimePlaced returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasTimePlaced() bool {
	if o != nil && !isNil(o.TimePlaced) {
		return true
	}

	return false
}

// SetTimePlaced gets a reference to the given string and assigns it to the TimePlaced field.
func (o *AccountOrderRecord) SetTimePlaced(v string) {
	o.TimePlaced = &v
}

// GetTimeUpdated returns the TimeUpdated field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetTimeUpdated() string {
	if o == nil || isNil(o.TimeUpdated.Get()) {
		var ret string
		return ret
	}
	return *o.TimeUpdated.Get()
}

// GetTimeUpdatedOk returns a tuple with the TimeUpdated field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetTimeUpdatedOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TimeUpdated.Get(), o.TimeUpdated.IsSet()
}

// HasTimeUpdated returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasTimeUpdated() bool {
	if o != nil && o.TimeUpdated.IsSet() {
		return true
	}

	return false
}

// SetTimeUpdated gets a reference to the given NullableString and assigns it to the TimeUpdated field.
func (o *AccountOrderRecord) SetTimeUpdated(v string) {
	o.TimeUpdated.Set(&v)
}
// SetTimeUpdatedNil sets the value for TimeUpdated to be an explicit nil
func (o *AccountOrderRecord) SetTimeUpdatedNil() {
	o.TimeUpdated.Set(nil)
}

// UnsetTimeUpdated ensures that no value is present for TimeUpdated, not even an explicit nil
func (o *AccountOrderRecord) UnsetTimeUpdated() {
	o.TimeUpdated.Unset()
}

// GetTimeExecuted returns the TimeExecuted field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AccountOrderRecord) GetTimeExecuted() string {
	if o == nil || isNil(o.TimeExecuted.Get()) {
		var ret string
		return ret
	}
	return *o.TimeExecuted.Get()
}

// GetTimeExecutedOk returns a tuple with the TimeExecuted field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AccountOrderRecord) GetTimeExecutedOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.TimeExecuted.Get(), o.TimeExecuted.IsSet()
}

// HasTimeExecuted returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasTimeExecuted() bool {
	if o != nil && o.TimeExecuted.IsSet() {
		return true
	}

	return false
}

// SetTimeExecuted gets a reference to the given NullableString and assigns it to the TimeExecuted field.
func (o *AccountOrderRecord) SetTimeExecuted(v string) {
	o.TimeExecuted.Set(&v)
}
// SetTimeExecutedNil sets the value for TimeExecuted to be an explicit nil
func (o *AccountOrderRecord) SetTimeExecutedNil() {
	o.TimeExecuted.Set(nil)
}

// UnsetTimeExecuted ensures that no value is present for TimeExecuted, not even an explicit nil
func (o *AccountOrderRecord) UnsetTimeExecuted() {
	o.TimeExecuted.Unset()
}

// GetExpiryDate returns the ExpiryDate field value if set, zero value otherwise.
func (o *AccountOrderRecord) GetExpiryDate() string {
	if o == nil || isNil(o.ExpiryDate) {
		var ret string
		return ret
	}
	return *o.ExpiryDate
}

// GetExpiryDateOk returns a tuple with the ExpiryDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AccountOrderRecord) GetExpiryDateOk() (*string, bool) {
	if o == nil || isNil(o.ExpiryDate) {
    return nil, false
	}
	return o.ExpiryDate, true
}

// HasExpiryDate returns a boolean if a field has been set.
func (o *AccountOrderRecord) HasExpiryDate() bool {
	if o != nil && !isNil(o.ExpiryDate) {
		return true
	}

	return false
}

// SetExpiryDate gets a reference to the given string and assigns it to the ExpiryDate field.
func (o *AccountOrderRecord) SetExpiryDate(v string) {
	o.ExpiryDate = &v
}

func (o AccountOrderRecord) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.BrokerageOrderId) {
		toSerialize["brokerage_order_id"] = o.BrokerageOrderId
	}
	if !isNil(o.Status) {
		toSerialize["status"] = o.Status
	}
	if !isNil(o.Symbol) {
		toSerialize["symbol"] = o.Symbol
	}
	if !isNil(o.UniversalSymbol) {
		toSerialize["universal_symbol"] = o.UniversalSymbol
	}
	if !isNil(o.OptionSymbol) {
		toSerialize["option_symbol"] = o.OptionSymbol
	}
	if !isNil(o.Action) {
		toSerialize["action"] = o.Action
	}
	if o.TotalQuantity.IsSet() {
		toSerialize["total_quantity"] = o.TotalQuantity.Get()
	}
	if o.OpenQuantity.IsSet() {
		toSerialize["open_quantity"] = o.OpenQuantity.Get()
	}
	if o.CanceledQuantity.IsSet() {
		toSerialize["canceled_quantity"] = o.CanceledQuantity.Get()
	}
	if o.FilledQuantity.IsSet() {
		toSerialize["filled_quantity"] = o.FilledQuantity.Get()
	}
	if o.ExecutionPrice.IsSet() {
		toSerialize["execution_price"] = o.ExecutionPrice.Get()
	}
	if o.LimitPrice.IsSet() {
		toSerialize["limit_price"] = o.LimitPrice.Get()
	}
	if o.StopPrice.IsSet() {
		toSerialize["stop_price"] = o.StopPrice.Get()
	}
	if o.OrderType.IsSet() {
		toSerialize["order_type"] = o.OrderType.Get()
	}
	if !isNil(o.TimeInForce) {
		toSerialize["time_in_force"] = o.TimeInForce
	}
	if !isNil(o.TimePlaced) {
		toSerialize["time_placed"] = o.TimePlaced
	}
	if o.TimeUpdated.IsSet() {
		toSerialize["time_updated"] = o.TimeUpdated.Get()
	}
	if o.TimeExecuted.IsSet() {
		toSerialize["time_executed"] = o.TimeExecuted.Get()
	}
	if !isNil(o.ExpiryDate) {
		toSerialize["expiry_date"] = o.ExpiryDate
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *AccountOrderRecord) UnmarshalJSON(bytes []byte) (err error) {
	varAccountOrderRecord := _AccountOrderRecord{}

	if err = json.Unmarshal(bytes, &varAccountOrderRecord); err == nil {
		*o = AccountOrderRecord(varAccountOrderRecord)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "brokerage_order_id")
		delete(additionalProperties, "status")
		delete(additionalProperties, "symbol")
		delete(additionalProperties, "universal_symbol")
		delete(additionalProperties, "option_symbol")
		delete(additionalProperties, "action")
		delete(additionalProperties, "total_quantity")
		delete(additionalProperties, "open_quantity")
		delete(additionalProperties, "canceled_quantity")
		delete(additionalProperties, "filled_quantity")
		delete(additionalProperties, "execution_price")
		delete(additionalProperties, "limit_price")
		delete(additionalProperties, "stop_price")
		delete(additionalProperties, "order_type")
		delete(additionalProperties, "time_in_force")
		delete(additionalProperties, "time_placed")
		delete(additionalProperties, "time_updated")
		delete(additionalProperties, "time_executed")
		delete(additionalProperties, "expiry_date")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableAccountOrderRecord struct {
	value *AccountOrderRecord
	isSet bool
}

func (v NullableAccountOrderRecord) Get() *AccountOrderRecord {
	return v.value
}

func (v *NullableAccountOrderRecord) Set(val *AccountOrderRecord) {
	v.value = val
	v.isSet = true
}

func (v NullableAccountOrderRecord) IsSet() bool {
	return v.isSet
}

func (v *NullableAccountOrderRecord) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAccountOrderRecord(val *AccountOrderRecord) *NullableAccountOrderRecord {
	return &NullableAccountOrderRecord{value: val, isSet: true}
}

func (v NullableAccountOrderRecord) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAccountOrderRecord) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


