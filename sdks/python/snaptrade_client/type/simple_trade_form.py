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

from snaptrade_client.type.client_order_id import ClientOrderID
from snaptrade_client.type.simple_trade_decimal import SimpleTradeDecimal
from snaptrade_client.type.simple_trade_leg import SimpleTradeLeg

class RequiredSimpleTradeForm(TypedDict):
    order_type: Literal["limit", "market", "stop", "stop_limit"]

    # Order duration, subject to brokerage and execution-path support. gtd requires expiry_date and a non-market single-leg equity/option order. Existing single-leg option routing does not support ioc. Futures and multi-leg orders do not support gtd through this endpoint.
    time_in_force: Literal["day", "gtc", "gtd", "fok", "ioc"]

    # Legs of one brokerage order. Use equity/option legs or future/future_option legs, without mixing the two families. Brokerage strategy and leg-count limits apply.
    legs: typing.List[SimpleTradeLeg]


class OptionalSimpleTradeForm(TypedDict, total=False):
    # Required for limit and stop_limit orders, except that multi-leg price_effect even implies zero. Must be omitted or null for market and stop orders. For multi-leg orders this is the net strategy price. Negative prices are accepted only for futures-family orders, subject to brokerage support.
    limit_price: SimpleTradeDecimal

    # Required for stop and stop_limit orders. Must be omitted or null for market and limit orders. Must be positive for equity/option orders; futures-family trigger prices are subject to brokerage support.
    stop_price: SimpleTradeDecimal

    # Only applicable to multi-leg limit and stop_limit orders. Requirements and supported values depend on the brokerage; tastytrade requires credit or debit. even implies a zero limit_price, which may be omitted and must be zero if supplied. Single-leg price effects are derived from the action.
    price_effect: typing.Optional[Literal["credit", "debit", "even"]]

    # Optional canonical UUID, forwarded where the existing execution path supports it and for tastytrade futures orders. Requires the existing client-order-ID enablement; when disabled the value is ignored. Brokerage behavior on duplicates varies; SnapTrade does not enforce uniqueness. Tastytrade uses this as external-identifier for correlation and does not deduplicate submissions.
    client_order_id: ClientOrderID

    # ISO 8601 expiry timestamp, required for gtd and invalid with other durations. A missing timezone is treated as UTC. Supported only through existing single-leg Public and Sandbox execution paths.
    expiry_date: typing.Optional[datetime]

    # Positive order value, supported only for a single-equity market order on eligible brokerages and partners. Mutually exclusive with leg units. Omit or set units to null when supplied.
    notional_value: SimpleTradeDecimal

    # extended uses existing single-leg equity/option brokerage support and requires extended-hours enablement. Futures and multi-leg orders only accept regular.
    trading_session: Literal["regular", "extended"]

class SimpleTradeForm(RequiredSimpleTradeForm, OptionalSimpleTradeForm):
    pass
