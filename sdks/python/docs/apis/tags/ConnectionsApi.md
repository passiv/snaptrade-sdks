# snaptrade_client.connections

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detail_brokerage_authorization**](#detail_brokerage_authorization) | **get** /authorizations/{authorizationId} | Get brokerage authorization details
[**list_brokerage_authorizations**](#list_brokerage_authorizations) | **get** /authorizations | List all brokerage authorizations for the user
[**remove_brokerage_authorization**](#remove_brokerage_authorization) | **delete** /authorizations/{authorizationId} | Delete brokerage authorization
[**session_events**](#session_events) | **get** /sessionEvents | List all session events for the partner

# **detail_brokerage_authorization**

Get brokerage authorization details

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Get brokerage authorization details
    detail_brokerage_authorization_response = (
        snaptrade.connections.detail_brokerage_authorization(
            authorization_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
        )
    )
    pprint(detail_brokerage_authorization_response.body)
    pprint(detail_brokerage_authorization_response.body["id"])
    pprint(detail_brokerage_authorization_response.body["created_date"])
    pprint(detail_brokerage_authorization_response.body["updated_date"])
    pprint(detail_brokerage_authorization_response.body["brokerage"])
    pprint(detail_brokerage_authorization_response.body["name"])
    pprint(detail_brokerage_authorization_response.body["type"])
    pprint(detail_brokerage_authorization_response.body["disabled"])
    pprint(detail_brokerage_authorization_response.body["disabled_date"])
    pprint(detail_brokerage_authorization_response.body["meta"])
    pprint(detail_brokerage_authorization_response.headers)
    pprint(detail_brokerage_authorization_response.status)
    pprint(detail_brokerage_authorization_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ConnectionsApi.detail_brokerage_authorization: %s\n" % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_brokerage_authorizations**

List all brokerage authorizations for the user

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List all brokerage authorizations for the user
    list_brokerage_authorizations_response = (
        snaptrade.connections.list_brokerage_authorizations(
            user_id="John.doe@snaptrade.com",  # required
            user_secret="USERSECRET123",  # required
        )
    )
    pprint(list_brokerage_authorizations_response.body)
    pprint(list_brokerage_authorizations_response.body["id"])
    pprint(list_brokerage_authorizations_response.body["created_date"])
    pprint(list_brokerage_authorizations_response.body["updated_date"])
    pprint(list_brokerage_authorizations_response.body["brokerage"])
    pprint(list_brokerage_authorizations_response.body["name"])
    pprint(list_brokerage_authorizations_response.body["type"])
    pprint(list_brokerage_authorizations_response.body["disabled"])
    pprint(list_brokerage_authorizations_response.body["disabled_date"])
    pprint(list_brokerage_authorizations_response.body["meta"])
    pprint(list_brokerage_authorizations_response.headers)
    pprint(list_brokerage_authorizations_response.status)
    pprint(list_brokerage_authorizations_response.round_trip_time)
except ApiException as e:
    print(
        "Exception when calling ConnectionsApi.list_brokerage_authorizations: %s\n" % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **remove_brokerage_authorization**

Delete brokerage authorization

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Delete brokerage authorization
    snaptrade.connections.remove_brokerage_authorization(
        authorization_id="2bcd7cc3-e922-4976-bce1-9858296801c3",  # required
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
except ApiException as e:
    print(
        "Exception when calling ConnectionsApi.remove_brokerage_authorization: %s\n" % e
    )
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **session_events**

List all session events for the partner

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List all session events for the partner
    session_events_response = snaptrade.connections.session_events(
        partner_client_id="SNAPTRADETEST",  # required
        user_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",  # optional
        session_id="917c8734-8470-4a3e-a18f-57c3f2ee6631,65e839a3-9103-4cfb-9b72-2071ef80c5f2",  # optional
    )
    pprint(session_events_response.headers)
    pprint(session_events_response.status)
    pprint(session_events_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ConnectionsApi.session_events: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

