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


class RequiredAccountValueHistoryItem(TypedDict):
    pass

class OptionalAccountValueHistoryItem(TypedDict, total=False):
    # The date of the estimated account value
    date: date

    # Estimate of the total market value of this account (includes cash, equity, fixed income, etc) at the given date.
    total_value: str

class AccountValueHistoryItem(RequiredAccountValueHistoryItem, OptionalAccountValueHistoryItem):
    pass
