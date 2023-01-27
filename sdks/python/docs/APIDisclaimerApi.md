# snaptrade_client.APIDisclaimerApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accept**](APIDisclaimerApi.md#accept) | **POST** /snapTrade/acceptDisclaimer | Accept or Reject SnapTrade disclaimer agreement


# **accept**
> SnapTradeAPIDisclaimerAcceptStatus accept(user_id, user_secret, api_disclaimer_accept_request)

Accept or Reject SnapTrade disclaimer agreement

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import api_disclaimer_api
from snaptrade_client.model.api_disclaimer_accept_request import APIDisclaimerAcceptRequest
from snaptrade_client.model.snap_trade_api_disclaimer_accept_status import SnapTradeAPIDisclaimerAcceptStatus
from pprint import pprint
# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: PartnerClientId
configuration = snaptrade_client.Configuration(api_key={'PartnerClientId': 'YOUR_API_KEY'})

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
    api_disclaimer_accept_request = APIDisclaimerAcceptRequest(
        accepted=True,
    ) # APIDisclaimerAcceptRequest | 

    # example passing only required values which don't have defaults set
    try:
        # Accept or Reject SnapTrade disclaimer agreement
        api_response = api_instance.accept(user_id, user_secret, api_disclaimer_accept_request)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling APIDisclaimerApi->accept: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |
 **api_disclaimer_accept_request** | [**APIDisclaimerAcceptRequest**](APIDisclaimerAcceptRequest.md)|  |

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

