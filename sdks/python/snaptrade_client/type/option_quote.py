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

from snaptrade_client.type.option_quote_greeks import OptionQuoteGreeks

class RequiredOptionQuote(TypedDict):
    pass

class OptionalOptionQuote(TypedDict, total=False):
    # The OCC-formatted option symbol.
    symbol: str

    # The derived synthetic price of the contract.
    synthetic_price: typing.Union[int, float]

    # The implied volatility of the option contract.
    implied_volatility: typing.Union[int, float]

    # The timestamp of the last update for the option quote.
    timestamp: typing.Optional[datetime]

    greeks: OptionQuoteGreeks

class OptionQuote(RequiredOptionQuote, OptionalOptionQuote):
    pass
