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

from snaptrade_client.type.account_order_group_nullable import AccountOrderGroupNullable
from snaptrade_client.type.account_order_leg import AccountOrderLeg
from snaptrade_client.type.account_order_record_status_v2 import AccountOrderRecordStatusV2
from snaptrade_client.type.order_type_configuration import OrderTypeConfiguration

class RequiredAccountOrder(TypedDict):
    # Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    brokerage_order_id: str

    status: AccountOrderRecordStatusV2

    order_type: OrderTypeConfiguration

    # How long the order remains active. Brokerage values that cannot be mapped to this list are returned as `OTHER`.   - `DAY` - valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled.   - `FOK` - Fill Or Kill.   - `IOC` - Immediate Or Cancel.   - `GTD` - Good Til Date; see `expiry_date`.   - `MOO` - Market On Open.   - `EHP` - Extended Hours P.M.   - `EHA` - Extended Hours A.M.   - `OTHER` - the brokerage reported a value outside this list. 
    time_in_force: Literal["DAY", "GTC", "FOK", "IOC", "GTD", "MOO", "EHP", "EHA", "OTHER"]

    # Direction of the net order price. CREDIT means cash is received, DEBIT means cash is paid, EVEN means the net price is zero, and UNKNOWN means the direction could not be determined.
    price_effect: Literal["CREDIT", "DEBIT", "EVEN", "UNKNOWN"]

    # The legs that make up the order. Always has at least one entry.
    legs: typing.List[AccountOrderLeg]


class OptionalAccountOrder(TypedDict, total=False):
    # When the order expires, for orders with a `time_in_force` of `GTD`.
    expiry_date: typing.Optional[datetime]

    # ISO-4217 currency code the order prices are denominated in. For crypto pairs this is the quote asset (for example `USDC` for `ETH-USDC`).
    price_currency: typing.Optional[str]

    # Total quantity requested. For multi-leg orders this is the number of spreads, not the sum of leg quantities.
    total_quantity: typing.Optional[str]

    # Quantity filled so far.
    filled_quantity: typing.Optional[str]

    # Quantity canceled.
    canceled_quantity: typing.Optional[str]

    # Quantity still open (not yet filled or canceled).
    open_quantity: typing.Optional[str]

    # Average execution price. Per unit for single-leg orders; net price per spread for multi-leg orders.
    execution_price: typing.Optional[str]

    # The time the order was submitted to the brokerage, when the brokerage reports it.
    time_placed: typing.Optional[datetime]

    # The time the order was last updated at the brokerage, when available.
    time_updated: typing.Optional[datetime]

    # The time the order was executed, when available.
    time_executed: typing.Optional[datetime]

    group: typing.Optional[AccountOrderGroupNullable]

class AccountOrder(RequiredAccountOrder, OptionalAccountOrder):
    pass
