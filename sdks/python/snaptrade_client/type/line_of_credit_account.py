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

from snaptrade_client.type.line_of_credit_account_minimum_payment_amount import LineOfCreditAccountMinimumPaymentAmount
from snaptrade_client.type.line_of_credit_account_net_value import LineOfCreditAccountNetValue
from snaptrade_client.type.line_of_credit_account_sync_status import LineOfCreditAccountSyncStatus

class RequiredLineOfCreditAccount(TypedDict):
    # Discriminator for the account kind.
    kind: Literal["line_of_credit"]

    # Unique identifier for the connected institution account. This is the UUID used to reference the account in SnapTrade.
    id: str

    # Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade.
    connection_id: str

    # The account number assigned by the institution, masked to the last 4 characters (e.g. `****1881`).
    masked_account_number: str

    sync_status: LineOfCreditAccountSyncStatus


class OptionalLineOfCreditAccount(TypedDict, total=False):
    # A display name for the account. Either assigned by the user or by the institution itself.
    display_name: typing.Optional[str]

    # A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same institution account across multiple connections.
    institution_account_id: typing.Optional[str]

    # Unique identifier for the institution that holds the account.
    institution_id: str

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the institution. Only populated for institutions that expose this data; `null` for all other institutions.
    opening_date: typing.Optional[datetime]

    # The account type as provided by the institution.
    raw_type: typing.Optional[str]

    net_value: typing.Optional[LineOfCreditAccountNetValue]

    minimum_payment_amount: typing.Optional[LineOfCreditAccountMinimumPaymentAmount]

class LineOfCreditAccount(RequiredLineOfCreditAccount, OptionalLineOfCreditAccount):
    pass
