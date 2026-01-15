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


class RequiredTaxLot(TypedDict):
    pass

class OptionalTaxLot(TypedDict, total=False):
    # The date and time of the purchase.
    original_purchase_date: typing.Optional[datetime]

    # The number of shares in the tax lot. This can be fractional or integer units.
    quantity: typing.Optional[str]

    # The purchase price per share for the tax lot.
    purchased_price: typing.Optional[str]

    # The cost basis of the entire lot.
    cost_basis: typing.Optional[str]

    # The current market value of the entire lot.
    current_value: typing.Optional[str]

    # The type of position for the tax lot (e.g., LONG, SHORT).
    position_type: typing.Optional[str]

class TaxLot(RequiredTaxLot, OptionalTaxLot):
    pass
