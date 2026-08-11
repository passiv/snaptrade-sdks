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


class ListUserAccounts(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def list_user_accounts(
        self: "ListUserAccounts[CommercialApiKeyAuth]",
        user_id: str,
        user_secret: str,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def list_user_accounts(
        self: "ListUserAccounts[PersonalApiKeyAuth]",
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForget(ListUserAccounts[TAuth]):
    @typing.overload
    def get(
        self: "ApiForget[CommercialApiKeyAuth]",
        user_id: str,
        user_secret: str,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get(
        self: "ApiForget[PersonalApiKeyAuth]",
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

