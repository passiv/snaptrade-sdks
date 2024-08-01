# APIClient.TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**CancelUserAccountOrder**](TradingApi.md#CancelUserAccountOrder) | **Post** /accounts/{accountId}/orders/cancel | Cancel open order in account
[**GetOrderImpact**](TradingApi.md#GetOrderImpact) | **Post** /trade/impact | Check the impact of a trade on an account
[**GetUserAccountQuotes**](TradingApi.md#GetUserAccountQuotes) | **Get** /accounts/{accountId}/quotes | Get symbol quotes
[**PlaceForceOrder**](TradingApi.md#PlaceForceOrder) | **Post** /trade/place | Place a trade with NO validation.
[**PlaceOrder**](TradingApi.md#PlaceOrder) | **Post** /trade/{tradeId} | Place order



## CancelUserAccountOrder

Cancel open order in account



### Example

```go
package main

import (
    "fmt"
    "os"
    snaptrade "github.com/passiv/snaptrade-sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)

    
    tradingCancelUserAccountOrderRequest := *snaptrade.NewTradingCancelUserAccountOrderRequest()
    tradingCancelUserAccountOrderRequest.SetBrokerageOrderId("2bcd7cc3-e922-4976-bce1-9858296801c3")
    
    request := client.TradingApi.CancelUserAccountOrder(
        "userId_example",
        "userSecret_example",
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        tradingCancelUserAccountOrderRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.CancelUserAccountOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CancelUserAccountOrder`: AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.CancelUserAccountOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.ExpiryDate`: %v\n", *resp.ExpiryDate)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrderImpact

Check the impact of a trade on an account



### Example

```go
package main

import (
    "fmt"
    "os"
    snaptrade "github.com/passiv/snaptrade-sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)

    units := *snaptrade.Newfloat32()
    notionalValue := *snaptrade.NewManualTradeFormNotionalValue()
    
    manualTradeForm := *snaptrade.NewManualTradeForm()
    manualTradeForm.SetAccountId("2bcd7cc3-e922-4976-bce1-9858296801c3")
    manualTradeForm.SetAction(null)
    manualTradeForm.SetOrderType(null)
    manualTradeForm.SetPrice(31.33)
    manualTradeForm.SetStop(31.33)
    manualTradeForm.SetTimeInForce(null)
    manualTradeForm.SetUnits(units)
    manualTradeForm.SetUniversalSymbolId("2bcd7cc3-e922-4976-bce1-9858296801c3")
    manualTradeForm.SetNotionalValue(notionalValue)
    
    request := client.TradingApi.GetOrderImpact(
        "userId_example",
        "userSecret_example",
        manualTradeForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.GetOrderImpact``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetOrderImpact`: ManualTradeAndImpact
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.GetOrderImpact`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `ManualTradeAndImpact.GetOrderImpact.Trade`: %v\n", *resp.Trade)
    fmt.Fprintf(os.Stdout, "Response from `ManualTradeAndImpact.GetOrderImpact.TradeImpacts`: %v\n", *resp.TradeImpacts)
    fmt.Fprintf(os.Stdout, "Response from `ManualTradeAndImpact.GetOrderImpact.CombinedRemainingBalance`: %v\n", *resp.CombinedRemainingBalance)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountQuotes

Get symbol quotes



### Example

```go
package main

import (
    "fmt"
    "os"
    snaptrade "github.com/passiv/snaptrade-sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)

    request := client.TradingApi.GetUserAccountQuotes(
        "userId_example",
        "userSecret_example",
        "symbols_example",
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
    )
    request.UseTicker(true)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.GetUserAccountQuotes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountQuotes`: []SymbolsQuotesInner
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.GetUserAccountQuotes`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.BidPrice`: %v\n", *resp.BidPrice)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.AskPrice`: %v\n", *resp.AskPrice)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.LastTradePrice`: %v\n", *resp.LastTradePrice)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.BidSize`: %v\n", *resp.BidSize)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.AskSize`: %v\n", *resp.AskSize)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceForceOrder

Place a trade with NO validation.



### Example

```go
package main

import (
    "fmt"
    "os"
    snaptrade "github.com/passiv/snaptrade-sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)

    units := *snaptrade.Newfloat32()
    notionalValue := *snaptrade.NewManualTradeFormNotionalValue()
    
    manualTradeForm := *snaptrade.NewManualTradeForm()
    manualTradeForm.SetAccountId("2bcd7cc3-e922-4976-bce1-9858296801c3")
    manualTradeForm.SetAction(null)
    manualTradeForm.SetOrderType(null)
    manualTradeForm.SetPrice(31.33)
    manualTradeForm.SetStop(31.33)
    manualTradeForm.SetTimeInForce(null)
    manualTradeForm.SetUnits(units)
    manualTradeForm.SetUniversalSymbolId("2bcd7cc3-e922-4976-bce1-9858296801c3")
    manualTradeForm.SetNotionalValue(notionalValue)
    
    request := client.TradingApi.PlaceForceOrder(
        "userId_example",
        "userSecret_example",
        manualTradeForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.PlaceForceOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceForceOrder`: AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.PlaceForceOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.ExpiryDate`: %v\n", *resp.ExpiryDate)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceOrder

Place order



### Example

```go
package main

import (
    "fmt"
    "os"
    snaptrade "github.com/passiv/snaptrade-sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)

    
    validatedTradeBody := *snaptrade.NewValidatedTradeBody()
    validatedTradeBody.SetWaitToConfirm(true)
    
    request := client.TradingApi.PlaceOrder(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
    )
    request.ValidatedTradeBody(validatedTradeBody)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.PlaceOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceOrder`: AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.PlaceOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.ExpiryDate`: %v\n", *resp.ExpiryDate)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

