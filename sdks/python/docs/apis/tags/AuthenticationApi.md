# snaptrade_client.authentication

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_snap_trade_user**](#delete_snap_trade_user) | **delete** /snapTrade/deleteUser | Delete SnapTrade user
[**get_user_jwt**](#get_user_jwt) | **get** /snapTrade/encryptedJWT | Generate encrypted JWT token
[**list_snap_trade_users**](#list_snap_trade_users) | **get** /snapTrade/listUsers | List SnapTrade users
[**login_snap_trade_user**](#login_snap_trade_user) | **post** /snapTrade/login | Login user &amp; generate connection link
[**register_snap_trade_user**](#register_snap_trade_user) | **post** /snapTrade/registerUser | Create SnapTrade user

# **delete_snap_trade_user**

Delete SnapTrade user

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Delete SnapTrade user
    delete_snap_trade_user_response = snaptrade.authentication.delete_snap_trade_user(
        user_id="John.doe@snaptrade.com",  # required
    )
    pprint(delete_snap_trade_user_response.body)
    pprint(delete_snap_trade_user_response.body["status"])
    pprint(delete_snap_trade_user_response.body["user_id"])
    pprint(delete_snap_trade_user_response.headers)
    pprint(delete_snap_trade_user_response.status)
    pprint(delete_snap_trade_user_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.delete_snap_trade_user: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **get_user_jwt**

Generate encrypted JWT token

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Generate encrypted JWT token
    get_user_jwt_response = snaptrade.authentication.get_user_jwt(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
    )
    pprint(get_user_jwt_response.headers)
    pprint(get_user_jwt_response.status)
    pprint(get_user_jwt_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.get_user_jwt: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **list_snap_trade_users**

List SnapTrade users

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # List SnapTrade users
    list_snap_trade_users_response = snaptrade.authentication.list_snap_trade_users()
    pprint(list_snap_trade_users_response.body)
    pprint(list_snap_trade_users_response.headers)
    pprint(list_snap_trade_users_response.status)
    pprint(list_snap_trade_users_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.list_snap_trade_users: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **login_snap_trade_user**

Login user &amp; generate connection link

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Login user & generate connection link
    login_snap_trade_user_response = snaptrade.authentication.login_snap_trade_user(
        user_id="John.doe@snaptrade.com",  # required
        user_secret="USERSECRET123",  # required
        broker="ALPACA",  # optional
        immediate_redirect=True,  # optional
        custom_redirect="https://snaptrade.com",  # optional
        reconnect="8b5f262d-4bb9-365d-888a-202bd3b15fa1",  # optional
        connection_type="read",  # optional
    )
    pprint(login_snap_trade_user_response.headers)
    pprint(login_snap_trade_user_response.status)
    pprint(login_snap_trade_user_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.login_snap_trade_user: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **register_snap_trade_user**

Create SnapTrade user

### Example

```python
from pprint import pprint
from snaptrade_client import SnapTrade, ApiException

snaptrade = SnapTrade(
    consumer_key="YOUR_CONSUMER_KEY",
    client_id="YOUR_CLIENT_ID",
)

try:
    # Create SnapTrade user
    register_snap_trade_user_response = snaptrade.authentication.register_snap_trade_user(
        user_id="snaptrade-user-123",  # optional
        rsa_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC7vbqajDw4o6gJy8UtmIbkcpnkO3Kwc4qsEnSZp/TR+fQi62F79RHWmwKOtFmwteURgLbj7D/WGuNLGOfa/2vse3G2eHnHl5CB8ruRX9fBl/KgwCVr2JaEuUm66bBQeP5XeBotdR4cvX38uPYivCDdPjJ1QWPdspTBKcxeFbccDw==",  # optional
    )
    pprint(register_snap_trade_user_response.body)
    pprint(register_snap_trade_user_response.body["user_id"])
    pprint(register_snap_trade_user_response.body["user_secret"])
    pprint(register_snap_trade_user_response.headers)
    pprint(register_snap_trade_user_response.status)
    pprint(register_snap_trade_user_response.round_trip_time)
except ApiException as e:
    print("Exception when calling AuthenticationApi.register_snap_trade_user: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

