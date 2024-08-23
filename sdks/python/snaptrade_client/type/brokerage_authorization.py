# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING

from snaptrade_client.type.brokerage import Brokerage
from snaptrade_client.type.brokerage_authorization_meta import BrokerageAuthorizationMeta

class RequiredBrokerageAuthorization(TypedDict):
    pass

class OptionalBrokerageAuthorization(TypedDict, total=False):
    # Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade.
    id: str

    # Timestamp of when the connection was established in SnapTrade.
    created_date: datetime

    # WARNING: This property is deprecated
    # Timestamp of when the connection was last updated in SnapTrade. This field is deprecated. Please let us know if you have a valid use case for this field.
    updated_date: datetime

    brokerage: Brokerage

    # A short, human-readable name for the connection.
    name: str

    # Whether the connection is read-only or trade-enabled. A read-only connection can only be used to fetch data, while a trade-enabled connection can be used to place trades. Valid values are `read` and `trade`.
    type: str

    # Whether the connection is disabled. A disabled connection can no longer access the latest data from the brokerage, but will continue to return the last cached state. A connection can become disabled for many reasons and differs by brokerage. Here are some common scenarios:  - The user has changed their username or password at the brokerage. - The user has explicitly removed the access grant at the brokerage. - The session has expired at the brokerage and now requires explicit user re-authentication.  Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    disabled: bool

    # Timestamp of when the connection was disabled in SnapTrade.
    disabled_date: typing.Optional[datetime]

    # WARNING: This property is deprecated
    meta: BrokerageAuthorizationMeta

class BrokerageAuthorization(RequiredBrokerageAuthorization, OptionalBrokerageAuthorization):
    pass
