# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://konfigthis.com
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal


RequiredSecurityType = TypedDict("RequiredSecurityType", {
    })

OptionalSecurityType = TypedDict("OptionalSecurityType", {
    "id": str,

    "code": str,

    "description": str,

    "is_supported": bool,
    }, total=False)

class SecurityType(RequiredSecurityType, OptionalSecurityType):
    pass