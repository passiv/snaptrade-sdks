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

from snaptrade_client.type.account_balance import AccountBalance
from snaptrade_client.type.account_cash_restrictions import AccountCashRestrictions
from snaptrade_client.type.account_meta import AccountMeta
from snaptrade_client.type.account_sync_status import AccountSyncStatus

class RequiredAccount(TypedDict):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated.
    id: str

    # Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade.
    brokerage_authorization: str

    # A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity.
    name: typing.Optional[str]

    # The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons.
    number: str

    # The name of the brokerage that holds the account.
    institution_name: str

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage.
    created_date: datetime

    sync_status: AccountSyncStatus

    balance: AccountBalance


class OptionalAccount(TypedDict, total=False):
    # The current status of the account. Can be either \"open\", \"closed\", or null if the status is unknown or not provided by the brokerage.
    status: typing.Optional[str]

    # The account type as provided by the brokerage
    raw_type: typing.Optional[str]

    # WARNING: This property is deprecated
    meta: AccountMeta

    # WARNING: This property is deprecated
    # Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it.
    portfolio_group: str

    # WARNING: This property is deprecated
    cash_restrictions: AccountCashRestrictions

class Account(RequiredAccount, OptionalAccount):
    pass
