# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING

from snaptrade_client.type.action_strict_with_options import ActionStrictWithOptions
from snaptrade_client.type.client_order_id_nullable import ClientOrderIDNullable
from snaptrade_client.type.manual_trade_place_time_in_force_strict import ManualTradePlaceTimeInForceStrict
from snaptrade_client.type.notional_value_nullable import NotionalValueNullable
from snaptrade_client.type.order_type_strict import OrderTypeStrict
from snaptrade_client.type.trading_session import TradingSession
from snaptrade_client.type.universal_symbol_id_nullable import UniversalSymbolIDNullable

class RequiredManualTradeFormWithOptions(TypedDict):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    account_id: str

    action: ActionStrictWithOptions

    order_type: OrderTypeStrict

    time_in_force: ManualTradePlaceTimeInForceStrict


class OptionalManualTradeFormWithOptions(TypedDict, total=False):
    # The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.
    universal_symbol_id: UniversalSymbolIDNullable

    # The security's trading ticker symbol. If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
    symbol: typing.Optional[str]

    trading_session: TradingSession

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the order expires. Required when `time_in_force` is `GTD`. Include a timezone offset or `Z` for UTC; if no timezone is provided, UTC is assumed. GTD orders are only available on certain brokerages. Visit https://support.snaptrade.com/brokerages for brokerage support.
    expiry_date: typing.Optional[datetime]

    # The limit price for `Limit` and `StopLimit` orders.
    price: typing.Optional[typing.Union[int, float]]

    # The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    stop: typing.Optional[typing.Union[int, float]]

    # For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
    units: float

    notional_value: typing.Optional[NotionalValueNullable]

    client_order_id: ClientOrderIDNullable

class ManualTradeFormWithOptions(RequiredManualTradeFormWithOptions, OptionalManualTradeFormWithOptions):
    pass
