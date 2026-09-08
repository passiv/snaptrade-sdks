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

from snaptrade_client.type.action_strict_with_options import ActionStrictWithOptions
from snaptrade_client.type.client_order_id_nullable import ClientOrderIDNullable
from snaptrade_client.type.manual_trade_place_time_in_force_strict import ManualTradePlaceTimeInForceStrict
from snaptrade_client.type.notional_value_nullable import NotionalValueNullable
from snaptrade_client.type.order_type_strict import OrderTypeStrict
from snaptrade_client.type.trading_session import TradingSession
from snaptrade_client.type.units_nullable import UnitsNullable
from snaptrade_client.type.universal_symbol_id_nullable import UniversalSymbolIDNullable

class RequiredManualTradeFormWithOptions(TypedDict):
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    account_id: str

    action: ActionStrictWithOptions

    order_type: OrderTypeStrict

    time_in_force: ManualTradePlaceTimeInForceStrict


class OptionalManualTradeFormWithOptions(TypedDict, total=False):
    # The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.
    universal_symbol_id: UniversalSymbolIDNullable

    # The security's trading ticker symbol. If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
    symbol: typing.Optional[str]

    trading_session: TradingSession

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the order expires. Required when `time_in_force` is `GTD`. Include a timezone offset or `Z` for UTC; if no timezone is provided, UTC is assumed. GTD orders are only available on certain brokerages. Visit https://support.snaptrade.com/brokerages for brokerage support.
    expiry_date: typing.Optional[datetime]

    # The limit price for `Limit` and `StopLimit` orders.
    price: typing.Optional[typing.Union[int, float]]

    # The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    stop: typing.Optional[typing.Union[int, float]]

    # For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
    units: UnitsNullable

    notional_value: typing.Optional[NotionalValueNullable]

    client_order_id: ClientOrderIDNullable

class ManualTradeFormWithOptions(RequiredManualTradeFormWithOptions, OptionalManualTradeFormWithOptions):
    pass
