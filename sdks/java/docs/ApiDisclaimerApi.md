# ApiDisclaimerApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**snapTradeAcceptDisclaimerPost**](ApiDisclaimerApi.md#snapTradeAcceptDisclaimerPost) | **POST** /snapTrade/acceptDisclaimer | Accept or Reject SnapTrade disclaimer agreement |


<a name="snapTradeAcceptDisclaimerPost"></a>
# **snapTradeAcceptDisclaimerPost**
> SnapTradeAPIDisclaimerAcceptStatus snapTradeAcceptDisclaimerPost(userId, userSecret, snapTradeAcceptDisclaimerPostRequest)

Accept or Reject SnapTrade disclaimer agreement

### Example
```java
// Import classes:
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.auth.*;
import com.konfigthis.client.models.*;
import com.konfigthis.client.api.ApiDisclaimerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.snaptrade.com/api/v1");
    
    // Configure API key authorization: PartnerClientId
    ApiKeyAuth PartnerClientId = (ApiKeyAuth) defaultClient.getAuthentication("PartnerClientId");
    PartnerClientId.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerClientId.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerSignature
    ApiKeyAuth PartnerSignature = (ApiKeyAuth) defaultClient.getAuthentication("PartnerSignature");
    PartnerSignature.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerSignature.setApiKeyPrefix("Token");

    // Configure API key authorization: PartnerTimestamp
    ApiKeyAuth PartnerTimestamp = (ApiKeyAuth) defaultClient.getAuthentication("PartnerTimestamp");
    PartnerTimestamp.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //PartnerTimestamp.setApiKeyPrefix("Token");

    ApiDisclaimerApi apiInstance = new ApiDisclaimerApi(defaultClient);
    String userId = "userId_example"; // String | 
    String userSecret = "userSecret_example"; // String | 
    SnapTradeAcceptDisclaimerPostRequest snapTradeAcceptDisclaimerPostRequest = new SnapTradeAcceptDisclaimerPostRequest(); // SnapTradeAcceptDisclaimerPostRequest | 
    try {
      SnapTradeAPIDisclaimerAcceptStatus result = apiInstance.snapTradeAcceptDisclaimerPost(userId, userSecret, snapTradeAcceptDisclaimerPostRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApiDisclaimerApi#snapTradeAcceptDisclaimerPost");
      System.err.println("Status code: " + e.getCode());
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
| **snapTradeAcceptDisclaimerPostRequest** | [**SnapTradeAcceptDisclaimerPostRequest**](SnapTradeAcceptDisclaimerPostRequest.md)|  | |

### Return type

[**SnapTradeAPIDisclaimerAcceptStatus**](SnapTradeAPIDisclaimerAcceptStatus.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Returns timestamp for when user accepted SnapTrade disclaimer |  -  |
| **500** | Unexpected Error. Please contact support |  -  |

