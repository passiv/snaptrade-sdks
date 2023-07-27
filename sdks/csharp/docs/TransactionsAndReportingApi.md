# SnapTrade.Net.Api.TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetActivities**](TransactionsAndReportingApi.md#getactivities) | **GET** /activities | Get transaction history for a user |
| [**GetReportingCustomRange**](TransactionsAndReportingApi.md#getreportingcustomrange) | **GET** /performance/custom | Get performance information for a specific timeframe |

<a name="getactivities"></a>
# **GetActivities**
> List&lt;UniversalActivity&gt; GetActivities (string userId, string userSecret, DateTime? startDate = null, DateTime? endDate = null, string accounts = null, string brokerageAuthorizations = null, string type = null)

Get transaction history for a user

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetActivitiesExample
    {
        public static void Main()
        {

            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));


            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var startDate = DateTime.Parse("2013-10-20");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20");  // DateTime? |  (optional) 
            var accounts = "accounts_example";  // string | Optional comma seperated list of account IDs used to filter the request on specific accounts (optional) 
            var brokerageAuthorizations = "brokerageAuthorizations_example";  // string | Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations (optional) 
            var type = DIVIDEND;  // string | Optional comma seperated list of types to filter activities by. Potential values include - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT (optional) 

            try
            {
                // Get transaction history for a user
                List<UniversalActivity> result = client.TransactionsAndReporting.GetActivities(userId, userSecret, startDate, endDate, accounts, brokerageAuthorizations, type);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TransactionsAndReportingApi.GetActivities: " + e.Message);
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

#### Using the GetActivitiesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get transaction history for a user
    ApiResponse<List<UniversalActivity>> response = apiInstance.GetActivitiesWithHttpInfo(userId, userSecret, startDate, endDate, accounts, brokerageAuthorizations, type);
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
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **accounts** | **string** | Optional comma seperated list of account IDs used to filter the request on specific accounts | [optional]  |
| **brokerageAuthorizations** | **string** | Optional comma seperated list of brokerage authorization IDs used to filter the request on only accounts that belong to those authorizations | [optional]  |
| **type** | **string** | Optional comma seperated list of types to filter activities by. Potential values include - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT | [optional]  |

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
> PerformanceCustom GetReportingCustomRange (DateTime startDate, DateTime endDate, string userId, string userSecret, string accounts = null, bool? detailed = null, string frequency = null)

Get performance information for a specific timeframe

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using SnapTrade.Net.Client;
using SnapTrade.Net.Model;

namespace Example
{
    public class GetReportingCustomRangeExample
    {
        public static void Main()
        {

            Snaptrade client = new Snaptrade();
            // Configure custom BasePath if desired
            // client.SetBasePath("https://api.snaptrade.com/api/v1");
            client.SetClientId(System.Environment.GetEnvironmentVariable("SNAPTRADE_CLIENT_ID"));
            client.SetConsumerKey(System.Environment.GetEnvironmentVariable("SNAPTRADE_CONSUMER_KEY"));


            var startDate = DateTime.Parse("2013-10-20");  // DateTime | 
            var endDate = DateTime.Parse("2013-10-20");  // DateTime | 
            var userId = "userId_example";  // string | 
            var userSecret = "userSecret_example";  // string | 
            var accounts = "accounts_example";  // string | Optional comma seperated list of account IDs used to filter the request on specific accounts (optional) 
            var detailed = true;  // bool? | Optional, increases frequency of data points for the total value and contribution charts if set to true (optional) 
            var frequency = "frequency_example";  // string | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. (optional) 

            try
            {
                // Get performance information for a specific timeframe
                PerformanceCustom result = client.TransactionsAndReporting.GetReportingCustomRange(startDate, endDate, userId, userSecret, accounts, detailed, frequency);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling TransactionsAndReportingApi.GetReportingCustomRange: " + e.Message);
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
| **startDate** | **DateTime** |  |  |
| **endDate** | **DateTime** |  |  |
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

