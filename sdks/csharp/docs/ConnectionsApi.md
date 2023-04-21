# SnapTrade.Net.Api.ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DetailBrokerageAuthorization**](ConnectionsApi.md#detailbrokerageauthorization) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user |
| [**ListBrokerageAuthorizations**](ConnectionsApi.md#listbrokerageauthorizations) | **GET** /authorizations | List all brokerage authorizations for the user |
| [**RemoveBrokerageAuthorization**](ConnectionsApi.md#removebrokerageauthorization) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization. |
| [**SessionEvents**](ConnectionsApi.md#sessionevents) | **GET** /sessionEvents | List all session events for the partner |

<a name="detailbrokerageauthorization"></a>
# **DetailBrokerageAuthorization**
> BrokerageAuthorization DetailBrokerageAuthorization (Guid authorizationId, string userId, string userSecret)

Get detail of a specific brokerage authorizations for the user

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class DetailBrokerageAuthorizationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new ConnectionsApi(config);
            var authorizationId = "authorizationId_example";  // Guid | The ID of a brokerage authorization object.
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // Get detail of a specific brokerage authorizations for the user
                BrokerageAuthorization result = apiInstance.DetailBrokerageAuthorization(authorizationId, userId, userSecret);
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
    // Get detail of a specific brokerage authorizations for the user
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
| **authorizationId** | **Guid** | The ID of a brokerage authorization object. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**BrokerageAuthorization**](BrokerageAuthorization.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authorization object for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listbrokerageauthorizations"></a>
# **ListBrokerageAuthorizations**
> List&lt;BrokerageAuthorization&gt; ListBrokerageAuthorizations (string userId, string userSecret)

List all brokerage authorizations for the user

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListBrokerageAuthorizationsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new ConnectionsApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // List all brokerage authorizations for the user
                List<BrokerageAuthorization> result = apiInstance.ListBrokerageAuthorizations(userId, userSecret);
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
    // List all brokerage authorizations for the user
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

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Authorization objects for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="removebrokerageauthorization"></a>
# **RemoveBrokerageAuthorization**
> void RemoveBrokerageAuthorization (Guid authorizationId, string userId, string userSecret)

Remove a brokerage authorization.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class RemoveBrokerageAuthorizationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new ConnectionsApi(config);
            var authorizationId = "authorizationId_example";  // Guid | The ID of the Authorization to delete.
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // Remove a brokerage authorization.
                apiInstance.RemoveBrokerageAuthorization(authorizationId, userId, userSecret);
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
    // Remove a brokerage authorization.
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
| **authorizationId** | **Guid** | The ID of the Authorization to delete. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

void (empty response body)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Brokerage authorization object has been successfully deleted |  -  |
| **400** | The specified authorizationId is invalid (not a UUID string). |  -  |
| **404** | The specified authorizationId was not found. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="sessionevents"></a>
# **SessionEvents**
> List&lt;ConnectionsSessionEvents200ResponseInner&gt; SessionEvents (string partnerClientId, string userId = null, string sessionId = null)

List all session events for the partner

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class SessionEventsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new ConnectionsApi(config);
            var partnerClientId = "partnerClientId_example";  // string | 
            var userId = "userId_example";  // string | Optional comma seperated list of user IDs used to filter the request on specific users (optional) 
            var sessionId = "sessionId_example";  // string | Optional comma seperated list of session IDs used to filter the request on specific users (optional) 

            try
            {
                // List all session events for the partner
                List<ConnectionsSessionEvents200ResponseInner> result = apiInstance.SessionEvents(partnerClientId, userId, sessionId);
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
    // List all session events for the partner
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

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Session Events for the Partner. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

