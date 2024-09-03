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

from snaptrade_client.type.currency_nullable import CurrencyNullable
from snaptrade_client.type.option_brokerage_symbol import OptionBrokerageSymbol

class RequiredOptionsPosition(TypedDict):
    pass

class OptionalOptionsPosition(TypedDict, total=False):
    symbol: OptionBrokerageSymbol

    # Last known market price _per share_ of the option contract. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices.
    price: typing.Optional[typing.Union[int, float]]

    # The number of contracts for this option position. A positive number indicates a long position, while a negative number indicates a short position.
    units: typing.Union[int, float]

    currency: typing.Optional[CurrencyNullable]

    # Cost basis _per contract_ of this option position. To get the cost basis _per share_, divide this value by the number of shares per contract (usually 100).
    average_purchase_price: typing.Optional[typing.Union[int, float]]

class OptionsPosition(RequiredOptionsPosition, OptionalOptionsPosition):
    pass
