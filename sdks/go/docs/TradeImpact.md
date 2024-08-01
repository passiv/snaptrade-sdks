# TradeImpact

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | Pointer to [**Account**](Account.md) |  | [optional] 
**Currency** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**RemainingCash** | Pointer to **float32** | Remaining balance after executing all trades | [optional] 
**EstimatedCommissions** | Pointer to **float32** | Total estimated commissions across all trades to make | [optional] 
**ForexFees** | Pointer to **float32** | Estimated forex fees to pay to excute trades | [optional] 

## Methods

### NewTradeImpact

`func NewTradeImpact() *TradeImpact`

NewTradeImpact instantiates a new TradeImpact object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradeImpactWithDefaults

`func NewTradeImpactWithDefaults() *TradeImpact`

NewTradeImpactWithDefaults instantiates a new TradeImpact object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccount

`func (o *TradeImpact) GetAccount() Account`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *TradeImpact) GetAccountOk() (*Account, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *TradeImpact) SetAccount(v Account)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *TradeImpact) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetCurrency

`func (o *TradeImpact) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *TradeImpact) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *TradeImpact) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *TradeImpact) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetRemainingCash

`func (o *TradeImpact) GetRemainingCash() float32`

GetRemainingCash returns the RemainingCash field if non-nil, zero value otherwise.

### GetRemainingCashOk

`func (o *TradeImpact) GetRemainingCashOk() (*float32, bool)`

GetRemainingCashOk returns a tuple with the RemainingCash field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemainingCash

`func (o *TradeImpact) SetRemainingCash(v float32)`

SetRemainingCash sets RemainingCash field to given value.

### HasRemainingCash

`func (o *TradeImpact) HasRemainingCash() bool`

HasRemainingCash returns a boolean if a field has been set.

### GetEstimatedCommissions

`func (o *TradeImpact) GetEstimatedCommissions() float32`

GetEstimatedCommissions returns the EstimatedCommissions field if non-nil, zero value otherwise.

### GetEstimatedCommissionsOk

`func (o *TradeImpact) GetEstimatedCommissionsOk() (*float32, bool)`

GetEstimatedCommissionsOk returns a tuple with the EstimatedCommissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCommissions

`func (o *TradeImpact) SetEstimatedCommissions(v float32)`

SetEstimatedCommissions sets EstimatedCommissions field to given value.

### HasEstimatedCommissions

`func (o *TradeImpact) HasEstimatedCommissions() bool`

HasEstimatedCommissions returns a boolean if a field has been set.

### GetForexFees

`func (o *TradeImpact) GetForexFees() float32`

GetForexFees returns the ForexFees field if non-nil, zero value otherwise.

### GetForexFeesOk

`func (o *TradeImpact) GetForexFeesOk() (*float32, bool)`

GetForexFeesOk returns a tuple with the ForexFees field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForexFees

`func (o *TradeImpact) SetForexFees(v float32)`

SetForexFees sets ForexFees field to given value.

### HasForexFees

`func (o *TradeImpact) HasForexFees() bool`

HasForexFees returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


