# SnapTrade.Net.Api.AuthenticationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DeleteSnapTradeUser**](AuthenticationApi.md#deletesnaptradeuser) | **DELETE** /snapTrade/deleteUser | Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user |
| [**GetUserJWT**](AuthenticationApi.md#getuserjwt) | **GET** /snapTrade/encryptedJWT | Obtains an encrypted JWT tokens that should be decrypted on a user&#39;s local device |
| [**ListSnapTradeUsers**](AuthenticationApi.md#listsnaptradeusers) | **GET** /snapTrade/listUsers | Get a list of all SnapTrade users you&#39;ve registered on our platform |
| [**LoginSnapTradeUser**](AuthenticationApi.md#loginsnaptradeuser) | **POST** /snapTrade/login | Generate a redirect URI to securely login a user to the SnapTrade Connection Portal |
| [**RegisterSnapTradeUser**](AuthenticationApi.md#registersnaptradeuser) | **POST** /snapTrade/registerUser | Register user with SnapTrade in order to create secure brokerage authorizations |

<a name="deletesnaptradeuser"></a>
# **DeleteSnapTradeUser**
> DeleteUserResponse DeleteSnapTradeUser (string userId)

Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DeleteSnapTradeUserExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new AuthenticationApi(config);
            var userId = "userId_example";  // string | 

            try
            {
                // Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
                DeleteUserResponse result = apiInstance.DeleteSnapTradeUser(userId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.DeleteSnapTradeUser: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
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

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Delete successful |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuserjwt"></a>
# **GetUserJWT**
> EncryptedResponse GetUserJWT (string userId, string userSecret)

Obtains an encrypted JWT tokens that should be decrypted on a user's local device

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserJWTExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new AuthenticationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // Obtains an encrypted JWT tokens that should be decrypted on a user's local device
                EncryptedResponse result = apiInstance.GetUserJWT(userId, userSecret);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.GetUserJWT: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetUserJWTWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Obtains an encrypted JWT tokens that should be decrypted on a user's local device
    ApiResponse<EncryptedResponse> response = apiInstance.GetUserJWTWithHttpInfo(userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AuthenticationApi.GetUserJWTWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**EncryptedResponse**](EncryptedResponse.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully obtained encrypted JWT data. See description on how to object JWT token |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listsnaptradeusers"></a>
# **ListSnapTradeUsers**
> List&lt;string&gt; ListSnapTradeUsers ()

Get a list of all SnapTrade users you've registered on our platform

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListSnapTradeUsersExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new AuthenticationApi(config);

            try
            {
                // Get a list of all SnapTrade users you've registered on our platform
                List<string> result = apiInstance.ListSnapTradeUsers();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.ListSnapTradeUsers: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Get a list of all SnapTrade users you've registered on our platform
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

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully generated a list of users |  -  |
| **400** | Bad Request. Could be caused by various reasons. Error message is provided in response |  -  |
| **404** | Invalid SnapTrade Client ID provided in query |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="loginsnaptradeuser"></a>
# **LoginSnapTradeUser**
> AuthenticationLoginSnapTradeUser200Response LoginSnapTradeUser (string userId, string userSecret, SnapTradeLoginUserRequestBody snapTradeLoginUserRequestBody = null)

Generate a redirect URI to securely login a user to the SnapTrade Connection Portal

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class LoginSnapTradeUserExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new AuthenticationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var snapTradeLoginUserRequestBody = new SnapTradeLoginUserRequestBody(); // SnapTradeLoginUserRequestBody |  (optional) 

            try
            {
                // Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
                AuthenticationLoginSnapTradeUser200Response result = apiInstance.LoginSnapTradeUser(userId, userSecret, snapTradeLoginUserRequestBody);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.LoginSnapTradeUser: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
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

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Login successful. Redirect user to provided URI in response |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **404** | Not Found |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="registersnaptradeuser"></a>
# **RegisterSnapTradeUser**
> UserIDandSecret RegisterSnapTradeUser (SnapTradeRegisterUserRequestBody snapTradeRegisterUserRequestBody)

Register user with SnapTrade in order to create secure brokerage authorizations

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class RegisterSnapTradeUserExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://api.snaptrade.com/api/v1";
            // Configure API key authorization: PartnerClientId
            config.AddApiKey("clientId", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("clientId", "Bearer");
            // Configure API key authorization: PartnerSignature
            config.AddApiKey("Signature", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("Signature", "Bearer");
            // Configure API key authorization: PartnerTimestamp
            config.AddApiKey("timestamp", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("timestamp", "Bearer");

            var apiInstance = new AuthenticationApi(config);
            var snapTradeRegisterUserRequestBody = new SnapTradeRegisterUserRequestBody(); // SnapTradeRegisterUserRequestBody | 

            try
            {
                // Register user with SnapTrade in order to create secure brokerage authorizations
                UserIDandSecret result = apiInstance.RegisterSnapTradeUser(snapTradeRegisterUserRequestBody);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AuthenticationApi.RegisterSnapTradeUser: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
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
    // Register user with SnapTrade in order to create secure brokerage authorizations
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

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully registered user |  -  |
| **400** | Bad Request. Could be caused by various reasons. Error message is provided in response |  -  |
| **404** | Invalid SnapTrade Client ID provided in query |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

