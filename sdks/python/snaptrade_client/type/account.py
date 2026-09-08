# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING

from snaptrade_client.type.account_balance import AccountBalance
from snaptrade_client.type.account_cash_restrictions import AccountCashRestrictions
from snaptrade_client.type.account_meta import AccountMeta
from snaptrade_client.type.account_sync_status import AccountSyncStatus
from snaptrade_client.type.portfolio_group_id import PortfolioGroupID

class RequiredAccount(TypedDict):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated.
    id: str

    # Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade.
    brokerage_authorization: str

    # A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity.
    name: typing.Optional[str]

    # The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons.
    number: str

    # The name of the brokerage that holds the account.
    institution_name: str

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage.
    created_date: datetime

    sync_status: AccountSyncStatus

    balance: AccountBalance

    # Indicates whether the account is a paper (simulated) trading account.
    is_paper: bool


class OptionalAccount(TypedDict, total=False):
    # A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections.
    institution_account_id: typing.Optional[str]

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); `null` for all other brokerages.
    funding_date: typing.Optional[datetime]

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); `null` for all other brokerages.
    opening_date: typing.Optional[datetime]

    # The current status of the account. Can be either \"open\", \"closed\", \"archived\" or null if the status is unknown or not provided by the brokerage.
    status: typing.Optional[Literal["open", "closed", "archived", "unavailable"]]

    # The account type as provided by the brokerage
    raw_type: typing.Optional[str]

    # The category of the account, normalized across institutions. Returns `null` if the category could not be determined. Use this field to filter out non-investment accounts if your integration only supports trading / holdings flows. See [Filtering Accounts by Category](https://docs.snaptrade.com/docs/filtering-accounts-by-category) for more information. - `INVESTMENT`: A brokerage / investment account (equities, options, crypto, etc.). - `DEPOSIT`: A bank deposit account (checking, savings). - `LOC`: A line of credit account. 
    account_category: typing.Optional[Literal["INVESTMENT", "DEPOSIT", "LOC"]]

    # WARNING: This property is deprecated
    meta: AccountMeta

    # WARNING: This property is deprecated
    portfolio_group: PortfolioGroupID

    # WARNING: This property is deprecated
    cash_restrictions: AccountCashRestrictions

class Account(RequiredAccount, OptionalAccount):
    pass
