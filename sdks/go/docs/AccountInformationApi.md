# APIClient.AccountInformationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**GetAccountActivities**](AccountInformationApi.md#GetAccountActivities) | **Get** /accounts/{accountId}/activities | List account activities
[**GetAllUserHoldings**](AccountInformationApi.md#GetAllUserHoldings) | **Get** /holdings | List all accounts for the user, plus balances, positions, and orders for each account.
[**GetUserAccountBalance**](AccountInformationApi.md#GetUserAccountBalance) | **Get** /accounts/{accountId}/balances | List account balances
[**GetUserAccountDetails**](AccountInformationApi.md#GetUserAccountDetails) | **Get** /accounts/{accountId} | Get account detail
[**GetUserAccountOrders**](AccountInformationApi.md#GetUserAccountOrders) | **Get** /accounts/{accountId}/orders | List account orders
[**GetUserAccountPositions**](AccountInformationApi.md#GetUserAccountPositions) | **Get** /accounts/{accountId}/positions | List account positions
[**GetUserAccountRecentOrders**](AccountInformationApi.md#GetUserAccountRecentOrders) | **Get** /accounts/{accountId}/recentOrders | List account recent orders (last 24 hours only)
[**GetUserAccountReturnRates**](AccountInformationApi.md#GetUserAccountReturnRates) | **Get** /accounts/{accountId}/returnRates | List account rate of returns
[**GetUserHoldings**](AccountInformationApi.md#GetUserHoldings) | **Get** /accounts/{accountId}/holdings | List account holdings
[**ListUserAccounts**](AccountInformationApi.md#ListUserAccounts) | **Get** /accounts | List accounts
[**UpdateUserAccount**](AccountInformationApi.md#UpdateUserAccount) | **Put** /accounts/{accountId} | Update details of an investment account



## GetAccountActivities

List account activities



### Example

```go
package main

import (
    "fmt"
    "os"
        "time"
    snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
    configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
    client := snaptrade.NewAPIClient(configuration)

    request := client.AccountInformationApi.GetAccountActivities(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
    )
    request.StartDate(2013-10-20)
    request.EndDate(2013-10-20)
    request.Offset(56)
    request.Limit(56)
    request.Type(""BUY,SELL,DIVIDEND"")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetAccountActivities``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetAccountActivities`: PaginatedUniversalActivity
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetAccountActivities`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `PaginatedUniversalActivity.GetAccountActivities.Data`: %v\n", *resp.Data)
    fmt.Fprintf(os.Stdout, "Response from `PaginatedUniversalActivity.GetAccountActivities.Pagination`: %v\n", *resp.Pagination)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllUserHoldings
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

List all accounts for the user, plus balances, positions, and orders for each account.



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

    request := client.AccountInformationApi.GetAllUserHoldings(
        "userId_example",
        "userSecret_example",
    )
    request.BrokerageAuthorizations("917c8734-8470-4a3e-a18f-57c3f2ee6631")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetAllUserHoldings``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetAllUserHoldings`: []AccountHoldings
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetAllUserHoldings`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldings.GetAllUserHoldings.Account`: %v\n", *resp.Account)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldings.GetAllUserHoldings.Balances`: %v\n", *resp.Balances)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldings.GetAllUserHoldings.Positions`: %v\n", *resp.Positions)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldings.GetAllUserHoldings.TotalValue`: %v\n", *resp.TotalValue)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountBalance

List account balances



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

    request := client.AccountInformationApi.GetUserAccountBalance(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetUserAccountBalance``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountBalance`: []Balance
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetUserAccountBalance`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Balance.GetUserAccountBalance.Currency`: %v\n", *resp.Currency)
    fmt.Fprintf(os.Stdout, "Response from `Balance.GetUserAccountBalance.Cash`: %v\n", *resp.Cash)
    fmt.Fprintf(os.Stdout, "Response from `Balance.GetUserAccountBalance.BuyingPower`: %v\n", *resp.BuyingPower)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountDetails

Get account detail



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

    request := client.AccountInformationApi.GetUserAccountDetails(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetUserAccountDetails``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountDetails`: Account
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetUserAccountDetails`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.Id`: %v\n", resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.BrokerageAuthorization`: %v\n", resp.BrokerageAuthorization)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.Name`: %v\n", resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.Number`: %v\n", resp.Number)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.InstitutionName`: %v\n", resp.InstitutionName)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.CreatedDate`: %v\n", resp.CreatedDate)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.SyncStatus`: %v\n", resp.SyncStatus)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.Balance`: %v\n", resp.Balance)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.RawType`: %v\n", *resp.RawType)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.Meta`: %v\n", *resp.Meta)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.PortfolioGroup`: %v\n", *resp.PortfolioGroup)
    fmt.Fprintf(os.Stdout, "Response from `Account.GetUserAccountDetails.CashRestrictions`: %v\n", *resp.CashRestrictions)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountOrders

List account orders



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

    request := client.AccountInformationApi.GetUserAccountOrders(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    request.State("state_example")
    request.Days(30)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetUserAccountOrders``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountOrders`: []AccountOrderRecord
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetUserAccountOrders`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.BrokerageOrderId`: %v\n", *resp.BrokerageOrderId)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.UniversalSymbol`: %v\n", *resp.UniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.OptionSymbol`: %v\n", *resp.OptionSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.QuoteUniversalSymbol`: %v\n", *resp.QuoteUniversalSymbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.QuoteCurrency`: %v\n", *resp.QuoteCurrency)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.Action`: %v\n", *resp.Action)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.TotalQuantity`: %v\n", *resp.TotalQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.OpenQuantity`: %v\n", *resp.OpenQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.CanceledQuantity`: %v\n", *resp.CanceledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.FilledQuantity`: %v\n", *resp.FilledQuantity)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.ExecutionPrice`: %v\n", *resp.ExecutionPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.LimitPrice`: %v\n", *resp.LimitPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.StopPrice`: %v\n", *resp.StopPrice)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.OrderType`: %v\n", *resp.OrderType)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.TimeInForce`: %v\n", *resp.TimeInForce)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.TimePlaced`: %v\n", *resp.TimePlaced)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.TimeUpdated`: %v\n", *resp.TimeUpdated)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.TimeExecuted`: %v\n", *resp.TimeExecuted)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.ExpiryDate`: %v\n", *resp.ExpiryDate)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `AccountOrderRecord.GetUserAccountOrders.ChildBrokerageOrderIds`: %v\n", *resp.ChildBrokerageOrderIds)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountPositions

List account positions



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

    request := client.AccountInformationApi.GetUserAccountPositions(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetUserAccountPositions``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountPositions`: []Position
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetUserAccountPositions`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Position.GetUserAccountPositions.Symbol`: %v\n", *resp.Symbol)
    fmt.Fprintf(os.Stdout, "Response from `Position.GetUserAccountPositions.Units`: %v\n", *resp.Units)
    fmt.Fprintf(os.Stdout, "Response from `Position.GetUserAccountPositions.Price`: %v\n", *resp.Price)
    fmt.Fprintf(os.Stdout, "Response from `Position.GetUserAccountPositions.OpenPnl`: %v\n", *resp.OpenPnl)
    fmt.Fprintf(os.Stdout, "Response from `Position.GetUserAccountPositions.AveragePurchasePrice`: %v\n", *resp.AveragePurchasePrice)
    fmt.Fprintf(os.Stdout, "Response from `Position.GetUserAccountPositions.FractionalUnits`: %v\n", *resp.FractionalUnits)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountRecentOrders

List account recent orders (last 24 hours only)



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

    request := client.AccountInformationApi.GetUserAccountRecentOrders(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    request.OnlyExecuted(true)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetUserAccountRecentOrders``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountRecentOrders`: RecentOrdersResponse
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetUserAccountRecentOrders`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `RecentOrdersResponse.GetUserAccountRecentOrders.Orders`: %v\n", *resp.Orders)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserAccountReturnRates

List account rate of returns



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

    request := client.AccountInformationApi.GetUserAccountReturnRates(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetUserAccountReturnRates``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserAccountReturnRates`: RateOfReturnResponse
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetUserAccountReturnRates`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `RateOfReturnResponse.GetUserAccountReturnRates.Data`: %v\n", *resp.Data)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserHoldings

List account holdings



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

    request := client.AccountInformationApi.GetUserHoldings(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.GetUserHoldings``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetUserHoldings`: AccountHoldingsAccount
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.GetUserHoldings`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldingsAccount.GetUserHoldings.Account`: %v\n", *resp.Account)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldingsAccount.GetUserHoldings.Balances`: %v\n", *resp.Balances)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldingsAccount.GetUserHoldings.Positions`: %v\n", *resp.Positions)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldingsAccount.GetUserHoldings.OptionPositions`: %v\n", *resp.OptionPositions)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldingsAccount.GetUserHoldings.Orders`: %v\n", *resp.Orders)
    fmt.Fprintf(os.Stdout, "Response from `AccountHoldingsAccount.GetUserHoldings.TotalValue`: %v\n", *resp.TotalValue)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListUserAccounts

List accounts



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

    request := client.AccountInformationApi.ListUserAccounts(
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.ListUserAccounts``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListUserAccounts`: []Account
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.ListUserAccounts`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.Id`: %v\n", resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.BrokerageAuthorization`: %v\n", resp.BrokerageAuthorization)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.Name`: %v\n", resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.Number`: %v\n", resp.Number)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.InstitutionName`: %v\n", resp.InstitutionName)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.CreatedDate`: %v\n", resp.CreatedDate)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.SyncStatus`: %v\n", resp.SyncStatus)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.Balance`: %v\n", resp.Balance)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.RawType`: %v\n", *resp.RawType)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.Meta`: %v\n", *resp.Meta)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.PortfolioGroup`: %v\n", *resp.PortfolioGroup)
    fmt.Fprintf(os.Stdout, "Response from `Account.ListUserAccounts.CashRestrictions`: %v\n", *resp.CashRestrictions)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateUserAccount

Update details of an investment account



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

    request := client.AccountInformationApi.UpdateUserAccount(
        "userId_example",
        "userSecret_example",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AccountInformationApi.UpdateUserAccount``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `UpdateUserAccount`: []Account
    fmt.Fprintf(os.Stdout, "Response from `AccountInformationApi.UpdateUserAccount`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.Id`: %v\n", resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.BrokerageAuthorization`: %v\n", resp.BrokerageAuthorization)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.Name`: %v\n", resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.Number`: %v\n", resp.Number)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.InstitutionName`: %v\n", resp.InstitutionName)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.CreatedDate`: %v\n", resp.CreatedDate)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.SyncStatus`: %v\n", resp.SyncStatus)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.Balance`: %v\n", resp.Balance)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.RawType`: %v\n", *resp.RawType)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.Meta`: %v\n", *resp.Meta)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.PortfolioGroup`: %v\n", *resp.PortfolioGroup)
    fmt.Fprintf(os.Stdout, "Response from `Account.UpdateUserAccount.CashRestrictions`: %v\n", *resp.CashRestrictions)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

