# ManualTradeAndImpact

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Trade** | Pointer to [**ManualTrade**](ManualTrade.md) |  | [optional] 
**TradeImpacts** | Pointer to [**[]ManualTrade**](ManualTrade.md) |  | [optional] 
**CombinedRemainingBalance** | Pointer to [**ManualTradeBalance**](ManualTradeBalance.md) |  | [optional] 

## Methods

### NewManualTradeAndImpact

`func NewManualTradeAndImpact() *ManualTradeAndImpact`

NewManualTradeAndImpact instantiates a new ManualTradeAndImpact object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeAndImpactWithDefaults

`func NewManualTradeAndImpactWithDefaults() *ManualTradeAndImpact`

NewManualTradeAndImpactWithDefaults instantiates a new ManualTradeAndImpact object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTrade

`func (o *ManualTradeAndImpact) GetTrade() ManualTrade`

GetTrade returns the Trade field if non-nil, zero value otherwise.

### GetTradeOk

`func (o *ManualTradeAndImpact) GetTradeOk() (*ManualTrade, bool)`

GetTradeOk returns a tuple with the Trade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrade

`func (o *ManualTradeAndImpact) SetTrade(v ManualTrade)`

SetTrade sets Trade field to given value.

### HasTrade

`func (o *ManualTradeAndImpact) HasTrade() bool`

HasTrade returns a boolean if a field has been set.

### GetTradeImpacts

`func (o *ManualTradeAndImpact) GetTradeImpacts() []ManualTrade`

GetTradeImpacts returns the TradeImpacts field if non-nil, zero value otherwise.

### GetTradeImpactsOk

`func (o *ManualTradeAndImpact) GetTradeImpactsOk() (*[]ManualTrade, bool)`

GetTradeImpactsOk returns a tuple with the TradeImpacts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeImpacts

`func (o *ManualTradeAndImpact) SetTradeImpacts(v []ManualTrade)`

SetTradeImpacts sets TradeImpacts field to given value.

### HasTradeImpacts

`func (o *ManualTradeAndImpact) HasTradeImpacts() bool`

HasTradeImpacts returns a boolean if a field has been set.

### GetCombinedRemainingBalance

`func (o *ManualTradeAndImpact) GetCombinedRemainingBalance() ManualTradeBalance`

GetCombinedRemainingBalance returns the CombinedRemainingBalance field if non-nil, zero value otherwise.

### GetCombinedRemainingBalanceOk

`func (o *ManualTradeAndImpact) GetCombinedRemainingBalanceOk() (*ManualTradeBalance, bool)`

GetCombinedRemainingBalanceOk returns a tuple with the CombinedRemainingBalance field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCombinedRemainingBalance

`func (o *ManualTradeAndImpact) SetCombinedRemainingBalance(v ManualTradeBalance)`

SetCombinedRemainingBalance sets CombinedRemainingBalance field to given value.

### HasCombinedRemainingBalance

`func (o *ManualTradeAndImpact) HasCombinedRemainingBalance() bool`

HasCombinedRemainingBalance returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


