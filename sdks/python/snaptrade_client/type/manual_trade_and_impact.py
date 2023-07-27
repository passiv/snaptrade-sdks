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
from typing_extensions import TypedDict, Literal

from snaptrade_client.type.manual_trade import ManualTrade
from snaptrade_client.type.manual_trade_and_impact_trade_impacts import ManualTradeAndImpactTradeImpacts
from snaptrade_client.type.manual_trade_balance import ManualTradeBalance

class RequiredManualTradeAndImpact(TypedDict):
    pass

class OptionalManualTradeAndImpact(TypedDict, total=False):
    trade: ManualTrade

    trade_impacts: ManualTradeAndImpactTradeImpacts

    combined_remaining_balance: ManualTradeBalance

class ManualTradeAndImpact(RequiredManualTradeAndImpact, OptionalManualTradeAndImpact):
    pass
