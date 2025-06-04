# TransactionsAndReportingApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getActivities**](TransactionsAndReportingApi.md#getActivities) | **GET** /activities | Get transaction history for a user |
| [**getReportingCustomRange**](TransactionsAndReportingApi.md#getReportingCustomRange) | **GET** /performance/custom | Get performance information for a specific timeframe |


<a name="getActivities"></a>
# **getActivities**
> List&lt;UniversalActivity&gt; getActivities(userId, userSecret).startDate(startDate).endDate(endDate).accounts(accounts).brokerageAuthorizations(brokerageAuthorizations).type(type).execute();

Get transaction history for a user

This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible  Returns all historical transactions for the specified user and filtering criteria. It&#39;s recommended to use &#x60;startDate&#x60; and &#x60;endDate&#x60; to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There&#39;s a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the &#x60;trade_date&#x60; field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. 

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TransactionsAndReportingApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    LocalDate startDate = LocalDate.now(); // The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    LocalDate endDate = LocalDate.now(); // The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    String accounts = "accounts_example"; // Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.
    String brokerageAuthorizations = "brokerageAuthorizations_example"; // Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.
    String type = "BUY,SELL,DIVIDEND"; // Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 
    try {
      List<UniversalActivity> result = client
              .transactionsAndReporting
              .getActivities(userId, userSecret)
              .startDate(startDate)
              .endDate(endDate)
              .accounts(accounts)
              .brokerageAuthorizations(brokerageAuthorizations)
              .type(type)
              .execute();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsAndReportingApi#getActivities");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<List<UniversalActivity>> response = client
              .transactionsAndReporting
              .getActivities(userId, userSecret)
              .startDate(startDate)
              .endDate(endDate)
              .accounts(accounts)
              .brokerageAuthorizations(brokerageAuthorizations)
              .type(type)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsAndReportingApi#getActivities");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **startDate** | **LocalDate**| The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on &#x60;trade_date&#x60;. | [optional] |
| **endDate** | **LocalDate**| The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on &#x60;trade_date&#x60;. | [optional] |
| **accounts** | **String**| Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The &#x60;brokerageAuthorizations&#x60; parameter takes precedence over this parameter. | [optional] |
| **brokerageAuthorizations** | **String**| Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the &#x60;accounts&#x60; parameter. | [optional] |
| **type** | **String**| Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - &#x60;BUY&#x60; - Asset bought.   - &#x60;SELL&#x60; - Asset sold.   - &#x60;DIVIDEND&#x60; - Dividend payout.   - &#x60;CONTRIBUTION&#x60; - Cash contribution.   - &#x60;WITHDRAWAL&#x60; - Cash withdrawal.   - &#x60;REI&#x60; - Dividend reinvestment.   - &#x60;INTEREST&#x60; - Interest deposited into the account.   - &#x60;FEE&#x60; - Fee withdrawn from the account.   - &#x60;OPTIONEXPIRATION&#x60; - Option expiration event.   - &#x60;OPTIONASSIGNMENT&#x60; - Option assignment event.   - &#x60;OPTIONEXERCISE&#x60; - Option exercise event.   - &#x60;TRANSFER&#x60; - Transfer of assets from one account to another  | [optional] |

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
| **200** | OK |  -  |
| **0** | Unexpected error |  -  |

<a name="getReportingCustomRange"></a>
# **getReportingCustomRange**
> PerformanceCustom getReportingCustomRange(startDate, endDate, userId, userSecret).accounts(accounts).detailed(detailed).frequency(frequency).execute();

Get performance information for a specific timeframe

Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.

### Example
```java
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Snaptrade;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.model.*;
import com.konfigthis.client.api.TransactionsAndReportingApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "https://api.snaptrade.com/api/v1";
    configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
    configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
    
    Snaptrade client = new Snaptrade(configuration);
    LocalDate startDate = LocalDate.now();
    LocalDate endDate = LocalDate.now();
    String userId = "userId_example";
    String userSecret = "userSecret_example";
    String accounts = "accounts_example"; // Optional comma separated list of account IDs used to filter the request on specific accounts
    Boolean detailed = true; // Optional, increases frequency of data points for the total value and contribution charts if set to true
    String frequency = "frequency_example"; // Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
    try {
      PerformanceCustom result = client
              .transactionsAndReporting
              .getReportingCustomRange(startDate, endDate, userId, userSecret)
              .accounts(accounts)
              .detailed(detailed)
              .frequency(frequency)
              .execute();
      System.out.println(result);
      System.out.println(result.getTotalEquityTimeframe());
      System.out.println(result.getContributions());
      System.out.println(result.getContributionTimeframe());
      System.out.println(result.getContributionTimeframeCumulative());
      System.out.println(result.getWithdrawalTimeframe());
      System.out.println(result.getContributionStreak());
      System.out.println(result.getContributionMonthsContributed());
      System.out.println(result.getContributionTotalMonths());
      System.out.println(result.getDividends());
      System.out.println(result.getDividendIncome());
      System.out.println(result.getMonthlyDividends());
      System.out.println(result.getBadTickers());
      System.out.println(result.getDividendTimeline());
      System.out.println(result.getCommissions());
      System.out.println(result.getForexFees());
      System.out.println(result.getFees());
      System.out.println(result.getRateOfReturn());
      System.out.println(result.getReturnRateTimeframe());
      System.out.println(result.getDetailedMode());
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsAndReportingApi#getReportingCustomRange");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<PerformanceCustom> response = client
              .transactionsAndReporting
              .getReportingCustomRange(startDate, endDate, userId, userSecret)
              .accounts(accounts)
              .detailed(detailed)
              .frequency(frequency)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling TransactionsAndReportingApi#getReportingCustomRange");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startDate** | **LocalDate**|  | |
| **endDate** | **LocalDate**|  | |
| **userId** | **String**|  | |
| **userSecret** | **String**|  | |
| **accounts** | **String**| Optional comma separated list of account IDs used to filter the request on specific accounts | [optional] |
| **detailed** | **Boolean**| Optional, increases frequency of data points for the total value and contribution charts if set to true | [optional] |
| **frequency** | **String**| Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly. | [optional] |

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

