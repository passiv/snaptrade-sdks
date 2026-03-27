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

from snaptrade_client.type.account_order_record_nullable import AccountOrderRecordNullable

class RequiredOrderUpdatedResponse(TypedDict):
    # Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    brokerage_order_id: str


class OptionalOrderUpdatedResponse(TypedDict, total=False):
    order: typing.Optional[AccountOrderRecordNullable]

class OrderUpdatedResponse(RequiredOrderUpdatedResponse, OptionalOrderUpdatedResponse):
    pass
