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

from snaptrade_client.type.currency import Currency

class RequiredBalance(TypedDict):
    pass

class OptionalBalance(TypedDict, total=False):
    # The currency of the balance. This applies to both `cash` and `buying_power`.
    currency: Currency

    # The amount of available cash in the account denominated in the currency of the `currency` field.
    cash: typing.Optional[typing.Union[int, float]]

    # Buying power only applies to margin accounts. For non-margin accounts, buying power should be the same as cash. Please note that this field is not always available for all brokerages.
    buying_power: typing.Optional[typing.Union[int, float]]

class Balance(RequiredBalance, OptionalBalance):
    pass
