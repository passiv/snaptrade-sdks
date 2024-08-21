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

from snaptrade_client.type.brokerage_exchanges import BrokerageExchanges
from snaptrade_client.type.brokerage_type import BrokerageType

class RequiredBrokerage(TypedDict):
    pass

class OptionalBrokerage(TypedDict, total=False):
    # Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade.
    id: str

    # A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
    slug: str

    # Full name of the brokerage.
    name: str

    # A display-friendly name of the brokerage.
    display_name: str

    # A brief description of the brokerage.
    description: str

    # URL to the brokerage's logo.
    aws_s3_logo_url: str

    # URL to the brokerage's logo in square format.
    aws_s3_square_logo_url: typing.Optional[str]

    # WARNING: This property is deprecated
    # This field is deprecated.
    open_url: typing.Optional[str]

    # URL to the brokerage's website.
    url: str

    # Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections.
    enabled: bool

    # Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections.
    maintenance_mode: bool

    # WARNING: This property is deprecated
    # This field is deprecated. Please contact us if you have a valid use case for it.
    allows_fractional_units: typing.Optional[bool]

    # Whether the brokerage allows trading through SnapTrade.
    allows_trading: typing.Optional[bool]

    # WARNING: This property is deprecated
    # This field is deprecated. Please contact us if you have a valid use case for it.
    has_reporting: typing.Optional[bool]

    # WARNING: This property is deprecated
    # This field is deprecated. Please contact us if you have a valid use case for it.
    is_real_time_connection: bool

    brokerage_type: BrokerageType

    # WARNING: This property is deprecated
    exchanges: BrokerageExchanges

class Brokerage(RequiredBrokerage, OptionalBrokerage):
    pass
