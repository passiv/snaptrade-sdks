# APIClient.ManagementApi

All URIs are relative to *https://api.snaptrade.com*

Method | Path | Description
------------- | ------------- | -------------
[**GetStats**](ManagementApi.md#GetStats) | **Get** /management/stats | Get usage stats (beta)
[**GetStatsLegacy**](ManagementApi.md#GetStatsLegacy) | **Get** /snapTrade/stats | Get usage stats (deprecated)



## GetStats

Get usage stats (beta)



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
    // response from `GetStats`: ConnectedAssetPartnerStats
    fmt.Fprintf(os.Stdout, "Response from `ManagementApi.GetStats`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.TotalUsers`: %v\n", resp.TotalUsers)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.TotalConnectedUsers`: %v\n", resp.TotalConnectedUsers)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.TotalActiveConnections`: %v\n", resp.TotalActiveConnections)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.TotalDisabledConnections`: %v\n", resp.TotalDisabledConnections)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.OauthTotalUsers`: %v\n", resp.OauthTotalUsers)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.OauthTotalConnectedUsers`: %v\n", resp.OauthTotalConnectedUsers)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.OauthTotalActiveConnections`: %v\n", resp.OauthTotalActiveConnections)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.OauthTotalDisabledConnections`: %v\n", resp.OauthTotalDisabledConnections)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.ConnectedAssets`: %v\n", resp.ConnectedAssets)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.DisabledConnectedAssets`: %v\n", resp.DisabledConnectedAssets)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.OauthConnectedAssets`: %v\n", resp.OauthConnectedAssets)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.OauthDisabledConnectedAssets`: %v\n", resp.OauthDisabledConnectedAssets)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.ConnectedAssetsCurrency`: %v\n", resp.ConnectedAssetsCurrency)
    fmt.Fprintf(os.Stdout, "Response from `ConnectedAssetPartnerStats.GetStats.ConnectedAssetsCalculatedAt`: %v\n", resp.ConnectedAssetsCalculatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetStatsLegacy
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Get usage stats (deprecated)



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

    request := client.ManagementApi.GetStatsLegacy(
    )
    request.Currency(""USD"")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ManagementApi.GetStatsLegacy``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetStatsLegacy`: PartnerStats
    fmt.Fprintf(os.Stdout, "Response from `ManagementApi.GetStatsLegacy`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.TotalUsers`: %v\n", resp.TotalUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.TotalConnectedUsers`: %v\n", resp.TotalConnectedUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.TotalActiveConnections`: %v\n", resp.TotalActiveConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.TotalDisabledConnections`: %v\n", resp.TotalDisabledConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.OauthTotalUsers`: %v\n", resp.OauthTotalUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.OauthTotalConnectedUsers`: %v\n", resp.OauthTotalConnectedUsers)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.OauthTotalActiveConnections`: %v\n", resp.OauthTotalActiveConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.OauthTotalDisabledConnections`: %v\n", resp.OauthTotalDisabledConnections)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.AssetsUnderManagement`: %v\n", resp.AssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.DisabledAssetsUnderManagement`: %v\n", resp.DisabledAssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.OauthAssetsUnderManagement`: %v\n", resp.OauthAssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.OauthDisabledAssetsUnderManagement`: %v\n", resp.OauthDisabledAssetsUnderManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.AssetsUnderManagementCurrency`: %v\n", resp.AssetsUnderManagementCurrency)
    fmt.Fprintf(os.Stdout, "Response from `PartnerStats.GetStatsLegacy.AssetsUnderManagementCalculatedAt`: %v\n", resp.AssetsUnderManagementCalculatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

