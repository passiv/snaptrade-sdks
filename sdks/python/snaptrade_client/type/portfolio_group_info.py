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

from snaptrade_client.type.portfolio_group_info_balances import PortfolioGroupInfoBalances
from snaptrade_client.type.portfolio_group_info_brokerage_authorizations import PortfolioGroupInfoBrokerageAuthorizations
from snaptrade_client.type.portfolio_group_info_calculated_trades import PortfolioGroupInfoCalculatedTrades
from snaptrade_client.type.portfolio_group_info_excluded_positions import PortfolioGroupInfoExcludedPositions
from snaptrade_client.type.portfolio_group_info_ideal_positions import PortfolioGroupInfoIdealPositions
from snaptrade_client.type.portfolio_group_info_positions import PortfolioGroupInfoPositions
from snaptrade_client.type.portfolio_group_info_quotable_symbols import PortfolioGroupInfoQuotableSymbols
from snaptrade_client.type.portfolio_group_info_symbols import PortfolioGroupInfoSymbols
from snaptrade_client.type.portfolio_group_info_target_positions import PortfolioGroupInfoTargetPositions
from snaptrade_client.type.portfolio_group_settings import PortfolioGroupSettings

class RequiredPortfolioGroupInfo(TypedDict):
    pass

class OptionalPortfolioGroupInfo(TypedDict, total=False):
    symbols: PortfolioGroupInfoSymbols

    quotable_symbols: PortfolioGroupInfoQuotableSymbols

    balances: PortfolioGroupInfoBalances

    positions: PortfolioGroupInfoPositions

    target_positions: PortfolioGroupInfoTargetPositions

    ideal_positions: PortfolioGroupInfoIdealPositions

    excluded_positions: PortfolioGroupInfoExcludedPositions

    calculated_trades: PortfolioGroupInfoCalculatedTrades

    brokerage_authorizations: PortfolioGroupInfoBrokerageAuthorizations

    accuracy: typing.Union[int, float]

    settings: PortfolioGroupSettings

class PortfolioGroupInfo(RequiredPortfolioGroupInfo, OptionalPortfolioGroupInfo):
    pass
