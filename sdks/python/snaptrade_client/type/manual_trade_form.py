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
from snaptrade_client.type.price import Price
from snaptrade_client.type.stop_price import StopPrice
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.units_nullable import UnitsNullable

class RequiredManualTradeForm(TypedDict):
    pass

class OptionalManualTradeForm(TypedDict, total=False):
    account_id: str

    action: ActionStrict

    order_type: OrderTypeStrict

    price: Price

    stop: StopPrice

    time_in_force: TimeInForceStrict

    units: UnitsNullable

    universal_symbol_id: str

    notional_value: typing.Optional[NotionalValueNullable]

class ManualTradeForm(RequiredManualTradeForm, OptionalManualTradeForm):
    pass
