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


class RequiredTrailingStop(TypedDict):
    # The trail amount. Interpreted as dollars if `type` is `DOLLAR`, or a percentage if `type` is `PERCENT`.
    amount: str

    # Whether the trail `amount` is a dollar amount (`DOLLAR`) or a percentage (`PERCENT`). For example, if `amount` is \"0.60\" and `type` is `DOLLAR`, the stop price will trail the market price by $0.60. If `amount` is \"5\" and `type` is `PERCENT`, the stop price will trail the market price by 5%.
    type: str

class OptionalTrailingStop(TypedDict, total=False):
    pass

class TrailingStop(RequiredTrailingStop, OptionalTrailingStop):
    pass
