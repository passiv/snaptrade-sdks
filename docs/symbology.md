# Symbology

SnapTrade returns several symbol identifiers because financial instruments are not identified the same way across brokerages, exchanges, asset classes, and market data vendors. A ticker such as `AAPL` is easy to read, but it is not always enough to uniquely identify a position, match an external identifier such as an ISIN or FIGI code, or place a trade at a specific brokerage.

This guide explains the main identifier types and when to use each one.

## Core concepts

### Instrument

An `instrument` is SnapTrade’s normalized representation of a financial instrument in newer account-data endpoints. It is used for positions returned by endpoints such as :api[AccountInformation_getAllAccountPositions].

Common `instrument` fields include:

- `id`: SnapTrade’s UUID for the instrument.
- `kind`: the instrument type, such as `stock`, `etf`, `mutualfund`, `crypto`, `future`, or `option`.
- `symbol`: SnapTrade’s formatted display symbol, such as `AAPL`, `VAB.TO`, or `SPY 220819P00200000`.
- `raw_symbol`: the base symbol without an exchange suffix.
- `description`: a human-readable name.
- `currency`: the currency of the listing or contract.
- `exchange`: the exchange SnapTrade associates with the listing or contract.
- `figi_instrument`: FIGI metadata when available, including `figi_code` and `figi_share_class`.

The exact fields depend on `kind`. For example, an option instrument includes option-specific fields such as `option_type`, `strike_price`, `expiration_date`, and `underlying`.

### Universal symbol

A `universal_symbol` is SnapTrade’s normalized security model used by legacy and current endpoints. It is still present in many responses and request schemas, including endpoints that refer to `universal_symbol_id`.

Common `universal_symbol` fields include:

- `id`: SnapTrade’s UUID for the symbol.
- `symbol`: SnapTrade’s canonical display symbol, such as `AAPL`, `VAB.TO`, or `SPY`.
- `raw_symbol`: the base symbol without an exchange suffix, when applicable.
- `description`: a human-readable security name.
- `currency`: the currency SnapTrade associates with the listing.
- `exchange`: the exchange SnapTrade associates with the listing.
- `type`: the security type.
- `figi_code`: the listing-level FIGI identifier when available.
- `figi_instrument`: FIGI metadata when available.

Do not assume that `instrument` has fully replaced `universal_symbol` everywhere. Use the model returned or required by the endpoint you are calling.

### Canonical symbol

The `symbol` field is SnapTrade’s canonical, human-readable symbol or ticker for an instrument, universal symbol or option symbol. It is useful for display, search, and matching user input. Use it for display and user-facing workflows. Do not use it as your only permanent cross-system identifier.

#### Stocks, ETFs and mutual funds

For stocks, ETFs, and mutual funds, SnapTrade largely follows the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html). For example, Toronto Stock Exchange securities usually have a `.TO` suffix, while NASDAQ and NYSE securities usually do not have a suffix.

#### Options

For options, `symbol` is always the [OCC option symbol](https://en.wikipedia.org/wiki/Option_symbol#The_OCC_Option_Symbol). For example, `SPY   220819P00200000` represents a put option on `SPY` with a strike price of `200` expiring on August 19, 2022.

#### Futures

For futures, `symbol` usually includes the root symbol, month code, and year. For example, `ESZ22` represents the E-mini S&P 500 future expiring in December 2022.

#### Crypto

For cryptocurrencies, `symbol` is not normalized between brokerages. While most brokerages supported on SnapTrade will return widely-accepted symbols for the various cryptocurrencies, such as `BTC` for Bitcoin, Kraken and other exchanges may instead return `XBT` or `XXBT`. These are not normalized in order to make it easier to execute crypto trading. For more details, see :api[Trading_searchCryptocurrencyPairInstruments] and :api[Trading_placeCryptoOrder].

### Option symbol

An `option_symbol` is SnapTrade’s normalized representation of a specific option contract in legacy/current option-related responses. While the new :api[AccountInformation_getAllAccountPositions] endpoint returns a discriminated union as described in [#instrument](Instrument), all other endpoints currently return an option symbol. We’re gradually replacing this legacy construct with the newer discriminated union model.

Common `option_symbol` fields include:

- `id`: SnapTrade’s UUID for the option contract.
- `ticker`: the OCC option symbol, such as `SPY 220819P00200000`.
- `option_type`: `CALL` or `PUT`.
- `strike_price`: the strike price.
- `expiration_date`: the expiration date.
- `underlying_symbol`: the underlying `universal_symbol`.

When placing option trades with :api[Trading_placeMlegOrder], use the OCC option symbol in `legs[].instrument.symbol`.

### Brokerage instrument

A brokerage instrument describes what a brokerage can support for trading. :api[ReferenceData_listAllBrokerageInstruments] returns brokerage-level instruments with fields such as:

- `symbol`: the brokerage trading symbol, in canonical SnapTrade format.
- `exchange_mic`: the exchange MIC code, when available.
- `tradeable`: whether the brokerage reports the instrument as tradeable. `null` means SnapTrade does not know.
- `fractionable`: whether the brokerage reports support for fractional units. `null` means SnapTrade does not know.
- `universal_symbol_id`: the related SnapTrade universal symbol ID, when available.

Brokerage-level support is not the same as account-level permission. A symbol can be listed as tradable by the brokerage while a specific account is read-only, restricted, or not approved for that asset class.

## Read use cases

When reading account data, treat SnapTrade symbol fields as normalized metadata about what the brokerage returned. Choose the identifier based on the job you are doing.

| Use case | Recommended fields |
| --- | --- |
| Display a position or activity to a user | `instrument.symbol`, `instrument.description`, `instrument.currency`, and `instrument.exchange` |
| Match a security to your own security master | Prefer `figi_instrument.figi_code` or `figi_code` when present. Otherwise use `symbol` plus `exchange`, with `currency` as supporting context. |
| Aggregate the same share class across venues | Use `figi_instrument.figi_share_class` when present. Do not treat it as a listing-level identifier. |
| Reconcile SnapTrade responses over time | Store SnapTrade’s `instrument.id` or `universal_symbol.id` when present, plus `symbol`, `exchange`, `currency`, and FIGI fields. |

## Instrument search

For stock, ETF and mutual fund trading flows, avoid depending on real-time symbol search at order-entry time. Instead, cache the brokerage instrument list returned by :api[ReferenceData_listAllBrokerageInstruments] and use that cache to resolve user input to brokerage-supported symbols.

## Trade use cases

Trading is account-specific. For order placement, use the identifier required by the trading endpoint and the connected brokerage account. Avoid using an `instrument.id` or `universal_symbol.id` and prefer passing a symbol directly. Do not assume that every brokerage instrument is available for trade for a given account.

For detailed information and recommendations around trading, see [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade).

## Practical recommendations

- Use `instrument` for newer account-data responses and `universal_symbol` where the endpoint still returns or requires it.
- Use `symbol` for display, user input, and standard equity order placement.
- Use an OCC option symbol for option quotes and option order legs.
- Store SnapTrade IDs when available, but keep `symbol`, `exchange`, `currency`, and FIGI fields for reconciliation and debugging.
- Prefer FIGI for matching against external systems. Use `figi_code` for listing-level matching and `figi_share_class` for share-class aggregation.
- Treat `tradeable` and `fractionable` as brokerage-level, nullable fields. `null` means unknown.
