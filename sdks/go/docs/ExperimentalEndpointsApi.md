# APIClient.ExperimentalEndpointsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetUserAccountOrderDetailV2**](ExperimentalEndpointsApi.md#GetUserAccountOrderDetailV2) | **Post** /accounts/{accountId}/orders/details/v2 | Get account order detail (V2)
[**GetUserAccountOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountOrdersV2) | **Get** /accounts/{accountId}/orders/v2 | List account orders v2
[**GetUserAccountRecentOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountRecentOrdersV2) | **Get** /accounts/{accountId}/recentOrders/v2 | List account recent orders (V2, last 24 hours only)



## GetUserAccountOrderDetailV2

Get account order detail (V2)



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

    
    accountInformationGetUserAccountOrderDetailRequest := *snaptrade.NewAccountInformationGetUserAccountOrderDetailRequest(
        "66a033fa-da74-4fcf-b527-feefdec9257e",
    )
    
    request := client.ExperimentalEndpointsApi.GetUserAccountOrderDetailV2(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
        accountInformationGetUserAccountOrderDetailRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.GetUserAccountOrderDetailV2``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountOrderDetailV2`: AccountOrderRecordV2
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.GetUserAccountOrderDetailV2`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.Legs`: %v\n", *resp.Legs)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


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

