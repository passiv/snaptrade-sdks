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

from snaptrade_client.type.underlying_option_instrument import UnderlyingOptionInstrument

class RequiredOptionInstrument(TypedDict):
    kind: str

    # Unique identifier for the option instrument.
    id: str

    # OCC symbol for the option contract.
    symbol: str

    # Whether the contract is a call or put.
    option_type: str

    # Strike price for the option contract.
    strike_price: str

    # Expiration date of the option contract.
    expiration_date: date

    underlying: UnderlyingOptionInstrument


class OptionalOptionInstrument(TypedDict, total=False):
    # Human-readable description of the option contract.
    description: typing.Optional[str]

class OptionInstrument(RequiredOptionInstrument, OptionalOptionInstrument):
    pass
