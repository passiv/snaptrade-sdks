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


class RequiredSimpleOrderPreviewEstimatedFee(TypedDict):
    # Symbol to identify a cryptocurrency or fiat currency on a crypto exchange. Fiat currencies symbols are ISO-4217 codes.
    currency: str

    amount: str

class OptionalSimpleOrderPreviewEstimatedFee(TypedDict, total=False):
    pass

class SimpleOrderPreviewEstimatedFee(RequiredSimpleOrderPreviewEstimatedFee, OptionalSimpleOrderPreviewEstimatedFee):
    pass
