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


class RequiredExchange(TypedDict):
    pass

class OptionalExchange(TypedDict, total=False):
    # Unique ID for the exchange in SnapTrade.
    id: str

    # A short name for the exchange. For standardized exchange code, please us the `mic_code` field.
    code: str

    # The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange.
    mic_code: str

    # The full name of the exchange.
    name: str

    # The timezone for the trading hours (`start_time` and `close_time`) of the exchange.
    timezone: str

    # The time when the exchange opens for trading.
    start_time: str

    # The time when the exchange closes for trading.
    close_time: str

    # The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is `.TO`. See `UniversalSymbol->symbol` and `UniversalSymbol->raw_symbol` for more detail.
    suffix: typing.Optional[str]

class Exchange(RequiredExchange, OptionalExchange):
    pass
