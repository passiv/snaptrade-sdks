# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

import typing
from snaptrade_client import api_client
from snaptrade_client.auth import AuthMode

TAuth = typing.TypeVar("TAuth", bound=AuthMode)


class BaseApi(api_client.Api):
    pass


class GetUserAccountPositions(BaseApi, typing.Generic[TAuth]):
    def get_user_account_positions(
        self,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
    ) -> typing.Any: ...

    async def aget_user_account_positions(
        self,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        **kwargs: typing.Any,
    ) -> typing.Any: ...


class ApiForget(BaseApi, typing.Generic[TAuth]):
    def get(
        self,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
    ) -> typing.Any: ...

    async def aget(
        self,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        **kwargs: typing.Any,
    ) -> typing.Any: ...
