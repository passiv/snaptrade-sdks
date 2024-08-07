# PerformanceCustom

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalEquityTimeframe** | Pointer to [**[]PastValue**](PastValue.md) |  | [optional] 
**Contributions** | Pointer to [**NetContributions**](NetContributions.md) |  | [optional] 
**ContributionTimeframe** | Pointer to [**[]PastValue**](PastValue.md) |  | [optional] 
**ContributionTimeframeCumulative** | Pointer to [**[]PastValue**](PastValue.md) |  | [optional] 
**WithdrawalTimeframe** | Pointer to [**[]PastValue**](PastValue.md) |  | [optional] 
**ContributionStreak** | Pointer to **NullableFloat32** | Current streak of cosecutive months where contributions were made | [optional] 
**ContributionMonthsContributed** | Pointer to **NullableFloat32** | Number of months in the timeframe with contributions | [optional] 
**ContributionTotalMonths** | Pointer to **NullableFloat32** | Total months in timeframe | [optional] 
**Dividends** | Pointer to [**[]NetDividend**](NetDividend.md) |  | [optional] 
**DividendIncome** | Pointer to **NullableFloat32** | Total dividends received over the timeframe | [optional] 
**MonthlyDividends** | Pointer to **NullableFloat32** | Average dividends received per month over the timeframe | [optional] 
**BadTickers** | Pointer to **[]string** | list of tickers which may not be supported or may not have accurate price data | [optional] 
**DividendTimeline** | Pointer to [**[]MonthlyDividends**](MonthlyDividends.md) |  | [optional] 
**Commissions** | Pointer to **NullableFloat32** | commissions incurred during the timeframe | [optional] 
**ForexFees** | Pointer to **NullableFloat32** | forex fees incurred during the timeframe | [optional] 
**Fees** | Pointer to **NullableFloat32** | other fees incurred during the timeframe | [optional] 
**RateOfReturn** | Pointer to **NullableFloat32** | The return rate over the timeframe. Annualized if timeframe is longer than 1 year | [optional] 
**ReturnRateTimeframe** | Pointer to [**[]SubPeriodReturnRate**](SubPeriodReturnRate.md) |  | [optional] 
**DetailedMode** | Pointer to **bool** | Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes) | [optional] 

## Methods

### NewPerformanceCustom

`func NewPerformanceCustom() *PerformanceCustom`

NewPerformanceCustom instantiates a new PerformanceCustom object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPerformanceCustomWithDefaults

`func NewPerformanceCustomWithDefaults() *PerformanceCustom`

NewPerformanceCustomWithDefaults instantiates a new PerformanceCustom object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalEquityTimeframe

`func (o *PerformanceCustom) GetTotalEquityTimeframe() []PastValue`

GetTotalEquityTimeframe returns the TotalEquityTimeframe field if non-nil, zero value otherwise.

### GetTotalEquityTimeframeOk

`func (o *PerformanceCustom) GetTotalEquityTimeframeOk() (*[]PastValue, bool)`

GetTotalEquityTimeframeOk returns a tuple with the TotalEquityTimeframe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalEquityTimeframe

`func (o *PerformanceCustom) SetTotalEquityTimeframe(v []PastValue)`

SetTotalEquityTimeframe sets TotalEquityTimeframe field to given value.

### HasTotalEquityTimeframe

`func (o *PerformanceCustom) HasTotalEquityTimeframe() bool`

HasTotalEquityTimeframe returns a boolean if a field has been set.

### GetContributions

`func (o *PerformanceCustom) GetContributions() NetContributions`

GetContributions returns the Contributions field if non-nil, zero value otherwise.

### GetContributionsOk

`func (o *PerformanceCustom) GetContributionsOk() (*NetContributions, bool)`

GetContributionsOk returns a tuple with the Contributions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContributions

`func (o *PerformanceCustom) SetContributions(v NetContributions)`

SetContributions sets Contributions field to given value.

### HasContributions

`func (o *PerformanceCustom) HasContributions() bool`

HasContributions returns a boolean if a field has been set.

### GetContributionTimeframe

`func (o *PerformanceCustom) GetContributionTimeframe() []PastValue`

GetContributionTimeframe returns the ContributionTimeframe field if non-nil, zero value otherwise.

### GetContributionTimeframeOk

`func (o *PerformanceCustom) GetContributionTimeframeOk() (*[]PastValue, bool)`

GetContributionTimeframeOk returns a tuple with the ContributionTimeframe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContributionTimeframe

`func (o *PerformanceCustom) SetContributionTimeframe(v []PastValue)`

SetContributionTimeframe sets ContributionTimeframe field to given value.

### HasContributionTimeframe

`func (o *PerformanceCustom) HasContributionTimeframe() bool`

HasContributionTimeframe returns a boolean if a field has been set.

### GetContributionTimeframeCumulative

`func (o *PerformanceCustom) GetContributionTimeframeCumulative() []PastValue`

GetContributionTimeframeCumulative returns the ContributionTimeframeCumulative field if non-nil, zero value otherwise.

### GetContributionTimeframeCumulativeOk

`func (o *PerformanceCustom) GetContributionTimeframeCumulativeOk() (*[]PastValue, bool)`

GetContributionTimeframeCumulativeOk returns a tuple with the ContributionTimeframeCumulative field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContributionTimeframeCumulative

`func (o *PerformanceCustom) SetContributionTimeframeCumulative(v []PastValue)`

SetContributionTimeframeCumulative sets ContributionTimeframeCumulative field to given value.

### HasContributionTimeframeCumulative

`func (o *PerformanceCustom) HasContributionTimeframeCumulative() bool`

HasContributionTimeframeCumulative returns a boolean if a field has been set.

### GetWithdrawalTimeframe

`func (o *PerformanceCustom) GetWithdrawalTimeframe() []PastValue`

GetWithdrawalTimeframe returns the WithdrawalTimeframe field if non-nil, zero value otherwise.

### GetWithdrawalTimeframeOk

`func (o *PerformanceCustom) GetWithdrawalTimeframeOk() (*[]PastValue, bool)`

GetWithdrawalTimeframeOk returns a tuple with the WithdrawalTimeframe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWithdrawalTimeframe

`func (o *PerformanceCustom) SetWithdrawalTimeframe(v []PastValue)`

SetWithdrawalTimeframe sets WithdrawalTimeframe field to given value.

### HasWithdrawalTimeframe

`func (o *PerformanceCustom) HasWithdrawalTimeframe() bool`

HasWithdrawalTimeframe returns a boolean if a field has been set.

### GetContributionStreak

`func (o *PerformanceCustom) GetContributionStreak() float32`

GetContributionStreak returns the ContributionStreak field if non-nil, zero value otherwise.

### GetContributionStreakOk

`func (o *PerformanceCustom) GetContributionStreakOk() (*float32, bool)`

GetContributionStreakOk returns a tuple with the ContributionStreak field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContributionStreak

`func (o *PerformanceCustom) SetContributionStreak(v float32)`

SetContributionStreak sets ContributionStreak field to given value.

### HasContributionStreak

`func (o *PerformanceCustom) HasContributionStreak() bool`

HasContributionStreak returns a boolean if a field has been set.

### SetContributionStreakNil

`func (o *PerformanceCustom) SetContributionStreakNil(b bool)`

 SetContributionStreakNil sets the value for ContributionStreak to be an explicit nil

### UnsetContributionStreak
`func (o *PerformanceCustom) UnsetContributionStreak()`

UnsetContributionStreak ensures that no value is present for ContributionStreak, not even an explicit nil
### GetContributionMonthsContributed

`func (o *PerformanceCustom) GetContributionMonthsContributed() float32`

GetContributionMonthsContributed returns the ContributionMonthsContributed field if non-nil, zero value otherwise.

### GetContributionMonthsContributedOk

`func (o *PerformanceCustom) GetContributionMonthsContributedOk() (*float32, bool)`

GetContributionMonthsContributedOk returns a tuple with the ContributionMonthsContributed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContributionMonthsContributed

`func (o *PerformanceCustom) SetContributionMonthsContributed(v float32)`

SetContributionMonthsContributed sets ContributionMonthsContributed field to given value.

### HasContributionMonthsContributed

`func (o *PerformanceCustom) HasContributionMonthsContributed() bool`

HasContributionMonthsContributed returns a boolean if a field has been set.

### SetContributionMonthsContributedNil

`func (o *PerformanceCustom) SetContributionMonthsContributedNil(b bool)`

 SetContributionMonthsContributedNil sets the value for ContributionMonthsContributed to be an explicit nil

### UnsetContributionMonthsContributed
`func (o *PerformanceCustom) UnsetContributionMonthsContributed()`

UnsetContributionMonthsContributed ensures that no value is present for ContributionMonthsContributed, not even an explicit nil
### GetContributionTotalMonths

`func (o *PerformanceCustom) GetContributionTotalMonths() float32`

GetContributionTotalMonths returns the ContributionTotalMonths field if non-nil, zero value otherwise.

### GetContributionTotalMonthsOk

`func (o *PerformanceCustom) GetContributionTotalMonthsOk() (*float32, bool)`

GetContributionTotalMonthsOk returns a tuple with the ContributionTotalMonths field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContributionTotalMonths

`func (o *PerformanceCustom) SetContributionTotalMonths(v float32)`

SetContributionTotalMonths sets ContributionTotalMonths field to given value.

### HasContributionTotalMonths

`func (o *PerformanceCustom) HasContributionTotalMonths() bool`

HasContributionTotalMonths returns a boolean if a field has been set.

### SetContributionTotalMonthsNil

`func (o *PerformanceCustom) SetContributionTotalMonthsNil(b bool)`

 SetContributionTotalMonthsNil sets the value for ContributionTotalMonths to be an explicit nil

### UnsetContributionTotalMonths
`func (o *PerformanceCustom) UnsetContributionTotalMonths()`

UnsetContributionTotalMonths ensures that no value is present for ContributionTotalMonths, not even an explicit nil
### GetDividends

`func (o *PerformanceCustom) GetDividends() []NetDividend`

GetDividends returns the Dividends field if non-nil, zero value otherwise.

### GetDividendsOk

`func (o *PerformanceCustom) GetDividendsOk() (*[]NetDividend, bool)`

GetDividendsOk returns a tuple with the Dividends field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDividends

`func (o *PerformanceCustom) SetDividends(v []NetDividend)`

SetDividends sets Dividends field to given value.

### HasDividends

`func (o *PerformanceCustom) HasDividends() bool`

HasDividends returns a boolean if a field has been set.

### GetDividendIncome

`func (o *PerformanceCustom) GetDividendIncome() float32`

GetDividendIncome returns the DividendIncome field if non-nil, zero value otherwise.

### GetDividendIncomeOk

`func (o *PerformanceCustom) GetDividendIncomeOk() (*float32, bool)`

GetDividendIncomeOk returns a tuple with the DividendIncome field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDividendIncome

`func (o *PerformanceCustom) SetDividendIncome(v float32)`

SetDividendIncome sets DividendIncome field to given value.

### HasDividendIncome

`func (o *PerformanceCustom) HasDividendIncome() bool`

HasDividendIncome returns a boolean if a field has been set.

### SetDividendIncomeNil

`func (o *PerformanceCustom) SetDividendIncomeNil(b bool)`

 SetDividendIncomeNil sets the value for DividendIncome to be an explicit nil

### UnsetDividendIncome
`func (o *PerformanceCustom) UnsetDividendIncome()`

UnsetDividendIncome ensures that no value is present for DividendIncome, not even an explicit nil
### GetMonthlyDividends

`func (o *PerformanceCustom) GetMonthlyDividends() float32`

GetMonthlyDividends returns the MonthlyDividends field if non-nil, zero value otherwise.

### GetMonthlyDividendsOk

`func (o *PerformanceCustom) GetMonthlyDividendsOk() (*float32, bool)`

GetMonthlyDividendsOk returns a tuple with the MonthlyDividends field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMonthlyDividends

`func (o *PerformanceCustom) SetMonthlyDividends(v float32)`

SetMonthlyDividends sets MonthlyDividends field to given value.

### HasMonthlyDividends

`func (o *PerformanceCustom) HasMonthlyDividends() bool`

HasMonthlyDividends returns a boolean if a field has been set.

### SetMonthlyDividendsNil

`func (o *PerformanceCustom) SetMonthlyDividendsNil(b bool)`

 SetMonthlyDividendsNil sets the value for MonthlyDividends to be an explicit nil

### UnsetMonthlyDividends
`func (o *PerformanceCustom) UnsetMonthlyDividends()`

UnsetMonthlyDividends ensures that no value is present for MonthlyDividends, not even an explicit nil
### GetBadTickers

`func (o *PerformanceCustom) GetBadTickers() []*string`

GetBadTickers returns the BadTickers field if non-nil, zero value otherwise.

### GetBadTickersOk

`func (o *PerformanceCustom) GetBadTickersOk() (*[]*string, bool)`

GetBadTickersOk returns a tuple with the BadTickers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBadTickers

`func (o *PerformanceCustom) SetBadTickers(v []*string)`

SetBadTickers sets BadTickers field to given value.

### HasBadTickers

`func (o *PerformanceCustom) HasBadTickers() bool`

HasBadTickers returns a boolean if a field has been set.

### GetDividendTimeline

`func (o *PerformanceCustom) GetDividendTimeline() []MonthlyDividends`

GetDividendTimeline returns the DividendTimeline field if non-nil, zero value otherwise.

### GetDividendTimelineOk

`func (o *PerformanceCustom) GetDividendTimelineOk() (*[]MonthlyDividends, bool)`

GetDividendTimelineOk returns a tuple with the DividendTimeline field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDividendTimeline

`func (o *PerformanceCustom) SetDividendTimeline(v []MonthlyDividends)`

SetDividendTimeline sets DividendTimeline field to given value.

### HasDividendTimeline

`func (o *PerformanceCustom) HasDividendTimeline() bool`

HasDividendTimeline returns a boolean if a field has been set.

### GetCommissions

`func (o *PerformanceCustom) GetCommissions() float32`

GetCommissions returns the Commissions field if non-nil, zero value otherwise.

### GetCommissionsOk

`func (o *PerformanceCustom) GetCommissionsOk() (*float32, bool)`

GetCommissionsOk returns a tuple with the Commissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommissions

`func (o *PerformanceCustom) SetCommissions(v float32)`

SetCommissions sets Commissions field to given value.

### HasCommissions

`func (o *PerformanceCustom) HasCommissions() bool`

HasCommissions returns a boolean if a field has been set.

### SetCommissionsNil

`func (o *PerformanceCustom) SetCommissionsNil(b bool)`

 SetCommissionsNil sets the value for Commissions to be an explicit nil

### UnsetCommissions
`func (o *PerformanceCustom) UnsetCommissions()`

UnsetCommissions ensures that no value is present for Commissions, not even an explicit nil
### GetForexFees

`func (o *PerformanceCustom) GetForexFees() float32`

GetForexFees returns the ForexFees field if non-nil, zero value otherwise.

### GetForexFeesOk

`func (o *PerformanceCustom) GetForexFeesOk() (*float32, bool)`

GetForexFeesOk returns a tuple with the ForexFees field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForexFees

`func (o *PerformanceCustom) SetForexFees(v float32)`

SetForexFees sets ForexFees field to given value.

### HasForexFees

`func (o *PerformanceCustom) HasForexFees() bool`

HasForexFees returns a boolean if a field has been set.

### SetForexFeesNil

`func (o *PerformanceCustom) SetForexFeesNil(b bool)`

 SetForexFeesNil sets the value for ForexFees to be an explicit nil

### UnsetForexFees
`func (o *PerformanceCustom) UnsetForexFees()`

UnsetForexFees ensures that no value is present for ForexFees, not even an explicit nil
### GetFees

`func (o *PerformanceCustom) GetFees() float32`

GetFees returns the Fees field if non-nil, zero value otherwise.

### GetFeesOk

`func (o *PerformanceCustom) GetFeesOk() (*float32, bool)`

GetFeesOk returns a tuple with the Fees field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFees

`func (o *PerformanceCustom) SetFees(v float32)`

SetFees sets Fees field to given value.

### HasFees

`func (o *PerformanceCustom) HasFees() bool`

HasFees returns a boolean if a field has been set.

### SetFeesNil

`func (o *PerformanceCustom) SetFeesNil(b bool)`

 SetFeesNil sets the value for Fees to be an explicit nil

### UnsetFees
`func (o *PerformanceCustom) UnsetFees()`

UnsetFees ensures that no value is present for Fees, not even an explicit nil
### GetRateOfReturn

`func (o *PerformanceCustom) GetRateOfReturn() float32`

GetRateOfReturn returns the RateOfReturn field if non-nil, zero value otherwise.

### GetRateOfReturnOk

`func (o *PerformanceCustom) GetRateOfReturnOk() (*float32, bool)`

GetRateOfReturnOk returns a tuple with the RateOfReturn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateOfReturn

`func (o *PerformanceCustom) SetRateOfReturn(v float32)`

SetRateOfReturn sets RateOfReturn field to given value.

### HasRateOfReturn

`func (o *PerformanceCustom) HasRateOfReturn() bool`

HasRateOfReturn returns a boolean if a field has been set.

### SetRateOfReturnNil

`func (o *PerformanceCustom) SetRateOfReturnNil(b bool)`

 SetRateOfReturnNil sets the value for RateOfReturn to be an explicit nil

### UnsetRateOfReturn
`func (o *PerformanceCustom) UnsetRateOfReturn()`

UnsetRateOfReturn ensures that no value is present for RateOfReturn, not even an explicit nil
### GetReturnRateTimeframe

`func (o *PerformanceCustom) GetReturnRateTimeframe() []SubPeriodReturnRate`

GetReturnRateTimeframe returns the ReturnRateTimeframe field if non-nil, zero value otherwise.

### GetReturnRateTimeframeOk

`func (o *PerformanceCustom) GetReturnRateTimeframeOk() (*[]SubPeriodReturnRate, bool)`

GetReturnRateTimeframeOk returns a tuple with the ReturnRateTimeframe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReturnRateTimeframe

`func (o *PerformanceCustom) SetReturnRateTimeframe(v []SubPeriodReturnRate)`

SetReturnRateTimeframe sets ReturnRateTimeframe field to given value.

### HasReturnRateTimeframe

`func (o *PerformanceCustom) HasReturnRateTimeframe() bool`

HasReturnRateTimeframe returns a boolean if a field has been set.

### GetDetailedMode

`func (o *PerformanceCustom) GetDetailedMode() bool`

GetDetailedMode returns the DetailedMode field if non-nil, zero value otherwise.

### GetDetailedModeOk

`func (o *PerformanceCustom) GetDetailedModeOk() (*bool, bool)`

GetDetailedModeOk returns a tuple with the DetailedMode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetailedMode

`func (o *PerformanceCustom) SetDetailedMode(v bool)`

SetDetailedMode sets DetailedMode field to given value.

### HasDetailedMode

`func (o *PerformanceCustom) HasDetailedMode() bool`

HasDetailedMode returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


