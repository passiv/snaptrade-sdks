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

from snaptrade_client.type.action_strict_with_options import ActionStrictWithOptions
from snaptrade_client.type.order_type_strict import OrderTypeStrict
from snaptrade_client.type.stop_loss import StopLoss
from snaptrade_client.type.take_profit import TakeProfit
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.trading_instrument import TradingInstrument

class RequiredManualTradeFormBracket(TypedDict):
    action: ActionStrictWithOptions

    instrument: TradingInstrument

    order_type: OrderTypeStrict

    time_in_force: TimeInForceStrict

    stop_loss: StopLoss

    take_profit: TakeProfit


class OptionalManualTradeFormBracket(TypedDict, total=False):
    # The security's trading ticker symbol.
    symbol: str

    # The limit price for `Limit` and `StopLimit` orders.
    price: typing.Optional[typing.Union[int, float]]

    # The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    stop: typing.Optional[typing.Union[int, float]]

    # Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    units: typing.Union[int, float]

class ManualTradeFormBracket(RequiredManualTradeFormBracket, OptionalManualTradeFormBracket):
    pass
