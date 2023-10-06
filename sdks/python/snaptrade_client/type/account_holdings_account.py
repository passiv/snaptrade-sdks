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

from snaptrade_client.type.account_order_record import AccountOrderRecord
from snaptrade_client.type.account_order_record_status import AccountOrderRecordStatus
from snaptrade_client.type.action import Action
from snaptrade_client.type.balance import Balance
from snaptrade_client.type.cancelled_units import CancelledUnits
from snaptrade_client.type.cash_restriction import CashRestriction
from snaptrade_client.type.currency import Currency
from snaptrade_client.type.exchange import Exchange
from snaptrade_client.type.filled_units import FilledUnits
from snaptrade_client.type.open_units import OpenUnits
from snaptrade_client.type.options_symbol import OptionsSymbol
from snaptrade_client.type.order_type import OrderType
from snaptrade_client.type.position import Position
from snaptrade_client.type.position_symbol import PositionSymbol
from snaptrade_client.type.price import Price
from snaptrade_client.type.security_type import SecurityType
from snaptrade_client.type.snap_trade_holdings_account_account_id import SnapTradeHoldingsAccountAccountId
from snaptrade_client.type.snap_trade_holdings_account_account_id_meta import SnapTradeHoldingsAccountAccountIdMeta
from snaptrade_client.type.snap_trade_holdings_total_value import SnapTradeHoldingsTotalValue
from snaptrade_client.type.stop_price import StopPrice
from snaptrade_client.type.time_in_force import TimeInForce
from snaptrade_client.type.underlying_symbol import UnderlyingSymbol
from snaptrade_client.type.universal_symbol import UniversalSymbol
from snaptrade_client.type.us_exchange import USExchange

class RequiredAccountHoldingsAccount(TypedDict):
    pass

class OptionalAccountHoldingsAccount(TypedDict, total=False):
    account: SnapTradeHoldingsAccountAccountId

    balances: typing.Optional[typing.List[Balance]]

    positions: typing.Optional[typing.List[Position]]

    orders: typing.Optional[typing.List[AccountOrderRecord]]

    total_value: SnapTradeHoldingsTotalValue

class AccountHoldingsAccount(RequiredAccountHoldingsAccount, OptionalAccountHoldingsAccount):
    pass
