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

from snaptrade_client.type.figi_instrument_nullable import FigiInstrumentNullable

class RequiredAdrInstrument(TypedDict):
    # Type of security instrument.
    kind: Literal["adr"]

    # Unique identifier for the instrument.
    id: str

    # The formatted trading symbol for the security.
    symbol: str

    # The raw symbol without any exchange suffix.
    raw_symbol: str


class OptionalAdrInstrument(TypedDict, total=False):
    # Human-readable description of the security.
    description: typing.Optional[str]

    # ISO-4217 currency code for the security listing.
    currency: typing.Optional[str]

    # Exchange MIC code or exchange code for the security.
    exchange: typing.Optional[str]

    figi_instrument: typing.Optional[FigiInstrumentNullable]

class AdrInstrument(RequiredAdrInstrument, OptionalAdrInstrument):
    pass
