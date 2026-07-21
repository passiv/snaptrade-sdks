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


class GetPartnerInfo(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def get_partner_info(
        self: "GetPartnerInfo[CommercialApiKeyAuth]",
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get_partner_info(
        self: "GetPartnerInfo[PersonalApiKeyAuth]",
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForget(GetPartnerInfo[TAuth]):
    @typing.overload
    def get(
        self: "ApiForget[CommercialApiKeyAuth]",
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get(
        self: "ApiForget[PersonalApiKeyAuth]",
        validate: bool = ...,
    ) -> typing.Any: ...

