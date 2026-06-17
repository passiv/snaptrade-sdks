# APIClient.ExperimentalEndpointsApi

All URIs are relative to *https://api.snaptrade.com*

Method | Path | Description
------------- | ------------- | -------------
[**AddSubscription**](ExperimentalEndpointsApi.md#AddSubscription) | **Post** /snapTrade/tradeDetection/subscriptions | Add a Trade Detection subscription
[**CancelSubscription**](ExperimentalEndpointsApi.md#CancelSubscription) | **Post** /snapTrade/tradeDetection/subscriptions/cancel | Cancel a Trade Detection subscription
[**GetUserAccountOrderDetailV2**](ExperimentalEndpointsApi.md#GetUserAccountOrderDetailV2) | **Get** /accounts/{accountId}/orders/details/v2/{brokerageOrderId} | Get account order detail (V2)
[**GetUserAccountOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountOrdersV2) | **Get** /accounts/{accountId}/orders/v2 | List account orders v2
[**GetUserAccountRecentOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountRecentOrdersV2) | **Get** /accounts/{accountId}/recentOrders/v2 | List account recent orders (V2, last 24 hours only)
[**ListSubscriptions**](ExperimentalEndpointsApi.md#ListSubscriptions) | **Get** /snapTrade/tradeDetection/subscriptions | List active Trade Detection subscriptions



## AddSubscription

Add a Trade Detection subscription



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

    
    tradeDetectionAddSubscriptionRequest := *snaptrade.NewTradeDetectionAddSubscriptionRequest(
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        300,
    )
    
    request := client.ExperimentalEndpointsApi.AddSubscription(
        "userId_example",
        "userSecret_example",
        tradeDetectionAddSubscriptionRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.AddSubscription``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `AddSubscription`: TradeDetectionSubscription
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.AddSubscription`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `TradeDetectionSubscription.AddSubscription.AccountId`: %v\n", resp.AccountId)
    fmt.Fprintf(os.Stdout, "Response from `TradeDetectionSubscription.AddSubscription.Cost`: %v\n", resp.Cost)
    fmt.Fprintf(os.Stdout, "Response from `TradeDetectionSubscription.AddSubscription.CheckIntervalSeconds`: %v\n", resp.CheckIntervalSeconds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CancelSubscription

Cancel a Trade Detection subscription



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

    
    tradeDetectionCancelSubscriptionRequest := *snaptrade.NewTradeDetectionCancelSubscriptionRequest(
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    )
    
    request := client.ExperimentalEndpointsApi.CancelSubscription(
        tradeDetectionCancelSubscriptionRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.CancelSubscription``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CancelSubscription`: TradeDetectionCancelSubscriptionResponse
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.CancelSubscription`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `TradeDetectionCancelSubscriptionResponse.CancelSubscription.Success`: %v\n", resp.Success)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


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

    request := client.ExperimentalEndpointsApi.GetUserAccountOrderDetailV2(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "brokerageOrderId_example",
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.GetUserAccountOrderDetailV2``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountOrderDetailV2`: AccountOrderRecordV2
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.GetUserAccountOrderDetailV2`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.BrokerageGroupOrderId`: %v\n", *resp.BrokerageGroupOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.OrderRole`: %v\n", *resp.OrderRole)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.TrailingStop`: %v\n", *resp.TrailingStop)
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


## ListSubscriptions

List active Trade Detection subscriptions



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

    request := client.ExperimentalEndpointsApi.ListSubscriptions(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.ListSubscriptions``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListSubscriptions`: []TradeDetectionSubscription
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.ListSubscriptions`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `TradeDetectionSubscription.ListSubscriptions.AccountId`: %v\n", resp.AccountId)
    fmt.Fprintf(os.Stdout, "Response from `TradeDetectionSubscription.ListSubscriptions.Cost`: %v\n", resp.Cost)
    fmt.Fprintf(os.Stdout, "Response from `TradeDetectionSubscription.ListSubscriptions.CheckIntervalSeconds`: %v\n", resp.CheckIntervalSeconds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

