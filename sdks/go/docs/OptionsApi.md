# APIClient.OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetOptionStrategy**](OptionsApi.md#GetOptionStrategy) | **Post** /accounts/{accountId}/optionStrategy | Create options strategy
[**GetOptionsChain**](OptionsApi.md#GetOptionsChain) | **Get** /accounts/{accountId}/optionsChain | Get the options chain for a symbol
[**GetOptionsStrategyQuote**](OptionsApi.md#GetOptionsStrategyQuote) | **Get** /accounts/{accountId}/optionStrategy/{optionStrategyId} | Get options strategy quotes
[**ListOptionHoldings**](OptionsApi.md#ListOptionHoldings) | **Get** /accounts/{accountId}/options | Get account option holdings
[**PlaceOptionStrategy**](OptionsApi.md#PlaceOptionStrategy) | **Post** /accounts/{accountId}/optionStrategy/{optionStrategyId}/execute | Place an option strategy order



## GetOptionStrategy

Create options strategy



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

    
    optionsGetOptionStrategyRequest := *snaptrade.NewOptionsGetOptionStrategyRequest(
        "2bcd7cc3-e922-4976-bce1-9858296801c3",
        null,
        "null",
    )
    
    request := client.OptionsApi.GetOptionStrategy(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        optionsGetOptionStrategyRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OptionsApi.GetOptionStrategy``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetOptionStrategy`: StrategyQuotes
    fmt.Fprintf(os.Stdout, "Response from `OptionsApi.GetOptionStrategy`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionStrategy.Strategy`: %v\n", *resp.Strategy)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionStrategy.OpenPrice`: %v\n", *resp.OpenPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionStrategy.BidPrice`: %v\n", *resp.BidPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionStrategy.AskPrice`: %v\n", *resp.AskPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionStrategy.Volatility`: %v\n", *resp.Volatility)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionStrategy.Greek`: %v\n", *resp.Greek)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOptionsChain

Get the options chain for a symbol



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

    request := client.OptionsApi.GetOptionsChain(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OptionsApi.GetOptionsChain``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetOptionsChain`: []OptionChainInner
    fmt.Fprintf(os.Stdout, "Response from `OptionsApi.GetOptionsChain`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `OptionChainInner.GetOptionsChain.ExpiryDate`: %v\n", *resp.ExpiryDate)
    fmt.Fprintf(os.Stdout, "Response from `OptionChainInner.GetOptionsChain.Description`: %v\n", *resp.Description)
    fmt.Fprintf(os.Stdout, "Response from `OptionChainInner.GetOptionsChain.ListingExchange`: %v\n", *resp.ListingExchange)
    fmt.Fprintf(os.Stdout, "Response from `OptionChainInner.GetOptionsChain.OptionExerciseType`: %v\n", *resp.OptionExerciseType)
    fmt.Fprintf(os.Stdout, "Response from `OptionChainInner.GetOptionsChain.ChainPerRoot`: %v\n", *resp.ChainPerRoot)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOptionsStrategyQuote

Get options strategy quotes



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

    request := client.OptionsApi.GetOptionsStrategyQuote(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OptionsApi.GetOptionsStrategyQuote``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetOptionsStrategyQuote`: StrategyQuotes
    fmt.Fprintf(os.Stdout, "Response from `OptionsApi.GetOptionsStrategyQuote`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionsStrategyQuote.Strategy`: %v\n", *resp.Strategy)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionsStrategyQuote.OpenPrice`: %v\n", *resp.OpenPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionsStrategyQuote.BidPrice`: %v\n", *resp.BidPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionsStrategyQuote.AskPrice`: %v\n", *resp.AskPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionsStrategyQuote.Volatility`: %v\n", *resp.Volatility)
    fmt.Fprintf(os.Stdout, "Response from `StrategyQuotes.GetOptionsStrategyQuote.Greek`: %v\n", *resp.Greek)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListOptionHoldings

Get account option holdings



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

    request := client.OptionsApi.ListOptionHoldings(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OptionsApi.ListOptionHoldings``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListOptionHoldings`: []OptionsPosition
    fmt.Fprintf(os.Stdout, "Response from `OptionsApi.ListOptionHoldings`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `OptionsPosition.ListOptionHoldings.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `OptionsPosition.ListOptionHoldings.Price`: %v\n", *resp.Price)
    fmt.Fprintf(os.Stdout, "Response from `OptionsPosition.ListOptionHoldings.Units`: %v\n", *resp.Units)
    fmt.Fprintf(os.Stdout, "Response from `OptionsPosition.ListOptionHoldings.Currency`: %v\n", *resp.Currency)
    fmt.Fprintf(os.Stdout, "Response from `OptionsPosition.ListOptionHoldings.AveragePurchasePrice`: %v\n", *resp.AveragePurchasePrice)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceOptionStrategy

Place an option strategy order



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

    
    optionsPlaceOptionStrategyRequest := *snaptrade.NewOptionsPlaceOptionStrategyRequest(
        null,
        null,
    )
    optionsPlaceOptionStrategyRequest.SetPrice(31.33)
    
    request := client.OptionsApi.PlaceOptionStrategy(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        optionsPlaceOptionStrategyRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OptionsApi.PlaceOptionStrategy``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceOptionStrategy`: StrategyOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `OptionsApi.PlaceOptionStrategy`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.Strategy`: %v\n", *resp.Strategy)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.ClosedQuantity`: %v\n", *resp.ClosedQuantity)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `StrategyOrderRecord.PlaceOptionStrategy.TimeUpdated`: %v\n", *resp.TimeUpdated)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

