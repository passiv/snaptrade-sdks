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

from snaptrade_client.type.account_value_history_item import AccountValueHistoryItem

class RequiredAccountValueHistoryResponse(TypedDict):
    pass

class OptionalAccountValueHistoryResponse(TypedDict, total=False):
    # List of estimated account values over time returned by the endpoint.
    history: typing.List[AccountValueHistoryItem]

    # The ISO-4217 currency code for the account values.
    currency: str

class AccountValueHistoryResponse(RequiredAccountValueHistoryResponse, OptionalAccountValueHistoryResponse):
    pass
