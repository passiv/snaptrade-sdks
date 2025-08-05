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

from snaptrade_client.type.crypto_order_preview_estimated_fee import CryptoOrderPreviewEstimatedFee

class RequiredCryptoOrderPreview(TypedDict):
    pass

class OptionalCryptoOrderPreview(TypedDict, total=False):
    estimated_fee: CryptoOrderPreviewEstimatedFee

class CryptoOrderPreview(RequiredCryptoOrderPreview, OptionalCryptoOrderPreview):
    pass
