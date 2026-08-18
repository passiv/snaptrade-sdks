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

from snaptrade_client.type.connection_account_sync_status import ConnectionAccountSyncStatus
from snaptrade_client.type.investment_account_market_value import InvestmentAccountMarketValue

class RequiredInvestmentAccount(TypedDict):
    # Discriminator for the account kind.
    kind: Literal["investment"]

    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    id: str

    # Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade.
    connection_id: str

    # The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons.
    number: str

    sync_status: ConnectionAccountSyncStatus

    # Indicates whether the account is a paper (simulated) trading account.
    is_paper: bool


class OptionalInvestmentAccount(TypedDict, total=False):
    # A display name for the account. Either assigned by the user or by the brokerage itself.
    display_name: typing.Optional[str]

    # A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections.
    institution_account_id: typing.Optional[str]

    # Unique identifier for the institution (brokerage) that holds the account.
    institution_id: str

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); `null` for all other brokerages.
    opening_date: typing.Optional[datetime]

    # The account type as provided by the brokerage.
    raw_type: typing.Optional[str]

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); `null` for all other brokerages.
    funding_date: typing.Optional[datetime]

    market_value: typing.Optional[InvestmentAccountMarketValue]

class InvestmentAccount(RequiredInvestmentAccount, OptionalInvestmentAccount):
    pass
