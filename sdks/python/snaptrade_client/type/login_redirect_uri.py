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


class RequiredLoginRedirectURI(TypedDict):
    pass

class OptionalLoginRedirectURI(TypedDict, total=False):
    # Connection Portal link to redirect user to connect a brokerage account.
    redirectURI: str

    # ID to identify the connection portal session.
    sessionId: str

class LoginRedirectURI(RequiredLoginRedirectURI, OptionalLoginRedirectURI):
    pass
