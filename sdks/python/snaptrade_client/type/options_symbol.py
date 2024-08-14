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

from snaptrade_client.type.underlying_symbol import UnderlyingSymbol

class RequiredOptionsSymbol(TypedDict):
    # Unique identifier for the option symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    id: str

    # The [OCC symbol](https://en.wikipedia.org/wiki/Option_symbol) for the option.
    ticker: str

    # The type of option. Either \"CALL\" or \"PUT\".
    option_type: str

    # The option strike price.
    strike_price: typing.Union[int, float]

    # The option expiration date.
    expiration_date: date

    underlying_symbol: UnderlyingSymbol


class OptionalOptionsSymbol(TypedDict, total=False):
    # Whether the option is a mini option. Mini options have 10 underlying shares per contract instead of the standard 100.
    is_mini_option: bool

class OptionsSymbol(RequiredOptionsSymbol, OptionalOptionsSymbol):
    pass
