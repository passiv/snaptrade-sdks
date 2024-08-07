# APIClient.TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetActivities**](TransactionsAndReportingApi.md#GetActivities) | **Get** /activities | Get transaction history for a user
[**GetReportingCustomRange**](TransactionsAndReportingApi.md#GetReportingCustomRange) | **Get** /performance/custom | Get performance information for a specific timeframe



## GetActivities

Get transaction history for a user



### Example

```go
package main

import (
    "fmt"
    "os"
        "time"
    snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)

    request := client.TransactionsAndReportingApi.GetActivities(
        "userId_example",
        "userSecret_example",
    )
    request.StartDate(2013-10-20)
    request.EndDate(2013-10-20)
    request.Accounts("accounts_example")
    request.BrokerageAuthorizations("brokerageAuthorizations_example")
    request.Type(""DIVIDEND"")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TransactionsAndReportingApi.GetActivities``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetActivities`: []UniversalActivity
    fmt.Fprintf(os.Stdout, "Response from `TransactionsAndReportingApi.GetActivities`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Account`: %v\n", *resp.Account)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Amount`: %v\n", *resp.Amount)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Currency`: %v\n", *resp.Currency)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Description`: %v\n", *resp.Description)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Fee`: %v\n", *resp.Fee)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.FxRate`: %v\n", *resp.FxRate)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Institution`: %v\n", *resp.Institution)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.OptionType`: %v\n", *resp.OptionType)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Price`: %v\n", *resp.Price)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.SettlementDate`: %v\n", *resp.SettlementDate)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.ExternalReferenceId`: %v\n", *resp.ExternalReferenceId)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.TradeDate`: %v\n", *resp.TradeDate)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Type`: %v\n", *resp.Type)
    fmt.Fprintf(os.Stdout, "Response from `UniversalActivity.GetActivities.Units`: %v\n", *resp.Units)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetReportingCustomRange
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Get performance information for a specific timeframe



### Example

```go
package main

import (
    "fmt"
    "os"
        "time"
    snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)

    request := client.TransactionsAndReportingApi.GetReportingCustomRange(
        2013-10-20,
        2013-10-20,
        "userId_example",
        "userSecret_example",
    )
    request.Accounts("accounts_example")
    request.Detailed(true)
    request.Frequency("frequency_example")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TransactionsAndReportingApi.GetReportingCustomRange``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetReportingCustomRange`: PerformanceCustom
    fmt.Fprintf(os.Stdout, "Response from `TransactionsAndReportingApi.GetReportingCustomRange`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.TotalEquityTimeframe`: %v\n", *resp.TotalEquityTimeframe)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.Contributions`: %v\n", *resp.Contributions)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.ContributionTimeframe`: %v\n", *resp.ContributionTimeframe)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.ContributionTimeframeCumulative`: %v\n", *resp.ContributionTimeframeCumulative)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.WithdrawalTimeframe`: %v\n", *resp.WithdrawalTimeframe)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.ContributionStreak`: %v\n", *resp.ContributionStreak)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.ContributionMonthsContributed`: %v\n", *resp.ContributionMonthsContributed)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.ContributionTotalMonths`: %v\n", *resp.ContributionTotalMonths)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.Dividends`: %v\n", *resp.Dividends)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.DividendIncome`: %v\n", *resp.DividendIncome)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.MonthlyDividends`: %v\n", *resp.MonthlyDividends)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.BadTickers`: %v\n", *resp.BadTickers)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.DividendTimeline`: %v\n", *resp.DividendTimeline)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.Commissions`: %v\n", *resp.Commissions)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.ForexFees`: %v\n", *resp.ForexFees)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.Fees`: %v\n", *resp.Fees)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.RateOfReturn`: %v\n", *resp.RateOfReturn)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.ReturnRateTimeframe`: %v\n", *resp.ReturnRateTimeframe)
    fmt.Fprintf(os.Stdout, "Response from `PerformanceCustom.GetReportingCustomRange.DetailedMode`: %v\n", *resp.DetailedMode)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

