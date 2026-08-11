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
from snaptrade_client.auth import PersonalApiKeyAuth

TAuth = typing.TypeVar("TAuth", bound=AuthMode)


class BaseApi(api_client.Api):
    pass


class CancelSubscription(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def cancel_subscription(
        self: "CancelSubscription[CommercialApiKeyAuth]",
        account_id: str,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def cancel_subscription(
        self: "CancelSubscription[PersonalApiKeyAuth]",
        account_id: str,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(CancelSubscription[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        account_id: str,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        account_id: str,
        validate: bool = ...,
    ) -> typing.Any: ...

