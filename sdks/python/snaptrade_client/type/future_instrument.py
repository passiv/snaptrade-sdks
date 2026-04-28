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


class RequiredFutureInstrument(TypedDict):
    kind: str

    # Unique identifier for the future instrument.
    id: str

    # Display symbol for the future contract.
    symbol: str

    # Root symbol for the future contract.
    root_symbol: str

    # Exchange expiration code for the contract.
    expiration_code: str


class OptionalFutureInstrument(TypedDict, total=False):
    # Expiration date of the contract.
    expiration_date: typing.Optional[date]

    # Multiplier for the future contract.
    multiplier: typing.Optional[str]

    # ISO-4217 currency code for the contract.
    currency: typing.Optional[str]

    # Exchange MIC code or exchange code for the contract.
    exchange: typing.Optional[str]

class FutureInstrument(RequiredFutureInstrument, OptionalFutureInstrument):
    pass
