/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Currency } from './currency';
import { SecurityType } from './security-type';
import { SymbolCurrency } from './symbol-currency';
import { SymbolExchange } from './symbol-exchange';
import { SymbolFigiInstrument } from './symbol-figi-instrument';
import { UniversalSymbol } from './universal-symbol';

/**
 * Quote cryptocurrency. This field is only present for cryptocurrency pair orders with a cryptocurrency as quote.
 * @export
 * @interface AccountOrderRecordQuoteUniversalSymbol
 */
export interface AccountOrderRecordQuoteUniversalSymbol {
    /**
     * Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
     * @type {string}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'id': string;
    /**
     * The security\'s trading ticker symbol. For example \"AAPL\" for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \"Yahoo Finance Market Coverage and Data Delays\"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a \'.TO\' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix.
     * @type {string}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'symbol': string;
    /**
     * The raw symbol is `symbol` with the exchange suffix removed. For example, if `symbol` is \"VAB.TO\", then `raw_symbol` is \"VAB\".
     * @type {string}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'raw_symbol': string;
    /**
     * A human-readable description of the security. This is usually the company name or ETF name.
     * @type {string}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'description'?: string | null;
    /**
     * 
     * @type {SymbolCurrency}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'currency': SymbolCurrency;
    /**
     * 
     * @type {SymbolExchange}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'exchange'?: SymbolExchange;
    /**
     * 
     * @type {SecurityType}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'type': SecurityType;
    /**
     * This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the `figi_code` in the `figi_instrument` child property.
     * @type {string}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'figi_code'?: string | null;
    /**
     * 
     * @type {SymbolFigiInstrument}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     */
    'figi_instrument'?: SymbolFigiInstrument | null;
    /**
     * This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this.
     * @type {Array<Currency>}
     * @memberof AccountOrderRecordQuoteUniversalSymbol
     * @deprecated
     */
    'currencies': Array<Currency>;
}

