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

// UniversalSymbol Uniquely describes a single security + exchange combination across all brokerages.
type UniversalSymbol struct {
	// Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
	Id string `json:"id"`
	// The security's trading ticker symbol. For example \"AAPL\" for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \"Yahoo Finance Market Coverage and Data Delays\"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix.
	Symbol string `json:"symbol"`
	// The raw symbol is `symbol` with the exchange suffix removed. For example, if `symbol` is \"VAB.TO\", then `raw_symbol` is \"VAB\".
	RawSymbol string `json:"raw_symbol"`
	// A human-readable description of the security. This is usually the company name or ETF name.
	Description NullableString `json:"description,omitempty"`
	Currency SymbolCurrency `json:"currency"`
	Exchange *SymbolExchange `json:"exchange,omitempty"`
	Type SecurityType `json:"type"`
	// This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the `figi_code` in the `figi_instrument` child property.
	FigiCode NullableString `json:"figi_code,omitempty"`
	FigiInstrument NullableSymbolFigiInstrument `json:"figi_instrument,omitempty"`
	// This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.
	// Deprecated
	Currencies []Currency `json:"currencies"`
	AdditionalProperties map[string]interface{}
}

type _UniversalSymbol UniversalSymbol

// NewUniversalSymbol instantiates a new UniversalSymbol object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUniversalSymbol(id string, symbol string, rawSymbol string, currency SymbolCurrency, type_ SecurityType, currencies []Currency) *UniversalSymbol {
	this := UniversalSymbol{}
	this.Id = id
	this.Symbol = symbol
	this.RawSymbol = rawSymbol
	this.Currency = currency
	this.Type = type_
	this.Currencies = currencies
	return &this
}

// NewUniversalSymbolWithDefaults instantiates a new UniversalSymbol object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUniversalSymbolWithDefaults() *UniversalSymbol {
	this := UniversalSymbol{}
	return &this
}

// GetId returns the Id field value
func (o *UniversalSymbol) GetId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *UniversalSymbol) GetIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *UniversalSymbol) SetId(v string) {
	o.Id = v
}

// GetSymbol returns the Symbol field value
func (o *UniversalSymbol) GetSymbol() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Symbol
}

// GetSymbolOk returns a tuple with the Symbol field value
// and a boolean to check if the value has been set.
func (o *UniversalSymbol) GetSymbolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Symbol, true
}

// SetSymbol sets field value
func (o *UniversalSymbol) SetSymbol(v string) {
	o.Symbol = v
}

// GetRawSymbol returns the RawSymbol field value
func (o *UniversalSymbol) GetRawSymbol() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.RawSymbol
}

// GetRawSymbolOk returns a tuple with the RawSymbol field value
// and a boolean to check if the value has been set.
func (o *UniversalSymbol) GetRawSymbolOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.RawSymbol, true
}

// SetRawSymbol sets field value
func (o *UniversalSymbol) SetRawSymbol(v string) {
	o.RawSymbol = v
}

// GetDescription returns the Description field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniversalSymbol) GetDescription() string {
	if o == nil || isNil(o.Description.Get()) {
		var ret string
		return ret
	}
	return *o.Description.Get()
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniversalSymbol) GetDescriptionOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.Description.Get(), o.Description.IsSet()
}

// HasDescription returns a boolean if a field has been set.
func (o *UniversalSymbol) HasDescription() bool {
	if o != nil && o.Description.IsSet() {
		return true
	}

	return false
}

// SetDescription gets a reference to the given NullableString and assigns it to the Description field.
func (o *UniversalSymbol) SetDescription(v string) {
	o.Description.Set(&v)
}
// SetDescriptionNil sets the value for Description to be an explicit nil
func (o *UniversalSymbol) SetDescriptionNil() {
	o.Description.Set(nil)
}

// UnsetDescription ensures that no value is present for Description, not even an explicit nil
func (o *UniversalSymbol) UnsetDescription() {
	o.Description.Unset()
}

// GetCurrency returns the Currency field value
func (o *UniversalSymbol) GetCurrency() SymbolCurrency {
	if o == nil {
		var ret SymbolCurrency
		return ret
	}

	return o.Currency
}

// GetCurrencyOk returns a tuple with the Currency field value
// and a boolean to check if the value has been set.
func (o *UniversalSymbol) GetCurrencyOk() (*SymbolCurrency, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Currency, true
}

// SetCurrency sets field value
func (o *UniversalSymbol) SetCurrency(v SymbolCurrency) {
	o.Currency = v
}

// GetExchange returns the Exchange field value if set, zero value otherwise.
func (o *UniversalSymbol) GetExchange() SymbolExchange {
	if o == nil || isNil(o.Exchange) {
		var ret SymbolExchange
		return ret
	}
	return *o.Exchange
}

// GetExchangeOk returns a tuple with the Exchange field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UniversalSymbol) GetExchangeOk() (*SymbolExchange, bool) {
	if o == nil || isNil(o.Exchange) {
    return nil, false
	}
	return o.Exchange, true
}

// HasExchange returns a boolean if a field has been set.
func (o *UniversalSymbol) HasExchange() bool {
	if o != nil && !isNil(o.Exchange) {
		return true
	}

	return false
}

// SetExchange gets a reference to the given SymbolExchange and assigns it to the Exchange field.
func (o *UniversalSymbol) SetExchange(v SymbolExchange) {
	o.Exchange = &v
}

// GetType returns the Type field value
func (o *UniversalSymbol) GetType() SecurityType {
	if o == nil {
		var ret SecurityType
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *UniversalSymbol) GetTypeOk() (*SecurityType, bool) {
	if o == nil {
    return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *UniversalSymbol) SetType(v SecurityType) {
	o.Type = v
}

// GetFigiCode returns the FigiCode field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniversalSymbol) GetFigiCode() string {
	if o == nil || isNil(o.FigiCode.Get()) {
		var ret string
		return ret
	}
	return *o.FigiCode.Get()
}

// GetFigiCodeOk returns a tuple with the FigiCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniversalSymbol) GetFigiCodeOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return o.FigiCode.Get(), o.FigiCode.IsSet()
}

// HasFigiCode returns a boolean if a field has been set.
func (o *UniversalSymbol) HasFigiCode() bool {
	if o != nil && o.FigiCode.IsSet() {
		return true
	}

	return false
}

// SetFigiCode gets a reference to the given NullableString and assigns it to the FigiCode field.
func (o *UniversalSymbol) SetFigiCode(v string) {
	o.FigiCode.Set(&v)
}
// SetFigiCodeNil sets the value for FigiCode to be an explicit nil
func (o *UniversalSymbol) SetFigiCodeNil() {
	o.FigiCode.Set(nil)
}

// UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
func (o *UniversalSymbol) UnsetFigiCode() {
	o.FigiCode.Unset()
}

// GetFigiInstrument returns the FigiInstrument field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *UniversalSymbol) GetFigiInstrument() SymbolFigiInstrument {
	if o == nil || isNil(o.FigiInstrument.Get()) {
		var ret SymbolFigiInstrument
		return ret
	}
	return *o.FigiInstrument.Get()
}

// GetFigiInstrumentOk returns a tuple with the FigiInstrument field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *UniversalSymbol) GetFigiInstrumentOk() (*SymbolFigiInstrument, bool) {
	if o == nil {
    return nil, false
	}
	return o.FigiInstrument.Get(), o.FigiInstrument.IsSet()
}

// HasFigiInstrument returns a boolean if a field has been set.
func (o *UniversalSymbol) HasFigiInstrument() bool {
	if o != nil && o.FigiInstrument.IsSet() {
		return true
	}

	return false
}

// SetFigiInstrument gets a reference to the given NullableSymbolFigiInstrument and assigns it to the FigiInstrument field.
func (o *UniversalSymbol) SetFigiInstrument(v SymbolFigiInstrument) {
	o.FigiInstrument.Set(&v)
}
// SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil
func (o *UniversalSymbol) SetFigiInstrumentNil() {
	o.FigiInstrument.Set(nil)
}

// UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil
func (o *UniversalSymbol) UnsetFigiInstrument() {
	o.FigiInstrument.Unset()
}

// GetCurrencies returns the Currencies field value
// Deprecated
func (o *UniversalSymbol) GetCurrencies() []Currency {
	if o == nil {
		var ret []Currency
		return ret
	}

	return o.Currencies
}

// GetCurrenciesOk returns a tuple with the Currencies field value
// and a boolean to check if the value has been set.
// Deprecated
func (o *UniversalSymbol) GetCurrenciesOk() ([]Currency, bool) {
	if o == nil {
    return nil, false
	}
	return o.Currencies, true
}

// SetCurrencies sets field value
// Deprecated
func (o *UniversalSymbol) SetCurrencies(v []Currency) {
	o.Currencies = v
}

func (o UniversalSymbol) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["symbol"] = o.Symbol
	}
	if true {
		toSerialize["raw_symbol"] = o.RawSymbol
	}
	if o.Description.IsSet() {
		toSerialize["description"] = o.Description.Get()
	}
	if true {
		toSerialize["currency"] = o.Currency
	}
	if !isNil(o.Exchange) {
		toSerialize["exchange"] = o.Exchange
	}
	if true {
		toSerialize["type"] = o.Type
	}
	if o.FigiCode.IsSet() {
		toSerialize["figi_code"] = o.FigiCode.Get()
	}
	if o.FigiInstrument.IsSet() {
		toSerialize["figi_instrument"] = o.FigiInstrument.Get()
	}
	if true {
		toSerialize["currencies"] = o.Currencies
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *UniversalSymbol) UnmarshalJSON(bytes []byte) (err error) {
	varUniversalSymbol := _UniversalSymbol{}

	if err = json.Unmarshal(bytes, &varUniversalSymbol); err == nil {
		*o = UniversalSymbol(varUniversalSymbol)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "id")
		delete(additionalProperties, "symbol")
		delete(additionalProperties, "raw_symbol")
		delete(additionalProperties, "description")
		delete(additionalProperties, "currency")
		delete(additionalProperties, "exchange")
		delete(additionalProperties, "type")
		delete(additionalProperties, "figi_code")
		delete(additionalProperties, "figi_instrument")
		delete(additionalProperties, "currencies")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableUniversalSymbol struct {
	value *UniversalSymbol
	isSet bool
}

func (v NullableUniversalSymbol) Get() *UniversalSymbol {
	return v.value
}

func (v *NullableUniversalSymbol) Set(val *UniversalSymbol) {
	v.value = val
	v.isSet = true
}

func (v NullableUniversalSymbol) IsSet() bool {
	return v.isSet
}

func (v *NullableUniversalSymbol) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUniversalSymbol(val *UniversalSymbol) *NullableUniversalSymbol {
	return &NullableUniversalSymbol{value: val, isSet: true}
}

func (v NullableUniversalSymbol) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUniversalSymbol) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


