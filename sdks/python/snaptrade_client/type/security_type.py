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


class RequiredSecurityType(TypedDict):
    pass

class OptionalSecurityType(TypedDict, total=False):
    # Unique identifier for the security type within SnapTrade. This is the ID used to reference the security type in SnapTrade API calls.
    id: str

    # A short code representing the security type. For example, \"cs\" for Common Stock. Here are some common values:   ad - ADR   bnd - Bond   cs - Common Stock   cef - Closed End Fund   et - ETF   oef - Open Ended Fund   ps - Preferred Stock   rt - Right   struct - Structured Product   ut - Unit   wi - When Issued   wt - Warrant 
    code: str

    # A human-readable description of the security type. For example, \"Common Stock\" or \"ETF\".
    description: str

    # WARNING: This property is deprecated
    # This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.
    is_supported: bool

class SecurityType(RequiredSecurityType, OptionalSecurityType):
    pass
