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

from snaptrade_client.type.account_holdings_balances import AccountHoldingsBalances
from snaptrade_client.type.account_holdings_positions import AccountHoldingsPositions
from snaptrade_client.type.snap_trade_holdings_account import SnapTradeHoldingsAccount
from snaptrade_client.type.snap_trade_holdings_total_value import SnapTradeHoldingsTotalValue

class RequiredAccountHoldings(TypedDict):
    pass

class OptionalAccountHoldings(TypedDict, total=False):
    account: SnapTradeHoldingsAccount

    balances: AccountHoldingsBalances

    positions: AccountHoldingsPositions

    total_value: SnapTradeHoldingsTotalValue

class AccountHoldings(RequiredAccountHoldings, OptionalAccountHoldings):
    pass
