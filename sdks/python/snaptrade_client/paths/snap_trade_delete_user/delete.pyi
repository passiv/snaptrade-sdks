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


class DeleteSnapTradeUser(BaseApi, typing.Generic[TAuth]):
    def delete_snap_trade_user(
        self: "DeleteSnapTradeUser[CommercialApiKeyAuth]",
        user_id: str,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiFordelete(DeleteSnapTradeUser[TAuth]):
    def delete(
        self: "ApiFordelete[CommercialApiKeyAuth]",
        user_id: str,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

