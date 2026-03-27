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


class RequiredOptionQuoteGreeks(TypedDict):
    pass

class OptionalOptionQuoteGreeks(TypedDict, total=False):
    # Delta represents the rate of change between the option's price and a $1 change in the underlying asset's price.
    delta: typing.Union[int, float]

    # Gamma represents the rate of change between an option's delta and the underlying asset's price.
    gamma: typing.Union[int, float]

    # Theta represents the rate of change between the option price and time, or time sensitivity - sometimes known as an option's time decay.
    theta: typing.Union[int, float]

    # Vega represents the rate of change between an option's value and the underlying asset's implied volatility.
    vega: typing.Union[int, float]

class OptionQuoteGreeks(RequiredOptionQuoteGreeks, OptionalOptionQuoteGreeks):
    pass
