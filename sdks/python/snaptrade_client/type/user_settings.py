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

from snaptrade_client.type.currency import Currency

RequiredUserSettings = TypedDict("RequiredUserSettings", {
    })

OptionalUserSettings = TypedDict("OptionalUserSettings", {
    "email": str,

    "name": str,

    "receive_cash_notification": bool,

    "receive_drift_notification": bool,

    "user_trial_activated": bool,

    "activated_trial_date": str,

    "demo": bool,

    "api_enabled": bool,

    "drift_threshold": typing.Union[int, float],

    "preferred_currency": Currency,
    }, total=False)

class UserSettings(RequiredUserSettings, OptionalUserSettings):
    pass