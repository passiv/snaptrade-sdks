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

from snaptrade_client.type.options_symbol import OptionsSymbol

class RequiredOptionBrokerageSymbol(TypedDict):
    pass

class OptionalOptionBrokerageSymbol(TypedDict, total=False):
    # WARNING: This property is deprecated
    # A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change.
    id: str

    # WARNING: This property is deprecated
    # This field is deprecated and the caller should use the `option_symbol` child property's `description` instead.
    description: str

    option_symbol: OptionsSymbol

class OptionBrokerageSymbol(RequiredOptionBrokerageSymbol, OptionalOptionBrokerageSymbol):
    pass
