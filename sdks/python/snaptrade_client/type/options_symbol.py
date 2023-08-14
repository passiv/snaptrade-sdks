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

from snaptrade_client.type.underlying_symbol import UnderlyingSymbol

class RequiredOptionsSymbol(TypedDict):
    pass

class OptionalOptionsSymbol(TypedDict, total=False):
    id: str

    ticker: str

    strike_price: typing.Union[int, float]

    expiration_date: str

    is_mini_option: bool

    underlying_symbol: UnderlyingSymbol

    local_id: str

    exchange_id: str

class OptionsSymbol(RequiredOptionsSymbol, OptionalOptionsSymbol):
    pass
