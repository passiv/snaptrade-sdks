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

from snaptrade_client.type.account_order_record_leg import AccountOrderRecordLeg
from snaptrade_client.type.account_order_record_status import AccountOrderRecordStatus

class RequiredAccountOrderRecordV2(TypedDict):
    pass

class OptionalAccountOrderRecordV2(TypedDict, total=False):
    # Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    brokerage_order_id: str

    status: AccountOrderRecordStatus

    # The type of order placed.   - `MARKET`   - `LIMIT`   - `STOP`   - `STOP_LIMIT` 
    order_type: typing.Optional[str]

    # The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage's time in force value.   - `DAY` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date.   - `MOO` - Market On Open. The order is to be executed at the day's opening price.   - `EHP` - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close. 
    time_in_force: str

    # The time the order was placed. This is the time the order was submitted to the brokerage.
    time_placed: datetime

    # The time the order was executed in the brokerage system. This value is not always available from the brokerage.
    time_executed: typing.Optional[datetime]

    # Quote currency code for the order.
    quote_currency: str

    # The price at which the order was executed.
    execution_price: typing.Optional[typing.Union[int, float]]

    # The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to `Limit` and `StopLimit` orders.
    limit_price: typing.Optional[typing.Union[int, float]]

    # The stop price is the price at which a stop order is triggered. Should only apply to `Stop` and `StopLimit` orders.
    stop_price: typing.Optional[typing.Union[int, float]]

    # List of legs that make up the order.
    legs: typing.List[AccountOrderRecordLeg]

class AccountOrderRecordV2(RequiredAccountOrderRecordV2, OptionalAccountOrderRecordV2):
    pass
