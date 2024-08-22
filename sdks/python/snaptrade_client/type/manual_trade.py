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
from snaptrade_client.type.manual_trade_symbol import ManualTradeSymbol
from snaptrade_client.type.order_type_strict import OrderTypeStrict
from snaptrade_client.type.price import Price
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.units_nullable import UnitsNullable

class RequiredManualTrade(TypedDict):
    pass

class OptionalManualTrade(TypedDict, total=False):
    # Unique identifier for the submitted order through SnapTrade.
    id: str

    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    account: str

    order_type: OrderTypeStrict

    time_in_force: TimeInForceStrict

    symbol: ManualTradeSymbol

    action: ActionStrict

    units: UnitsNullable

    price: Price

class ManualTrade(RequiredManualTrade, OptionalManualTrade):
    pass
