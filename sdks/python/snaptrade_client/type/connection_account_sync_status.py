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

from snaptrade_client.type.holdings_sync_status_date import HoldingsSyncStatusDate
from snaptrade_client.type.transactions_status import TransactionsStatus

class RequiredConnectionAccountSyncStatus(TypedDict):
    pass

class OptionalConnectionAccountSyncStatus(TypedDict, total=False):
    transactions: TransactionsStatus

    # The last time orders were successfully synced by SnapTrade.
    orders: HoldingsSyncStatusDate

    # The last time positions were successfully synced by SnapTrade.
    positions: HoldingsSyncStatusDate

    # The last time balances were successfully synced by SnapTrade.
    balances: HoldingsSyncStatusDate

class ConnectionAccountSyncStatus(RequiredConnectionAccountSyncStatus, OptionalConnectionAccountSyncStatus):
    pass
