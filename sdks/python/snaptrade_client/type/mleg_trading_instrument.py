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

from snaptrade_client.type.mleg_instrument_type import MlegInstrumentType

class RequiredMlegTradingInstrument(TypedDict):
    # The security's trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example `AAPL  131124C00240000` represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format)
    symbol: str

    instrument_type: MlegInstrumentType

class OptionalMlegTradingInstrument(TypedDict, total=False):
    pass

class MlegTradingInstrument(RequiredMlegTradingInstrument, OptionalMlegTradingInstrument):
    pass
