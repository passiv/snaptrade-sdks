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
from typing_extensions import TypedDict, Literal

from snaptrade_client.type.brokerage import Brokerage

class RequiredBrokerageAuthorization(TypedDict):
    pass

class OptionalBrokerageAuthorization(TypedDict, total=False):
    id: str

    # Time
    created_date: str

    # Time
    updated_date: str

    brokerage: Brokerage

    # Connection Name
    name: str

    type: str

    disabled: bool

    # Disabled date
    disabled_date: typing.Optional[str]

    # Additional data about brokerage authorization
    meta: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

class BrokerageAuthorization(RequiredBrokerageAuthorization, OptionalBrokerageAuthorization):
    pass
