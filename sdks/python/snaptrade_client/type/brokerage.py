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

from snaptrade_client.type.brokerage_type import BrokerageType

class RequiredBrokerage(TypedDict):
    pass

class OptionalBrokerage(TypedDict, total=False):
    id: str

    name: str

    display_name: str

    description: str

    aws_s3_logo_url: str

    slug: str

    url: str

    enabled: bool

    maintenance_mode: bool

    allows_fractional_units: typing.Optional[bool]

    allows_trading: typing.Optional[bool]

    has_reporting: typing.Optional[bool]

    is_real_time_connection: bool

    allows_trading_through_snaptrade_api: typing.Optional[bool]

    is_scraping_integration: bool

    default_currency: str

    brokerage_type: BrokerageType

    # List of exchange ID supported by brokerage
    exchanges: typing.List[typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

class Brokerage(RequiredBrokerage, OptionalBrokerage):
    pass
