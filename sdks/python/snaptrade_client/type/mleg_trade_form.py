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

from snaptrade_client.type.mleg_leg import MlegLeg
from snaptrade_client.type.mleg_order_type_strict import MlegOrderTypeStrict
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict

class RequiredMlegTradeForm(TypedDict):
    order_type: MlegOrderTypeStrict

    time_in_force: TimeInForceStrict

    legs: typing.List[MlegLeg]


class OptionalMlegTradeForm(TypedDict, total=False):
    # The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT.
    limit_price: typing.Optional[str]

    # The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT.
    stop_price: typing.Optional[str]

class MlegTradeForm(RequiredMlegTradeForm, OptionalMlegTradeForm):
    pass
