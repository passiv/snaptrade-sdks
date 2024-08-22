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

from snaptrade_client.type.action_strict import ActionStrict
from snaptrade_client.type.notional_value_nullable import NotionalValueNullable
from snaptrade_client.type.order_type_strict import OrderTypeStrict
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.units_nullable import UnitsNullable

class RequiredManualTradeForm(TypedDict):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    account_id: str

    action: ActionStrict

    # Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    universal_symbol_id: str

    order_type: OrderTypeStrict

    time_in_force: TimeInForceStrict


class OptionalManualTradeForm(TypedDict, total=False):
    # The limit price for `Limit` and `StopLimit` orders.
    price: typing.Optional[typing.Union[int, float]]

    # The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    stop: typing.Optional[typing.Union[int, float]]

    units: UnitsNullable

    notional_value: typing.Optional[NotionalValueNullable]

class ManualTradeForm(RequiredManualTradeForm, OptionalManualTradeForm):
    pass
