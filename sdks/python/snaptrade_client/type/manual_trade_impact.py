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


class RequiredManualTradeImpact(TypedDict):
    pass

class OptionalManualTradeImpact(TypedDict, total=False):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    account: str

    # Unique identifier for the currency. This is the UUID used to reference the currency in SnapTrade.
    currency: str

    # Estimated amount of cash remaining in the account after the trade.
    remaining_cash: typing.Optional[typing.Union[int, float]]

    # Estimated commission for the trade.
    estimated_commission: typing.Optional[typing.Union[int, float]]

    # Estimated foreign transaction fees for the trade.
    forex_fees: typing.Optional[typing.Union[int, float]]

class ManualTradeImpact(RequiredManualTradeImpact, OptionalManualTradeImpact):
    pass
