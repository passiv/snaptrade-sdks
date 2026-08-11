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


class GetOptionImpact(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def get_option_impact(
        self: "GetOptionImpact[CommercialApiKeyAuth]",
        order_type: MlegOrderTypeStrict,
        time_in_force: TimeInForceStrict,
        legs: typing.List[MlegLeg],
        account_id: str,
        user_id: str,
        user_secret: str,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        price_effect: typing.Optional[MlegPriceEffectStrictNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get_option_impact(
        self: "GetOptionImpact[PersonalApiKeyAuth]",
        order_type: MlegOrderTypeStrict,
        time_in_force: TimeInForceStrict,
        legs: typing.List[MlegLeg],
        account_id: str,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        price_effect: typing.Optional[MlegPriceEffectStrictNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(GetOptionImpact[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        order_type: MlegOrderTypeStrict,
        time_in_force: TimeInForceStrict,
        legs: typing.List[MlegLeg],
        account_id: str,
        user_id: str,
        user_secret: str,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        price_effect: typing.Optional[MlegPriceEffectStrictNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        order_type: MlegOrderTypeStrict,
        time_in_force: TimeInForceStrict,
        legs: typing.List[MlegLeg],
        account_id: str,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        price_effect: typing.Optional[MlegPriceEffectStrictNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

