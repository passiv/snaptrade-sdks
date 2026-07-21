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


class PlaceOrder(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def place_order(
        self: "PlaceOrder[CommercialApiKeyAuth]",
        trade_id: str,
        user_id: str,
        user_secret: str,
        wait_to_confirm: typing.Optional[typing.Optional[bool]] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def place_order(
        self: "PlaceOrder[PersonalApiKeyAuth]",
        trade_id: str,
        wait_to_confirm: typing.Optional[typing.Optional[bool]] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(PlaceOrder[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        trade_id: str,
        user_id: str,
        user_secret: str,
        wait_to_confirm: typing.Optional[typing.Optional[bool]] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        trade_id: str,
        wait_to_confirm: typing.Optional[typing.Optional[bool]] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

