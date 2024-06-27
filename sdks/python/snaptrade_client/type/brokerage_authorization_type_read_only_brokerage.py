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


class RequiredBrokerageAuthorizationTypeReadOnlyBrokerage(TypedDict):
    pass

class OptionalBrokerageAuthorizationTypeReadOnlyBrokerage(TypedDict, total=False):
    id: str

    # Full name of the brokerage.
    name: str

    # A unique identifier for that brokerage. It is usually the name of the brokerage in capital letters and will never change.
    slug: str

class BrokerageAuthorizationTypeReadOnlyBrokerage(RequiredBrokerageAuthorizationTypeReadOnlyBrokerage, OptionalBrokerageAuthorizationTypeReadOnlyBrokerage):
    pass
