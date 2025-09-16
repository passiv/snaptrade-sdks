# APIClient.TradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**CancelOrder**](TradingApi.md#CancelOrder) | **Post** /accounts/{accountId}/trading/cancel | Cancel order
[**CancelUserAccountOrder**](TradingApi.md#CancelUserAccountOrder) | **Post** /accounts/{accountId}/orders/cancel | Cancel equity order
[**GetCryptocurrencyPairQuote**](TradingApi.md#GetCryptocurrencyPairQuote) | **Get** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get crypto pair quote
[**GetOrderImpact**](TradingApi.md#GetOrderImpact) | **Post** /trade/impact | Check equity order impact
[**GetUserAccountQuotes**](TradingApi.md#GetUserAccountQuotes) | **Get** /accounts/{accountId}/quotes | Get equity symbol quotes
[**PlaceBracketOrder**](TradingApi.md#PlaceBracketOrder) | **Post** /accounts/{accountId}/trading/bracket | Place bracket equity order
[**PlaceCryptoOrder**](TradingApi.md#PlaceCryptoOrder) | **Post** /accounts/{accountId}/trading/crypto | Place crypto order
[**PlaceForceOrder**](TradingApi.md#PlaceForceOrder) | **Post** /trade/place | Place order
[**PlaceMlegOrder**](TradingApi.md#PlaceMlegOrder) | **Post** /accounts/{accountId}/trading/options | Place option order
[**PlaceOrder**](TradingApi.md#PlaceOrder) | **Post** /trade/{tradeId} | Place checked equity order
[**PreviewCryptoOrder**](TradingApi.md#PreviewCryptoOrder) | **Post** /accounts/{accountId}/trading/crypto/preview | Preview crypto order
[**ReplaceOrder**](TradingApi.md#ReplaceOrder) | **Post** /accounts/{accountId}/trading/replace | Replace order
[**SearchCryptocurrencyPairInstruments**](TradingApi.md#SearchCryptocurrencyPairInstruments) | **Get** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Get crypto pairs



## CancelOrder

Cancel order



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
    
    request := client.TradingApi.CancelOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        accountInformationGetUserAccountOrderDetailRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.CancelOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CancelOrder`: CancelOrderResponse
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.CancelOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `CancelOrderResponse.CancelOrder.BrokerageOrderId`: %v\n", resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `CancelOrderResponse.CancelOrder.RawResponse`: %v\n", *resp.RawResponse)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CancelUserAccountOrder
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Cancel equity order



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
    
    request := client.TradingApi.CancelUserAccountOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        accountInformationGetUserAccountOrderDetailRequest,
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
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.QuoteUniversalSymbol`: %v\n", *resp.QuoteUniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
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
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.CancelUserAccountOrder.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetCryptocurrencyPairQuote

Get crypto pair quote



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

    request := client.TradingApi.GetCryptocurrencyPairQuote(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "instrumentSymbol_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.GetCryptocurrencyPairQuote``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetCryptocurrencyPairQuote`: CryptocurrencyPairQuote
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.GetCryptocurrencyPairQuote`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Bid`: %v\n", resp.Bid)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Ask`: %v\n", resp.Ask)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Mid`: %v\n", *resp.Mid)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Timestamp`: %v\n", *resp.Timestamp)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrderImpact

Check equity order impact



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

    units := *snaptrade.Newfloat32()
    notionalValue := *snaptrade.NewManualTradeFormNotionalValue()
    
    manualTradeForm := *snaptrade.NewManualTradeForm(
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        null,
        "2bcd7cc3-e922-4976-bce1-9858296801c3",
        null,
        null,
    )
    manualTradeForm.SetPrice(31.33)
    manualTradeForm.SetStop(31.33)
    manualTradeForm.SetUnits(units)
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

Get equity symbol quotes



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

    request := client.TradingApi.GetUserAccountQuotes(
        "userId_example",
        "userSecret_example",
        "symbols_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
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
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.LastTradePrice`: %v\n", *resp.LastTradePrice)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.BidPrice`: %v\n", *resp.BidPrice)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.AskPrice`: %v\n", *resp.AskPrice)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.BidSize`: %v\n", *resp.BidSize)
    fmt.Fprintf(os.Stdout, "Response from `SymbolsQuotesInner.GetUserAccountQuotes.AskSize`: %v\n", *resp.AskSize)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceBracketOrder

Place bracket equity order



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

    instrument := *snaptrade.NewTradingInstrument()
    stopLoss := *snaptrade.NewStopLoss()
    takeProfit := *snaptrade.NewTakeProfit()
    
    manualTradeFormBracket := *snaptrade.NewManualTradeFormBracket(
        null,
        instrument,
        null,
        null,
        stopLoss,
        takeProfit,
    )
    manualTradeFormBracket.SetPrice(31.33)
    manualTradeFormBracket.SetStop(31.33)
    manualTradeFormBracket.SetUnits(10.5)
    
    request := client.TradingApi.PlaceBracketOrder(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
        manualTradeFormBracket,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.PlaceBracketOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceBracketOrder`: AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.PlaceBracketOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.QuoteUniversalSymbol`: %v\n", *resp.QuoteUniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.ExpiryDate`: %v\n", *resp.ExpiryDate)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceBracketOrder.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceCryptoOrder

Place crypto order



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

    instrument := *snaptrade.NewCryptoTradingInstrument()
    
    cryptoOrderForm := *snaptrade.NewCryptoOrderForm(
        instrument,
        null,
        "null",
        "null",
        "123.45",
    )
    cryptoOrderForm.SetLimitPrice("123.45")
    cryptoOrderForm.SetStopPrice("123.45")
    cryptoOrderForm.SetPostOnly(false)
    cryptoOrderForm.SetExpirationDate(2024-01-01T00:00Z)
    
    request := client.TradingApi.PlaceCryptoOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        cryptoOrderForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.PlaceCryptoOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceCryptoOrder`: OrderUpdatedResponse
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.PlaceCryptoOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `OrderUpdatedResponse.PlaceCryptoOrder.BrokerageOrderId`: %v\n", resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `OrderUpdatedResponse.PlaceCryptoOrder.Order`: %v\n", *resp.Order)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceForceOrder

Place order



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

    universalSymbolId := *snaptrade.Newstring()
    units := *snaptrade.Newfloat32()
    notionalValue := *snaptrade.NewManualTradeFormNotionalValue()
    
    manualTradeFormWithOptions := *snaptrade.NewManualTradeFormWithOptions(
        "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        null,
        null,
        null,
    )
    manualTradeFormWithOptions.SetUniversalSymbolId(universalSymbolId)
    manualTradeFormWithOptions.SetSymbol("AAPL")
    manualTradeFormWithOptions.SetPrice(31.33)
    manualTradeFormWithOptions.SetStop(31.33)
    manualTradeFormWithOptions.SetUnits(units)
    manualTradeFormWithOptions.SetNotionalValue(notionalValue)
    
    request := client.TradingApi.PlaceForceOrder(
        "userId_example",
        "userSecret_example",
        manualTradeFormWithOptions,
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
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.QuoteUniversalSymbol`: %v\n", *resp.QuoteUniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
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
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceForceOrder.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceMlegOrder

Place option order



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

    priceEffect := *snaptrade.NewMlegPriceEffectStrict()
    
    mlegTradeForm := *snaptrade.NewMlegTradeForm(
        null,
        null,
        null,
    )
    mlegTradeForm.SetLimitPrice("")
    mlegTradeForm.SetStopPrice("")
    mlegTradeForm.SetPriceEffect(priceEffect)
    
    request := client.TradingApi.PlaceMlegOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        mlegTradeForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.PlaceMlegOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceMlegOrder`: MlegOrderResponse
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.PlaceMlegOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `MlegOrderResponse.PlaceMlegOrder.BrokerageOrderId`: %v\n", resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `MlegOrderResponse.PlaceMlegOrder.Orders`: %v\n", resp.Orders)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceOrder

Place checked equity order



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
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.QuoteUniversalSymbol`: %v\n", *resp.QuoteUniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
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
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.PlaceOrder.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PreviewCryptoOrder

Preview crypto order



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

    instrument := *snaptrade.NewCryptoTradingInstrument()
    
    cryptoOrderForm := *snaptrade.NewCryptoOrderForm(
        instrument,
        null,
        "null",
        "null",
        "123.45",
    )
    cryptoOrderForm.SetLimitPrice("123.45")
    cryptoOrderForm.SetStopPrice("123.45")
    cryptoOrderForm.SetPostOnly(false)
    cryptoOrderForm.SetExpirationDate(2024-01-01T00:00Z)
    
    request := client.TradingApi.PreviewCryptoOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        cryptoOrderForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.PreviewCryptoOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PreviewCryptoOrder`: CryptoOrderPreview
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.PreviewCryptoOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `CryptoOrderPreview.PreviewCryptoOrder.EstimatedFee`: %v\n", *resp.EstimatedFee)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReplaceOrder

Replace order



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

    units := *snaptrade.Newfloat32()
    
    manualTradeReplaceForm := *snaptrade.NewManualTradeReplaceForm(
        "66a033fa-da74-4fcf-b527-feefdec9257e",
        null,
        null,
        null,
    )
    manualTradeReplaceForm.SetPrice(31.33)
    manualTradeReplaceForm.SetSymbol("AAPL")
    manualTradeReplaceForm.SetStop(31.33)
    manualTradeReplaceForm.SetUnits(units)
    
    request := client.TradingApi.ReplaceOrder(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
        manualTradeReplaceForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.ReplaceOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ReplaceOrder`: AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.ReplaceOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.QuoteUniversalSymbol`: %v\n", *resp.QuoteUniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.ExpiryDate`: %v\n", *resp.ExpiryDate)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.ReplaceOrder.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchCryptocurrencyPairInstruments

Get crypto pairs



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

    request := client.TradingApi.SearchCryptocurrencyPairInstruments(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    request.Base("base_example")
    request.Quote("quote_example")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TradingApi.SearchCryptocurrencyPairInstruments``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `SearchCryptocurrencyPairInstruments`: TradingSearchCryptocurrencyPairInstruments200Response
    fmt.Fprintf(os.Stdout, "Response from `TradingApi.SearchCryptocurrencyPairInstruments`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `TradingSearchCryptocurrencyPairInstruments200Response.SearchCryptocurrencyPairInstruments.Items`: %v\n", resp.Items)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

