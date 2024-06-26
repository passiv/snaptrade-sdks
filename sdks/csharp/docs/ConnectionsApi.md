# SnapTrade.Net.Api.ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DetailBrokerageAuthorization**](ConnectionsApi.md#detailbrokerageauthorization) | **GET** /authorizations/{authorizationId} | Get brokerage authorization details |
| [**DisableBrokerageAuthorization**](ConnectionsApi.md#disablebrokerageauthorization) | **POST** /authorizations/{authorizationId}/disable | Manually disable a connection for testing |
| [**ListBrokerageAuthorizations**](ConnectionsApi.md#listbrokerageauthorizations) | **GET** /authorizations | List all brokerage authorizations for the User |
| [**RefreshBrokerageAuthorization**](ConnectionsApi.md#refreshbrokerageauthorization) | **POST** /authorizations/{authorizationId}/refresh | Refresh holdings for a connection |
| [**RemoveBrokerageAuthorization**](ConnectionsApi.md#removebrokerageauthorization) | **DELETE** /authorizations/{authorizationId} | Delete brokerage authorization |
| [**SessionEvents**](ConnectionsApi.md#sessionevents) | **GET** /sessionEvents | Get all session events for a user |


# **DetailBrokerageAuthorization**



Returns a single brokerage authorization object for the specified ID.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DetailBrokerageAuthorizationExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var authorizationId = "authorizationId_example"; // The ID of a brokerage authorization object.
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Get brokerage authorization details
                BrokerageAuthorization result = client.Connections.DetailBrokerageAuthorization(authorizationId, userId, userSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ConnectionsApi.DetailBrokerageAuthorization: " + e.Message);
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

#### Using the DetailBrokerageAuthorizationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get brokerage authorization details
    ApiResponse<BrokerageAuthorization> response = apiInstance.DetailBrokerageAuthorizationWithHttpInfo(authorizationId, userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ConnectionsApi.DetailBrokerageAuthorizationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authorizationId** | **string** | The ID of a brokerage authorization object. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**BrokerageAuthorization**](BrokerageAuthorization.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authorization object for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **DisableBrokerageAuthorization**



Manually disable a connection. This should only be used for testing a reconnect flow, and never used on production connections. Will trigger a disconnect as if it happened naturally, and send a CONNECTION_BROKEN webhook for the connection. Please contact us in order to use this endpoint as it is disabled by default.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DisableBrokerageAuthorizationExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var authorizationId = "authorizationId_example"; // The ID of a brokerage authorization object.
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Manually disable a connection for testing
                BrokerageAuthorizationDisabledConfirmation result = client.Connections.DisableBrokerageAuthorization(authorizationId, userId, userSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ConnectionsApi.DisableBrokerageAuthorization: " + e.Message);
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

#### Using the DisableBrokerageAuthorizationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Manually disable a connection for testing
    ApiResponse<BrokerageAuthorizationDisabledConfirmation> response = apiInstance.DisableBrokerageAuthorizationWithHttpInfo(authorizationId, userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ConnectionsApi.DisableBrokerageAuthorizationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authorizationId** | **string** | The ID of a brokerage authorization object. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**BrokerageAuthorizationDisabledConfirmation**](BrokerageAuthorizationDisabledConfirmation.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Confirmation that the connection has been disabled |  -  |
| **401** | Unauthorized, invalid credentials for this resource |  -  |
| **402** | Unable to sync with brokerage account because the connection is disabled. |  -  |
| **403** | Customer or user does not have access to this feature |  -  |
| **404** | The requested resource does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ListBrokerageAuthorizations**



Returns a list of Brokerage Authorization objects for the user

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListBrokerageAuthorizationsExample
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
            
            try
            {
                // List all brokerage authorizations for the User
                List<BrokerageAuthorization> result = client.Connections.ListBrokerageAuthorizations(userId, userSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ConnectionsApi.ListBrokerageAuthorizations: " + e.Message);
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

#### Using the ListBrokerageAuthorizationsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all brokerage authorizations for the User
    ApiResponse<List<BrokerageAuthorization>> response = apiInstance.ListBrokerageAuthorizationsWithHttpInfo(userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ConnectionsApi.ListBrokerageAuthorizationsWithHttpInfo: " + e.Message);
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

[**List&lt;BrokerageAuthorization&gt;**](BrokerageAuthorization.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Authorization objects for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **RefreshBrokerageAuthorization**



Trigger a holdings update for all accounts under this authorization. Updates will be queued asynchronously. ACCOUNT_HOLDINGS_UPDATED webhook will be sent once the sync completes

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class RefreshBrokerageAuthorizationExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var authorizationId = "authorizationId_example"; // The ID of a brokerage authorization object.
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Refresh holdings for a connection
                BrokerageAuthorizationRefreshConfirmation result = client.Connections.RefreshBrokerageAuthorization(authorizationId, userId, userSecret);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ConnectionsApi.RefreshBrokerageAuthorization: " + e.Message);
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

#### Using the RefreshBrokerageAuthorizationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Refresh holdings for a connection
    ApiResponse<BrokerageAuthorizationRefreshConfirmation> response = apiInstance.RefreshBrokerageAuthorizationWithHttpInfo(authorizationId, userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ConnectionsApi.RefreshBrokerageAuthorizationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authorizationId** | **string** | The ID of a brokerage authorization object. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**BrokerageAuthorizationRefreshConfirmation**](BrokerageAuthorizationRefreshConfirmation.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Confirmation that the syncs have been scheduled |  -  |
| **401** | Unauthorized, invalid credentials for this resource |  -  |
| **402** | Unable to sync with brokerage account because the connection is disabled. |  -  |
| **403** | Customer or user does not have access to this feature |  -  |
| **404** | The requested resource does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **RemoveBrokerageAuthorization**



Deletes a specified brokerage authorization given by the ID.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class RemoveBrokerageAuthorizationExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var authorizationId = "authorizationId_example"; // The ID of the Authorization to delete.
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Delete brokerage authorization
                client.Connections.RemoveBrokerageAuthorization(authorizationId, userId, userSecret);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ConnectionsApi.RemoveBrokerageAuthorization: " + e.Message);
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

#### Using the RemoveBrokerageAuthorizationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Delete brokerage authorization
    apiInstance.RemoveBrokerageAuthorizationWithHttpInfo(authorizationId, userId, userSecret);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ConnectionsApi.RemoveBrokerageAuthorizationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **authorizationId** | **string** | The ID of the Authorization to delete. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

void (empty response body)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Brokerage authorization object has been successfully deleted |  -  |
| **400** | The specified authorizationId is invalid (not a UUID string). |  -  |
| **404** | The specified authorizationId was not found. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **SessionEvents**



Returns a list of session events associated with a user.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class SessionEventsExample
    {
        public static void Main()
        {
            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));

            var partnerClientId = "partnerClientId_example";
            var userId = "userId_example"; // Optional comma seperated list of user IDs used to filter the request on specific users (optional) 
            var sessionId = "sessionId_example"; // Optional comma seperated list of session IDs used to filter the request on specific users (optional) 
            
            try
            {
                // Get all session events for a user
                List<ConnectionsSessionEvents200ResponseInner> result = client.Connections.SessionEvents(partnerClientId, userId, sessionId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ConnectionsApi.SessionEvents: " + e.Message);
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

#### Using the SessionEventsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all session events for a user
    ApiResponse<List<ConnectionsSessionEvents200ResponseInner>> response = apiInstance.SessionEventsWithHttpInfo(partnerClientId, userId, sessionId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ConnectionsApi.SessionEventsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **partnerClientId** | **string** |  |  |
| **userId** | **string** | Optional comma seperated list of user IDs used to filter the request on specific users | [optional]  |
| **sessionId** | **string** | Optional comma seperated list of session IDs used to filter the request on specific users | [optional]  |

### Return type

[**List&lt;ConnectionsSessionEvents200ResponseInner&gt;**](ConnectionsSessionEvents200ResponseInner.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Session Events for the Partner. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

