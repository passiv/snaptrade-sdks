# snaptrade_client.model.performance_custom.PerformanceCustom

Performance Custom Response Object

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | Performance Custom Response Object | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**[totalEquityTimeframe](#totalEquityTimeframe)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**contributions** | [**NetContributions**](NetContributions.md) | [**NetContributions**](NetContributions.md) |  | [optional] 
**[contributionTimeframe](#contributionTimeframe)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[contributionTimeframeCumulative](#contributionTimeframeCumulative)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**[withdrawalTimeframe](#withdrawalTimeframe)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**contributionStreak** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Current streak of cosecutive months where contributions were made | [optional] 
**contributionMonthsContributed** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Number of months in the timeframe with contributions | [optional] 
**contributionTotalMonths** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Total months in timeframe | [optional] 
**[dividends](#dividends)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**dividendIncome** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Total dividends received over the timeframe | [optional] 
**monthlyDividends** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | Average dividends received per month over the timeframe | [optional] 
**[badTickers](#badTickers)** | list, tuple, None,  | tuple, NoneClass,  | list of tickers which may not be supported or may not have accurate price data | [optional] 
**[dividendTimeline](#dividendTimeline)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**commissions** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | commissions incurred during the timeframe | [optional] 
**forexFees** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | forex fees incurred during the timeframe | [optional] 
**fees** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | other fees incurred during the timeframe | [optional] 
**rateOfReturn** | None, decimal.Decimal, int, float,  | NoneClass, decimal.Decimal,  | The return rate over the timeframe. Annualized if timeframe is longer than 1 year | [optional] 
**[returnRateTimeframe](#returnRateTimeframe)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**detailedMode** | None, bool,  | NoneClass, BoolClass,  | Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes) | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# totalEquityTimeframe

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) |  | 

# contributionTimeframe

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) |  | 

# contributionTimeframeCumulative

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) |  | 

# withdrawalTimeframe

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) | [**PastValue**](PastValue.md) |  | 

# dividends

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**NetDividend**](NetDividend.md) | [**NetDividend**](NetDividend.md) | [**NetDividend**](NetDividend.md) |  | 

# badTickers

list of tickers which may not be supported or may not have accurate price data

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  | list of tickers which may not be supported or may not have accurate price data | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | None, str,  | NoneClass, str,  |  | 

# dividendTimeline

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**MonthlyDividends**](MonthlyDividends.md) | [**MonthlyDividends**](MonthlyDividends.md) | [**MonthlyDividends**](MonthlyDividends.md) |  | 

# returnRateTimeframe

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**SubPeriodReturnRate**](SubPeriodReturnRate.md) | [**SubPeriodReturnRate**](SubPeriodReturnRate.md) | [**SubPeriodReturnRate**](SubPeriodReturnRate.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

