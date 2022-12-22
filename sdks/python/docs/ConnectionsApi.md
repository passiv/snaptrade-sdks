# snaptrade_client.ConnectionsApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizations_authorization_id_delete**](ConnectionsApi.md#authorizations_authorization_id_delete) | **DELETE** /authorizations/{authorizationId} | Remove a brokerage authorization.
[**authorizations_authorization_id_get**](ConnectionsApi.md#authorizations_authorization_id_get) | **GET** /authorizations/{authorizationId} | Get detail of a specific brokerage authorizations for the user
[**authorizations_get**](ConnectionsApi.md#authorizations_get) | **GET** /authorizations | List all brokerage authorizations for the user


# **authorizations_authorization_id_delete**
> authorizations_authorization_id_delete(authorization_id, user_id, user_secret)

Remove a brokerage authorization.

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import connections_api
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
    api_instance = connections_api.ConnectionsApi(api_client)
    authorization_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of the Authorization to delete.
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 

    # example passing only required values which don't have defaults set
    try:
        # Remove a brokerage authorization.
        api_instance.authorizations_authorization_id_delete(authorization_id, user_id, user_secret)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ConnectionsApi->authorizations_authorization_id_delete: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization_id** | **str**| The ID of the Authorization to delete. |
 **user_id** | **str**|  |
 **user_secret** | **str**|  |

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
**204** | Brokerage authorization object has been successfully deleted |  -  |
**400** | The specified authorizationId is invalid (not a UUID string). |  -  |
**404** | The specified authorizationId was not found. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizations_authorization_id_get**
> BrokerageAuthorization authorizations_authorization_id_get(authorization_id, user_id, user_secret)

Get detail of a specific brokerage authorizations for the user

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import connections_api
from snaptrade_client.model.brokerage_authorization import BrokerageAuthorization
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
    api_instance = connections_api.ConnectionsApi(api_client)
    authorization_id = "2bcd7cc3-e922-4976-bce1-9858296801c3" # str | The ID of a brokerage authorization object.
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 

    # example passing only required values which don't have defaults set
    try:
        # Get detail of a specific brokerage authorizations for the user
        api_response = api_instance.authorizations_authorization_id_get(authorization_id, user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ConnectionsApi->authorizations_authorization_id_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization_id** | **str**| The ID of a brokerage authorization object. |
 **user_id** | **str**|  |
 **user_secret** | **str**|  |

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
**200** | Authorization object for the authenticated user. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorizations_get**
> [BrokerageAuthorization] authorizations_get(user_id, user_secret)

List all brokerage authorizations for the user

### Example

* Api Key Authentication (PartnerClientId):
* Api Key Authentication (PartnerSignature):
* Api Key Authentication (PartnerTimestamp):

```python
import time
import snaptrade_client
from snaptrade_client.api import connections_api
from snaptrade_client.model.brokerage_authorization import BrokerageAuthorization
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
    api_instance = connections_api.ConnectionsApi(api_client)
    user_id = "John.doe@snaptrade.com" # str | 
    user_secret = "USERSECRET123" # str | 

    # example passing only required values which don't have defaults set
    try:
        # List all brokerage authorizations for the user
        api_response = api_instance.authorizations_get(user_id, user_secret)
        pprint(api_response)
    except snaptrade_client.ApiException as e:
        print("Exception when calling ConnectionsApi->authorizations_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **user_secret** | **str**|  |

### Return type

[**[BrokerageAuthorization]**](BrokerageAuthorization.md)

### Authorization

[PartnerClientId](../README.md#PartnerClientId), [PartnerSignature](../README.md#PartnerSignature), [PartnerTimestamp](../README.md#PartnerTimestamp)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of all Authorization objects for the authenticated user. |  -  |
**0** | Unexpected error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

