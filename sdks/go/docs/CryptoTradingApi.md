# APIClient.CryptoTradingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**SearchCryptocurrencyPairInstruments**](CryptoTradingApi.md#SearchCryptocurrencyPairInstruments) | **Get** /accounts/{accountId}/trading/instruments/cryptocurrencyPairs | Search cryptocurrency pairs instruments



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

