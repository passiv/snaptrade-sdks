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


class RequiredModel501NotImplementedResponse(TypedDict):
    pass

class OptionalModel501NotImplementedResponse(TypedDict, total=False):
    error: typing.Union[bool, date, datetime, dict, float, int, list, str, None]

class Model501NotImplementedResponse(RequiredModel501NotImplementedResponse, OptionalModel501NotImplementedResponse):
    pass
