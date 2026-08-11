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
from snaptrade_client.auth import CommercialApiKeyAuth

TAuth = typing.TypeVar("TAuth", bound=AuthMode)


class BaseApi(api_client.Api):
    pass


class ResetSnapTradeUserSecret(BaseApi, typing.Generic[TAuth]):
    def reset_snap_trade_user_secret(
        self: "ResetSnapTradeUserSecret[CommercialApiKeyAuth]",
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(ResetSnapTradeUserSecret[TAuth]):
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        validate: bool = ...,
    ) -> typing.Any: ...

