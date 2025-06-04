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

from snaptrade_client.type.account_order_record_status import AccountOrderRecordStatus
from snaptrade_client.type.child_brokerage_order_ids_nullable import ChildBrokerageOrderIDsNullable
from snaptrade_client.type.currency import Currency
from snaptrade_client.type.options_symbol import OptionsSymbol
from snaptrade_client.type.universal_symbol import UniversalSymbol

class RequiredAccountOrderRecord(TypedDict):
    pass

class OptionalAccountOrderRecord(TypedDict, total=False):
    # Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    brokerage_order_id: str

    status: AccountOrderRecordStatus

    # Contains information about the security that the order is for. This field is only present for stock/ETF/crypto/mutual fund orders. For option orders, this field will be null and the `option_symbol` field will be populated.
    universal_symbol: UniversalSymbol

    # Contains information about the option contract that the order is for. This field is only present for option orders. For stock/ETF/crypto/mutual fund orders, this field will be null and the `universal_symbol` field will be populated.
    option_symbol: OptionsSymbol

    # Quote cryptocurrency. This field is only present for cryptocurrency pair orders with a cryptocurrency as quote.
    quote_universal_symbol: UniversalSymbol

    # Quote currency. This field is only present for cryptocurrency pair orders with a fiat currency as quote.
    quote_currency: Currency

    # The action describes the intent or side of a trade. This is usually `BUY` or `SELL` but can include other potential values like the following depending on the specific brokerage.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_OPEN   - BUY_CLOSE   - SELL_OPEN   - SELL_CLOSE 
    action: str

    # The total number of shares or contracts of the order. This should be the sum of the filled, canceled, and open quantities. Can be a decimal number for fractional shares.
    total_quantity: typing.Optional[typing.Union[int, float]]

    # The number of shares or contracts that are still open (waiting for execution). Can be a decimal number for fractional shares.
    open_quantity: typing.Optional[typing.Union[int, float]]

    # The number of shares or contracts that have been canceled. Can be a decimal number for fractional shares.
    canceled_quantity: typing.Optional[typing.Union[int, float]]

    # The number of shares or contracts that have been filled. Can be a decimal number for fractional shares.
    filled_quantity: typing.Optional[typing.Union[int, float]]

    # The price at which the order was executed.
    execution_price: typing.Optional[typing.Union[int, float]]

    # The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to `Limit` and `StopLimit` orders.
    limit_price: typing.Optional[typing.Union[int, float]]

    # The stop price is the price at which a stop order is triggered. Should only apply to `Stop` and `StopLimit` orders.
    stop_price: typing.Optional[typing.Union[int, float]]

    # The type of order placed. The most common values are `Market`, `Limit`, `Stop`, and `StopLimit`. We try our best to map brokerage order types to these values. When mapping fails, we will return the brokerage's order type value.
    order_type: typing.Optional[str]

    # The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage's time in force value.   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date.   - `MOO` - Market On Open. The order is to be executed at the day's opening price.   - `EHP` - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close. 
    time_in_force: str

    # The time the order was placed. This is the time the order was submitted to the brokerage.
    time_placed: datetime

    # The time the order was last updated in the brokerage system. This value is not always available from the brokerage.
    time_updated: typing.Optional[datetime]

    # The time the order was executed in the brokerage system. This value is not always available from the brokerage.
    time_executed: typing.Optional[datetime]

    # The time the order expires. This value is not always available from the brokerage.
    expiry_date: typing.Optional[datetime]

    # WARNING: This property is deprecated
    # A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change.
    symbol: str

    child_brokerage_order_ids: typing.Optional[ChildBrokerageOrderIDsNullable]

class AccountOrderRecord(RequiredAccountOrderRecord, OptionalAccountOrderRecord):
    pass
