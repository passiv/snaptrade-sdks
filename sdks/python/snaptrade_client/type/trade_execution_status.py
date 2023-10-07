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
from snaptrade_client.type.brokerage import Brokerage
from snaptrade_client.type.brokerage_authorization import BrokerageAuthorization
from snaptrade_client.type.brokerage_authorization_meta import BrokerageAuthorizationMeta
from snaptrade_client.type.brokerage_exchanges import BrokerageExchanges
from snaptrade_client.type.brokerage_symbol import BrokerageSymbol
from snaptrade_client.type.brokerage_type import BrokerageType
from snaptrade_client.type.cash_restriction import CashRestriction
from snaptrade_client.type.currency import Currency
from snaptrade_client.type.exchange import Exchange
from snaptrade_client.type.options_symbol import OptionsSymbol
from snaptrade_client.type.security_type import SecurityType
from snaptrade_client.type.trade import Trade
from snaptrade_client.type.trade_execution_status_meta import TradeExecutionStatusMeta
from snaptrade_client.type.underlying_symbol import UnderlyingSymbol
from snaptrade_client.type.universal_symbol import UniversalSymbol
from snaptrade_client.type.us_exchange import USExchange

class RequiredTradeExecutionStatus(TypedDict):
    pass

class OptionalTradeExecutionStatus(TypedDict, total=False):
    symbol: BrokerageSymbol

    universal_symbol: UniversalSymbol

    trade: Trade

    # Execution state of a trade
    state: str

    # Number of filled units
    filled_units: int

    # Action of executed trade
    action: str

    # Price of execution
    price: typing.Union[int, float]

    # Fees paid from executing trade
    commissions: typing.Union[int, float]

    meta: TradeExecutionStatusMeta

class TradeExecutionStatus(RequiredTradeExecutionStatus, OptionalTradeExecutionStatus):
    pass
