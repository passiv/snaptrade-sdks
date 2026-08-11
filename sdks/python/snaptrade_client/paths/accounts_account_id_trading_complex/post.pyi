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


class PlaceComplexOrder(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def place_complex_order(
        self: "PlaceComplexOrder[CommercialApiKeyAuth]",
        type: str,
        orders: typing.List[ComplexOrderLeg],
        account_id: str,
        user_id: str,
        user_secret: str,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def place_complex_order(
        self: "PlaceComplexOrder[PersonalApiKeyAuth]",
        type: str,
        orders: typing.List[ComplexOrderLeg],
        account_id: str,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(PlaceComplexOrder[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        type: str,
        orders: typing.List[ComplexOrderLeg],
        account_id: str,
        user_id: str,
        user_secret: str,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        type: str,
        orders: typing.List[ComplexOrderLeg],
        account_id: str,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

