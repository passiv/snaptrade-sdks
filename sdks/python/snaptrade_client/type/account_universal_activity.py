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

from snaptrade_client.type.currency import Currency
from snaptrade_client.type.options_symbol_nullable import OptionsSymbolNullable
from snaptrade_client.type.symbol_nullable import SymbolNullable

class RequiredAccountUniversalActivity(TypedDict):
    pass

class OptionalAccountUniversalActivity(TypedDict, total=False):
    # Unique identifier for the transaction. This is the ID used to reference the transaction in SnapTrade.  Please note that this ID _can_ change if the transaction is deleted and re-added. Under normal circumstances, SnapTrade does not delete transactions. The only time this would happen is if SnapTrade re-fetches and reprocesses the data from the brokerage, which is rare. If you require a stable ID, please let us know and we can work with you to provide one. 
    id: str

    symbol: typing.Optional[SymbolNullable]

    option_symbol: typing.Optional[OptionsSymbolNullable]

    # The price of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions.
    price: typing.Union[int, float]

    # The number of units of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions.
    units: typing.Union[int, float]

    # The amount of the transaction denominated in `currency`. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount.
    amount: typing.Optional[typing.Union[int, float]]

    # The currency in which the transaction `price` and `amount` is denominated.
    currency: Currency

    # A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event. `option_symbol` contains the related option contract info.   - `OPTIONASSIGNMENT` - Option assignment event. `option_symbol` contains the related option contract info.   - `OPTIONEXERCISE` - Option exercise event. `option_symbol` contains the related option contract info. 
    type: str

    # If an option `BUY` or `SELL` transaction, this further specifies the type of action. The possible values are: - BUY_TO_OPEN - BUY_TO_CLOSE - SELL_TO_OPEN - SELL_TO_CLOSE 
    option_type: str

    # A human-readable description of the transaction. This is usually the brokerage's description of the transaction.
    description: str

    # The recorded time for the transaction. The granularity of this timestamp depends on the brokerage. Some brokerages provide the exact time of the transaction, while others provide only the date. Please check the [integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=6fab8012ade6441fa0c6d9af9c55ce3a) for the specific brokerage to see the granularity of the timestamps. Note that even though the field is named `trade_date`, it can represent any type of transaction, not just trades.
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
