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

from snaptrade_client.type.account_balance_nullable import AccountBalanceNullable
from snaptrade_client.type.cash_restriction import CashRestriction
from snaptrade_client.type.snap_trade_holdings_account_account_id_meta import SnapTradeHoldingsAccountAccountIdMeta

class RequiredSnapTradeHoldingsAccountAccountId(TypedDict):
    pass

class OptionalSnapTradeHoldingsAccountAccountId(TypedDict, total=False):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    id: str

    # Unique identifier for the connection (brokerage authorization). This is the UUID used to reference the connection in SnapTrade.
    brokerage_authorization: str

    # WARNING: This property is deprecated
    # Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it.
    portfolio_group: str

    # A display name for the account. Either assigned by the user or by the financial institution itself. For certain institutions, SnapTrade appends the institution name to the account name for clarity.
    name: typing.Optional[str]

    # The account number assigned by the financial institution.
    number: str

    # The name of the financial institution that holds the account.
    institution_name: str

    balance: typing.Optional[AccountBalanceNullable]

    # WARNING: This property is deprecated
    meta: SnapTradeHoldingsAccountAccountIdMeta

    # WARNING: This property is deprecated
    # This field is deprecated.
    cash_restrictions: typing.List[CashRestriction]

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the financial institution.
    created_date: datetime

class SnapTradeHoldingsAccountAccountId(RequiredSnapTradeHoldingsAccountAccountId, OptionalSnapTradeHoldingsAccountAccountId):
    pass
