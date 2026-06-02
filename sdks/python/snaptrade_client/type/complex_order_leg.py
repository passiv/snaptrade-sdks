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

from snaptrade_client.type.action_strict import ActionStrict
from snaptrade_client.type.order_type_strict import OrderTypeStrict
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.trading_instrument import TradingInstrument

class RequiredComplexOrderLeg(TypedDict):
    # The role of this leg within the complex order.
    order_role: Literal["TRIGGER", "CONDITIONAL", "PEER"]

    action: ActionStrict

    instrument: TradingInstrument

    order_type: OrderTypeStrict

    # Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    units: typing.Union[int, float]

    time_in_force: TimeInForceStrict


class OptionalComplexOrderLeg(TypedDict, total=False):
    # The limit price. Required when `order_type` is `Limit` or `StopLimit`.
    price: typing.Optional[typing.Union[int, float]]

    # The stop trigger price. Required when `order_type` is `Stop` or `StopLimit`.
    stop: typing.Optional[typing.Union[int, float]]

class ComplexOrderLeg(RequiredComplexOrderLeg, OptionalComplexOrderLeg):
    pass
