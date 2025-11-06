# APIClient.ExperimentalEndpointsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetUserAccountOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountOrdersV2) | **Get** /accounts/{accountId}/orders/v2 | List account orders v2
[**GetUserAccountRecentOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountRecentOrdersV2) | **Get** /accounts/{accountId}/recentOrders/v2 | List account recent orders (V2, last 24 hours only)



## GetUserAccountOrdersV2

List account orders v2



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

    request := client.ExperimentalEndpointsApi.GetUserAccountOrdersV2(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    request.State("state_example")
    request.Days(30)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.GetUserAccountOrdersV2``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountOrdersV2`: AccountOrdersV2Response
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.GetUserAccountOrdersV2`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrdersV2Response.GetUserAccountOrdersV2.Orders`: %v\n", resp.Orders)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountRecentOrdersV2

List account recent orders (V2, last 24 hours only)



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

    request := client.ExperimentalEndpointsApi.GetUserAccountRecentOrdersV2(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    request.OnlyExecuted(true)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.GetUserAccountRecentOrdersV2``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountRecentOrdersV2`: AccountOrdersV2Response
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.GetUserAccountRecentOrdersV2`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrdersV2Response.GetUserAccountRecentOrdersV2.Orders`: %v\n", resp.Orders)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

