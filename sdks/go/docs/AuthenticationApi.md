# APIClient.AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**DeleteSnapTradeUser**](AuthenticationApi.md#DeleteSnapTradeUser) | **Delete** /snapTrade/deleteUser | Delete user
[**ListSnapTradeUsers**](AuthenticationApi.md#ListSnapTradeUsers) | **Get** /snapTrade/listUsers | List all users
[**LoginSnapTradeUser**](AuthenticationApi.md#LoginSnapTradeUser) | **Post** /snapTrade/login | Generate Connection Portal URL
[**RegisterSnapTradeUser**](AuthenticationApi.md#RegisterSnapTradeUser) | **Post** /snapTrade/registerUser | Register user
[**ResetSnapTradeUserSecret**](AuthenticationApi.md#ResetSnapTradeUserSecret) | **Post** /snapTrade/resetUserSecret | Rotate user secret



## DeleteSnapTradeUser

Delete user



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

    request := client.AuthenticationApi.DeleteSnapTradeUser(
        "userId_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AuthenticationApi.DeleteSnapTradeUser``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `DeleteSnapTradeUser`: DeleteUserResponse
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationApi.DeleteSnapTradeUser`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `DeleteUserResponse.DeleteSnapTradeUser.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `DeleteUserResponse.DeleteSnapTradeUser.Detail`: %v\n", *resp.Detail)
    fmt.Fprintf(os.Stdout, "Response from `DeleteUserResponse.DeleteSnapTradeUser.UserId`: %v\n", *resp.UserId)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListSnapTradeUsers

List all users



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

    request := client.AuthenticationApi.ListSnapTradeUsers(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AuthenticationApi.ListSnapTradeUsers``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ListSnapTradeUsers`: []string
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationApi.ListSnapTradeUsers`: %v\n", resp)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LoginSnapTradeUser

Generate Connection Portal URL



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

    
    snapTradeLoginUserRequestBody := *snaptrade.NewSnapTradeLoginUserRequestBody()
    snapTradeLoginUserRequestBody.SetBroker("ALPACA")
    snapTradeLoginUserRequestBody.SetImmediateRedirect(true)
    snapTradeLoginUserRequestBody.SetCustomRedirect("https://snaptrade.com")
    snapTradeLoginUserRequestBody.SetReconnect("8b5f262d-4bb9-365d-888a-202bd3b15fa1")
    snapTradeLoginUserRequestBody.SetConnectionType("READ")
    snapTradeLoginUserRequestBody.SetConnectionPortalVersion("V4")
    
    request := client.AuthenticationApi.LoginSnapTradeUser(
        "userId_example",
        "userSecret_example",
    )
    request.SnapTradeLoginUserRequestBody(snapTradeLoginUserRequestBody)
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AuthenticationApi.LoginSnapTradeUser``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `LoginSnapTradeUser`: AuthenticationLoginSnapTradeUser200Response
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationApi.LoginSnapTradeUser`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationLoginSnapTradeUser200Response.LoginSnapTradeUser.RedirectURI`: %v\n", *resp.RedirectURI)
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationLoginSnapTradeUser200Response.LoginSnapTradeUser.SessionId`: %v\n", *resp.SessionId)
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationLoginSnapTradeUser200Response.LoginSnapTradeUser.EncryptedSharedKey`: %v\n", *resp.EncryptedSharedKey)
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationLoginSnapTradeUser200Response.LoginSnapTradeUser.EncryptedMessageData`: %v\n", *resp.EncryptedMessageData)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RegisterSnapTradeUser

Register user



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

    
    snapTradeRegisterUserRequestBody := *snaptrade.NewSnapTradeRegisterUserRequestBody()
    snapTradeRegisterUserRequestBody.SetUserId("snaptrade-user-123")
    
    request := client.AuthenticationApi.RegisterSnapTradeUser(
        snapTradeRegisterUserRequestBody,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AuthenticationApi.RegisterSnapTradeUser``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `RegisterSnapTradeUser`: UserIDandSecret
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationApi.RegisterSnapTradeUser`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `UserIDandSecret.RegisterSnapTradeUser.UserId`: %v\n", *resp.UserId)
    fmt.Fprintf(os.Stdout, "Response from `UserIDandSecret.RegisterSnapTradeUser.UserSecret`: %v\n", *resp.UserSecret)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ResetSnapTradeUserSecret

Rotate user secret



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

    
    userIDandSecret := *snaptrade.NewUserIDandSecret()
    userIDandSecret.SetUserId("snaptrade-user-123")
    userIDandSecret.SetUserSecret("adf2aa34-8219-40f7-a6b3-60156985cc61")
    
    request := client.AuthenticationApi.ResetSnapTradeUserSecret(
        userIDandSecret,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AuthenticationApi.ResetSnapTradeUserSecret``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `ResetSnapTradeUserSecret`: UserIDandSecret
    fmt.Fprintf(os.Stdout, "Response from `AuthenticationApi.ResetSnapTradeUserSecret`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `UserIDandSecret.ResetSnapTradeUserSecret.UserId`: %v\n", *resp.UserId)
    fmt.Fprintf(os.Stdout, "Response from `UserIDandSecret.ResetSnapTradeUserSecret.UserSecret`: %v\n", *resp.UserSecret)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

