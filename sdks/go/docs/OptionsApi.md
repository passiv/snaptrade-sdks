# APIClient.OptionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetOptionsChain**](OptionsApi.md#GetOptionsChain) | **Get** /accounts/{accountId}/optionsChain | Get the options chain for a symbol
[**ListOptionHoldings**](OptionsApi.md#ListOptionHoldings) | **Get** /accounts/{accountId}/options | List account option positions



## GetOptionsChain

Get the options chain for a symbol



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


## ListOptionHoldings

List account option positions



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
    fmt.Fprintf(os.Stdout, "Response from `OptionsPosition.ListOptionHoldings.AveragePurchasePrice`: %v\n", *resp.AveragePurchasePrice)
    fmt.Fprintf(os.Stdout, "Response from `OptionsPosition.ListOptionHoldings.Currency`: %v\n", *resp.Currency)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

