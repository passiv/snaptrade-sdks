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

from snaptrade_client.type.cryptocurrency_pair import CryptocurrencyPair

class RequiredCryptocurrencyMarket(TypedDict):
    symbol: CryptocurrencyPair

    # True if the account can trade on this market.
    trading_allowed: bool

class OptionalCryptocurrencyMarket(TypedDict, total=False):
    pass

class CryptocurrencyMarket(RequiredCryptocurrencyMarket, OptionalCryptocurrencyMarket):
    pass
