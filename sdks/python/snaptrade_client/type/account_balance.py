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


class RequiredAccountBalance(TypedDict):
    pass

class OptionalAccountBalance(TypedDict, total=False):
    # Total market value of this account (includes cash, equity, fixed income, etc). This value is directly obtained from the brokerage and should reflect the most accurate value of the account.
    total: typing.Union[bool, date, datetime, dict, float, int, list, str, None]

class AccountBalance(RequiredAccountBalance, OptionalAccountBalance):
    pass
