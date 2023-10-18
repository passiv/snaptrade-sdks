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
from typing_extensions import TypedDict, Literal


class RequiredSnapTradeLoginUserRequestBody(TypedDict):
    pass

class OptionalSnapTradeLoginUserRequestBody(TypedDict, total=False):
    # Slug of the brokerage to connect the user to
    broker: str

    # When set to True, user will be redirected back to the partner's site instead of the connection portal
    immediateRedirect: bool

    # URL to redirect the user to after the user connects their brokerage account
    customRedirect: str

    # The UUID of the brokerage connection to be reconnected
    reconnect: str

    # Sets whether the connection should be read or trade
    connectionType: str

class SnapTradeLoginUserRequestBody(RequiredSnapTradeLoginUserRequestBody, OptionalSnapTradeLoginUserRequestBody):
    pass
