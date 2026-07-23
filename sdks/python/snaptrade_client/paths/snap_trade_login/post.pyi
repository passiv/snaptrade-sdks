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


class LoginSnapTradeUser(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def login_snap_trade_user(
        self: "LoginSnapTradeUser[CommercialApiKeyAuth]",
        user_id: str,
        user_secret: str,
        broker: typing.Optional[str] = None,
        immediate_redirect: typing.Optional[bool] = None,
        custom_redirect: typing.Optional[str] = None,
        reconnect: typing.Optional[str] = None,
        connection_type: typing.Optional[str] = None,
        show_close_button: typing.Optional[bool] = None,
        dark_mode: typing.Optional[bool] = None,
        connection_portal_version: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def login_snap_trade_user(
        self: "LoginSnapTradeUser[PersonalApiKeyAuth]",
        broker: typing.Optional[str] = None,
        immediate_redirect: typing.Optional[bool] = None,
        custom_redirect: typing.Optional[str] = None,
        reconnect: typing.Optional[str] = None,
        connection_type: typing.Optional[str] = None,
        show_close_button: typing.Optional[bool] = None,
        dark_mode: typing.Optional[bool] = None,
        connection_portal_version: typing.Optional[str] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(LoginSnapTradeUser[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        user_id: str,
        user_secret: str,
        broker: typing.Optional[str] = None,
        immediate_redirect: typing.Optional[bool] = None,
        custom_redirect: typing.Optional[str] = None,
        reconnect: typing.Optional[str] = None,
        connection_type: typing.Optional[str] = None,
        show_close_button: typing.Optional[bool] = None,
        dark_mode: typing.Optional[bool] = None,
        connection_portal_version: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        broker: typing.Optional[str] = None,
        immediate_redirect: typing.Optional[bool] = None,
        custom_redirect: typing.Optional[str] = None,
        reconnect: typing.Optional[str] = None,
        connection_type: typing.Optional[str] = None,
        show_close_button: typing.Optional[bool] = None,
        dark_mode: typing.Optional[bool] = None,
        connection_portal_version: typing.Optional[str] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

