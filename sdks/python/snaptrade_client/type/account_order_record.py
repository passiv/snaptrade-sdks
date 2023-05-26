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
from typing_extensions import TypedDict, Literal

from snaptrade_client.type.account_order_record_status import AccountOrderRecordStatus
from snaptrade_client.type.action import Action
from snaptrade_client.type.options_symbol import OptionsSymbol
from snaptrade_client.type.order_type import OrderType
from snaptrade_client.type.time_in_force import TimeInForce
from snaptrade_client.type.universal_symbol import UniversalSymbol

class RequiredAccountOrderRecord(TypedDict):
    pass

class OptionalAccountOrderRecord(TypedDict, total=False):
    # Order id returned by brokerage
    brokerage_order_id: str

    status: AccountOrderRecordStatus

    symbol: str

    universal_symbol: UniversalSymbol

    option_symbol: OptionsSymbol

    action: Action

    # Trade Units
    total_quantity: typing.Union[int, float]

    # Trade Units
    open_quantity: typing.Union[int, float]

    # Trade Units
    canceled_quantity: typing.Union[int, float]

    # Trade Units
    filled_quantity: typing.Union[int, float]

    # Trade Price if limit or stop limit order
    execution_price: typing.Union[int, float]

    # Trade Price if limit or stop limit order
    limit_price: typing.Union[int, float]

    # Trade Price if limit or stop limit order
    stop_price: typing.Union[int, float]

    order_type: OrderType

    time_in_force: TimeInForce

    # Time
    time_placed: str

    # Time
    time_updated: str

    # Time
    expiry_date: str

class AccountOrderRecord(RequiredAccountOrderRecord, OptionalAccountOrderRecord):
    pass
