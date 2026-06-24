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

from snaptrade_client.type.instrument import Instrument
from snaptrade_client.type.tax_lot import TaxLot

class RequiredAccountPosition(TypedDict):
    instrument: Instrument


class OptionalAccountPosition(TypedDict, total=False):
    # The number of units held in the position. Positive numbers indicate long positions and negative numbers indicate short positions.
    units: typing.Optional[str]

    # Last known market price _per share_. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices.
    price: typing.Optional[str]

    # Book price or average purchase price for the position. For options, this is per-contract.
    cost_basis: typing.Optional[str]

    # ISO-4217 currency code for the position `price` and `cost_basis`.
    currency: typing.Optional[str]

    # Present for mutual fund positions that are also counted in cash balance or buying power.
    cash_equivalent: bool

    # List of tax lots for the given position (disabled by default, only available on paid plans, contact support if needed)
    tax_lots: typing.List[TaxLot]

class AccountPosition(RequiredAccountPosition, OptionalAccountPosition):
    pass
