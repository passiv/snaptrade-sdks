# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

import typing
import typing_extensions
from snaptrade_client import api_client
from snaptrade_client.auth import AuthMode

TAuth = typing.TypeVar("TAuth", bound=AuthMode)


class BaseApi(api_client.Api):
    pass


class Check(BaseApi, typing.Generic[TAuth]):
    def check(
        self,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForget(Check[TAuth]):
    def get(
        self,
        validate: bool = ...,
    ) -> typing.Any: ...

