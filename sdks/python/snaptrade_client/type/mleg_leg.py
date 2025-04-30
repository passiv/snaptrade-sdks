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

from snaptrade_client.type.mleg_action_strict import MlegActionStrict
from snaptrade_client.type.mleg_trading_instrument import MlegTradingInstrument

class RequiredMlegLeg(TypedDict):
    instrument: MlegTradingInstrument

    action: MlegActionStrict

    # The quantity to trade. For options this represents the number of contracts. For equity this represents the number of shares.
    units: int

class OptionalMlegLeg(TypedDict, total=False):
    pass

class MlegLeg(RequiredMlegLeg, OptionalMlegLeg):
    pass
