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

from snaptrade_client.type.account import Account
from snaptrade_client.type.action import Action
from snaptrade_client.type.manual_trade_symbol import ManualTradeSymbol
from snaptrade_client.type.order_type import OrderType
from snaptrade_client.type.time_in_force import TimeInForce

class RequiredManualTrade(TypedDict):
    pass

class OptionalManualTrade(TypedDict, total=False):
    id: str

    account: Account

    order_type: OrderType

    time_in_force: TimeInForce

    symbol: ManualTradeSymbol

    action: Action

    # Trade Units
    units: typing.Union[int, float]

    # Trade Price if limit or stop limit order
    price: typing.Union[int, float]

class ManualTrade(RequiredManualTrade, OptionalManualTrade):
    pass
