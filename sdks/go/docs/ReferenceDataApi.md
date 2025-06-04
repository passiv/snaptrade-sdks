# APIClient.ReferenceDataApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetCurrencyExchangeRatePair**](ReferenceDataApi.md#GetCurrencyExchangeRatePair) | **Get** /currencies/rates/{currencyPair} | Get exchange rate of a currency pair
[**GetPartnerInfo**](ReferenceDataApi.md#GetPartnerInfo) | **Get** /snapTrade/partners | Get Client Info
[**GetSecurityTypes**](ReferenceDataApi.md#GetSecurityTypes) | **Get** /securityTypes | List security types
[**GetStockExchanges**](ReferenceDataApi.md#GetStockExchanges) | **Get** /exchanges | Get exchanges
[**GetSymbols**](ReferenceDataApi.md#GetSymbols) | **Post** /symbols | Search symbols
[**GetSymbolsByTicker**](ReferenceDataApi.md#GetSymbolsByTicker) | **Get** /symbols/{query} | Get symbol detail
[**ListAllBrokerageAuthorizationType**](ReferenceDataApi.md#ListAllBrokerageAuthorizationType) | **Get** /brokerageAuthorizationTypes | Get all brokerage authorization types
[**ListAllBrokerages**](ReferenceDataApi.md#ListAllBrokerages) | **Get** /brokerages | Get brokerages
[**ListAllCurrencies**](ReferenceDataApi.md#ListAllCurrencies) | **Get** /currencies | Get currencies
[**ListAllCurrenciesRates**](ReferenceDataApi.md#ListAllCurrenciesRates) | **Get** /currencies/rates | Get currency exchange rates
[**SymbolSearchUserAccount**](ReferenceDataApi.md#SymbolSearchUserAccount) | **Post** /accounts/{accountId}/symbols | Search account symbols



## GetCurrencyExchangeRatePair

Get exchange rate of a currency pair



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

    request := client.ReferenceDataApi.GetCurrencyExchangeRatePair(
        "currencyPair_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.GetCurrencyExchangeRatePair``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetCurrencyExchangeRatePair`: ExchangeRatePairs
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.GetCurrencyExchangeRatePair`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `ExchangeRatePairs.GetCurrencyExchangeRatePair.Src`: %v\n", *resp.Src)
    fmt.Fprintf(os.Stdout, "Response from `ExchangeRatePairs.GetCurrencyExchangeRatePair.Dst`: %v\n", *resp.Dst)
    fmt.Fprintf(os.Stdout, "Response from `ExchangeRatePairs.GetCurrencyExchangeRatePair.ExchangeRate`: %v\n", *resp.ExchangeRate)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPartnerInfo

Get Client Info



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

    request := client.ReferenceDataApi.GetPartnerInfo(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.GetPartnerInfo``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetPartnerInfo`: PartnerData
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.GetPartnerInfo`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.Slug`: %v\n", *resp.Slug)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.LogoUrl`: %v\n", *resp.LogoUrl)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.AllowedBrokerages`: %v\n", *resp.AllowedBrokerages)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.CanAccessTrades`: %v\n", *resp.CanAccessTrades)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.CanAccessHoldings`: %v\n", *resp.CanAccessHoldings)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.CanAccessAccountHistory`: %v\n", *resp.CanAccessAccountHistory)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.CanAccessReferenceData`: %v\n", *resp.CanAccessReferenceData)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.CanAccessPortfolioManagement`: %v\n", *resp.CanAccessPortfolioManagement)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.CanAccessOrders`: %v\n", *resp.CanAccessOrders)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.RedirectUri`: %v\n", *resp.RedirectUri)
    fmt.Fprintf(os.Stdout, "Response from `PartnerData.GetPartnerInfo.PinRequired`: %v\n", *resp.PinRequired)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSecurityTypes

List security types



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

    request := client.ReferenceDataApi.GetSecurityTypes(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.GetSecurityTypes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetSecurityTypes`: []SecurityType
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.GetSecurityTypes`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `SecurityType.GetSecurityTypes.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `SecurityType.GetSecurityTypes.Code`: %v\n", *resp.Code)
    fmt.Fprintf(os.Stdout, "Response from `SecurityType.GetSecurityTypes.Description`: %v\n", *resp.Description)
    fmt.Fprintf(os.Stdout, "Response from `SecurityType.GetSecurityTypes.IsSupported`: %v\n", *resp.IsSupported)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetStockExchanges

Get exchanges



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

    request := client.ReferenceDataApi.GetStockExchanges(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.GetStockExchanges``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetStockExchanges`: []Exchange
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.GetStockExchanges`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.Code`: %v\n", *resp.Code)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.MicCode`: %v\n", *resp.MicCode)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.Timezone`: %v\n", *resp.Timezone)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.StartTime`: %v\n", *resp.StartTime)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.CloseTime`: %v\n", *resp.CloseTime)
    fmt.Fprintf(os.Stdout, "Response from `Exchange.GetStockExchanges.Suffix`: %v\n", *resp.Suffix)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSymbols

Search symbols



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

    
    symbolQuery := *snaptrade.NewSymbolQuery()
    symbolQuery.SetSubstring("AAPL")
    
    request := client.ReferenceDataApi.GetSymbols(
    )
    request.SymbolQuery(symbolQuery)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.GetSymbols``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetSymbols`: []UniversalSymbol
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.GetSymbols`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.Id`: %v\n", resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.Symbol`: %v\n", resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.RawSymbol`: %v\n", resp.RawSymbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.Description`: %v\n", *resp.Description)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.Currency`: %v\n", resp.Currency)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.Exchange`: %v\n", *resp.Exchange)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.Type`: %v\n", resp.Type)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.FigiCode`: %v\n", *resp.FigiCode)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.FigiInstrument`: %v\n", *resp.FigiInstrument)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbols.Currencies`: %v\n", resp.Currencies)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSymbolsByTicker

Get symbol detail



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

    request := client.ReferenceDataApi.GetSymbolsByTicker(
        "query_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.GetSymbolsByTicker``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetSymbolsByTicker`: UniversalSymbol
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.GetSymbolsByTicker`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.Id`: %v\n", resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.Symbol`: %v\n", resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.RawSymbol`: %v\n", resp.RawSymbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.Description`: %v\n", *resp.Description)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.Currency`: %v\n", resp.Currency)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.Exchange`: %v\n", *resp.Exchange)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.Type`: %v\n", resp.Type)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.FigiCode`: %v\n", *resp.FigiCode)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.FigiInstrument`: %v\n", *resp.FigiInstrument)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.GetSymbolsByTicker.Currencies`: %v\n", resp.Currencies)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListAllBrokerageAuthorizationType

Get all brokerage authorization types



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

    request := client.ReferenceDataApi.ListAllBrokerageAuthorizationType(
    )
    request.Brokerage(""QUESTRADE,ALPACA"")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.ListAllBrokerageAuthorizationType``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListAllBrokerageAuthorizationType`: []BrokerageAuthorizationTypeReadOnly
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.ListAllBrokerageAuthorizationType`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorizationTypeReadOnly.ListAllBrokerageAuthorizationType.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorizationTypeReadOnly.ListAllBrokerageAuthorizationType.Type`: %v\n", *resp.Type)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorizationTypeReadOnly.ListAllBrokerageAuthorizationType.AuthType`: %v\n", *resp.AuthType)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorizationTypeReadOnly.ListAllBrokerageAuthorizationType.Brokerage`: %v\n", *resp.Brokerage)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListAllBrokerages

Get brokerages



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

    request := client.ReferenceDataApi.ListAllBrokerages(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.ListAllBrokerages``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListAllBrokerages`: []Brokerage
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.ListAllBrokerages`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.Slug`: %v\n", *resp.Slug)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.DisplayName`: %v\n", *resp.DisplayName)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.Description`: %v\n", *resp.Description)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.AwsS3LogoUrl`: %v\n", *resp.AwsS3LogoUrl)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.AwsS3SquareLogoUrl`: %v\n", *resp.AwsS3SquareLogoUrl)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.Url`: %v\n", *resp.Url)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.Enabled`: %v\n", *resp.Enabled)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.MaintenanceMode`: %v\n", *resp.MaintenanceMode)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.AllowsTrading`: %v\n", *resp.AllowsTrading)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.AllowsFractionalUnits`: %v\n", *resp.AllowsFractionalUnits)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.HasReporting`: %v\n", *resp.HasReporting)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.IsRealTimeConnection`: %v\n", *resp.IsRealTimeConnection)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.BrokerageType`: %v\n", *resp.BrokerageType)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.Exchanges`: %v\n", *resp.Exchanges)
    fmt.Fprintf(os.Stdout, "Response from `Brokerage.ListAllBrokerages.OpenUrl`: %v\n", *resp.OpenUrl)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListAllCurrencies

Get currencies



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

    request := client.ReferenceDataApi.ListAllCurrencies(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.ListAllCurrencies``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListAllCurrencies`: []Currency
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.ListAllCurrencies`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Currency.ListAllCurrencies.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Currency.ListAllCurrencies.Code`: %v\n", *resp.Code)
    fmt.Fprintf(os.Stdout, "Response from `Currency.ListAllCurrencies.Name`: %v\n", *resp.Name)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListAllCurrenciesRates

Get currency exchange rates



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

    request := client.ReferenceDataApi.ListAllCurrenciesRates(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.ListAllCurrenciesRates``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListAllCurrenciesRates`: []ExchangeRatePairs
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.ListAllCurrenciesRates`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `ExchangeRatePairs.ListAllCurrenciesRates.Src`: %v\n", *resp.Src)
    fmt.Fprintf(os.Stdout, "Response from `ExchangeRatePairs.ListAllCurrenciesRates.Dst`: %v\n", *resp.Dst)
    fmt.Fprintf(os.Stdout, "Response from `ExchangeRatePairs.ListAllCurrenciesRates.ExchangeRate`: %v\n", *resp.ExchangeRate)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SymbolSearchUserAccount

Search account symbols



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

    
    symbolQuery := *snaptrade.NewSymbolQuery()
    symbolQuery.SetSubstring("AAPL")
    
    request := client.ReferenceDataApi.SymbolSearchUserAccount(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    request.SymbolQuery(symbolQuery)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceDataApi.SymbolSearchUserAccount``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `SymbolSearchUserAccount`: []UniversalSymbol
    fmt.Fprintf(os.Stdout, "Response from `ReferenceDataApi.SymbolSearchUserAccount`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.Id`: %v\n", resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.Symbol`: %v\n", resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.RawSymbol`: %v\n", resp.RawSymbol)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.Description`: %v\n", *resp.Description)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.Currency`: %v\n", resp.Currency)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.Exchange`: %v\n", *resp.Exchange)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.Type`: %v\n", resp.Type)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.FigiCode`: %v\n", *resp.FigiCode)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.FigiInstrument`: %v\n", *resp.FigiInstrument)
    fmt.Fprintf(os.Stdout, "Response from `UniversalSymbol.SymbolSearchUserAccount.Currencies`: %v\n", resp.Currencies)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

