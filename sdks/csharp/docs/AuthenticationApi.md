# SnapTrade.Net.Api.AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DeleteSnapTradeUser**](AuthenticationApi.md#deletesnaptradeuser) | **DELETE** /snapTrade/deleteUser | Delete SnapTrade user |
| [**ListSnapTradeUsers**](AuthenticationApi.md#listsnaptradeusers) | **GET** /snapTrade/listUsers | List SnapTrade users |
| [**LoginSnapTradeUser**](AuthenticationApi.md#loginsnaptradeuser) | **POST** /snapTrade/login | Login user &amp; generate connection link |
| [**RegisterSnapTradeUser**](AuthenticationApi.md#registersnaptradeuser) | **POST** /snapTrade/registerUser | Create SnapTrade user |
| [**ResetSnapTradeUserSecret**](AuthenticationApi.md#resetsnaptradeusersecret) | **POST** /snapTrade/resetUserSecret | Obtain a new user secret for a user |


# **DeleteSnapTradeUser**



Deletes a user you've registered over the SnapTrade API, and any data associated with them or their investment accounts.

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
                // Delete SnapTrade user
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
    // Delete SnapTrade user
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
| **200** | Delete successful |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ListSnapTradeUsers**



Returns a list of users you've registered over the SnapTrade API.

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
                // List SnapTrade users
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
    // List SnapTrade users
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
| **200** | Successfully retrieved a list of users |  -  |
| **400** | Bad Request. Could be caused by various reasons. Error message is provided in response |  -  |
| **404** | Invalid SnapTrade Client ID provided in query |  -  |
| **500** | Unexpected error |  -  |

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
            var broker = "ALPACA"; // Slug of the brokerage to connect the user to. See [this document](https://snaptrade.notion.site/SnapTrade-Brokerage-Integrations-f83946a714a84c3caf599f6a945f0ead) for a list of supported brokerages and their slugs.
            var immediateRedirect = true; // When set to True, user will be redirected back to the partner's site instead of the connection portal
            var customRedirect = "https://snaptrade.com"; // URL to redirect the user to after the user connects their brokerage account
            var reconnect = "8b5f262d-4bb9-365d-888a-202bd3b15fa1"; // The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See ‘Reconnecting Accounts’ for more information.
            var connectionType = SnapTradeLoginUserRequestBody.ConnectionTypeEnum.Read; // Sets whether the connection should be read or trade
            var connectionPortalVersion = SnapTradeLoginUserRequestBody.ConnectionPortalVersionEnum.V2; // Sets the version of the connection portal to render, with a default to 'v3'
            
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
| **200** | Login successful. Redirect user to provided URI in response |  -  |
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
                // Create SnapTrade user
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
    // Create SnapTrade user
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
| **200** | Successfully registered user |  -  |
| **400** | Bad Request. Could be caused by various reasons. Error message is provided in response |  -  |
| **404** | Invalid SnapTrade Client ID provided in query |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ResetSnapTradeUserSecret**



This API is used to rotate the secret for a SnapTrade user. You might use this if a userSecret is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect. 

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
            var userSecret = "h81@cx1lkalablakwjaltkejraj11="; // SnapTrade User Secret randomly generated by SnapTrade. This is privileged information and if compromised, should be rotated via the SnapTrade API.
            
            var userIDandSecret = new UserIDandSecret(
                userId,
                userSecret
            );
            
            try
            {
                // Obtain a new user secret for a user
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
    // Obtain a new user secret for a user
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

