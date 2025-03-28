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


class RequiredCryptocurrencyPairQuote(TypedDict):
    # The highest price a buyer is willing to pay.
    bid: str

    # The lowest price a seller is willing to accept.
    ask: str


class OptionalCryptocurrencyPairQuote(TypedDict, total=False):
    # The market mid price.
    mid: str

    # The timestamp of the quote.
    timestamp: datetime

class CryptocurrencyPairQuote(RequiredCryptocurrencyPairQuote, OptionalCryptocurrencyPairQuote):
    pass
