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


class RequiredSnapTradeRegisterUserRequestBody(TypedDict):
    pass

class OptionalSnapTradeRegisterUserRequestBody(TypedDict, total=False):
    # SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
    userId: str

class SnapTradeRegisterUserRequestBody(RequiredSnapTradeRegisterUserRequestBody, OptionalSnapTradeRegisterUserRequestBody):
    pass
