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
from snaptrade_client.type.notional_value_nullable import NotionalValueNullable
from snaptrade_client.type.order_type_strict import OrderTypeStrict
from snaptrade_client.type.stop_loss_nullable import StopLossNullable
from snaptrade_client.type.take_profit_nullable import TakeProfitNullable
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.universal_symbol_id_nullable import UniversalSymbolIDNullable

class RequiredManualTradeFormWithOptions(TypedDict):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    account_id: str

    action: ActionStrictWithOptions

    order_type: OrderTypeStrict

    time_in_force: TimeInForceStrict


class OptionalManualTradeFormWithOptions(TypedDict, total=False):
    # The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.
    universal_symbol_id: UniversalSymbolIDNullable

    # The security's trading ticker symbol. This currently only support Options symbols in the 21 character OCC format. For example \"AAPL  131124C00240000\" represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
    symbol: typing.Optional[str]

    # The limit price for `Limit` and `StopLimit` orders.
    price: typing.Optional[typing.Union[int, float]]

    # The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    stop: typing.Optional[typing.Union[int, float]]

    # For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
    units: float

    notional_value: typing.Optional[NotionalValueNullable]

    # The class of order intended to be placed. Defaults to SIMPLE for regular, one legged trades. Set to BRACKET if looking to place a bracket (One-triggers-a-one-cancels-the-other) order, then specify take profit and stop loss conditions. Bracket orders currently only supported on Alpaca, Tradier, and Tradestation, contact us for more details
    order_class: typing.Optional[str]

    stop_loss: typing.Optional[StopLossNullable]

    take_profit: typing.Optional[TakeProfitNullable]

class ManualTradeFormWithOptions(RequiredManualTradeFormWithOptions, OptionalManualTradeFormWithOptions):
    pass
