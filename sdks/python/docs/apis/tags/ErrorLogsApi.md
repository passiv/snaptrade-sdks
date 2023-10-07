# snaptrade_client.error_logs

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_user_errors**](#list_user_errors) | **get** /snapTrade/listUserErrors | Retrieve error logs on behalf of your SnapTrade users

# **list_user_errors**

Retrieve error logs on behalf of your SnapTrade users

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Retrieve error logs on behalf of your SnapTrade users
    list_user_errors_response = snaptrade.error_logs.list_user_errors(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(list_user_errors_response.body)
    pprint(list_user_errors_response.body["requested_at"])
    pprint(list_user_errors_response.body["response"])
    pprint(list_user_errors_response.body["status_code"])
    pprint(list_user_errors_response.body["_query_params"])
    pprint(list_user_errors_response.body["http_method"])
    pprint(list_user_errors_response.body["endpoint"])
    pprint(list_user_errors_response.headers)
    pprint(list_user_errors_response.status)
    pprint(list_user_errors_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ErrorLogsApi.list_user_errors: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

