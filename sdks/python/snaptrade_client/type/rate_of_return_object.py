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


class RequiredRateOfReturnObject(TypedDict):
    pass

class OptionalRateOfReturnObject(TypedDict, total=False):
    # The timeframe this return percent is reflecting
    timeframe: str

    # The percent return of the portfolio, directly from the brokerage. 5.97 indicates a 5.97% return over the timeframe
    return_percent: typing.Union[int, float]

    # The date this was fetched
    created_date: datetime

class RateOfReturnObject(RequiredRateOfReturnObject, OptionalRateOfReturnObject):
    pass
