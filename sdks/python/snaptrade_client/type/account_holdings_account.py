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

from snaptrade_client.type.account_holdings_account_balances import AccountHoldingsAccountBalances
from snaptrade_client.type.account_holdings_account_orders import AccountHoldingsAccountOrders
from snaptrade_client.type.account_holdings_account_positions import AccountHoldingsAccountPositions
from snaptrade_client.type.snap_trade_holdings_account_account_id import SnapTradeHoldingsAccountAccountId
from snaptrade_client.type.snap_trade_holdings_total_value import SnapTradeHoldingsTotalValue

class RequiredAccountHoldingsAccount(TypedDict):
    pass

class OptionalAccountHoldingsAccount(TypedDict, total=False):
    account: SnapTradeHoldingsAccountAccountId

    balances: AccountHoldingsAccountBalances

    positions: AccountHoldingsAccountPositions

    orders: AccountHoldingsAccountOrders

    total_value: SnapTradeHoldingsTotalValue

class AccountHoldingsAccount(RequiredAccountHoldingsAccount, OptionalAccountHoldingsAccount):
    pass
