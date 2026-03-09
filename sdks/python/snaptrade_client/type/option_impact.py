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


class RequiredOptionImpact(TypedDict):
    pass

class OptionalOptionImpact(TypedDict, total=False):
    # Estimated option premium for the order (before fees).
    estimated_cost: str

    # Estimated transaction fees and commissions for the order.
    estimated_transaction_fee: str

class OptionImpact(RequiredOptionImpact, OptionalOptionImpact):
    pass
