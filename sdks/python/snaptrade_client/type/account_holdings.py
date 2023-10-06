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

from snaptrade_client.type.account_sync_status import AccountSyncStatus
from snaptrade_client.type.balance import Balance
from snaptrade_client.type.brokerage import Brokerage
from snaptrade_client.type.brokerage_authorization import BrokerageAuthorization
from snaptrade_client.type.brokerage_authorization_meta import BrokerageAuthorizationMeta
from snaptrade_client.type.brokerage_exchanges import BrokerageExchanges
from snaptrade_client.type.brokerage_type import BrokerageType
from snaptrade_client.type.currency import Currency
from snaptrade_client.type.exchange import Exchange
from snaptrade_client.type.position import Position
from snaptrade_client.type.position_symbol import PositionSymbol
from snaptrade_client.type.security_type import SecurityType
from snaptrade_client.type.snap_trade_holdings_account import SnapTradeHoldingsAccount
from snaptrade_client.type.snap_trade_holdings_account_meta import SnapTradeHoldingsAccountMeta
from snaptrade_client.type.snap_trade_holdings_total_value import SnapTradeHoldingsTotalValue
from snaptrade_client.type.universal_symbol import UniversalSymbol

class RequiredAccountHoldings(TypedDict):
    pass

class OptionalAccountHoldings(TypedDict, total=False):
    account: SnapTradeHoldingsAccount

    balances: typing.Optional[typing.List[Balance]]

    positions: typing.Optional[typing.List[Position]]

    total_value: SnapTradeHoldingsTotalValue

class AccountHoldings(RequiredAccountHoldings, OptionalAccountHoldings):
    pass
