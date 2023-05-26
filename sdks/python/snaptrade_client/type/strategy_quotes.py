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

class RequiredStrategyQuotes(TypedDict):
    pass

class OptionalStrategyQuotes(TypedDict, total=False):
    strategy: OptionStrategy

    # Trade Price if limit or stop limit order
    open_price: typing.Union[int, float]

    # Trade Price if limit or stop limit order
    bid_price: typing.Union[int, float]

    # Trade Price if limit or stop limit order
    ask_price: typing.Union[int, float]

    volatility: typing.Union[int, float]

    greek: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

class StrategyQuotes(RequiredStrategyQuotes, OptionalStrategyQuotes):
    pass
