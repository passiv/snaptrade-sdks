# PortfolioGroupSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BuyOnly** | Pointer to **bool** |  | [optional] 
**CashOptimizer** | Pointer to **bool** |  | [optional] 
**NotifyFrequency** | Pointer to **string** |  | [optional] 
**DriftThreshold** | Pointer to **float32** |  | [optional] 
**PreferredCurrency** | Pointer to [**Currency**](Currency.md) |  | [optional] 

## Methods

### NewPortfolioGroupSettings

`func NewPortfolioGroupSettings() *PortfolioGroupSettings`

NewPortfolioGroupSettings instantiates a new PortfolioGroupSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPortfolioGroupSettingsWithDefaults

`func NewPortfolioGroupSettingsWithDefaults() *PortfolioGroupSettings`

NewPortfolioGroupSettingsWithDefaults instantiates a new PortfolioGroupSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBuyOnly

`func (o *PortfolioGroupSettings) GetBuyOnly() bool`

GetBuyOnly returns the BuyOnly field if non-nil, zero value otherwise.

### GetBuyOnlyOk

`func (o *PortfolioGroupSettings) GetBuyOnlyOk() (*bool, bool)`

GetBuyOnlyOk returns a tuple with the BuyOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuyOnly

`func (o *PortfolioGroupSettings) SetBuyOnly(v bool)`

SetBuyOnly sets BuyOnly field to given value.

### HasBuyOnly

`func (o *PortfolioGroupSettings) HasBuyOnly() bool`

HasBuyOnly returns a boolean if a field has been set.

### GetCashOptimizer

`func (o *PortfolioGroupSettings) GetCashOptimizer() bool`

GetCashOptimizer returns the CashOptimizer field if non-nil, zero value otherwise.

### GetCashOptimizerOk

`func (o *PortfolioGroupSettings) GetCashOptimizerOk() (*bool, bool)`

GetCashOptimizerOk returns a tuple with the CashOptimizer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCashOptimizer

`func (o *PortfolioGroupSettings) SetCashOptimizer(v bool)`

SetCashOptimizer sets CashOptimizer field to given value.

### HasCashOptimizer

`func (o *PortfolioGroupSettings) HasCashOptimizer() bool`

HasCashOptimizer returns a boolean if a field has been set.

### GetNotifyFrequency

`func (o *PortfolioGroupSettings) GetNotifyFrequency() string`

GetNotifyFrequency returns the NotifyFrequency field if non-nil, zero value otherwise.

### GetNotifyFrequencyOk

`func (o *PortfolioGroupSettings) GetNotifyFrequencyOk() (*string, bool)`

GetNotifyFrequencyOk returns a tuple with the NotifyFrequency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotifyFrequency

`func (o *PortfolioGroupSettings) SetNotifyFrequency(v string)`

SetNotifyFrequency sets NotifyFrequency field to given value.

### HasNotifyFrequency

`func (o *PortfolioGroupSettings) HasNotifyFrequency() bool`

HasNotifyFrequency returns a boolean if a field has been set.

### GetDriftThreshold

`func (o *PortfolioGroupSettings) GetDriftThreshold() float32`

GetDriftThreshold returns the DriftThreshold field if non-nil, zero value otherwise.

### GetDriftThresholdOk

`func (o *PortfolioGroupSettings) GetDriftThresholdOk() (*float32, bool)`

GetDriftThresholdOk returns a tuple with the DriftThreshold field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDriftThreshold

`func (o *PortfolioGroupSettings) SetDriftThreshold(v float32)`

SetDriftThreshold sets DriftThreshold field to given value.

### HasDriftThreshold

`func (o *PortfolioGroupSettings) HasDriftThreshold() bool`

HasDriftThreshold returns a boolean if a field has been set.

### GetPreferredCurrency

`func (o *PortfolioGroupSettings) GetPreferredCurrency() Currency`

GetPreferredCurrency returns the PreferredCurrency field if non-nil, zero value otherwise.

### GetPreferredCurrencyOk

`func (o *PortfolioGroupSettings) GetPreferredCurrencyOk() (*Currency, bool)`

GetPreferredCurrencyOk returns a tuple with the PreferredCurrency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreferredCurrency

`func (o *PortfolioGroupSettings) SetPreferredCurrency(v Currency)`

SetPreferredCurrency sets PreferredCurrency field to given value.

### HasPreferredCurrency

`func (o *PortfolioGroupSettings) HasPreferredCurrency() bool`

HasPreferredCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


