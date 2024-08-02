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


class RequiredCurrencyNullable(TypedDict):
    pass

class OptionalCurrencyNullable(TypedDict, total=False):
    # Unique identifier for the currency. This is the UUID used to reference the currency in SnapTrade.
    id: str

    # The ISO-4217 currency code for the currency.
    code: str

    # A human-friendly name of the currency.
    name: str

class CurrencyNullable(RequiredCurrencyNullable, OptionalCurrencyNullable):
    pass
