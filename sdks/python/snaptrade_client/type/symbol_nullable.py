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

from snaptrade_client.type.currency import Currency
from snaptrade_client.type.exchange import Exchange
from snaptrade_client.type.figi_instrument_nullable import FigiInstrumentNullable
from snaptrade_client.type.security_type import SecurityType

class RequiredSymbolNullable(TypedDict):
    pass

class OptionalSymbolNullable(TypedDict, total=False):
    # Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    id: str

    # The security's trading ticker symbol. For example \"AAPL\" for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \"Yahoo Finance Market Coverage and Data Delays\"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix.
    symbol: str

    # The raw symbol is `symbol` with the exchange suffix removed. For example, if `symbol` is \"VAB.TO\", then `raw_symbol` is \"VAB\".
    raw_symbol: str

    # A human-readable description of the security. This is usually the company name or ETF name.
    description: typing.Optional[str]

    # The currency in which the security is traded.
    currency: Currency

    # The exchange on which the security is listed and traded.
    exchange: Exchange

    type: SecurityType

    # This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the `figi_code` in the `figi_instrument` child property.
    figi_code: typing.Optional[str]

    figi_instrument: typing.Optional[FigiInstrumentNullable]

class SymbolNullable(RequiredSymbolNullable, OptionalSymbolNullable):
    pass
