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


class GetReportingCustomRange(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def get_reporting_custom_range(
        self: "GetReportingCustomRange[CommercialApiKeyAuth]",
        start_date: date,
        end_date: date,
        user_id: str,
        user_secret: str,
        accounts: typing.Optional[str] = None,
        detailed: typing.Optional[bool] = None,
        frequency: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get_reporting_custom_range(
        self: "GetReportingCustomRange[PersonalApiKeyAuth]",
        start_date: date,
        end_date: date,
        accounts: typing.Optional[str] = None,
        detailed: typing.Optional[bool] = None,
        frequency: typing.Optional[str] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForget(GetReportingCustomRange[TAuth]):
    @typing.overload
    def get(
        self: "ApiForget[CommercialApiKeyAuth]",
        start_date: date,
        end_date: date,
        user_id: str,
        user_secret: str,
        accounts: typing.Optional[str] = None,
        detailed: typing.Optional[bool] = None,
        frequency: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def get(
        self: "ApiForget[PersonalApiKeyAuth]",
        start_date: date,
        end_date: date,
        accounts: typing.Optional[str] = None,
        detailed: typing.Optional[bool] = None,
        frequency: typing.Optional[str] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

