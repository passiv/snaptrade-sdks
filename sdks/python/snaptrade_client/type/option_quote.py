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


class RequiredOptionQuote(TypedDict):
    pass

class OptionalOptionQuote(TypedDict, total=False):
    # The OCC-formatted option symbol.
    symbol: str

    # The best bid price for the option contract.
    bid_price: typing.Union[int, float]

    # The number of contracts available at the bid price.
    bid_size: int

    # The best ask price for the option contract.
    ask_price: typing.Union[int, float]

    # The number of contracts available at the ask price.
    ask_size: int

    # The price of the last trade for the option contract.
    last_price: typing.Union[int, float]

    # The number of contracts in the last trade.
    last_size: int

    # The total number of outstanding contracts.
    open_interest: int

    # The total number of contracts traded during the current session.
    volume: int

    # The implied volatility of the option contract.
    implied_volatility: typing.Union[int, float]

    # The current price of the underlying security.
    underlying_price: typing.Union[int, float]

    # The timestamp of the quote.
    timestamp: typing.Optional[datetime]

class OptionQuote(RequiredOptionQuote, OptionalOptionQuote):
    pass
