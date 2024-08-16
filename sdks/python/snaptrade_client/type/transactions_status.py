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

from snaptrade_client.type.sync_status_date import SyncStatusDate

class RequiredTransactionsStatus(TypedDict):
    pass

class OptionalTransactionsStatus(TypedDict, total=False):
    # Indicates if the initial sync of transactions has been completed. For accounts with a large number of transactions, the initial sync may take a while to complete.
    initial_sync_completed: bool

    # All transactions up to this date have been successfully synced. Please note that this is not the date of the last transaction, nor the last time SnapTrade attempted to sync transactions.
    last_successful_sync: SyncStatusDate

    # The date of the first transaction in the account known to SnapTrade. It's possible that the account has transactions before this date, but they are not known to SnapTrade.
    first_transaction_date: SyncStatusDate

class TransactionsStatus(RequiredTransactionsStatus, OptionalTransactionsStatus):
    pass
