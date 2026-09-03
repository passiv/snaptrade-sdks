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


class RequiredBrokerageAuthorizationDataFreshnessMode(TypedDict):
    # Indicates the freshness of the data provided by the institution. `realtime` means the institution provides current data; `delayed` means the institution itself does not allow intra-day data updates. 
    institution: Literal["realtime", "delayed"]

    # Indicates how SnapTrade retrieves data for this connection. `realtime` means SnapTrade retrieves current data from the institution during API calls. `delayed` means SnapTrade serves cached data, either because the customer's plan uses Daily data or because retrieving live data from the institution is too latency-intensive.  When this value is `delayed`, you can request updated data using the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization). 
    snaptrade: Literal["realtime", "delayed"]

class OptionalBrokerageAuthorizationDataFreshnessMode(TypedDict, total=False):
    pass

class BrokerageAuthorizationDataFreshnessMode(RequiredBrokerageAuthorizationDataFreshnessMode, OptionalBrokerageAuthorizationDataFreshnessMode):
    pass
