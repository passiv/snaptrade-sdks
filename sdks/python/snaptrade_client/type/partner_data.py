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

from snaptrade_client.type.brokerage import Brokerage

class RequiredPartnerData(TypedDict):
    pass

class OptionalPartnerData(TypedDict, total=False):
    # A short, unique identifier for your company or product.
    slug: str

    # Your company or product name.
    name: str

    # URL to your company or product logo.
    logo_url: str

    # Brokerages that can be accessed by your Client ID.
    allowed_brokerages: typing.List[Brokerage]

    # Whether trading is enabled for your SnapTrade Client ID.
    can_access_trades: bool

    # Whether holdings data is enabled for your SnapTrade Client ID.
    can_access_holdings: bool

    # Whether account historical transactions is enabled for your SnapTrade Client ID.
    can_access_account_history: bool

    # Whether reference data is enabled for your SnapTrade Client ID.
    can_access_reference_data: bool

    # Whether portfolio management is enabled for your SnapTrade Client ID.
    can_access_portfolio_management: bool

    # Whether recent order history is enabled for your SnapTrade Client ID.
    can_access_orders: bool

    # URI to redirect user back to after user is done adding brokerage connections.
    redirect_uri: str

    # WARNING: This property is deprecated
    # Shows if pin is required by users to access connection page. This field has been deprecated.
    pin_required: bool

class PartnerData(RequiredPartnerData, OptionalPartnerData):
    pass
