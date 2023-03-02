# TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActivities**](TransactionsAndReportingApi.md#getActivities) | **GET** /activities | Get transaction history for a user
[**getReportingCustomRange**](TransactionsAndReportingApi.md#getReportingCustomRange) | **GET** /performance/custom | Get performance information for a specific timeframe


# **getActivities**
> Array<UniversalActivity> getActivities()

Returns activities (transactions) for a user. Specifing start and end date is highly recommended for automatic calls for better performance

### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.transactionsAndReporting.getActivities({
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'startDate': "2022-01-24T00:00:00.000Z",
    'endDate': "2022-01-24T00:00:00.000Z",
    'accounts': "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **startDate** | [**string**] |  | (optional) defaults to undefined
 **endDate** | [**string**] |  | (optional) defaults to undefined
 **accounts** | [**string**] | Optional comma seperated list of account IDs used to filter the request on specific accounts | (optional) defaults to undefined


### Return type

**Array<UniversalActivity>**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved transaction history |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getReportingCustomRange**
> PerformanceCustom getReportingCustomRange()

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Total Equity Timeframe and Rate of Returns are experimental and should not be trusted to be 100% accurate

### Example


```typescript
import { Snaptrade } from "snaptrade-typescript-sdk"

const snaptrade = new Snaptrade({
    // Defining the base path is optional and defaults to https://api.snaptrade.com/api/v1
    // basePath: "https://api.snaptrade.com/api/v1",
    consumerKey: "YOUR_CONSUMER_KEY",
    clientId: "YOUR_CLIENT_ID",
})

const response = await snaptrade.transactionsAndReporting.getReportingCustomRange({
    'startDate': "2022-01-24T00:00:00.000Z",
    'endDate': "2022-01-24T00:00:00.000Z",
    'userId': "John.doe@snaptrade.com",
    'userSecret': "USERSECRET123",
    'accounts': "917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",
    'detailed': true,
    'frequency': "monthly",
})
console.log(response)

```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | [**string**] |  | defaults to undefined
 **endDate** | [**string**] |  | defaults to undefined
 **userId** | [**string**] |  | defaults to undefined
 **userSecret** | [**string**] |  | defaults to undefined
 **accounts** | [**string**] | Optional comma seperated list of account IDs used to filter the request on specific accounts | (optional) defaults to undefined
 **detailed** | [**boolean**] | Optional, increases frequency of data points for the total value and contribution charts if set to true | (optional) defaults to undefined
 **frequency** | [**string**] | Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. | (optional) defaults to undefined


### Return type

**PerformanceCustom**

### Authorization

[PartnerClientId](README.md#PartnerClientId), [PartnerSignature](README.md#PartnerSignature), [PartnerTimestamp](README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved performance data |  -  |
**0** | Unexpected error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

