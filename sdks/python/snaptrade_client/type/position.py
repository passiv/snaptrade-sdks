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

from snaptrade_client.type.position_symbol import PositionSymbol

class RequiredPosition(TypedDict):
    pass

class OptionalPosition(TypedDict, total=False):
    symbol: PositionSymbol

    # The number of shares of the position. This can be fractional or integer units.
    units: typing.Optional[typing.Union[int, float]]

    # Last known market price for the symbol. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices.
    price: typing.Optional[typing.Union[int, float]]

    # The profit or loss on the position since it was opened. This is calculated as the difference between the current market value of the position and the total cost of the position. It is recommended to calculate this value using the average purchase price and the current market price yourself, instead of relying on this field.
    open_pnl: typing.Optional[typing.Union[int, float]]

    # Cost basis _per share_ of this position.
    average_purchase_price: typing.Optional[typing.Union[int, float]]

    # WARNING: This property is deprecated
    # Deprecated, use the `units` field for both fractional and integer units going forward
    fractional_units: typing.Optional[typing.Union[int, float]]

class Position(RequiredPosition, OptionalPosition):
    pass
