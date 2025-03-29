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


class RequiredCryptocurrencyPair(TypedDict):
    # The base currency of a pair (e.g., \"BTC\" in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes. 
    base: str

    # The quote currency of a pair (e.g., \"USD\" in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes. 
    quote: str


class OptionalCryptocurrencyPair(TypedDict, total=False):
    # Cryptocurrency pair instrument symbol
    symbol: str

class CryptocurrencyPair(RequiredCryptocurrencyPair, OptionalCryptocurrencyPair):
    pass
