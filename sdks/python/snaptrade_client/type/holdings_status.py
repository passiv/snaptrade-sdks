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

from snaptrade_client.type.holdings_sync_status_date_nullable import HoldingsSyncStatusDateNullable

class RequiredHoldingsStatus(TypedDict):
    pass

class OptionalHoldingsStatus(TypedDict, total=False):
    # Indicates if the initial sync of holdings has been completed. For accounts with a large number of positions/orders/transactions, the initial sync may take a while to complete.
    initial_sync_completed: bool

    last_successful_sync: HoldingsSyncStatusDateNullable

    # Indicates that the brokerage does not expose this account's holdings to SnapTrade, so the empty positions and balances reported for it do not mean the account is empty. This is set for accounts served by a separate brokerage system that we cannot read, such as Vanguard employer-sponsored retirement plans. When this is `true`, prefer the account's total value over the sum of its positions and cash, and note that `initial_sync_completed` and `last_successful_sync` may still reflect an earlier sync. 
    holdings_unavailable: bool

class HoldingsStatus(RequiredHoldingsStatus, OptionalHoldingsStatus):
    pass
