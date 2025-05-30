# Crypto trading

SnapTrade supports specialized crypto-specific trading endpoints for some brokerages such as Kraken, Binance and Coinbase. We recommend that you limit trade requests to 1 trade per second per account to maximize the chances that they are all executed without error.

Trading crypto works with tradable asset pairs. That means you trade a `base` asset (such as crypto or fiat currency) for a `quote` asset (which can also be a crypto or fiat currency), with the direction being determined by the action (eg: BUY or SELL).

## Create a trading connection

By default connections are created with read-only permissions. To create a trading-enabled connection set the `connectionType` body parameter to `trade` when calling the :api[Authentication_loginSnapTradeUser] endpoint.

## Enable trading for existing read-only connections

To enable trading for an existing connection you will have to ask the user to re-authorize access. To generate the re-authorize redirect URL set the `reconnect` body parameter to the ID of the existing connection when calling the :api[Authentication_loginSnapTradeUser] along with `connectionType=trade`.

## Getting a list of tradable asset pairs

Before you execute a trade, we recommend calling the :api[Trading_searchCryptocurrencyPairInstruments] endpoint to fetch a list of tradable pairs. You can filter by the base or quote if you know their ticker. Different brokerages will have different tradable asset pairs and sometimes also different tickers for the same cryptocurrency (eg: `BTC` vs `XXBT`).

This search will return a list of objects for each tradable pair, and each object will also contain a `symbol` property. This value can then be used to get a quote or place a trade.

## Getting a quote for a pair

Using the symbol information from the previous call, call the :api[Trading_getCryptocurrencyPairQuote] endpoint to retrieve a quote. The values returned represent units of the `quote` asset.

## Placing a trade

To place a trade, use the :api[Trading_placeSimpleOrder] endpoint, provide the `symbol` to the `instrument` object, and set the `type` to `"CRYPTOCURRENCY_PAIR"`.
