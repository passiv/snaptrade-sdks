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
from snaptrade_client.type.balance import Balance
from snaptrade_client.type.brokerage import Brokerage
from snaptrade_client.type.brokerage_authorization import BrokerageAuthorization
from snaptrade_client.type.brokerage_authorization_meta import BrokerageAuthorizationMeta
from snaptrade_client.type.brokerage_exchanges import BrokerageExchanges
from snaptrade_client.type.brokerage_symbol import BrokerageSymbol
from snaptrade_client.type.brokerage_type import BrokerageType
from snaptrade_client.type.calculated_trade import CalculatedTrade
from snaptrade_client.type.cash_restriction import CashRestriction
from snaptrade_client.type.currency import Currency
from snaptrade_client.type.exchange import Exchange
from snaptrade_client.type.excluded_asset import ExcludedAsset
from snaptrade_client.type.options_symbol import OptionsSymbol
from snaptrade_client.type.percent import Percent
from snaptrade_client.type.portfolio_group_settings import PortfolioGroupSettings
from snaptrade_client.type.position import Position
from snaptrade_client.type.position_symbol import PositionSymbol
from snaptrade_client.type.security_type import SecurityType
from snaptrade_client.type.target_asset import TargetAsset
from snaptrade_client.type.target_asset_meta import TargetAssetMeta
from snaptrade_client.type.trade import Trade
from snaptrade_client.type.underlying_symbol import UnderlyingSymbol
from snaptrade_client.type.universal_symbol import UniversalSymbol
from snaptrade_client.type.us_exchange import USExchange

class RequiredPortfolioGroupInfo(TypedDict):
    pass

class OptionalPortfolioGroupInfo(TypedDict, total=False):
    symbols: typing.List[UniversalSymbol]

    quotable_symbols: typing.List[UniversalSymbol]

    balances: typing.List[Balance]

    positions: typing.List[Position]

    target_positions: typing.List[TargetAsset]

    ideal_positions: typing.List[Position]

    excluded_positions: typing.List[ExcludedAsset]

    calculated_trades: typing.List[CalculatedTrade]

    brokerage_authorizations: typing.List[BrokerageAuthorization]

    accuracy: typing.Union[int, float]

    settings: PortfolioGroupSettings

class PortfolioGroupInfo(RequiredPortfolioGroupInfo, OptionalPortfolioGroupInfo):
    pass
