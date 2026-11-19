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

from snaptrade_client.type.instrument_nullable import InstrumentNullable
from snaptrade_client.type.priced_in_instrument_nullable import PricedInInstrumentNullable

class RequiredActivity(TypedDict):
    # A stable and unique transaction id when available
    transaction_id: typing.Optional[str]

    # A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `BUY_TO_OPEN` - Option bought to open a long position.   - `BUY_TO_CLOSE` - Option bought to close a short position.   - `SELL_TO_OPEN` - Option sold to open a short position.   - `SELL_TO_CLOSE` - Option sold to close a long position.   - `DIVIDEND` - Dividend payout.   - `SUBSTITUTE_DIVIDEND` - Payment in lieu of a dividend.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `TAX` - A tax related fee.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of asset(s) from one account to another.   - `EXTERNAL_ASSET_TRANSFER_IN` - Incoming transfer of an asset from an external account to this account.   - `EXTERNAL_ASSET_TRANSFER_OUT` - Outgoing transfer of an asset from this account to an external account.   - `SPLIT` - A stock share split.   - `ADJUSTMENT` - A one time adjustment of the account's cash balance or shares of an asset 
    type: str

    # Recorded date and time in UTC. Precision depends on what the brokerage supplies.
    date: datetime

    # Brokerage activity description, including an unresolved brokerage symbol's name when available.
    description: str

    instrument: typing.Optional[InstrumentNullable]

    priced_in: typing.Optional[PricedInInstrumentNullable]

    # The amount of the transaction denominated in `priced_in`. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount.
    amount: str

    # The price of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions. For option transactions, this represents the price per share of the option contract.
    price: typing.Optional[str]

    # The number of units of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions. In general, BUYs result in positive units while SELLs result in negative due to the shares leaving the account
    units: str

    # Recorded fee. Some missing brokerage fees are stored as zero.
    fee: str

    # Foreign exchange rate recorded for the transaction, when available.
    fx_rate: typing.Optional[str]

class OptionalActivity(TypedDict, total=False):
    pass

class Activity(RequiredActivity, OptionalActivity):
    pass
