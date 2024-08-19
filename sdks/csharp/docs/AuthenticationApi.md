# SnapTrade.Net.Api.AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DeleteSnapTradeUser**](AuthenticationApi.md#deletesnaptradeuser) | **DELETE** /snapTrade/deleteUser | Delete user |
| [**ListSnapTradeUsers**](AuthenticationApi.md#listsnaptradeusers) | **GET** /snapTrade/listUsers | List all users |
| [**LoginSnapTradeUser**](AuthenticationApi.md#loginsnaptradeuser) | **POST** /snapTrade/login | Login user &amp; generate connection link |
| [**RegisterSnapTradeUser**](AuthenticationApi.md#registersnaptradeuser) | **POST** /snapTrade/registerUser | Register user |
| [**ResetSnapTradeUserSecret**](AuthenticationApi.md#resetsnaptradeusersecret) | **POST** /snapTrade/resetUserSecret | Rotate user secret |


# **DeleteSnapTradeUser**



Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DeleteSnapTradeUserExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "userId_example";
            
            try
            {
                // Delete user
                DeleteUserResponse result = client.Authentication.DeleteSnapTradeUser(userId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.DeleteSnapTradeUser: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the DeleteSnapTradeUserWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Delete user
    ApiResponse<DeleteUserResponse> response = apiInstance.DeleteSnapTradeUserWithHttpInfo(userId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.DeleteSnapTradeUserWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |

### Return type

[**DeleteUserResponse**](DeleteUserResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ListSnapTradeUsers**



Returns a list of all registered user IDs.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListSnapTradeUsersExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            
            try
            {
                // List all users
                List<string> result = client.Authentication.ListSnapTradeUsers();
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.ListSnapTradeUsers: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the ListSnapTradeUsersWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all users
    ApiResponse<List<string>> response = apiInstance.ListSnapTradeUsersWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.ListSnapTradeUsersWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

**List<string>**


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **LoginSnapTradeUser**



Logs in a SnapTrade user and returns an authenticated connection portal URL for them to use to connect a brokerage account.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class LoginSnapTradeUserExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "userId_example";
            var userSecret = "userSecret_example";
            var broker = "ALPACA"; // Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.
            var immediateRedirect = true; // When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](https://docs.snaptrade.com/docs/implement-connection-portal) for more information.
            var customRedirect = "https://snaptrade.com"; // URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](https://docs.snaptrade.com/docs/implement-connection-portal) for more information.
            var reconnect = "8b5f262d-4bb9-365d-888a-202bd3b15fa1"; // The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](https://docs.snaptrade.com/docs/fix-broken-connections) for more information.
            var connectionType = SnapTradeLoginUserRequestBody.ConnectionTypeEnum.Read; // Sets whether the connection should be read-only or trade-enabled.
            var connectionPortalVersion = SnapTradeLoginUserRequestBody.ConnectionPortalVersionEnum.V3; // Sets the version of the connection portal to render.
            
            var snapTradeLoginUserRequestBody = new SnapTradeLoginUserRequestBody(
                broker,
                immediateRedirect,
                customRedirect,
                reconnect,
                connectionType,
                connectionPortalVersion
            );
            
            try
            {
                // Login user & generate connection link
                AuthenticationLoginSnapTradeUser200Response result = client.Authentication.LoginSnapTradeUser(userId, userSecret, snapTradeLoginUserRequestBody);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.LoginSnapTradeUser: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the LoginSnapTradeUserWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Login user & generate connection link
    ApiResponse<AuthenticationLoginSnapTradeUser200Response> response = apiInstance.LoginSnapTradeUserWithHttpInfo(userId, userSecret, snapTradeLoginUserRequestBody);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.LoginSnapTradeUserWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **snapTradeLoginUserRequestBody** | [**SnapTradeLoginUserRequestBody**](SnapTradeLoginUserRequestBody.md) |  | [optional]  |

### Return type

[**AuthenticationLoginSnapTradeUser200Response**](AuthenticationLoginSnapTradeUser200Response.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **RegisterSnapTradeUser**



Registers a new SnapTrade user under your ClientID. A user secret will be automatically generated for you and must be properly stored in your database. Most SnapTrade operations require a user ID and user secret to be passed as a parameter. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class RegisterSnapTradeUserExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "snaptrade-user-123"; // SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
            
            var snapTradeRegisterUserRequestBody = new SnapTradeRegisterUserRequestBody(
                userId
            );
            
            try
            {
                // Register user
                UserIDandSecret result = client.Authentication.RegisterSnapTradeUser(snapTradeRegisterUserRequestBody);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.RegisterSnapTradeUser: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the RegisterSnapTradeUserWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Register user
    ApiResponse<UserIDandSecret> response = apiInstance.RegisterSnapTradeUserWithHttpInfo(snapTradeRegisterUserRequestBody);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.RegisterSnapTradeUserWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **snapTradeRegisterUserRequestBody** | [**SnapTradeRegisterUserRequestBody**](SnapTradeRegisterUserRequestBody.md) |  |  |

### Return type

[**UserIDandSecret**](UserIDandSecret.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ResetSnapTradeUserSecret**



Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect. 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ResetSnapTradeUserSecretExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var userId = "snaptrade-user-123"; // SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
            var userSecret = "h81@cx1lkalablakwjaltkejraj11="; // SnapTrade User Secret randomly generated by SnapTrade. This is privileged information and if compromised, should be rotated via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret)
            
            var userIDandSecret = new UserIDandSecret(
                userId,
                userSecret
            );
            
            try
            {
                // Rotate user secret
                UserIDandSecret result = client.Authentication.ResetSnapTradeUserSecret(userIDandSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling AuthenticationApi.ResetSnapTradeUserSecret: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

#### Using the ResetSnapTradeUserSecretWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Rotate user secret
    ApiResponse<UserIDandSecret> response = apiInstance.ResetSnapTradeUserSecretWithHttpInfo(userIDandSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.ResetSnapTradeUserSecretWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userIDandSecret** | [**UserIDandSecret**](UserIDandSecret.md) |  |  |

### Return type

[**UserIDandSecret**](UserIDandSecret.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | New user secret is generated |  -  |
| **400** | Bad Request. Could be caused by various reasons. Error message is provided in response |  -  |
| **401** | Failed authenticaion. Wrong clientId, userId or userSecret provided |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

