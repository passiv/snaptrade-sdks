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

from snaptrade_client.type.currency import Currency
from snaptrade_client.type.options_symbol import OptionsSymbol
from snaptrade_client.type.price import Price

class RequiredOptionsPosition(TypedDict):
    pass

class OptionalOptionsPosition(TypedDict, total=False):
    symbol: str

    description: str

    option_symbol: OptionsSymbol

    price: Price

    units: typing.Union[int, float]

    currency: Currency

    # Average purchase price for this position
    average_purchase_price: typing.Optional[typing.Union[int, float]]

class OptionsPosition(RequiredOptionsPosition, OptionalOptionsPosition):
    pass
