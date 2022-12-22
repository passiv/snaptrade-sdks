# snaptrade_client.APIDisclaimerApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**snap_trade_accept_disclaimer_post**](APIDisclaimerApi.md#snap_trade_accept_disclaimer_post) | **POST** /snapTrade/acceptDisclaimer | Accept or Reject SnapTrade disclaimer agreement


# **snap_trade_accept_disclaimer_post**
> SnapTradeAPIDisclaimerAcceptStatus snap_trade_accept_disclaimer_post(user_id, user_secret, snap_trade_accept_disclaimer_post_request)

Accept or Reject SnapTrade disclaimer agreement

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import api_disclaimer_api
from snaptrade_client.model.snap_trade_api_disclaimer_accept_status import SnapTradeAPIDisclaimerAcceptStatus
from snaptrade_client.model.snap_trade_accept_disclaimer_post_request import SnapTradeAcceptDisclaimerPostRequest
from pprint import pprint
# Defining the host is optional and defaults to https://api.snaptrade.com/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = snaptrade_client.Configuration(
    host = "https://api.snaptrade.com/api/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration.api_key['PartnerClientId'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerClientId'] = 'Bearer'

# Configure API key authorization: PartnerSignature
configuration.api_key['PartnerSignature'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerSignature'] = 'Bearer'

# Configure API key authorization: PartnerTimestamp
configuration.api_key['PartnerTimestamp'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['PartnerTimestamp'] = 'Bearer'

# Enter a context with an instance of the API client
with snaptrade_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = api_disclaimer_api.APIDisclaimerApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 
    snap_trade_accept_disclaimer_post_request = SnapTradeAcceptDisclaimerPostRequest(
        accepted=True,
    ) # SnapTradeAcceptDisclaimerPostRequest | 

    # example passing only required values which don't have defaults set
    try:
        # Accept or Reject SnapTrade disclaimer agreement
        api_response = api_instance.snap_trade_accept_disclaimer_post(user_id, user_secret, snap_trade_accept_disclaimer_post_request)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling APIDisclaimerApi->snap_trade_accept_disclaimer_post: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **snap_trade_accept_disclaimer_post_request** | [**SnapTradeAcceptDisclaimerPostRequest**](SnapTradeAcceptDisclaimerPostRequest.md)|  |

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
**200** | Returns timestamp for when user accepted SnapTrade disclaimer |  -  |
**500** | Unexpected Error. Please contact support |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

