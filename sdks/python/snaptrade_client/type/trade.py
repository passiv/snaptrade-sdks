# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://konfigthis.com
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal

from snaptrade_client.type.account import Account
from snaptrade_client.type.brokerage_symbol import BrokerageSymbol
from snaptrade_client.type.universal_symbol import UniversalSymbol

RequiredTrade = TypedDict("RequiredTrade", {
    })

OptionalTrade = TypedDict("OptionalTrade", {
    "id": str,

    "account": Account,

    "symbol": BrokerageSymbol,

    "universal_symbol": UniversalSymbol,

    "action": str,

    "units": int,

    "price": typing.Union[int, float],

    "sequence": int,
    }, total=False)

class Trade(RequiredTrade, OptionalTrade):
    pass