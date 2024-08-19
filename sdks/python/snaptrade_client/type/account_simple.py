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

from snaptrade_client.type.account_sync_status import AccountSyncStatus

class RequiredAccountSimple(TypedDict):
    pass

class OptionalAccountSimple(TypedDict, total=False):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    id: str

    # A display name for the account. Either assigned by the user or by the financial institution itself. For certain institutions, SnapTrade appends the institution name to the account name for clarity.
    name: str

    # The account number assigned by the financial institution.
    number: str

    sync_status: AccountSyncStatus

class AccountSimple(RequiredAccountSimple, OptionalAccountSimple):
    pass
