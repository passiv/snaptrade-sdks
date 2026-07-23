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


class GetAccountActivities(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def get_account_activities(
        self: "GetAccountActivities[CommercialApiKeyAuth]",
        account_id: str,
        user_id: str,
        user_secret: str,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get_account_activities(
        self: "GetAccountActivities[PersonalApiKeyAuth]",
        account_id: str,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForget(GetAccountActivities[TAuth]):
    @typing.overload
    def get(
        self: "ApiForget[CommercialApiKeyAuth]",
        account_id: str,
        user_id: str,
        user_secret: str,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get(
        self: "ApiForget[PersonalApiKeyAuth]",
        account_id: str,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

