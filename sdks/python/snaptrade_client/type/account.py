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

from snaptrade_client.type.account_cash_restrictions import AccountCashRestrictions
from snaptrade_client.type.account_meta import AccountMeta
from snaptrade_client.type.account_sync_status import AccountSyncStatus

class RequiredAccount(TypedDict):
    pass

class OptionalAccount(TypedDict, total=False):
    id: str

    brokerage_authorization: str

    portfolio_group: str

    name: str

    number: str

    institution_name: str

    created_date: str

    meta: AccountMeta

    cash_restrictions: AccountCashRestrictions

    sync_status: AccountSyncStatus

class Account(RequiredAccount, OptionalAccount):
    pass
