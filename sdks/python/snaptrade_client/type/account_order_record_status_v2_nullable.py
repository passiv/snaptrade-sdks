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


AccountOrderRecordStatusV2Nullable = Literal["PENDING", "REJECTED", "CANCELED", "CANCEL_PENDING", "PARTIAL_CANCELED", "EXECUTED", "PARTIALLY_EXECUTED", "REPLACED", "REPLACE_PENDING", "EXPIRED"]
