

# PerformanceCustom

Performance Custom Response Object

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**totalEquityTimeframe** | **List&lt;PastValue&gt;** |  |  [optional] |
|**contributions** | **NetContributions** |  |  [optional] |
|**contributionTimeframe** | **List&lt;PastValue&gt;** |  |  [optional] |
|**contributionTimeframeCumulative** | **List&lt;PastValue&gt;** |  |  [optional] |
|**withdrawalTimeframe** | **List&lt;PastValue&gt;** |  |  [optional] |
|**contributionStreak** | **BigDecimal** | Current streak of cosecutive months where contributions were made |  [optional] |
|**contributionMonthsContributed** | **BigDecimal** | Number of months in the timeframe with contributions |  [optional] |
|**contributionTotalMonths** | **BigDecimal** | Total months in timeframe |  [optional] |
|**dividends** | **List&lt;NetDividend&gt;** |  |  [optional] |
|**dividendIncome** | **BigDecimal** | Total dividends received over the timeframe |  [optional] |
|**monthlyDividends** | **BigDecimal** | Average dividends received per month over the timeframe |  [optional] |
|**badTickers** | **List&lt;String&gt;** | list of tickers which may not be supported or may not have accurate price data |  [optional] |
|**dividendTimeline** | **List&lt;MonthlyDividends&gt;** |  |  [optional] |
|**commissions** | **BigDecimal** | commissions incurred during the timeframe |  [optional] |
|**forexFees** | **BigDecimal** | forex fees incurred during the timeframe |  [optional] |
|**fees** | **BigDecimal** | other fees incurred during the timeframe |  [optional] |
|**rateOfReturn** | **BigDecimal** | The return rate over the timeframe. Annualized if timeframe is longer than 1 year |  [optional] |
|**returnRateTimeframe** | **List&lt;SubPeriodReturnRate&gt;** |  |  [optional] |
|**detailedMode** | **Boolean** | Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes) |  [optional] |



