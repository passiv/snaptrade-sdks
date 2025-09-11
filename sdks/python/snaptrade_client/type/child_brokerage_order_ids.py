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


class RequiredChildBrokerageOrderIDs(TypedDict):
    pass

class OptionalChildBrokerageOrderIDs(TypedDict, total=False):
    # The brokerage order ID for the take profit leg of the bracket order
    take_profit_order_id: str

    # The brokerage order ID for the stop loss leg of the bracket order
    stop_loss_order_id: str

class ChildBrokerageOrderIDs(RequiredChildBrokerageOrderIDs, OptionalChildBrokerageOrderIDs):
    pass
