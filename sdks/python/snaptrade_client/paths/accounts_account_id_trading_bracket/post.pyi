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


class PlaceBracketOrder(BaseApi, typing.Generic[TAuth]):
    @typing.overload
    def place_bracket_order(
        self: "PlaceBracketOrder[CommercialApiKeyAuth]",
        action: ActionStrictWithOptions,
        instrument: TradingInstrument,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        stop_loss: StopLoss,
        take_profit: TakeProfit,
        account_id: str,
        user_id: str,
        user_secret: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def place_bracket_order(
        self: "PlaceBracketOrder[PersonalApiKeyAuth]",
        action: ActionStrictWithOptions,
        instrument: TradingInstrument,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        stop_loss: StopLoss,
        take_profit: TakeProfit,
        account_id: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...


class ApiForpost(PlaceBracketOrder[TAuth]):
    @typing.overload
    def post(
        self: "ApiForpost[CommercialApiKeyAuth]",
        action: ActionStrictWithOptions,
        instrument: TradingInstrument,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        stop_loss: StopLoss,
        take_profit: TakeProfit,
        account_id: str,
        user_id: str,
        user_secret: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...
    @typing.overload
    def post(
        self: "ApiForpost[PersonalApiKeyAuth]",
        action: ActionStrictWithOptions,
        instrument: TradingInstrument,
        order_type: OrderTypeStrict,
        time_in_force: TimeInForceStrict,
        stop_loss: StopLoss,
        take_profit: TakeProfit,
        account_id: str,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        user_id: typing.Optional[typing_extensions.Never] = None,
        user_secret: typing.Optional[typing_extensions.Never] = None,
        query_params: typing.Optional[dict] = ...,
        header_params: typing.Optional[dict] = ...,
        path_params: typing.Optional[dict] = ...,
        validate: bool = ...,
    ) -> typing.Any: ...

