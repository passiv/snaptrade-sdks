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


class RequiredUserAumPercentileObjectNullable(TypedDict):
    pass

class OptionalUserAumPercentileObjectNullable(TypedDict, total=False):
    # The band the user falls into. Deliberately coarse: the underlying totals are only as current as each brokerage's last sync, so an exact percentile would imply more precision than the data supports. 
    bucket: Literal["TOP_1_PERCENT", "TOP_5_PERCENT", "TOP_10_PERCENT", "TOP_25_PERCENT", "TOP_50_PERCENT", "BOTTOM_50_PERCENT"]

    # The percent of the cohort the user's assets are strictly above, 0-100. Integer by design: the distribution is stored as 101 interpolated cutoffs, so a fractional percentile would not mean anything.  Prefer `bucket` for anything you display prominently. The distribution is recomputed monthly, so a user's percentile can move a few points on its own as other users' holdings refresh, while their bucket stays put. Users tied on the same total all receive the lowest percentile that total spans. 
    percentile: int

    # Number of your users the distribution was computed from.
    cohort_size: int

    # The month whose distribution produced this placement.
    as_of: date

    # The currency the distribution was computed in.
    currency: str

class UserAumPercentileObjectNullable(RequiredUserAumPercentileObjectNullable, OptionalUserAumPercentileObjectNullable):
    pass
