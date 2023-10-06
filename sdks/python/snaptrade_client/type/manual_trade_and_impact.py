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
from typing_extensions import TypedDict, Literal

from snaptrade_client.type.account import Account
from snaptrade_client.type.account_meta import AccountMeta
from snaptrade_client.type.account_sync_status import AccountSyncStatus
from snaptrade_client.type.action import Action
from snaptrade_client.type.cash import Cash
from snaptrade_client.type.cash_restriction import CashRestriction
from snaptrade_client.type.currency import Currency
from snaptrade_client.type.manual_trade import ManualTrade
from snaptrade_client.type.manual_trade_balance import ManualTradeBalance
from snaptrade_client.type.manual_trade_symbol import ManualTradeSymbol
from snaptrade_client.type.order_type import OrderType
from snaptrade_client.type.price import Price
from snaptrade_client.type.time_in_force import TimeInForce

class RequiredManualTradeAndImpact(TypedDict):
    pass

class OptionalManualTradeAndImpact(TypedDict, total=False):
    trade: ManualTrade

    trade_impacts: typing.List[ManualTrade]

    combined_remaining_balance: ManualTradeBalance

class ManualTradeAndImpact(RequiredManualTradeAndImpact, OptionalManualTradeAndImpact):
    pass
