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

from snaptrade_client.type.account_universal_activity import AccountUniversalActivity
from snaptrade_client.type.pagination_details import PaginationDetails

class RequiredPaginatedUniversalActivity(TypedDict):
    pass

class OptionalPaginatedUniversalActivity(TypedDict, total=False):
    data: typing.List[AccountUniversalActivity]

    pagination: PaginationDetails

class PaginatedUniversalActivity(RequiredPaginatedUniversalActivity, OptionalPaginatedUniversalActivity):
    pass
