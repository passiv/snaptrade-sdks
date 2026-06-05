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


class RequiredAllAccountPositionsResponseDataFreshness(TypedDict):
    # The time the returned positions data was fetched from the brokerage.
    as_of: datetime

class OptionalAllAccountPositionsResponseDataFreshness(TypedDict, total=False):
    pass

class AllAccountPositionsResponseDataFreshness(RequiredAllAccountPositionsResponseDataFreshness, OptionalAllAccountPositionsResponseDataFreshness):
    pass
