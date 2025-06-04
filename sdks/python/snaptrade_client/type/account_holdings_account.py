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

from snaptrade_client.type.account import Account
from snaptrade_client.type.account_order_record import AccountOrderRecord
from snaptrade_client.type.balance import Balance
from snaptrade_client.type.options_position import OptionsPosition
from snaptrade_client.type.position import Position
from snaptrade_client.type.snap_trade_holdings_total_value import SnapTradeHoldingsTotalValue

class RequiredAccountHoldingsAccount(TypedDict):
    pass

class OptionalAccountHoldingsAccount(TypedDict, total=False):
    account: Account

    # List of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).
    balances: typing.Optional[typing.List[Balance]]

    # List of stock/ETF/crypto/mutual fund positions in the account.
    positions: typing.Optional[typing.List[Position]]

    # List of option positions in the account.
    option_positions: typing.Optional[typing.List[OptionsPosition]]

    # List of recent orders in the account, including both pending and executed orders. Note that option orders are included in this list. Option orders will have a null `universal_symbol` field and a non-null `option_symbol` field.
    orders: typing.Optional[typing.List[AccountOrderRecord]]

    # WARNING: This property is deprecated
    total_value: SnapTradeHoldingsTotalValue

class AccountHoldingsAccount(RequiredAccountHoldingsAccount, OptionalAccountHoldingsAccount):
    pass
