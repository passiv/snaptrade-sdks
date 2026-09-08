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

from snaptrade_client.type.currency_nullable import CurrencyNullable
from snaptrade_client.type.options_symbol_nullable import OptionsSymbolNullable
from snaptrade_client.type.symbol_nullable import SymbolNullable

class RequiredAccountUniversalActivity(TypedDict):
    pass

class OptionalAccountUniversalActivity(TypedDict, total=False):
    # Unique identifier for the transaction. This is the ID used to reference the transaction in SnapTrade.  Please note that this ID _can_ change if the transaction is deleted and re-added. Under normal circumstances, SnapTrade does not delete transactions. The only time this would happen is if SnapTrade re-fetches and reprocesses the data from the brokerage, which is rare. If you require a stable ID, please let us know and we can work with you to provide one. 
    id: str

    symbol: typing.Optional[SymbolNullable]

    currency_universal_symbol: typing.Optional[SymbolNullable]

    option_symbol: typing.Optional[OptionsSymbolNullable]

    # The price of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions. For option transactions, this represents the price per share of the option contract.
    price: typing.Union[int, float]

    # The number of units of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions.
    units: typing.Union[int, float]

    # The amount of the transaction denominated in `currency`. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount.
    amount: typing.Optional[typing.Union[int, float]]

    currency: typing.Optional[CurrencyNullable]

    # A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `SUBSTITUTE_DIVIDEND` - Payment in lieu of a dividend.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `TAX` - A tax related fee.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of asset(s) from one account to another.   - `EXTERNAL_ASSET_TRANSFER_IN` - Incoming transfer of an asset from an external account to this account.   - `EXTERNAL_ASSET_TRANSFER_OUT` - Outgoing transfer of an asset from this account to an external account.   - `SPLIT` - A stock share split.   - `ADJUSTMENT` - A one time adjustment of the account's cash balance or shares of an asset 
    type: str

    # If an option `BUY` or `SELL` transaction, this further specifies the type of action. The possible values are: - BUY_TO_OPEN - BUY_TO_CLOSE - SELL_TO_OPEN - SELL_TO_CLOSE 
    option_type: str

    # A human-readable description of the transaction. This is usually the brokerage's description of the transaction.
    description: str

    # The recorded time for the transaction. The granularity of this timestamp depends on the brokerage. Some brokerages provide the exact time of the transaction, while others provide only the date. Please check the [integrations page](https://support.snaptrade.com/brokerages-table?v=6fab8012ade6441fa0c6d9af9c55ce3a) for the specific brokerage to see the granularity of the timestamps. Note that even though the field is named `trade_date`, it can represent any type of transaction, not just trades.
    trade_date: typing.Optional[datetime]

    # The date on which the transaction is settled.
    settlement_date: datetime

    # Any fee associated with the transaction if provided by the brokerage.
    fee: typing.Union[int, float]

    # The forex conversion rate involved in the transaction if provided by the brokerage. Used in cases where securities of one currency are purchased in a different currency, and the forex conversion is automatic. In those cases, price, amount and fee will be in the top level currency (activity -> currency)
    fx_rate: typing.Optional[typing.Union[int, float]]

    # The institution that the transaction is associated with. This is usually the brokerage name.
    institution: str

    # Reference ID from brokerage used to identify related transactions. For example if an order comprises of several transactions (buy, fee, fx), they can be grouped if they share the same `external_reference_id`
    external_reference_id: typing.Optional[str]

class AccountUniversalActivity(RequiredAccountUniversalActivity, OptionalAccountUniversalActivity):
    pass
