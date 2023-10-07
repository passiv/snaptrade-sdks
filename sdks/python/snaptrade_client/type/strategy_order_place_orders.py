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

from snaptrade_client.type.strategy_order_place_orders_item import StrategyOrderPlaceOrdersItem
from snaptrade_client.type.strategy_order_place_orders_item_legs import StrategyOrderPlaceOrdersItemLegs

StrategyOrderPlaceOrders = typing.List[StrategyOrderPlaceOrdersItem]
