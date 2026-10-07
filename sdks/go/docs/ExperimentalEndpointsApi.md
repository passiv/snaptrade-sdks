# APIClient.ExperimentalEndpointsApi

All URIs are relative to *https://api.snaptrade.com*

Method | Path | Description
------------- | ------------- | -------------
[**AddSubscription**](ExperimentalEndpointsApi.md#AddSubscription) | **Post** /snapTrade/tradeDetection/subscriptions | Add a Trade Detection subscription
[**CancelSubscription**](ExperimentalEndpointsApi.md#CancelSubscription) | **Post** /snapTrade/tradeDetection/subscriptions/cancel | Cancel a Trade Detection subscription
[**GetAccountDetails**](ExperimentalEndpointsApi.md#GetAccountDetails) | **Get** /accounts/{accountId}/details | Get account details
[**GetUserAccountOrderDetailV2**](ExperimentalEndpointsApi.md#GetUserAccountOrderDetailV2) | **Get** /accounts/{accountId}/orders/details/v2/{brokerageOrderId} | Get account order detail (V2)
[**GetUserAccountOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountOrdersV2) | **Get** /accounts/{accountId}/orders/v2 | List account orders v2
[**GetUserAccountRecentOrdersV2**](ExperimentalEndpointsApi.md#GetUserAccountRecentOrdersV2) | **Get** /accounts/{accountId}/recentOrders/v2 | List account recent orders (V2, last 24 hours only)
[**ListAllUserAccounts**](ExperimentalEndpointsApi.md#ListAllUserAccounts) | **Get** /accounts/all | List all user accounts
[**ListSubscriptions**](ExperimentalEndpointsApi.md#ListSubscriptions) | **Get** /snapTrade/tradeDetection/subscriptions | List active Trade Detection subscriptions
[**PlaceSimpleOrder**](ExperimentalEndpointsApi.md#PlaceSimpleOrder) | **Post** /accounts/{accountId}/trading/simple | Place a simple order (beta)



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
        ""snaptrade-user-123"",
        ""adf2aa34-8219-40f7-a6b3-60156985cc61"",
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


## GetAccountDetails

Get account details



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

    request := client.ExperimentalEndpointsApi.GetAccountDetails(
        ""snaptrade-user-123"",
        ""adf2aa34-8219-40f7-a6b3-60156985cc61"",
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.GetAccountDetails``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetAccountDetails`: ConnectionAccount
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.GetAccountDetails`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.Kind`: %v\n", resp.Kind)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.Id`: %v\n", resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.ConnectionId`: %v\n", resp.ConnectionId)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.DisplayName`: %v\n", *resp.DisplayName)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.MaskedAccountNumber`: %v\n", resp.MaskedAccountNumber)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.InstitutionAccountId`: %v\n", *resp.InstitutionAccountId)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.InstitutionId`: %v\n", *resp.InstitutionId)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.OpeningDate`: %v\n", *resp.OpeningDate)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.FundingDate`: %v\n", *resp.FundingDate)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.SyncStatus`: %v\n", resp.SyncStatus)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.RawType`: %v\n", *resp.RawType)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.CashOrMargin`: %v\n", *resp.CashOrMargin)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.IsPaper`: %v\n", resp.IsPaper)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.NetValue`: %v\n", *resp.NetValue)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.MinimumPaymentAmount`: %v\n", *resp.MinimumPaymentAmount)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.AvailableCredit`: %v\n", *resp.AvailableCredit)
    fmt.Fprintf(os.Stdout, "Response from `ConnectionAccount.GetAccountDetails.NextPaymentDate`: %v\n", *resp.NextPaymentDate)
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
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        ""66a033fa-da74-4fcf-b527-feefdec9257e"",
        ""snaptrade-user-123"",
        ""adf2aa34-8219-40f7-a6b3-60156985cc61"",
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
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.PriceCurrency`: %v\n", *resp.PriceCurrency)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecordV2.GetUserAccountOrderDetailV2.PriceEffect`: %v\n", resp.PriceEffect)
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
        ""snaptrade-user-123"",
        ""adf2aa34-8219-40f7-a6b3-60156985cc61"",
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
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
        ""snaptrade-user-123"",
        ""adf2aa34-8219-40f7-a6b3-60156985cc61"",
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
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


## ListAllUserAccounts

List all user accounts



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

    request := client.ExperimentalEndpointsApi.ListAllUserAccounts(
        ""snaptrade-user-123"",
        ""adf2aa34-8219-40f7-a6b3-60156985cc61"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.ListAllUserAccounts``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListAllUserAccounts`: AllUserAccountsResponse
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.ListAllUserAccounts`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AllUserAccountsResponse.ListAllUserAccounts.Results`: %v\n", resp.Results)
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


## PlaceSimpleOrder

Place a simple order (beta)



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

    limitPrice := *snaptrade.NewSimpleTradeFormLimitPrice()
    stopPrice := *snaptrade.NewSimpleTradeFormStopPrice()
    clientOrderId := *snaptrade.Newstring()
    notionalValue := *snaptrade.NewSimpleTradeFormNotionalValue()
    
    simpleTradeForm := *snaptrade.NewSimpleTradeForm(
        "STOP_LIMIT",
        "DAY",
        null,
    )
    simpleTradeForm.SetLimitPrice(limitPrice)
    simpleTradeForm.SetStopPrice(stopPrice)
    simpleTradeForm.SetPriceEffect("DEBIT")
    simpleTradeForm.SetClientOrderId(clientOrderId)
    simpleTradeForm.SetExpiryDate(2026-12-18T20:00Z)
    simpleTradeForm.SetNotionalValue(notionalValue)
    simpleTradeForm.SetTradingSession("REGULAR")
    
    request := client.ExperimentalEndpointsApi.PlaceSimpleOrder(
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        ""snaptrade-user-123"",
        ""adf2aa34-8219-40f7-a6b3-60156985cc61"",
        simpleTradeForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ExperimentalEndpointsApi.PlaceSimpleOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceSimpleOrder`: SimpleTradeResponse
    fmt.Fprintf(os.Stdout, "Response from `ExperimentalEndpointsApi.PlaceSimpleOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `SimpleTradeResponse.PlaceSimpleOrder.BrokerageOrderId`: %v\n", resp.BrokerageOrderId)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

