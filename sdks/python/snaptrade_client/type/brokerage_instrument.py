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


class RequiredBrokerageInstrument(TypedDict):
    pass

class OptionalBrokerageInstrument(TypedDict, total=False):
    # The instrument's trading symbol / ticker.
    symbol: str

    # The MIC code of the exchange where the instrument is traded.
    exchange_mic: typing.Optional[str]

    # Whether the instrument is tradeable through the brokerage. `null` if the tradeability is unknown.
    tradeable: typing.Optional[bool]

    # Whether the instrument allows fractional units. `null` if the fractionability is unknown.
    fractionable: typing.Optional[bool]

    # The universal symbol ID of the instrument. This is the ID used to reference the instrument in SnapTrade API calls.
    universal_symbol_id: typing.Optional[str]

class BrokerageInstrument(RequiredBrokerageInstrument, OptionalBrokerageInstrument):
    pass
