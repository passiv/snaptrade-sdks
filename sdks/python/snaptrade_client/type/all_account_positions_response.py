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

from snaptrade_client.type.account_position import AccountPosition

class RequiredAllAccountPositionsResponse(TypedDict):
    # The total number of positions available across all pages.
    count: int

    # The URL for the next page of results, or `null` if there is no next page.
    next: typing.Optional[str]

    # The URL for the previous page of results, or `null` if there is no previous page.
    previous: typing.Optional[str]

    # Positions returned for the current page.
    results: typing.List[AccountPosition]

class OptionalAllAccountPositionsResponse(TypedDict, total=False):
    pass

class AllAccountPositionsResponse(RequiredAllAccountPositionsResponse, OptionalAllAccountPositionsResponse):
    pass
