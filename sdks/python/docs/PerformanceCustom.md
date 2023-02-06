# PerformanceCustom

Performance Custom Response Object

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_equity_timeframe** | [**[PastValue]**](PastValue.md) |  | [optional] 
**contributions** | [**NetContributions**](NetContributions.md) |  | [optional] 
**contribution_timeframe** | [**[PastValue]**](PastValue.md) |  | [optional] 
**contribution_timeframe_cumulative** | [**[PastValue]**](PastValue.md) |  | [optional] 
**withdrawal_timeframe** | [**[PastValue]**](PastValue.md) |  | [optional] 
**contribution_streak** | **float** | Current streak of cosecutive months where contributions were made | [optional] 
**contribution_months_contributed** | **float** | Number of months in the timeframe with contributions | [optional] 
**contribution_total_months** | **float** | Total months in timeframe | [optional] 
**dividends** | [**[NetDividend]**](NetDividend.md) |  | [optional] 
**dividend_income** | **float** | Total dividends received over the timeframe | [optional] 
**monthly_dividends** | **float** | Average dividends received per month over the timeframe | [optional] 
**bad_tickers** | **[str]** | list of tickers which may not be supported or may not have accurate price data | [optional] 
**dividend_timeline** | [**[MonthlyDividends]**](MonthlyDividends.md) |  | [optional] 
**commissions** | **float** | commissions incurred during the timeframe | [optional] 
**forex_fees** | **float** | forex fees incurred during the timeframe | [optional] 
**fees** | **float** | other fees incurred during the timeframe | [optional] 
**rate_of_return** | **float** | The return rate over the timeframe. Annualized if timeframe is longer than 1 year | [optional] 
**return_rate_timeframe** | [**[SubPeriodReturnRate]**](SubPeriodReturnRate.md) |  | [optional] 
**detailed_mode** | **bool** | Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes) | [optional] 
**any string name** | **bool, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


