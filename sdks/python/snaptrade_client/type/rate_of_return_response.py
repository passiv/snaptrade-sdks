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

from snaptrade_client.type.rate_of_return_object import RateOfReturnObject

class RequiredRateOfReturnResponse(TypedDict):
    pass

class OptionalRateOfReturnResponse(TypedDict, total=False):
    # List of return percentages
    data: typing.List[RateOfReturnObject]

class RateOfReturnResponse(RequiredRateOfReturnResponse, OptionalRateOfReturnResponse):
    pass
