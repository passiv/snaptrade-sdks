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


class RequiredSnapTradeLoginUserRequestBody(TypedDict):
    pass

class OptionalSnapTradeLoginUserRequestBody(TypedDict, total=False):
    # Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.
    broker: str

    # When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    immediateRedirect: bool

    # URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    customRedirect: str

    # The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.
    reconnect: str

    # Sets whether the connection should be read-only or trade-enabled. Defaults to read-only if not specified.
    connectionType: str

    # Sets the connection portal version to render. Currently only v4 is supported and is the default. All other versions are deprecated and will automatically be set to v4.
    connectionPortalVersion: str

class SnapTradeLoginUserRequestBody(RequiredSnapTradeLoginUserRequestBody, OptionalSnapTradeLoginUserRequestBody):
    pass
