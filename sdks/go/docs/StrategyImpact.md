# StrategyImpact

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EstimatedCommissions** | Pointer to **float32** |  | [optional] 
**BuyingPowerEffect** | Pointer to **float32** |  | [optional] 
**BuyingPowerResult** | Pointer to **float32** |  | [optional] 
**MaintExcessEffect** | Pointer to **float32** |  | [optional] 
**MaintExcessResult** | Pointer to **float32** |  | [optional] 
**TradeValueCalculation** | Pointer to **string** |  | [optional] 
**Legs** | Pointer to [**[]StrategyImpactLegsInner**](StrategyImpactLegsInner.md) |  | [optional] 
**Side** | Pointer to **string** |  | [optional] 
**Effect** | Pointer to **string** |  | [optional] 
**Price** | Pointer to **float32** |  | [optional] 
**Strategy** | Pointer to **string** |  | [optional] 

## Methods

### NewStrategyImpact

`func NewStrategyImpact() *StrategyImpact`

NewStrategyImpact instantiates a new StrategyImpact object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStrategyImpactWithDefaults

`func NewStrategyImpactWithDefaults() *StrategyImpact`

NewStrategyImpactWithDefaults instantiates a new StrategyImpact object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEstimatedCommissions

`func (o *StrategyImpact) GetEstimatedCommissions() float32`

GetEstimatedCommissions returns the EstimatedCommissions field if non-nil, zero value otherwise.

### GetEstimatedCommissionsOk

`func (o *StrategyImpact) GetEstimatedCommissionsOk() (*float32, bool)`

GetEstimatedCommissionsOk returns a tuple with the EstimatedCommissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCommissions

`func (o *StrategyImpact) SetEstimatedCommissions(v float32)`

SetEstimatedCommissions sets EstimatedCommissions field to given value.

### HasEstimatedCommissions

`func (o *StrategyImpact) HasEstimatedCommissions() bool`

HasEstimatedCommissions returns a boolean if a field has been set.

### GetBuyingPowerEffect

`func (o *StrategyImpact) GetBuyingPowerEffect() float32`

GetBuyingPowerEffect returns the BuyingPowerEffect field if non-nil, zero value otherwise.

### GetBuyingPowerEffectOk

`func (o *StrategyImpact) GetBuyingPowerEffectOk() (*float32, bool)`

GetBuyingPowerEffectOk returns a tuple with the BuyingPowerEffect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyingPowerEffect

`func (o *StrategyImpact) SetBuyingPowerEffect(v float32)`

SetBuyingPowerEffect sets BuyingPowerEffect field to given value.

### HasBuyingPowerEffect

`func (o *StrategyImpact) HasBuyingPowerEffect() bool`

HasBuyingPowerEffect returns a boolean if a field has been set.

### GetBuyingPowerResult

`func (o *StrategyImpact) GetBuyingPowerResult() float32`

GetBuyingPowerResult returns the BuyingPowerResult field if non-nil, zero value otherwise.

### GetBuyingPowerResultOk

`func (o *StrategyImpact) GetBuyingPowerResultOk() (*float32, bool)`

GetBuyingPowerResultOk returns a tuple with the BuyingPowerResult field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyingPowerResult

`func (o *StrategyImpact) SetBuyingPowerResult(v float32)`

SetBuyingPowerResult sets BuyingPowerResult field to given value.

### HasBuyingPowerResult

`func (o *StrategyImpact) HasBuyingPowerResult() bool`

HasBuyingPowerResult returns a boolean if a field has been set.

### GetMaintExcessEffect

`func (o *StrategyImpact) GetMaintExcessEffect() float32`

GetMaintExcessEffect returns the MaintExcessEffect field if non-nil, zero value otherwise.

### GetMaintExcessEffectOk

`func (o *StrategyImpact) GetMaintExcessEffectOk() (*float32, bool)`

GetMaintExcessEffectOk returns a tuple with the MaintExcessEffect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaintExcessEffect

`func (o *StrategyImpact) SetMaintExcessEffect(v float32)`

SetMaintExcessEffect sets MaintExcessEffect field to given value.

### HasMaintExcessEffect

`func (o *StrategyImpact) HasMaintExcessEffect() bool`

HasMaintExcessEffect returns a boolean if a field has been set.

### GetMaintExcessResult

`func (o *StrategyImpact) GetMaintExcessResult() float32`

GetMaintExcessResult returns the MaintExcessResult field if non-nil, zero value otherwise.

### GetMaintExcessResultOk

`func (o *StrategyImpact) GetMaintExcessResultOk() (*float32, bool)`

GetMaintExcessResultOk returns a tuple with the MaintExcessResult field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaintExcessResult

`func (o *StrategyImpact) SetMaintExcessResult(v float32)`

SetMaintExcessResult sets MaintExcessResult field to given value.

### HasMaintExcessResult

`func (o *StrategyImpact) HasMaintExcessResult() bool`

HasMaintExcessResult returns a boolean if a field has been set.

### GetTradeValueCalculation

`func (o *StrategyImpact) GetTradeValueCalculation() string`

GetTradeValueCalculation returns the TradeValueCalculation field if non-nil, zero value otherwise.

### GetTradeValueCalculationOk

`func (o *StrategyImpact) GetTradeValueCalculationOk() (*string, bool)`

GetTradeValueCalculationOk returns a tuple with the TradeValueCalculation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeValueCalculation

`func (o *StrategyImpact) SetTradeValueCalculation(v string)`

SetTradeValueCalculation sets TradeValueCalculation field to given value.

### HasTradeValueCalculation

`func (o *StrategyImpact) HasTradeValueCalculation() bool`

HasTradeValueCalculation returns a boolean if a field has been set.

### GetLegs

`func (o *StrategyImpact) GetLegs() []StrategyImpactLegsInner`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *StrategyImpact) GetLegsOk() (*[]StrategyImpactLegsInner, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *StrategyImpact) SetLegs(v []StrategyImpactLegsInner)`

SetLegs sets Legs field to given value.

### HasLegs

`func (o *StrategyImpact) HasLegs() bool`

HasLegs returns a boolean if a field has been set.

### GetSide

`func (o *StrategyImpact) GetSide() string`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *StrategyImpact) GetSideOk() (*string, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *StrategyImpact) SetSide(v string)`

SetSide sets Side field to given value.

### HasSide

`func (o *StrategyImpact) HasSide() bool`

HasSide returns a boolean if a field has been set.

### GetEffect

`func (o *StrategyImpact) GetEffect() string`

GetEffect returns the Effect field if non-nil, zero value otherwise.

### GetEffectOk

`func (o *StrategyImpact) GetEffectOk() (*string, bool)`

GetEffectOk returns a tuple with the Effect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffect

`func (o *StrategyImpact) SetEffect(v string)`

SetEffect sets Effect field to given value.

### HasEffect

`func (o *StrategyImpact) HasEffect() bool`

HasEffect returns a boolean if a field has been set.

### GetPrice

`func (o *StrategyImpact) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *StrategyImpact) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *StrategyImpact) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *StrategyImpact) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetStrategy

`func (o *StrategyImpact) GetStrategy() string`

GetStrategy returns the Strategy field if non-nil, zero value otherwise.

### GetStrategyOk

`func (o *StrategyImpact) GetStrategyOk() (*string, bool)`

GetStrategyOk returns a tuple with the Strategy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategy

`func (o *StrategyImpact) SetStrategy(v string)`

SetStrategy sets Strategy field to given value.

### HasStrategy

`func (o *StrategyImpact) HasStrategy() bool`

HasStrategy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


