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


class RequiredComplexOrderResponse(TypedDict):
    pass

class OptionalComplexOrderResponse(TypedDict, total=False):
    # The complex order type that was placed.
    type: str

    # The brokerage-assigned identifier that links all legs of this complex order together. Each leg will eventually appear as a separate AccountOrderRecord sharing this value. May be null if the brokerage does not return a group identifier. 
    brokerage_group_order_id: typing.Optional[str]

class ComplexOrderResponse(RequiredComplexOrderResponse, OptionalComplexOrderResponse):
    pass
