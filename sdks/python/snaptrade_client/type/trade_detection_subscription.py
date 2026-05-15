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


class RequiredTradeDetectionSubscription(TypedDict):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    account_id: str

    # Monthly subscription cost as a decimal string.
    cost: str

    # How often the subscribed account is checked for new trades.
    check_interval_seconds: int

class OptionalTradeDetectionSubscription(TypedDict, total=False):
    pass

class TradeDetectionSubscription(RequiredTradeDetectionSubscription, OptionalTradeDetectionSubscription):
    pass
