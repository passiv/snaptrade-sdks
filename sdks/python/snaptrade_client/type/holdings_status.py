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

class RequiredHoldingsStatus(TypedDict):
    pass

class OptionalHoldingsStatus(TypedDict, total=False):
    # Indicates if the initial sync of holdings has been completed. For accounts with a large number of positions/orders/transactions, the initial sync may take a while to complete.
    initial_sync_completed: bool

    # The last time holdings were successfully synced by SnapTrade.
    last_successful_sync: HoldingsSyncStatusDate

class HoldingsStatus(RequiredHoldingsStatus, OptionalHoldingsStatus):
    pass
