# SnapTrade.Net.Api.AccountInformationApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetAllUserHoldings**](AccountInformationApi.md#getalluserholdings) | **GET** /holdings | List all accounts for the user, plus balances and positions for each account. |
| [**GetUserAccountBalance**](AccountInformationApi.md#getuseraccountbalance) | **GET** /accounts/{accountId}/balances | Get all cash balances of an investment account |
| [**GetUserAccountDetails**](AccountInformationApi.md#getuseraccountdetails) | **GET** /accounts/{accountId} | Return details of a specific investment account |
| [**GetUserAccountOrders**](AccountInformationApi.md#getuseraccountorders) | **GET** /accounts/{accountId}/orders | Get all history of orders placed in account |
| [**GetUserAccountPositions**](AccountInformationApi.md#getuseraccountpositions) | **GET** /accounts/{accountId}/positions | Get all positions of an investment account |
| [**GetUserHoldings**](AccountInformationApi.md#getuserholdings) | **GET** /accounts/{accountId}/holdings | List balances, positions and orders for the specified account. |
| [**ListUserAccounts**](AccountInformationApi.md#listuseraccounts) | **GET** /accounts | List all investment accounts for the user |
| [**UpdateUserAccount**](AccountInformationApi.md#updateuseraccount) | **PUT** /accounts/{accountId} | Update details of an investment account |

<a name="getalluserholdings"></a>
# **GetAllUserHoldings**
> List&lt;AccountHoldings&gt; GetAllUserHoldings (string userId, string userSecret, Guid? brokerageAuthorizations = null)

List all accounts for the user, plus balances and positions for each account.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetAllUserHoldingsExample
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

            var apiInstance = new AccountInformationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var brokerageAuthorizations = 917c8734-8470-4a3e-a18f-57c3f2ee6631;  // Guid? | Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations). (optional) 

            try
            {
                // List all accounts for the user, plus balances and positions for each account.
                List<AccountHoldings> result = apiInstance.GetAllUserHoldings(userId, userSecret, brokerageAuthorizations);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.GetAllUserHoldings: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAllUserHoldingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all accounts for the user, plus balances and positions for each account.
    ApiResponse<List<AccountHoldings>> response = apiInstance.GetAllUserHoldingsWithHttpInfo(userId, userSecret, brokerageAuthorizations);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.GetAllUserHoldingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **brokerageAuthorizations** | **Guid?** | Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations). | [optional]  |

### Return type

[**List&lt;AccountHoldings&gt;**](AccountHoldings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns list of accounts and holdings |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuseraccountbalance"></a>
# **GetUserAccountBalance**
> List&lt;Balance&gt; GetUserAccountBalance (string userId, string userSecret, Guid accountId)

Get all cash balances of an investment account

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountBalanceExample
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

            var apiInstance = new AccountInformationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accountId = "accountId_example";  // Guid | The ID of the account get positions.

            try
            {
                // Get all cash balances of an investment account
                List<Balance> result = apiInstance.GetUserAccountBalance(userId, userSecret, accountId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.GetUserAccountBalance: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetUserAccountBalanceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all cash balances of an investment account
    ApiResponse<List<Balance>> response = apiInstance.GetUserAccountBalanceWithHttpInfo(userId, userSecret, accountId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.GetUserAccountBalanceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **Guid** | The ID of the account get positions. |  |

### Return type

[**List&lt;Balance&gt;**](Balance.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of all balances in investment account |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuseraccountdetails"></a>
# **GetUserAccountDetails**
> List&lt;Account&gt; GetUserAccountDetails (string userId, string userSecret, Guid accountId)

Return details of a specific investment account

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountDetailsExample
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

            var apiInstance = new AccountInformationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accountId = "accountId_example";  // Guid | The ID of the account to get detail of.

            try
            {
                // Return details of a specific investment account
                List<Account> result = apiInstance.GetUserAccountDetails(userId, userSecret, accountId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.GetUserAccountDetails: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetUserAccountDetailsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Return details of a specific investment account
    ApiResponse<List<Account>> response = apiInstance.GetUserAccountDetailsWithHttpInfo(userId, userSecret, accountId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.GetUserAccountDetailsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **Guid** | The ID of the account to get detail of. |  |

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details of a specific investment account |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuseraccountorders"></a>
# **GetUserAccountOrders**
> List&lt;AccountOrderRecord&gt; GetUserAccountOrders (string userId, string userSecret, Guid accountId, string state = null)

Get all history of orders placed in account

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountOrdersExample
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

            var apiInstance = new AccountInformationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accountId = "accountId_example";  // Guid | The ID of the account get positions.
            var state = "all";  // string | defaults value is set to \"all\" (optional) 

            try
            {
                // Get all history of orders placed in account
                List<AccountOrderRecord> result = apiInstance.GetUserAccountOrders(userId, userSecret, accountId, state);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.GetUserAccountOrders: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetUserAccountOrdersWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all history of orders placed in account
    ApiResponse<List<AccountOrderRecord>> response = apiInstance.GetUserAccountOrdersWithHttpInfo(userId, userSecret, accountId, state);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.GetUserAccountOrdersWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **Guid** | The ID of the account get positions. |  |
| **state** | **string** | defaults value is set to \&quot;all\&quot; | [optional]  |

### Return type

[**List&lt;AccountOrderRecord&gt;**](AccountOrderRecord.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List all orders in account |  -  |
| **500** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuseraccountpositions"></a>
# **GetUserAccountPositions**
> List&lt;Position&gt; GetUserAccountPositions (string userId, string userSecret, Guid accountId)

Get all positions of an investment account

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserAccountPositionsExample
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

            var apiInstance = new AccountInformationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accountId = "accountId_example";  // Guid | The ID of the account get positions.

            try
            {
                // Get all positions of an investment account
                List<Position> result = apiInstance.GetUserAccountPositions(userId, userSecret, accountId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.GetUserAccountPositions: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetUserAccountPositionsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get all positions of an investment account
    ApiResponse<List<Position>> response = apiInstance.GetUserAccountPositionsWithHttpInfo(userId, userSecret, accountId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.GetUserAccountPositionsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **Guid** | The ID of the account get positions. |  |

### Return type

[**List&lt;Position&gt;**](Position.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List all positions in investment account |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuserholdings"></a>
# **GetUserHoldings**
> AccountHoldings GetUserHoldings (Guid accountId, string userId, string userSecret)

List balances, positions and orders for the specified account.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetUserHoldingsExample
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

            var apiInstance = new AccountInformationApi(config);
            var accountId = 917c8734-8470-4a3e-a18f-57c3f2ee6631;  // Guid | The ID of the account to fetch holdings for.
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // List balances, positions and orders for the specified account.
                AccountHoldings result = apiInstance.GetUserHoldings(accountId, userId, userSecret);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.GetUserHoldings: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetUserHoldingsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List balances, positions and orders for the specified account.
    ApiResponse<AccountHoldings> response = apiInstance.GetUserHoldingsWithHttpInfo(accountId, userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.GetUserHoldingsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **accountId** | **Guid** | The ID of the account to fetch holdings for. |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |

### Return type

[**AccountHoldings**](AccountHoldings.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns holdings for the account |  -  |
| **400** | Bad Request |  -  |
| **403** | Forbidden |  -  |
| **500** | Unexpected Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listuseraccounts"></a>
# **ListUserAccounts**
> List&lt;Account&gt; ListUserAccounts (string userId, string userSecret)

List all investment accounts for the user

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class ListUserAccountsExample
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

            var apiInstance = new AccountInformationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 

            try
            {
                // List all investment accounts for the user
                List<Account> result = apiInstance.ListUserAccounts(userId, userSecret);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.ListUserAccounts: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListUserAccountsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List all investment accounts for the user
    ApiResponse<List<Account>> response = apiInstance.ListUserAccountsWithHttpInfo(userId, userSecret);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.ListUserAccountsWithHttpInfo: " + e.Message);
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

[**List&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of all Account objects for the authenticated user. |  -  |
| **0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updateuseraccount"></a>
# **UpdateUserAccount**
> List&lt;Account&gt; UpdateUserAccount (string userId, string userSecret, Guid accountId)

Update details of an investment account

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Api;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class UpdateUserAccountExample
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

            var apiInstance = new AccountInformationApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accountId = "accountId_example";  // Guid | The ID of the account to update.

            try
            {
                // Update details of an investment account
                List<Account> result = apiInstance.UpdateUserAccount(userId, userSecret, accountId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AccountInformationApi.UpdateUserAccount: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateUserAccountWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update details of an investment account
    ApiResponse<List<Account>> response = apiInstance.UpdateUserAccountWithHttpInfo(userId, userSecret, accountId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AccountInformationApi.UpdateUserAccountWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accountId** | **Guid** | The ID of the account to update. |  |

### Return type

[**List&lt;Account&gt;**](Account.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully updated details of an investment account |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
