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

from snaptrade_client.type.net_contributions import NetContributions
from snaptrade_client.type.performance_custom_bad_tickers import PerformanceCustomBadTickers
from snaptrade_client.type.performance_custom_contribution_timeframe import PerformanceCustomContributionTimeframe
from snaptrade_client.type.performance_custom_contribution_timeframe_cumulative import PerformanceCustomContributionTimeframeCumulative
from snaptrade_client.type.performance_custom_dividend_timeline import PerformanceCustomDividendTimeline
from snaptrade_client.type.performance_custom_dividends import PerformanceCustomDividends
from snaptrade_client.type.performance_custom_return_rate_timeframe import PerformanceCustomReturnRateTimeframe
from snaptrade_client.type.performance_custom_total_equity_timeframe import PerformanceCustomTotalEquityTimeframe
from snaptrade_client.type.performance_custom_withdrawal_timeframe import PerformanceCustomWithdrawalTimeframe

class RequiredPerformanceCustom(TypedDict):
    pass

class OptionalPerformanceCustom(TypedDict, total=False):
    totalEquityTimeframe: PerformanceCustomTotalEquityTimeframe

    contributions: NetContributions

    contributionTimeframe: PerformanceCustomContributionTimeframe

    contributionTimeframeCumulative: PerformanceCustomContributionTimeframeCumulative

    withdrawalTimeframe: PerformanceCustomWithdrawalTimeframe

    # Current streak of cosecutive months where contributions were made
    contributionStreak: typing.Optional[typing.Union[int, float]]

    # Number of months in the timeframe with contributions
    contributionMonthsContributed: typing.Optional[typing.Union[int, float]]

    # Total months in timeframe
    contributionTotalMonths: typing.Optional[typing.Union[int, float]]

    dividends: PerformanceCustomDividends

    # Total dividends received over the timeframe
    dividendIncome: typing.Optional[typing.Union[int, float]]

    # Average dividends received per month over the timeframe
    monthlyDividends: typing.Optional[typing.Union[int, float]]

    badTickers: PerformanceCustomBadTickers

    dividendTimeline: PerformanceCustomDividendTimeline

    # commissions incurred during the timeframe
    commissions: typing.Optional[typing.Union[int, float]]

    # forex fees incurred during the timeframe
    forexFees: typing.Optional[typing.Union[int, float]]

    # other fees incurred during the timeframe
    fees: typing.Optional[typing.Union[int, float]]

    # The return rate over the timeframe. Annualized if timeframe is longer than 1 year
    rateOfReturn: typing.Optional[typing.Union[int, float]]

    returnRateTimeframe: PerformanceCustomReturnRateTimeframe

    # Whether the user has detailed mode enabled (more frequent data points for totalEquity and contribution timeframes)
    detailedMode: bool

class PerformanceCustom(RequiredPerformanceCustom, OptionalPerformanceCustom):
    pass
