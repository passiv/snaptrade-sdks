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
    # The base currency (e.g., \"BTC\" in BTC/USD). Can be a fiat or crypto code.
    base: str

    # The quote currency (e.g., \"USD\" in BTC/USD). Can be a fiat or crypto code.
    quote: str

class OptionalCryptocurrencyPair(TypedDict, total=False):
    pass

class CryptocurrencyPair(RequiredCryptocurrencyPair, OptionalCryptocurrencyPair):
    pass
