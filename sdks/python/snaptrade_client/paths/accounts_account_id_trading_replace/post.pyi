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


class ReplaceOrder(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def replace_order(
        self: "ReplaceOrder[CommercialApiKeyAuth]",
        brokerage_order_id: str,
        action: ActionStrict,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        account_id: str,
        user_id: str,
        user_secret: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        symbol: typing.Optional[str] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[UnitsNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def replace_order(
        self: "ReplaceOrder[PersonalApiKeyAuth]",
        brokerage_order_id: str,
        action: ActionStrict,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        account_id: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        symbol: typing.Optional[str] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[UnitsNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(ReplaceOrder[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        brokerage_order_id: str,
        action: ActionStrict,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        account_id: str,
        user_id: str,
        user_secret: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        symbol: typing.Optional[str] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[UnitsNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        brokerage_order_id: str,
        action: ActionStrict,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        account_id: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        symbol: typing.Optional[str] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[UnitsNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

