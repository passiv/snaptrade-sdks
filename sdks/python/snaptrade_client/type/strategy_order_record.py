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

from snaptrade_client.type.option_strategy import OptionStrategy

class RequiredStrategyOrderRecord(TypedDict):
    pass

class OptionalStrategyOrderRecord(TypedDict, total=False):
    strategy: OptionStrategy

    status: str

    filled_quantity: typing.Union[int, float]

    open_quantity: typing.Union[int, float]

    closed_quantity: typing.Union[int, float]

    order_type: str

    time_in_force: str

    # Trade Price if limit or stop limit order
    limit_price: typing.Union[int, float]

    # Trade Price if limit or stop limit order
    execution_price: typing.Union[int, float]

    # Time
    time_placed: str

    # Time
    time_updated: str

class StrategyOrderRecord(RequiredStrategyOrderRecord, OptionalStrategyOrderRecord):
    pass
