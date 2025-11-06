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

from snaptrade_client.type.account_order_record_v2 import AccountOrderRecordV2

class RequiredAccountOrdersV2Response(TypedDict):
    # List of orders returned by the endpoint.
    orders: typing.List[AccountOrderRecordV2]

class OptionalAccountOrdersV2Response(TypedDict, total=False):
    pass

class AccountOrdersV2Response(RequiredAccountOrdersV2Response, OptionalAccountOrdersV2Response):
    pass
