# SnapTrade.Net.Api.TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetActivities**](TransactionsAndReportingApi.md#getactivities) | **GET** /activities | Get transaction history for a user |
| [**GetReportingCustomRange**](TransactionsAndReportingApi.md#getreportingcustomrange) | **GET** /performance/custom | Get performance information for a specific timeframe |

<a name="getactivities"></a>
# **GetActivities**
> List&lt;UniversalActivity&gt; GetActivities (string userId, string userSecret, string startDate = null, string endDate = null, string accounts = null, string brokerageAuthorizations = null)

Get transaction history for a user

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

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
    public class GetActivitiesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TransactionsAndReportingApi(config);
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var startDate = "startDate_example";  // string |  (optional) 
            var endDate = "endDate_example";  // string |  (optional) 
            var accounts = "accounts_example";  // string | Optional comma seperated list of account IDs used to filter the request on specific accounts (optional) 
            var brokerageAuthorizations = "brokerageAuthorizations_example";  // string | Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations (optional) 

            try
            {
                // Get transaction history for a user
                List<UniversalActivity> result = apiInstance.GetActivities(userId, userSecret, startDate, endDate, accounts, brokerageAuthorizations);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TransactionsAndReportingApi.GetActivities: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetActivitiesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get transaction history for a user
    ApiResponse<List<UniversalActivity>> response = apiInstance.GetActivitiesWithHttpInfo(userId, userSecret, startDate, endDate, accounts, brokerageAuthorizations);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TransactionsAndReportingApi.GetActivitiesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **startDate** | **string** |  | [optional]  |
| **endDate** | **string** |  | [optional]  |
| **accounts** | **string** | Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional]  |
| **brokerageAuthorizations** | **string** | Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations | [optional]  |

### Return type

[**List&lt;UniversalActivity&gt;**](UniversalActivity.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved transaction history |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getreportingcustomrange"></a>
# **GetReportingCustomRange**
> PerformanceCustom GetReportingCustomRange (string startDate, string endDate, string userId, string userSecret, string accounts = null, bool? detailed = null, string frequency = null)

Get performance information for a specific timeframe

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

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
    public class GetReportingCustomRangeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();

            // Configure custom BasePath if desired
            // config.BasePath = "https://api.snaptrade.com/api/v1";

            config.ApiKey.Add("clientId", System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            config.ConsumerKey = System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY");

            var apiInstance = new TransactionsAndReportingApi(config);
            var startDate = "startDate_example";  // string | 
            var endDate = "endDate_example";  // string | 
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accounts = "accounts_example";  // string | Optional comma seperated list of account IDs used to filter the request on specific accounts (optional) 
            var detailed = true;  // bool? | Optional, increases frequency of data points for the total value and contribution charts if set to true (optional) 
            var frequency = "frequency_example";  // string | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. (optional) 

            try
            {
                // Get performance information for a specific timeframe
                PerformanceCustom result = apiInstance.GetReportingCustomRange(startDate, endDate, userId, userSecret, accounts, detailed, frequency);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling TransactionsAndReportingApi.GetReportingCustomRange: " + e.Message);
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetReportingCustomRangeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get performance information for a specific timeframe
    ApiResponse<PerformanceCustom> response = apiInstance.GetReportingCustomRangeWithHttpInfo(startDate, endDate, userId, userSecret, accounts, detailed, frequency);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TransactionsAndReportingApi.GetReportingCustomRangeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startDate** | **string** |  |  |
| **endDate** | **string** |  |  |
| **userId** | **string** |  |  |
| **userSecret** | **string** |  |  |
| **accounts** | **string** | Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional]  |
| **detailed** | **bool?** | Optional, increases frequency of data points for the total value and contribution charts if set to true | [optional]  |
| **frequency** | **string** | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. | [optional]  |

### Return type

[**PerformanceCustom**](PerformanceCustom.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved performance data |  -  |
| **0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

