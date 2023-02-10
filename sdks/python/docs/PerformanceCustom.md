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
**contribution_streak** | **float, none_type** | Current streak of cosecutive months where contributions were made | [optional] 
**contribution_months_contributed** | **float, none_type** | Number of months in the timeframe with contributions | [optional] 
**contribution_total_months** | **float, none_type** | Total months in timeframe | [optional] 
**dividends** | [**[NetDividend]**](NetDividend.md) |  | [optional] 
**dividend_income** | **float, none_type** | Total dividends received over the timeframe | [optional] 
**monthly_dividends** | **float, none_type** | Average dividends received per month over the timeframe | [optional] 
**bad_tickers** | **[str, none_type]** | list of tickers which may not be supported or may not have accurate price data | [optional] 
**dividend_timeline** | [**[MonthlyDividends]**](MonthlyDividends.md) |  | [optional] 
**commissions** | **float, none_type** | commissions incurred during the timeframe | [optional] 
**forex_fees** | **float, none_type** | forex fees incurred during the timeframe | [optional] 
**fees** | **float, none_type** | other fees incurred during the timeframe | [optional] 
**rate_of_return** | **float, none_type** | The return rate over the timeframe. Annualized if timeframe is longer than 1 year | [optional] 
**return_rate_timeframe** | [**[SubPeriodReturnRate]**](SubPeriodReturnRate.md) |  | [optional] 
**detailed_mode** | **bool** | Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes) | [optional] 
**any string name** | **bool, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


