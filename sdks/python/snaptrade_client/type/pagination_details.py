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


class RequiredPaginationDetails(TypedDict):
    pass

class OptionalPaginationDetails(TypedDict, total=False):
    # The starting point of the paginated results.
    offset: int

    # The maximum number of items to return in the response.
    limit: int

    # The total number of items available to be returned over the API.
    total: int

class PaginationDetails(RequiredPaginationDetails, OptionalPaginationDetails):
    pass
