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
from snaptrade_client.type.exchange import Exchange
from snaptrade_client.type.position_symbol import PositionSymbol
from snaptrade_client.type.security_type import SecurityType
from snaptrade_client.type.universal_symbol import UniversalSymbol

class RequiredPosition(TypedDict):
    pass

class OptionalPosition(TypedDict, total=False):
    symbol: PositionSymbol

    units: typing.Optional[typing.Union[int, float]]

    # Last known market price for the symbol
    price: typing.Optional[typing.Union[int, float]]

    open_pnl: typing.Optional[typing.Union[int, float]]

    # Deprecated, use the units field for both fractional and integer units going forward
    fractional_units: typing.Optional[typing.Union[int, float]]

    # Average purchase price for this position. Either returned by the underlying broker or calculated using historical transactions.
    average_purchase_price: typing.Optional[typing.Union[int, float]]

class Position(RequiredPosition, OptionalPosition):
    pass
