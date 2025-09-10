# SnapTrade.Net.Api.ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DetailBrokerageAuthorization**](ConnectionsApi.md#detailbrokerageauthorization) | **GET** /authorizations/{authorizationId} | Get connection detail |
| [**DisableBrokerageAuthorization**](ConnectionsApi.md#disablebrokerageauthorization) | **POST** /authorizations/{authorizationId}/disable | Force disable connection |
| [**ListBrokerageAuthorizations**](ConnectionsApi.md#listbrokerageauthorizations) | **GET** /authorizations | List all connections |
| [**RefreshBrokerageAuthorization**](ConnectionsApi.md#refreshbrokerageauthorization) | **POST** /authorizations/{authorizationId}/refresh | Refresh holdings for a connection |
| [**RemoveBrokerageAuthorization**](ConnectionsApi.md#removebrokerageauthorization) | **DELETE** /authorizations/{authorizationId} | Delete connection |
| [**ReturnRates**](ConnectionsApi.md#returnrates) | **GET** /authorizations/{authorizationId}/returnRates | List connection rate of returns |
| [**SessionEvents**](ConnectionsApi.md#sessionevents) | **GET** /sessionEvents | Get all session events for a user |


# **DetailBrokerageAuthorization**



Returns a single connection for the specified ID.

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

            var authorizationId = "authorizationId_example";
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Get connection detail
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
    // Get connection detail
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
| **authorizationId** | **string** |  |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**BrokerageAuthorization**](BrokerageAuthorization.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **DisableBrokerageAuthorization**



Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections. Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.  This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default. 

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

            var authorizationId = "authorizationId_example";
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Force disable connection
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
    // Force disable connection
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
| **authorizationId** | **string** |  |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**BrokerageAuthorizationDisabledConfirmation**](BrokerageAuthorizationDisabledConfirmation.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Unauthorized, invalid credentials for this resource |  -  |
| **402** | Unable to sync with brokerage account because the connection is disabled. |  -  |
| **403** | Customer or user does not have access to this feature |  -  |
| **404** | The requested resource does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ListBrokerageAuthorizations**



Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 

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
                // List all connections
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
    // List all connections
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
| **200** | OK |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **RefreshBrokerageAuthorization**



Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection. This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.  **Please contact support before use. Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 

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

            var authorizationId = "authorizationId_example";
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
| **authorizationId** | **string** |  |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**BrokerageAuthorizationRefreshConfirmation**](BrokerageAuthorizationRefreshConfirmation.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Unauthorized, invalid credentials for this resource |  -  |
| **402** | Unable to sync with brokerage account because the connection is disabled. |  -  |
| **403** | Customer or user does not have access to this feature |  -  |
| **404** | The requested resource does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **RemoveBrokerageAuthorization**



Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.

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

            var authorizationId = "authorizationId_example";
            var userId = "userId_example";
            var userSecret = "userSecret_example";
            
            try
            {
                // Delete connection
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
    // Delete connection
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
| **authorizationId** | **string** |  |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

void (empty response body)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | OK |  -  |
| **400** | Bad Request |  -  |
| **404** | Not Found |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **ReturnRates**



Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example \"ALL\", \"1Y\", \"6M\", \"3M\", \"1M\" 

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ReturnRatesExample
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
            var authorizationId = "authorizationId_example";
            
            try
            {
                // List connection rate of returns
                RateOfReturnResponse result = client.Connections.ReturnRates(userId, userSecret, authorizationId);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ConnectionsApi.ReturnRates: " + e.Message);
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

#### Using the ReturnRatesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List connection rate of returns
    ApiResponse<RateOfReturnResponse> response = apiInstance.ReturnRatesWithHttpInfo(userId, userSecret, authorizationId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling ConnectionsApi.ReturnRatesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **authorizationId** | **string** |  |  |

### Return type

[**RateOfReturnResponse**](RateOfReturnResponse.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **403** | Forbidden |  -  |
| **500** | Unexpected error |  -  |

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
            var userId = "userId_example"; // Optional comma separated list of user IDs used to filter the request on specific users (optional) 
            var sessionId = "sessionId_example"; // Optional comma separated list of session IDs used to filter the request on specific users (optional) 
            
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
| **userId** | **string** | Optional comma separated list of user IDs used to filter the request on specific users | [optional]  |
| **sessionId** | **string** | Optional comma separated list of session IDs used to filter the request on specific users | [optional]  |

### Return type

[**List&lt;ConnectionsSessionEvents200ResponseInner&gt;**](ConnectionsSessionEvents200ResponseInner.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Session Events for the Partner. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

