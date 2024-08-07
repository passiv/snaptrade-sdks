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

// StrategyImpact The strategy impact
type StrategyImpact struct {
	EstimatedCommissions *float32 `json:"estimatedCommissions,omitempty"`
	BuyingPowerEffect *float32 `json:"buyingPowerEffect,omitempty"`
	BuyingPowerResult *float32 `json:"buyingPowerResult,omitempty"`
	MaintExcessEffect *float32 `json:"maintExcessEffect,omitempty"`
	MaintExcessResult *float32 `json:"maintExcessResult,omitempty"`
	TradeValueCalculation *string `json:"tradeValueCalculation,omitempty"`
	Legs []StrategyImpactLegsInner `json:"legs,omitempty"`
	Side *string `json:"side,omitempty"`
	Effect *string `json:"effect,omitempty"`
	Price *float32 `json:"price,omitempty"`
	Strategy *string `json:"strategy,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _StrategyImpact StrategyImpact

// NewStrategyImpact instantiates a new StrategyImpact object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewStrategyImpact() *StrategyImpact {
	this := StrategyImpact{}
	return &this
}

// NewStrategyImpactWithDefaults instantiates a new StrategyImpact object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewStrategyImpactWithDefaults() *StrategyImpact {
	this := StrategyImpact{}
	return &this
}

// GetEstimatedCommissions returns the EstimatedCommissions field value if set, zero value otherwise.
func (o *StrategyImpact) GetEstimatedCommissions() float32 {
	if o == nil || isNil(o.EstimatedCommissions) {
		var ret float32
		return ret
	}
	return *o.EstimatedCommissions
}

// GetEstimatedCommissionsOk returns a tuple with the EstimatedCommissions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetEstimatedCommissionsOk() (*float32, bool) {
	if o == nil || isNil(o.EstimatedCommissions) {
    return nil, false
	}
	return o.EstimatedCommissions, true
}

// HasEstimatedCommissions returns a boolean if a field has been set.
func (o *StrategyImpact) HasEstimatedCommissions() bool {
	if o != nil && !isNil(o.EstimatedCommissions) {
		return true
	}

	return false
}

// SetEstimatedCommissions gets a reference to the given float32 and assigns it to the EstimatedCommissions field.
func (o *StrategyImpact) SetEstimatedCommissions(v float32) {
	o.EstimatedCommissions = &v
}

// GetBuyingPowerEffect returns the BuyingPowerEffect field value if set, zero value otherwise.
func (o *StrategyImpact) GetBuyingPowerEffect() float32 {
	if o == nil || isNil(o.BuyingPowerEffect) {
		var ret float32
		return ret
	}
	return *o.BuyingPowerEffect
}

// GetBuyingPowerEffectOk returns a tuple with the BuyingPowerEffect field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetBuyingPowerEffectOk() (*float32, bool) {
	if o == nil || isNil(o.BuyingPowerEffect) {
    return nil, false
	}
	return o.BuyingPowerEffect, true
}

// HasBuyingPowerEffect returns a boolean if a field has been set.
func (o *StrategyImpact) HasBuyingPowerEffect() bool {
	if o != nil && !isNil(o.BuyingPowerEffect) {
		return true
	}

	return false
}

// SetBuyingPowerEffect gets a reference to the given float32 and assigns it to the BuyingPowerEffect field.
func (o *StrategyImpact) SetBuyingPowerEffect(v float32) {
	o.BuyingPowerEffect = &v
}

// GetBuyingPowerResult returns the BuyingPowerResult field value if set, zero value otherwise.
func (o *StrategyImpact) GetBuyingPowerResult() float32 {
	if o == nil || isNil(o.BuyingPowerResult) {
		var ret float32
		return ret
	}
	return *o.BuyingPowerResult
}

// GetBuyingPowerResultOk returns a tuple with the BuyingPowerResult field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetBuyingPowerResultOk() (*float32, bool) {
	if o == nil || isNil(o.BuyingPowerResult) {
    return nil, false
	}
	return o.BuyingPowerResult, true
}

// HasBuyingPowerResult returns a boolean if a field has been set.
func (o *StrategyImpact) HasBuyingPowerResult() bool {
	if o != nil && !isNil(o.BuyingPowerResult) {
		return true
	}

	return false
}

// SetBuyingPowerResult gets a reference to the given float32 and assigns it to the BuyingPowerResult field.
func (o *StrategyImpact) SetBuyingPowerResult(v float32) {
	o.BuyingPowerResult = &v
}

// GetMaintExcessEffect returns the MaintExcessEffect field value if set, zero value otherwise.
func (o *StrategyImpact) GetMaintExcessEffect() float32 {
	if o == nil || isNil(o.MaintExcessEffect) {
		var ret float32
		return ret
	}
	return *o.MaintExcessEffect
}

// GetMaintExcessEffectOk returns a tuple with the MaintExcessEffect field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetMaintExcessEffectOk() (*float32, bool) {
	if o == nil || isNil(o.MaintExcessEffect) {
    return nil, false
	}
	return o.MaintExcessEffect, true
}

// HasMaintExcessEffect returns a boolean if a field has been set.
func (o *StrategyImpact) HasMaintExcessEffect() bool {
	if o != nil && !isNil(o.MaintExcessEffect) {
		return true
	}

	return false
}

// SetMaintExcessEffect gets a reference to the given float32 and assigns it to the MaintExcessEffect field.
func (o *StrategyImpact) SetMaintExcessEffect(v float32) {
	o.MaintExcessEffect = &v
}

// GetMaintExcessResult returns the MaintExcessResult field value if set, zero value otherwise.
func (o *StrategyImpact) GetMaintExcessResult() float32 {
	if o == nil || isNil(o.MaintExcessResult) {
		var ret float32
		return ret
	}
	return *o.MaintExcessResult
}

// GetMaintExcessResultOk returns a tuple with the MaintExcessResult field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetMaintExcessResultOk() (*float32, bool) {
	if o == nil || isNil(o.MaintExcessResult) {
    return nil, false
	}
	return o.MaintExcessResult, true
}

// HasMaintExcessResult returns a boolean if a field has been set.
func (o *StrategyImpact) HasMaintExcessResult() bool {
	if o != nil && !isNil(o.MaintExcessResult) {
		return true
	}

	return false
}

// SetMaintExcessResult gets a reference to the given float32 and assigns it to the MaintExcessResult field.
func (o *StrategyImpact) SetMaintExcessResult(v float32) {
	o.MaintExcessResult = &v
}

// GetTradeValueCalculation returns the TradeValueCalculation field value if set, zero value otherwise.
func (o *StrategyImpact) GetTradeValueCalculation() string {
	if o == nil || isNil(o.TradeValueCalculation) {
		var ret string
		return ret
	}
	return *o.TradeValueCalculation
}

// GetTradeValueCalculationOk returns a tuple with the TradeValueCalculation field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetTradeValueCalculationOk() (*string, bool) {
	if o == nil || isNil(o.TradeValueCalculation) {
    return nil, false
	}
	return o.TradeValueCalculation, true
}

// HasTradeValueCalculation returns a boolean if a field has been set.
func (o *StrategyImpact) HasTradeValueCalculation() bool {
	if o != nil && !isNil(o.TradeValueCalculation) {
		return true
	}

	return false
}

// SetTradeValueCalculation gets a reference to the given string and assigns it to the TradeValueCalculation field.
func (o *StrategyImpact) SetTradeValueCalculation(v string) {
	o.TradeValueCalculation = &v
}

// GetLegs returns the Legs field value if set, zero value otherwise.
func (o *StrategyImpact) GetLegs() []StrategyImpactLegsInner {
	if o == nil || isNil(o.Legs) {
		var ret []StrategyImpactLegsInner
		return ret
	}
	return o.Legs
}

// GetLegsOk returns a tuple with the Legs field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetLegsOk() ([]StrategyImpactLegsInner, bool) {
	if o == nil || isNil(o.Legs) {
    return nil, false
	}
	return o.Legs, true
}

// HasLegs returns a boolean if a field has been set.
func (o *StrategyImpact) HasLegs() bool {
	if o != nil && !isNil(o.Legs) {
		return true
	}

	return false
}

// SetLegs gets a reference to the given []StrategyImpactLegsInner and assigns it to the Legs field.
func (o *StrategyImpact) SetLegs(v []StrategyImpactLegsInner) {
	o.Legs = v
}

// GetSide returns the Side field value if set, zero value otherwise.
func (o *StrategyImpact) GetSide() string {
	if o == nil || isNil(o.Side) {
		var ret string
		return ret
	}
	return *o.Side
}

// GetSideOk returns a tuple with the Side field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetSideOk() (*string, bool) {
	if o == nil || isNil(o.Side) {
    return nil, false
	}
	return o.Side, true
}

// HasSide returns a boolean if a field has been set.
func (o *StrategyImpact) HasSide() bool {
	if o != nil && !isNil(o.Side) {
		return true
	}

	return false
}

// SetSide gets a reference to the given string and assigns it to the Side field.
func (o *StrategyImpact) SetSide(v string) {
	o.Side = &v
}

// GetEffect returns the Effect field value if set, zero value otherwise.
func (o *StrategyImpact) GetEffect() string {
	if o == nil || isNil(o.Effect) {
		var ret string
		return ret
	}
	return *o.Effect
}

// GetEffectOk returns a tuple with the Effect field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetEffectOk() (*string, bool) {
	if o == nil || isNil(o.Effect) {
    return nil, false
	}
	return o.Effect, true
}

// HasEffect returns a boolean if a field has been set.
func (o *StrategyImpact) HasEffect() bool {
	if o != nil && !isNil(o.Effect) {
		return true
	}

	return false
}

// SetEffect gets a reference to the given string and assigns it to the Effect field.
func (o *StrategyImpact) SetEffect(v string) {
	o.Effect = &v
}

// GetPrice returns the Price field value if set, zero value otherwise.
func (o *StrategyImpact) GetPrice() float32 {
	if o == nil || isNil(o.Price) {
		var ret float32
		return ret
	}
	return *o.Price
}

// GetPriceOk returns a tuple with the Price field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetPriceOk() (*float32, bool) {
	if o == nil || isNil(o.Price) {
    return nil, false
	}
	return o.Price, true
}

// HasPrice returns a boolean if a field has been set.
func (o *StrategyImpact) HasPrice() bool {
	if o != nil && !isNil(o.Price) {
		return true
	}

	return false
}

// SetPrice gets a reference to the given float32 and assigns it to the Price field.
func (o *StrategyImpact) SetPrice(v float32) {
	o.Price = &v
}

// GetStrategy returns the Strategy field value if set, zero value otherwise.
func (o *StrategyImpact) GetStrategy() string {
	if o == nil || isNil(o.Strategy) {
		var ret string
		return ret
	}
	return *o.Strategy
}

// GetStrategyOk returns a tuple with the Strategy field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StrategyImpact) GetStrategyOk() (*string, bool) {
	if o == nil || isNil(o.Strategy) {
    return nil, false
	}
	return o.Strategy, true
}

// HasStrategy returns a boolean if a field has been set.
func (o *StrategyImpact) HasStrategy() bool {
	if o != nil && !isNil(o.Strategy) {
		return true
	}

	return false
}

// SetStrategy gets a reference to the given string and assigns it to the Strategy field.
func (o *StrategyImpact) SetStrategy(v string) {
	o.Strategy = &v
}

func (o StrategyImpact) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.EstimatedCommissions) {
		toSerialize["estimatedCommissions"] = o.EstimatedCommissions
	}
	if !isNil(o.BuyingPowerEffect) {
		toSerialize["buyingPowerEffect"] = o.BuyingPowerEffect
	}
	if !isNil(o.BuyingPowerResult) {
		toSerialize["buyingPowerResult"] = o.BuyingPowerResult
	}
	if !isNil(o.MaintExcessEffect) {
		toSerialize["maintExcessEffect"] = o.MaintExcessEffect
	}
	if !isNil(o.MaintExcessResult) {
		toSerialize["maintExcessResult"] = o.MaintExcessResult
	}
	if !isNil(o.TradeValueCalculation) {
		toSerialize["tradeValueCalculation"] = o.TradeValueCalculation
	}
	if !isNil(o.Legs) {
		toSerialize["legs"] = o.Legs
	}
	if !isNil(o.Side) {
		toSerialize["side"] = o.Side
	}
	if !isNil(o.Effect) {
		toSerialize["effect"] = o.Effect
	}
	if !isNil(o.Price) {
		toSerialize["price"] = o.Price
	}
	if !isNil(o.Strategy) {
		toSerialize["strategy"] = o.Strategy
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *StrategyImpact) UnmarshalJSON(bytes []byte) (err error) {
	varStrategyImpact := _StrategyImpact{}

	if err = json.Unmarshal(bytes, &varStrategyImpact); err == nil {
		*o = StrategyImpact(varStrategyImpact)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "estimatedCommissions")
		delete(additionalProperties, "buyingPowerEffect")
		delete(additionalProperties, "buyingPowerResult")
		delete(additionalProperties, "maintExcessEffect")
		delete(additionalProperties, "maintExcessResult")
		delete(additionalProperties, "tradeValueCalculation")
		delete(additionalProperties, "legs")
		delete(additionalProperties, "side")
		delete(additionalProperties, "effect")
		delete(additionalProperties, "price")
		delete(additionalProperties, "strategy")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableStrategyImpact struct {
	value *StrategyImpact
	isSet bool
}

func (v NullableStrategyImpact) Get() *StrategyImpact {
	return v.value
}

func (v *NullableStrategyImpact) Set(val *StrategyImpact) {
	v.value = val
	v.isSet = true
}

func (v NullableStrategyImpact) IsSet() bool {
	return v.isSet
}

func (v *NullableStrategyImpact) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableStrategyImpact(val *StrategyImpact) *NullableStrategyImpact {
	return &NullableStrategyImpact{value: val, isSet: true}
}

func (v NullableStrategyImpact) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableStrategyImpact) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


