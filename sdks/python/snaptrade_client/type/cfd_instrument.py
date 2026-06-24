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

from snaptrade_client.type.underlying_cfd_instrument import UnderlyingCfdInstrument

class RequiredCfdInstrument(TypedDict):
    # Type of security instrument.
    kind: Literal["cfd"]

    # Unique identifier for the canonical CFD instrument wrapper.
    id: str

    # Formatted symbol of the instrument underlying the CFD wrapper.
    symbol: str

    # Raw symbol of the instrument underlying the CFD wrapper.
    raw_symbol: str

    underlying_instrument: UnderlyingCfdInstrument


class OptionalCfdInstrument(TypedDict, total=False):
    # Human-readable description of the instrument underlying the CFD wrapper.
    description: typing.Optional[str]

    # ISO-4217 currency code for the instrument underlying the CFD wrapper.
    currency: typing.Optional[str]

    # Exchange MIC code or exchange code for the instrument underlying the CFD wrapper.
    exchange: typing.Optional[str]

class CfdInstrument(RequiredCfdInstrument, OptionalCfdInstrument):
    pass
