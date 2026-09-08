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

from snaptrade_client.type.account_order_record_status import AccountOrderRecordStatus
from snaptrade_client.type.child_brokerage_order_ids_nullable import ChildBrokerageOrderIDsNullable
from snaptrade_client.type.currency_nullable import CurrencyNullable
from snaptrade_client.type.options_symbol_nullable import OptionsSymbolNullable
from snaptrade_client.type.trailing_stop_nullable import TrailingStopNullable
from snaptrade_client.type.universal_symbol_nullable import UniversalSymbolNullable

class RequiredAccountOrderRecordNullable(TypedDict):
    pass

class OptionalAccountOrderRecordNullable(TypedDict, total=False):
    # Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    brokerage_order_id: str

    # The brokerage-assigned identifier that links all orders within a complex order (OCO, OTO, OTOCO) together. Null for non-complex orders or when the brokerage does not return a group identifier. 
    brokerage_group_order_id: typing.Optional[str]

    # The role of this order within a complex order group (OCO, OTO, OTOCO). Null for non-complex orders. 
    order_role: typing.Optional[Literal["TRIGGER", "CONDITIONAL", "PEER"]]

    status: AccountOrderRecordStatus

    universal_symbol: typing.Optional[UniversalSymbolNullable]

    option_symbol: typing.Optional[OptionsSymbolNullable]

    quote_universal_symbol: typing.Optional[UniversalSymbolNullable]

    quote_currency: typing.Optional[CurrencyNullable]

    # The action describes the intent or side of a trade. This is usually `BUY` or `SELL` but can include other potential values like the following depending on the specific brokerage.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_OPEN   - BUY_CLOSE   - SELL_OPEN   - SELL_CLOSE 
    action: str

    # The total number of shares or contracts of the order. This should be the sum of the filled, canceled, and open quantities. Can be a decimal number for fractional shares.
    total_quantity: typing.Optional[str]

    # The number of shares or contracts that are still open (waiting for execution). Can be a decimal number for fractional shares.
    open_quantity: typing.Optional[str]

    # The number of shares or contracts that have been canceled. Can be a decimal number for fractional shares.
    canceled_quantity: typing.Optional[str]

    # The number of shares or contracts that have been filled. Can be a decimal number for fractional shares.
    filled_quantity: typing.Optional[str]

    # The price at which the order was executed. For option orders, this represents the price per share.
    execution_price: typing.Optional[str]

    # The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to `Limit` and `StopLimit` orders. For option orders, this represents the price per share.
    limit_price: typing.Optional[str]

    # The stop price is the price at which a stop order is triggered. Should only apply to `Stop` and `StopLimit` orders. For option orders, this represents the price per share.
    stop_price: typing.Optional[str]

    trailing_stop: typing.Optional[TrailingStopNullable]

    # The type of order placed. The most common values are `Market`, `Limit`, `Stop`, and `StopLimit`. We try our best to map brokerage order types to these values. When mapping fails, we will return the brokerage's order type value.
    order_type: typing.Optional[str]

    # The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage's time in force value.   - `Day` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date.   - `MOO` - Market On Open. The order is to be executed at the day's opening price.   - `EHP` - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close. 
    time_in_force: str

    # The time the order was placed. This is the time the order was submitted to the brokerage.
    time_placed: datetime

    # The time the order was last updated in the brokerage system. This value is not always available from the brokerage.
    time_updated: typing.Optional[datetime]

    # The time the order was executed in the brokerage system. This value is not always available from the brokerage.
    time_executed: typing.Optional[datetime]

    # The time the order expires. This value is not always available from the brokerage.
    expiry_date: typing.Optional[datetime]

    # WARNING: This property is deprecated
    # A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change.
    symbol: str

    child_brokerage_order_ids: typing.Optional[ChildBrokerageOrderIDsNullable]

class AccountOrderRecordNullable(RequiredAccountOrderRecordNullable, OptionalAccountOrderRecordNullable):
    pass
