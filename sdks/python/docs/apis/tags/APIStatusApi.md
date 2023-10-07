# snaptrade_client.api_status

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check**](#check) | **get** / | Get API Status

# **check**

Check whether the API is operational and verify timestamps.

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get API Status
    check_response = snaptrade.api_status.check()
    pprint(check_response.body)
    pprint(check_response.body["version"])
    pprint(check_response.body["timestamp"])
    pprint(check_response.body["online"])
    pprint(check_response.headers)
    pprint(check_response.status)
    pprint(check_response.round_trip_time)
except ApiException as e:
    print("Exception when calling APIStatusApi.check: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

