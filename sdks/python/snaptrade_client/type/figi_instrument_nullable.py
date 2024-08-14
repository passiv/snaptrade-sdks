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


class RequiredFigiInstrumentNullable(TypedDict):
    pass

class OptionalFigiInstrumentNullable(TypedDict, total=False):
    # This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information.
    figi_code: typing.Optional[str]

    # This enables users to link multiple FIGIs for the same security in order to obtain an aggregated view across all countries and all exchanges. For example, `AAPL` has a different FIGI for each exchange/trading venue it is traded on. The `figi_share_class` is the same for all of these FIGIs. See section 1.4.3 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information.
    figi_share_class: typing.Optional[str]

class FigiInstrumentNullable(RequiredFigiInstrumentNullable, OptionalFigiInstrumentNullable):
    pass
