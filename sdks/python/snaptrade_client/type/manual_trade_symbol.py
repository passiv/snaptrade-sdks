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

class RequiredManualTradeSymbol(TypedDict):
    pass

class OptionalManualTradeSymbol(TypedDict, total=False):
    # WARNING: This property is deprecated
    # A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change.
    brokerage_symbol_id: str

    # Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    universal_symbol_id: str

    currency: Currency

    # WARNING: This property is deprecated
    # This field is deprecated and should not be used.
    local_id: str

    # WARNING: This property is deprecated
    # This field is deprecated and should not be used.
    description: typing.Optional[str]

    # WARNING: This property is deprecated
    # This field is deprecated and should not be used.
    symbol: str

class ManualTradeSymbol(RequiredManualTradeSymbol, OptionalManualTradeSymbol):
    pass
