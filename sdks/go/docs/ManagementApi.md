# APIClient.ManagementApi

All URIs are relative to *https://api.snaptrade.com*

Method | Path | Description
------------- | ------------- | -------------
[**GetStats**](ManagementApi.md#GetStats) | **Get** /snapTrade/stats | Get usage stats



## GetStats

Get usage stats



### Example

```go
package main

import (
    "fmt"
    "os"
    snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
    configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
    client := snaptrade.NewAPIClient(configuration)

    request := client.ManagementApi.GetStats(
    )
    request.Currency(""USD"")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ManagementApi.GetStats``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetStats`: PartnerStats
    fmt.Fprintf(os.Stdout, "Response from `ManagementApi.GetStats`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.TotalUsers`: %v\n", resp.TotalUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.TotalConnectedUsers`: %v\n", resp.TotalConnectedUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.TotalActiveConnections`: %v\n", resp.TotalActiveConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.TotalDisabledConnections`: %v\n", resp.TotalDisabledConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.OauthTotalUsers`: %v\n", resp.OauthTotalUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.OauthTotalConnectedUsers`: %v\n", resp.OauthTotalConnectedUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.OauthTotalActiveConnections`: %v\n", resp.OauthTotalActiveConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.OauthTotalDisabledConnections`: %v\n", resp.OauthTotalDisabledConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.AssetsUnderManagement`: %v\n", resp.AssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.DisabledAssetsUnderManagement`: %v\n", resp.DisabledAssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.OauthAssetsUnderManagement`: %v\n", resp.OauthAssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.OauthDisabledAssetsUnderManagement`: %v\n", resp.OauthDisabledAssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.AssetsUnderManagementCurrency`: %v\n", resp.AssetsUnderManagementCurrency)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStats.AssetsUnderManagementCalculatedAt`: %v\n", resp.AssetsUnderManagementCalculatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

