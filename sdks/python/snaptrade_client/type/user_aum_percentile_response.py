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

from snaptrade_client.type.user_aum_percentile_object_nullable import UserAumPercentileObjectNullable

class RequiredUserAumPercentileResponse(TypedDict):
    pass

class OptionalUserAumPercentileResponse(TypedDict, total=False):
    data: typing.Optional[UserAumPercentileObjectNullable]

class UserAumPercentileResponse(RequiredUserAumPercentileResponse, OptionalUserAumPercentileResponse):
    pass
