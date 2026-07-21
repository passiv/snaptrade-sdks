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


class DisableBrokerageAuthorization(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def disable_brokerage_authorization(
        self: "DisableBrokerageAuthorization[CommercialApiKeyAuth]",
        authorization_id: str,
        user_id: str,
        user_secret: str,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def disable_brokerage_authorization(
        self: "DisableBrokerageAuthorization[PersonalApiKeyAuth]",
        authorization_id: str,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(DisableBrokerageAuthorization[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        authorization_id: str,
        user_id: str,
        user_secret: str,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        authorization_id: str,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

