# APIClient.CryptoSpotTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**CryptoSpotCancelOrder**](CryptoSpotTradingApi.md#CryptoSpotCancelOrder) | **Post** /accounts/{accountId}/trading/crypto/spot/cancelOrder | Cancel a crypto spot order.
[**CryptoSpotPlaceOrder**](CryptoSpotTradingApi.md#CryptoSpotPlaceOrder) | **Post** /accounts/{accountId}/trading/crypto/spot/placeOrder | Place a spot order on a crypto exchange
[**CryptoSpotPreviewOrder**](CryptoSpotTradingApi.md#CryptoSpotPreviewOrder) | **Post** /accounts/{accountId}/trading/crypto/spot/previewOrder | Place a spot order on a crypto exchange
[**CryptoSpotQuote**](CryptoSpotTradingApi.md#CryptoSpotQuote) | **Get** /accounts/{accountId}/trading/crypto/spot/quote | Get a quote for a cyrptocurrency market
[**CryptoSpotSymbols**](CryptoSpotTradingApi.md#CryptoSpotSymbols) | **Get** /accounts/{accountId}/trading/crypto/spot/symbols | Search crypto spot symbols



## CryptoSpotCancelOrder

Cancel a crypto spot order.



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

    
    tradingCryptoSpotCancelOrderRequest := *snaptrade.NewTradingCryptoSpotCancelOrderRequest(
        "66a033fa-da74-4fcf-b527-feefdec9257e",
    )
    
    request := client.CryptoSpotTradingApi.CryptoSpotCancelOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        tradingCryptoSpotCancelOrderRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoSpotTradingApi.CryptoSpotCancelOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CryptoSpotCancelOrder`: AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotTradingApi.CryptoSpotCancelOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.ExpiryDate`: %v\n", *resp.ExpiryDate)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotCancelOrder.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CryptoSpotPlaceOrder

Place a spot order on a crypto exchange



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

    symbol := *snaptrade.NewCryptocurrencyPair()
    amount := *snaptrade.Newfloat64()
    limitPrice := *snaptrade.Newfloat64()
    stopPrice := *snaptrade.Newfloat64()
    
    tradingCryptoSpotPlaceOrderRequest := *snaptrade.NewTradingCryptoSpotPlaceOrderRequest(
        symbol,
        null,
        "null",
        "null",
        amount,
    )
    tradingCryptoSpotPlaceOrderRequest.SetLimitPrice(limitPrice)
    tradingCryptoSpotPlaceOrderRequest.SetStopPrice(stopPrice)
    tradingCryptoSpotPlaceOrderRequest.SetPostOnly(false)
    tradingCryptoSpotPlaceOrderRequest.SetExpirationDate(2024-01-01T00:00Z)
    
    request := client.CryptoSpotTradingApi.CryptoSpotPlaceOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        tradingCryptoSpotPlaceOrderRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoSpotTradingApi.CryptoSpotPlaceOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CryptoSpotPlaceOrder`: AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotTradingApi.CryptoSpotPlaceOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.ExpiryDate`: %v\n", *resp.ExpiryDate)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CryptoSpotPlaceOrder.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CryptoSpotPreviewOrder

Place a spot order on a crypto exchange



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

    symbol := *snaptrade.NewCryptocurrencyPair()
    amount := *snaptrade.Newfloat64()
    limitPrice := *snaptrade.Newfloat64()
    stopPrice := *snaptrade.Newfloat64()
    
    tradingCryptoSpotPlaceOrderRequest := *snaptrade.NewTradingCryptoSpotPlaceOrderRequest(
        symbol,
        null,
        "null",
        "null",
        amount,
    )
    tradingCryptoSpotPlaceOrderRequest.SetLimitPrice(limitPrice)
    tradingCryptoSpotPlaceOrderRequest.SetStopPrice(stopPrice)
    tradingCryptoSpotPlaceOrderRequest.SetPostOnly(false)
    tradingCryptoSpotPlaceOrderRequest.SetExpirationDate(2024-01-01T00:00Z)
    
    request := client.CryptoSpotTradingApi.CryptoSpotPreviewOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        tradingCryptoSpotPlaceOrderRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoSpotTradingApi.CryptoSpotPreviewOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CryptoSpotPreviewOrder`: CryptoSpotOrderPreview
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotTradingApi.CryptoSpotPreviewOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotOrderPreview.CryptoSpotPreviewOrder.EstimatedFee`: %v\n", *resp.EstimatedFee)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CryptoSpotQuote

Get a quote for a cyrptocurrency market



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

    request := client.CryptoSpotTradingApi.CryptoSpotQuote(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "base_example",
        "quote_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoSpotTradingApi.CryptoSpotQuote``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CryptoSpotQuote`: CryptoSpotQuote
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotTradingApi.CryptoSpotQuote`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotQuote.CryptoSpotQuote.Bid`: %v\n", resp.Bid)
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotQuote.CryptoSpotQuote.Ask`: %v\n", resp.Ask)
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotQuote.CryptoSpotQuote.Mid`: %v\n", *resp.Mid)
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotQuote.CryptoSpotQuote.Timestamp`: %v\n", *resp.Timestamp)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CryptoSpotSymbols

Search crypto spot symbols



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

    request := client.CryptoSpotTradingApi.CryptoSpotSymbols(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "base_example",
    )
    request.Quote("quote_example")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoSpotTradingApi.CryptoSpotSymbols``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CryptoSpotSymbols`: TradingCryptoSpotSymbols200Response
    fmt.Fprintf(os.Stdout, "Response from `CryptoSpotTradingApi.CryptoSpotSymbols`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `TradingCryptoSpotSymbols200Response.CryptoSpotSymbols.Items`: %v\n", resp.Items)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

