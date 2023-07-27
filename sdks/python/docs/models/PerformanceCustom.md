# snaptrade_client.model.performance_custom.PerformanceCustom

Performance Custom Response Object

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Performance Custom Response Object | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**totalEquityTimeframe** | [**PerformanceCustomTotalEquityTimeframe**](PerformanceCustomTotalEquityTimeframe.md) | [**PerformanceCustomTotalEquityTimeframe**](PerformanceCustomTotalEquityTimeframe.md) |  | [optional] 
**contributions** | [**NetContributions**](NetContributions.md) | [**NetContributions**](NetContributions.md) |  | [optional] 
**contributionTimeframe** | [**PerformanceCustomContributionTimeframe**](PerformanceCustomContributionTimeframe.md) | [**PerformanceCustomContributionTimeframe**](PerformanceCustomContributionTimeframe.md) |  | [optional] 
**contributionTimeframeCumulative** | [**PerformanceCustomContributionTimeframeCumulative**](PerformanceCustomContributionTimeframeCumulative.md) | [**PerformanceCustomContributionTimeframeCumulative**](PerformanceCustomContributionTimeframeCumulative.md) |  | [optional] 
**withdrawalTimeframe** | [**PerformanceCustomWithdrawalTimeframe**](PerformanceCustomWithdrawalTimeframe.md) | [**PerformanceCustomWithdrawalTimeframe**](PerformanceCustomWithdrawalTimeframe.md) |  | [optional] 
**contributionStreak** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Current streak of cosecutive months where contributions were made | [optional] 
**contributionMonthsContributed** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Number of months in the timeframe with contributions | [optional] 
**contributionTotalMonths** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Total months in timeframe | [optional] 
**dividends** | [**PerformanceCustomDividends**](PerformanceCustomDividends.md) | [**PerformanceCustomDividends**](PerformanceCustomDividends.md) |  | [optional] 
**dividendIncome** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Total dividends received over the timeframe | [optional] 
**monthlyDividends** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Average dividends received per month over the timeframe | [optional] 
**badTickers** | [**PerformanceCustomBadTickers**](PerformanceCustomBadTickers.md) | [**PerformanceCustomBadTickers**](PerformanceCustomBadTickers.md) |  | [optional] 
**dividendTimeline** | [**PerformanceCustomDividendTimeline**](PerformanceCustomDividendTimeline.md) | [**PerformanceCustomDividendTimeline**](PerformanceCustomDividendTimeline.md) |  | [optional] 
**commissions** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | commissions incurred during the timeframe | [optional] 
**forexFees** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | forex fees incurred during the timeframe | [optional] 
**fees** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | other fees incurred during the timeframe | [optional] 
**rateOfReturn** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | The return rate over the timeframe. Annualized if timeframe is longer than 1 year | [optional] 
**returnRateTimeframe** | [**PerformanceCustomReturnRateTimeframe**](PerformanceCustomReturnRateTimeframe.md) | [**PerformanceCustomReturnRateTimeframe**](PerformanceCustomReturnRateTimeframe.md) |  | [optional] 
**detailedMode** | bool,  | BoolClass,  | Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes) | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

