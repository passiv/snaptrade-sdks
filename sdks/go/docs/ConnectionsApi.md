# APIClient.ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**DetailBrokerageAuthorization**](ConnectionsApi.md#DetailBrokerageAuthorization) | **Get** /authorizations/{authorizationId} | Get connection detail
[**DisableBrokerageAuthorization**](ConnectionsApi.md#DisableBrokerageAuthorization) | **Post** /authorizations/{authorizationId}/disable | Force disable connection
[**ListBrokerageAuthorizations**](ConnectionsApi.md#ListBrokerageAuthorizations) | **Get** /authorizations | List all connections
[**RefreshBrokerageAuthorization**](ConnectionsApi.md#RefreshBrokerageAuthorization) | **Post** /authorizations/{authorizationId}/refresh | Refresh holdings for a connection
[**RemoveBrokerageAuthorization**](ConnectionsApi.md#RemoveBrokerageAuthorization) | **Delete** /authorizations/{authorizationId} | Delete connection
[**SessionEvents**](ConnectionsApi.md#SessionEvents) | **Get** /sessionEvents | Get all session events for a user



## DetailBrokerageAuthorization

Get connection detail



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

    request := client.ConnectionsApi.DetailBrokerageAuthorization(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ConnectionsApi.DetailBrokerageAuthorization``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `DetailBrokerageAuthorization`: BrokerageAuthorization
    fmt.Fprintf(os.Stdout, "Response from `ConnectionsApi.DetailBrokerageAuthorization`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.CreatedDate`: %v\n", *resp.CreatedDate)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.Brokerage`: %v\n", *resp.Brokerage)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.Type`: %v\n", *resp.Type)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.Disabled`: %v\n", *resp.Disabled)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.DisabledDate`: %v\n", *resp.DisabledDate)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.Meta`: %v\n", *resp.Meta)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.DetailBrokerageAuthorization.UpdatedDate`: %v\n", *resp.UpdatedDate)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DisableBrokerageAuthorization

Force disable connection



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

    request := client.ConnectionsApi.DisableBrokerageAuthorization(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ConnectionsApi.DisableBrokerageAuthorization``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `DisableBrokerageAuthorization`: BrokerageAuthorizationDisabledConfirmation
    fmt.Fprintf(os.Stdout, "Response from `ConnectionsApi.DisableBrokerageAuthorization`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorizationDisabledConfirmation.DisableBrokerageAuthorization.Detail`: %v\n", *resp.Detail)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListBrokerageAuthorizations

List all connections



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

    request := client.ConnectionsApi.ListBrokerageAuthorizations(
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ConnectionsApi.ListBrokerageAuthorizations``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListBrokerageAuthorizations`: []BrokerageAuthorization
    fmt.Fprintf(os.Stdout, "Response from `ConnectionsApi.ListBrokerageAuthorizations`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.CreatedDate`: %v\n", *resp.CreatedDate)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.Brokerage`: %v\n", *resp.Brokerage)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.Type`: %v\n", *resp.Type)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.Disabled`: %v\n", *resp.Disabled)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.DisabledDate`: %v\n", *resp.DisabledDate)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.Meta`: %v\n", *resp.Meta)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorization.ListBrokerageAuthorizations.UpdatedDate`: %v\n", *resp.UpdatedDate)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RefreshBrokerageAuthorization

Refresh holdings for a connection



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

    request := client.ConnectionsApi.RefreshBrokerageAuthorization(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ConnectionsApi.RefreshBrokerageAuthorization``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `RefreshBrokerageAuthorization`: BrokerageAuthorizationRefreshConfirmation
    fmt.Fprintf(os.Stdout, "Response from `ConnectionsApi.RefreshBrokerageAuthorization`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `BrokerageAuthorizationRefreshConfirmation.RefreshBrokerageAuthorization.Detail`: %v\n", *resp.Detail)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveBrokerageAuthorization

Delete connection



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

    request := client.ConnectionsApi.RemoveBrokerageAuthorization(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "userId_example",
        "userSecret_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ConnectionsApi.RemoveBrokerageAuthorization``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SessionEvents

Get all session events for a user



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

    request := client.ConnectionsApi.SessionEvents(
        "partnerClientId_example",
    )
    request.UserId("userId_example")
    request.SessionId("sessionId_example")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ConnectionsApi.SessionEvents``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `SessionEvents`: []SessionEvent
    fmt.Fprintf(os.Stdout, "Response from `ConnectionsApi.SessionEvents`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `SessionEvent.SessionEvents.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `SessionEvent.SessionEvents.SessionEventType`: %v\n", *resp.SessionEventType)
    fmt.Fprintf(os.Stdout, "Response from `SessionEvent.SessionEvents.SessionId`: %v\n", *resp.SessionId)
    fmt.Fprintf(os.Stdout, "Response from `SessionEvent.SessionEvents.UserId`: %v\n", *resp.UserId)
    fmt.Fprintf(os.Stdout, "Response from `SessionEvent.SessionEvents.CreatedDate`: %v\n", *resp.CreatedDate)
    fmt.Fprintf(os.Stdout, "Response from `SessionEvent.SessionEvents.BrokerageStatusCode`: %v\n", *resp.BrokerageStatusCode)
    fmt.Fprintf(os.Stdout, "Response from `SessionEvent.SessionEvents.BrokerageAuthorizationId`: %v\n", *resp.BrokerageAuthorizationId)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

