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


class GetCurrencyExchangeRatePair(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def get_currency_exchange_rate_pair(
        self: "GetCurrencyExchangeRatePair[CommercialApiKeyAuth]",
        currency_pair: str,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get_currency_exchange_rate_pair(
        self: "GetCurrencyExchangeRatePair[PersonalApiKeyAuth]",
        currency_pair: str,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForget(GetCurrencyExchangeRatePair[TAuth]):
    @typing.overload
    def get(
        self: "ApiForget[CommercialApiKeyAuth]",
        currency_pair: str,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get(
        self: "ApiForget[PersonalApiKeyAuth]",
        currency_pair: str,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

