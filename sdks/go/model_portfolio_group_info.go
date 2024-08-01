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

// PortfolioGroupInfo Summary of all relevant information about a portfolio group.
type PortfolioGroupInfo struct {
	Symbols []UniversalSymbol `json:"symbols,omitempty"`
	QuotableSymbols []UniversalSymbol `json:"quotable_symbols,omitempty"`
	Balances []Balance `json:"balances,omitempty"`
	Positions []Position `json:"positions,omitempty"`
	TargetPositions []TargetAsset `json:"target_positions,omitempty"`
	IdealPositions []Position `json:"ideal_positions,omitempty"`
	ExcludedPositions []ExcludedAsset `json:"excluded_positions,omitempty"`
	CalculatedTrades []CalculatedTrade `json:"calculated_trades,omitempty"`
	BrokerageAuthorizations []BrokerageAuthorization `json:"brokerage_authorizations,omitempty"`
	Accuracy *float32 `json:"accuracy,omitempty"`
	Settings *PortfolioGroupSettings `json:"settings,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _PortfolioGroupInfo PortfolioGroupInfo

// NewPortfolioGroupInfo instantiates a new PortfolioGroupInfo object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPortfolioGroupInfo() *PortfolioGroupInfo {
	this := PortfolioGroupInfo{}
	return &this
}

// NewPortfolioGroupInfoWithDefaults instantiates a new PortfolioGroupInfo object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPortfolioGroupInfoWithDefaults() *PortfolioGroupInfo {
	this := PortfolioGroupInfo{}
	return &this
}

// GetSymbols returns the Symbols field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetSymbols() []UniversalSymbol {
	if o == nil || isNil(o.Symbols) {
		var ret []UniversalSymbol
		return ret
	}
	return o.Symbols
}

// GetSymbolsOk returns a tuple with the Symbols field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetSymbolsOk() ([]UniversalSymbol, bool) {
	if o == nil || isNil(o.Symbols) {
    return nil, false
	}
	return o.Symbols, true
}

// HasSymbols returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasSymbols() bool {
	if o != nil && !isNil(o.Symbols) {
		return true
	}

	return false
}

// SetSymbols gets a reference to the given []UniversalSymbol and assigns it to the Symbols field.
func (o *PortfolioGroupInfo) SetSymbols(v []UniversalSymbol) {
	o.Symbols = v
}

// GetQuotableSymbols returns the QuotableSymbols field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetQuotableSymbols() []UniversalSymbol {
	if o == nil || isNil(o.QuotableSymbols) {
		var ret []UniversalSymbol
		return ret
	}
	return o.QuotableSymbols
}

// GetQuotableSymbolsOk returns a tuple with the QuotableSymbols field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetQuotableSymbolsOk() ([]UniversalSymbol, bool) {
	if o == nil || isNil(o.QuotableSymbols) {
    return nil, false
	}
	return o.QuotableSymbols, true
}

// HasQuotableSymbols returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasQuotableSymbols() bool {
	if o != nil && !isNil(o.QuotableSymbols) {
		return true
	}

	return false
}

// SetQuotableSymbols gets a reference to the given []UniversalSymbol and assigns it to the QuotableSymbols field.
func (o *PortfolioGroupInfo) SetQuotableSymbols(v []UniversalSymbol) {
	o.QuotableSymbols = v
}

// GetBalances returns the Balances field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetBalances() []Balance {
	if o == nil || isNil(o.Balances) {
		var ret []Balance
		return ret
	}
	return o.Balances
}

// GetBalancesOk returns a tuple with the Balances field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetBalancesOk() ([]Balance, bool) {
	if o == nil || isNil(o.Balances) {
    return nil, false
	}
	return o.Balances, true
}

// HasBalances returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasBalances() bool {
	if o != nil && !isNil(o.Balances) {
		return true
	}

	return false
}

// SetBalances gets a reference to the given []Balance and assigns it to the Balances field.
func (o *PortfolioGroupInfo) SetBalances(v []Balance) {
	o.Balances = v
}

// GetPositions returns the Positions field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetPositions() []Position {
	if o == nil || isNil(o.Positions) {
		var ret []Position
		return ret
	}
	return o.Positions
}

// GetPositionsOk returns a tuple with the Positions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetPositionsOk() ([]Position, bool) {
	if o == nil || isNil(o.Positions) {
    return nil, false
	}
	return o.Positions, true
}

// HasPositions returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasPositions() bool {
	if o != nil && !isNil(o.Positions) {
		return true
	}

	return false
}

// SetPositions gets a reference to the given []Position and assigns it to the Positions field.
func (o *PortfolioGroupInfo) SetPositions(v []Position) {
	o.Positions = v
}

// GetTargetPositions returns the TargetPositions field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetTargetPositions() []TargetAsset {
	if o == nil || isNil(o.TargetPositions) {
		var ret []TargetAsset
		return ret
	}
	return o.TargetPositions
}

// GetTargetPositionsOk returns a tuple with the TargetPositions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetTargetPositionsOk() ([]TargetAsset, bool) {
	if o == nil || isNil(o.TargetPositions) {
    return nil, false
	}
	return o.TargetPositions, true
}

// HasTargetPositions returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasTargetPositions() bool {
	if o != nil && !isNil(o.TargetPositions) {
		return true
	}

	return false
}

// SetTargetPositions gets a reference to the given []TargetAsset and assigns it to the TargetPositions field.
func (o *PortfolioGroupInfo) SetTargetPositions(v []TargetAsset) {
	o.TargetPositions = v
}

// GetIdealPositions returns the IdealPositions field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetIdealPositions() []Position {
	if o == nil || isNil(o.IdealPositions) {
		var ret []Position
		return ret
	}
	return o.IdealPositions
}

// GetIdealPositionsOk returns a tuple with the IdealPositions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetIdealPositionsOk() ([]Position, bool) {
	if o == nil || isNil(o.IdealPositions) {
    return nil, false
	}
	return o.IdealPositions, true
}

// HasIdealPositions returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasIdealPositions() bool {
	if o != nil && !isNil(o.IdealPositions) {
		return true
	}

	return false
}

// SetIdealPositions gets a reference to the given []Position and assigns it to the IdealPositions field.
func (o *PortfolioGroupInfo) SetIdealPositions(v []Position) {
	o.IdealPositions = v
}

// GetExcludedPositions returns the ExcludedPositions field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetExcludedPositions() []ExcludedAsset {
	if o == nil || isNil(o.ExcludedPositions) {
		var ret []ExcludedAsset
		return ret
	}
	return o.ExcludedPositions
}

// GetExcludedPositionsOk returns a tuple with the ExcludedPositions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetExcludedPositionsOk() ([]ExcludedAsset, bool) {
	if o == nil || isNil(o.ExcludedPositions) {
    return nil, false
	}
	return o.ExcludedPositions, true
}

// HasExcludedPositions returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasExcludedPositions() bool {
	if o != nil && !isNil(o.ExcludedPositions) {
		return true
	}

	return false
}

// SetExcludedPositions gets a reference to the given []ExcludedAsset and assigns it to the ExcludedPositions field.
func (o *PortfolioGroupInfo) SetExcludedPositions(v []ExcludedAsset) {
	o.ExcludedPositions = v
}

// GetCalculatedTrades returns the CalculatedTrades field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetCalculatedTrades() []CalculatedTrade {
	if o == nil || isNil(o.CalculatedTrades) {
		var ret []CalculatedTrade
		return ret
	}
	return o.CalculatedTrades
}

// GetCalculatedTradesOk returns a tuple with the CalculatedTrades field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetCalculatedTradesOk() ([]CalculatedTrade, bool) {
	if o == nil || isNil(o.CalculatedTrades) {
    return nil, false
	}
	return o.CalculatedTrades, true
}

// HasCalculatedTrades returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasCalculatedTrades() bool {
	if o != nil && !isNil(o.CalculatedTrades) {
		return true
	}

	return false
}

// SetCalculatedTrades gets a reference to the given []CalculatedTrade and assigns it to the CalculatedTrades field.
func (o *PortfolioGroupInfo) SetCalculatedTrades(v []CalculatedTrade) {
	o.CalculatedTrades = v
}

// GetBrokerageAuthorizations returns the BrokerageAuthorizations field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetBrokerageAuthorizations() []BrokerageAuthorization {
	if o == nil || isNil(o.BrokerageAuthorizations) {
		var ret []BrokerageAuthorization
		return ret
	}
	return o.BrokerageAuthorizations
}

// GetBrokerageAuthorizationsOk returns a tuple with the BrokerageAuthorizations field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetBrokerageAuthorizationsOk() ([]BrokerageAuthorization, bool) {
	if o == nil || isNil(o.BrokerageAuthorizations) {
    return nil, false
	}
	return o.BrokerageAuthorizations, true
}

// HasBrokerageAuthorizations returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasBrokerageAuthorizations() bool {
	if o != nil && !isNil(o.BrokerageAuthorizations) {
		return true
	}

	return false
}

// SetBrokerageAuthorizations gets a reference to the given []BrokerageAuthorization and assigns it to the BrokerageAuthorizations field.
func (o *PortfolioGroupInfo) SetBrokerageAuthorizations(v []BrokerageAuthorization) {
	o.BrokerageAuthorizations = v
}

// GetAccuracy returns the Accuracy field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetAccuracy() float32 {
	if o == nil || isNil(o.Accuracy) {
		var ret float32
		return ret
	}
	return *o.Accuracy
}

// GetAccuracyOk returns a tuple with the Accuracy field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetAccuracyOk() (*float32, bool) {
	if o == nil || isNil(o.Accuracy) {
    return nil, false
	}
	return o.Accuracy, true
}

// HasAccuracy returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasAccuracy() bool {
	if o != nil && !isNil(o.Accuracy) {
		return true
	}

	return false
}

// SetAccuracy gets a reference to the given float32 and assigns it to the Accuracy field.
func (o *PortfolioGroupInfo) SetAccuracy(v float32) {
	o.Accuracy = &v
}

// GetSettings returns the Settings field value if set, zero value otherwise.
func (o *PortfolioGroupInfo) GetSettings() PortfolioGroupSettings {
	if o == nil || isNil(o.Settings) {
		var ret PortfolioGroupSettings
		return ret
	}
	return *o.Settings
}

// GetSettingsOk returns a tuple with the Settings field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PortfolioGroupInfo) GetSettingsOk() (*PortfolioGroupSettings, bool) {
	if o == nil || isNil(o.Settings) {
    return nil, false
	}
	return o.Settings, true
}

// HasSettings returns a boolean if a field has been set.
func (o *PortfolioGroupInfo) HasSettings() bool {
	if o != nil && !isNil(o.Settings) {
		return true
	}

	return false
}

// SetSettings gets a reference to the given PortfolioGroupSettings and assigns it to the Settings field.
func (o *PortfolioGroupInfo) SetSettings(v PortfolioGroupSettings) {
	o.Settings = &v
}

func (o PortfolioGroupInfo) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Symbols) {
		toSerialize["symbols"] = o.Symbols
	}
	if !isNil(o.QuotableSymbols) {
		toSerialize["quotable_symbols"] = o.QuotableSymbols
	}
	if !isNil(o.Balances) {
		toSerialize["balances"] = o.Balances
	}
	if !isNil(o.Positions) {
		toSerialize["positions"] = o.Positions
	}
	if !isNil(o.TargetPositions) {
		toSerialize["target_positions"] = o.TargetPositions
	}
	if !isNil(o.IdealPositions) {
		toSerialize["ideal_positions"] = o.IdealPositions
	}
	if !isNil(o.ExcludedPositions) {
		toSerialize["excluded_positions"] = o.ExcludedPositions
	}
	if !isNil(o.CalculatedTrades) {
		toSerialize["calculated_trades"] = o.CalculatedTrades
	}
	if !isNil(o.BrokerageAuthorizations) {
		toSerialize["brokerage_authorizations"] = o.BrokerageAuthorizations
	}
	if !isNil(o.Accuracy) {
		toSerialize["accuracy"] = o.Accuracy
	}
	if !isNil(o.Settings) {
		toSerialize["settings"] = o.Settings
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *PortfolioGroupInfo) UnmarshalJSON(bytes []byte) (err error) {
	varPortfolioGroupInfo := _PortfolioGroupInfo{}

	if err = json.Unmarshal(bytes, &varPortfolioGroupInfo); err == nil {
		*o = PortfolioGroupInfo(varPortfolioGroupInfo)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "symbols")
		delete(additionalProperties, "quotable_symbols")
		delete(additionalProperties, "balances")
		delete(additionalProperties, "positions")
		delete(additionalProperties, "target_positions")
		delete(additionalProperties, "ideal_positions")
		delete(additionalProperties, "excluded_positions")
		delete(additionalProperties, "calculated_trades")
		delete(additionalProperties, "brokerage_authorizations")
		delete(additionalProperties, "accuracy")
		delete(additionalProperties, "settings")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullablePortfolioGroupInfo struct {
	value *PortfolioGroupInfo
	isSet bool
}

func (v NullablePortfolioGroupInfo) Get() *PortfolioGroupInfo {
	return v.value
}

func (v *NullablePortfolioGroupInfo) Set(val *PortfolioGroupInfo) {
	v.value = val
	v.isSet = true
}

func (v NullablePortfolioGroupInfo) IsSet() bool {
	return v.isSet
}

func (v *NullablePortfolioGroupInfo) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePortfolioGroupInfo(val *PortfolioGroupInfo) *NullablePortfolioGroupInfo {
	return &NullablePortfolioGroupInfo{value: val, isSet: true}
}

func (v NullablePortfolioGroupInfo) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePortfolioGroupInfo) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


