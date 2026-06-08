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

from snaptrade_client.type.client_order_id_nullable import ClientOrderIDNullable
from snaptrade_client.type.complex_order_leg import ComplexOrderLeg

class RequiredManualTradeFormComplex(TypedDict):
    # The complex order type. - `OCO`: One Cancels the Other — two peer orders. - `OTO`: One Triggers the Other — a trigger order and a conditional order. - `OTOCO`: One Triggers a One Cancels the Other — a trigger order and two peer orders. 
    type: Literal["OCO", "OTO", "OTOCO"]

    # The orders that make up the complex order. Required counts and roles per type: - `OCO`: exactly 2 orders, both `PEER` - `OTO`: exactly 2 orders, one `TRIGGER` and one `CONDITIONAL` - `OTOCO`: exactly 3 orders, one `TRIGGER` and two `PEER` 
    orders: typing.List[ComplexOrderLeg]


class OptionalManualTradeFormComplex(TypedDict, total=False):
    client_order_id: ClientOrderIDNullable

class ManualTradeFormComplex(RequiredManualTradeFormComplex, OptionalManualTradeFormComplex):
    pass
