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

from snaptrade_client.type.account_order_record_leg_instrument import AccountOrderRecordLegInstrument
from snaptrade_client.type.account_order_record_status_v2_nullable import AccountOrderRecordStatusV2Nullable

class RequiredAccountOrderRecordLeg(TypedDict):
    pass

class OptionalAccountOrderRecordLeg(TypedDict, total=False):
    # Brokerage order identifier for this leg, if available.
    leg_id: typing.Optional[str]

    instrument: AccountOrderRecordLegInstrument

    # The action describes the intent or side of a trade.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_TO_OPEN   - BUY_TO_CLOSE   - SELL_TO_OPEN   - SELL_TO_CLOSE 
    action: str

    # Execution price for this leg, if available.
    execution_price: typing.Optional[typing.Union[int, float]]

    # The total number of shares or contracts associated with this leg. Can be a decimal number for fractional shares.
    total_quantity: typing.Optional[str]

    # The number of shares or contracts that have been canceled for this leg.
    canceled_quantity: typing.Optional[str]

    # The number of shares or contracts that have been filled for this leg.
    filled_quantity: typing.Optional[str]

    status: typing.Optional[AccountOrderRecordStatusV2Nullable]

class AccountOrderRecordLeg(RequiredAccountOrderRecordLeg, OptionalAccountOrderRecordLeg):
    pass
