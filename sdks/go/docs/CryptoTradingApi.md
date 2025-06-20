# APIClient.CryptoTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetCryptocurrencyPairQuote**](CryptoTradingApi.md#GetCryptocurrencyPairQuote) | **Get** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote | Get cryptocurrency pair quote
[**PlaceSimpleOrder**](CryptoTradingApi.md#PlaceSimpleOrder) | **Post** /accounts/{accountId}/trading/simple | Place order v2
[**SearchCryptocurrencyPairInstruments**](CryptoTradingApi.md#SearchCryptocurrencyPairInstruments) | **Get** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Search cryptocurrency pairs instruments



## GetCryptocurrencyPairQuote

Get cryptocurrency pair quote



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

    request := client.CryptoTradingApi.GetCryptocurrencyPairQuote(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "instrumentSymbol_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoTradingApi.GetCryptocurrencyPairQuote``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetCryptocurrencyPairQuote`: CryptocurrencyPairQuote
    fmt.Fprintf(os.Stdout, "Response from `CryptoTradingApi.GetCryptocurrencyPairQuote`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Bid`: %v\n", resp.Bid)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Ask`: %v\n", resp.Ask)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Mid`: %v\n", *resp.Mid)
    fmt.Fprintf(os.Stdout, "Response from `CryptocurrencyPairQuote.GetCryptocurrencyPairQuote.Timestamp`: %v\n", *resp.Timestamp)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceSimpleOrder

Place order v2



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
    
    simpleOrderForm := *snaptrade.NewSimpleOrderForm(
        instrument,
        null,
        "null",
        "null",
        "123.45",
    )
    simpleOrderForm.SetLimitPrice("123.45")
    simpleOrderForm.SetStopPrice("123.45")
    simpleOrderForm.SetPostOnly(false)
    simpleOrderForm.SetExpirationDate(2024-01-01T00:00Z)
    
    request := client.CryptoTradingApi.PlaceSimpleOrder(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        simpleOrderForm,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoTradingApi.PlaceSimpleOrder``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `PlaceSimpleOrder`: OrderUpdatedResponse
    fmt.Fprintf(os.Stdout, "Response from `CryptoTradingApi.PlaceSimpleOrder`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `OrderUpdatedResponse.PlaceSimpleOrder.BrokerageOrderId`: %v\n", resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `OrderUpdatedResponse.PlaceSimpleOrder.Order`: %v\n", *resp.Order)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchCryptocurrencyPairInstruments

Search cryptocurrency pairs instruments



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

    request := client.CryptoTradingApi.SearchCryptocurrencyPairInstruments(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    request.Base("base_example")
    request.Quote("quote_example")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CryptoTradingApi.SearchCryptocurrencyPairInstruments``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `SearchCryptocurrencyPairInstruments`: TradingSearchCryptocurrencyPairInstruments200Response
    fmt.Fprintf(os.Stdout, "Response from `CryptoTradingApi.SearchCryptocurrencyPairInstruments`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `TradingSearchCryptocurrencyPairInstruments200Response.SearchCryptocurrencyPairInstruments.Items`: %v\n", resp.Items)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

