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


class RequiredAccountOrderRecordLegInstrument(TypedDict):
    pass

class OptionalAccountOrderRecordLegInstrument(TypedDict, total=False):
    # The symbol or ticker for the security.
    symbol: str

    # Human-readable description of the security.
    description: str

    # Type of instrument for the leg. - EQUITY - OPTION - CRYPTO 
    asset_type: str

    # Market Identifier Code (MIC) for the exchange on which the instrument trades.
    exchange_mic_code: str

    # Financial Instrument Global Identifier (FIGI) if available.
    figi_code: typing.Optional[str]

class AccountOrderRecordLegInstrument(RequiredAccountOrderRecordLegInstrument, OptionalAccountOrderRecordLegInstrument):
    pass
