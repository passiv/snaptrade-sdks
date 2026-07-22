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


class PlaceForceOrder(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def place_force_order(
        self: "PlaceForceOrder[CommercialApiKeyAuth]",
        account_id: str,
        action: ActionStrictWithOptions,
        order_type: OrderTypeStrict,
        time_in_force: ManualTradePlaceTimeInForceStrict,
        user_id: str,
        user_secret: str,
        universal_symbol_id: typing.Optional[UniversalSymbolIDNullable] = None,
        symbol: typing.Optional[typing.Optional[str]] = None,
        trading_session: typing.Optional[TradingSession] = None,
        expiry_date: typing.Optional[typing.Optional[datetime]] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[float] = None,
        notional_value: typing.Optional[NotionalValueNullable] = None,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def place_force_order(
        self: "PlaceForceOrder[PersonalApiKeyAuth]",
        account_id: str,
        action: ActionStrictWithOptions,
        order_type: OrderTypeStrict,
        time_in_force: ManualTradePlaceTimeInForceStrict,
        universal_symbol_id: typing.Optional[UniversalSymbolIDNullable] = None,
        symbol: typing.Optional[typing.Optional[str]] = None,
        trading_session: typing.Optional[TradingSession] = None,
        expiry_date: typing.Optional[typing.Optional[datetime]] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[float] = None,
        notional_value: typing.Optional[NotionalValueNullable] = None,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(PlaceForceOrder[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        account_id: str,
        action: ActionStrictWithOptions,
        order_type: OrderTypeStrict,
        time_in_force: ManualTradePlaceTimeInForceStrict,
        user_id: str,
        user_secret: str,
        universal_symbol_id: typing.Optional[UniversalSymbolIDNullable] = None,
        symbol: typing.Optional[typing.Optional[str]] = None,
        trading_session: typing.Optional[TradingSession] = None,
        expiry_date: typing.Optional[typing.Optional[datetime]] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[float] = None,
        notional_value: typing.Optional[NotionalValueNullable] = None,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        account_id: str,
        action: ActionStrictWithOptions,
        order_type: OrderTypeStrict,
        time_in_force: ManualTradePlaceTimeInForceStrict,
        universal_symbol_id: typing.Optional[UniversalSymbolIDNullable] = None,
        symbol: typing.Optional[typing.Optional[str]] = None,
        trading_session: typing.Optional[TradingSession] = None,
        expiry_date: typing.Optional[typing.Optional[datetime]] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[float] = None,
        notional_value: typing.Optional[NotionalValueNullable] = None,
        client_order_id: typing.Optional[ClientOrderIDNullable] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

