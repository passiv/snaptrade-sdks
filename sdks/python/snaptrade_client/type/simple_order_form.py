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
from snaptrade_client.type.trading_instrument import TradingInstrument

class RequiredSimpleOrderForm(TypedDict):
    instrument: TradingInstrument

    side: ActionStrict

    # The type of order to place.
    type: str

    # The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date. 
    time_in_force: str

    # The amount of the base currency to buy or sell.
    amount: str


class OptionalSimpleOrderForm(TypedDict, total=False):
    # The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    limit_price: str

    # The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    stop_price: str

    # Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    post_only: bool

    # The expiration date of the order. Required if the time_in_force is GTD.
    expiration_date: datetime

class SimpleOrderForm(RequiredSimpleOrderForm, OptionalSimpleOrderForm):
    pass
