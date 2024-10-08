/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { SecurityType } from './security-type';
import { Symbol } from './symbol';
import { SymbolCurrency } from './symbol-currency';
import { SymbolExchange } from './symbol-exchange';
import { SymbolFigiInstrument } from './symbol-figi-instrument';

/**
 * The security for the transaction. The field is `null` if the transaction is not related to a security (like a deposit, withdrawal, fee, etc). SnapTrade does a best effort to map the brokerage\'s symbol. In cases where the brokerage symbol is not recognized, the field will be set to `null`.
 * @export
 * @interface UniversalActivitySymbol
 */
export interface UniversalActivitySymbol {
    /**
     * Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
     * @type {string}
     * @memberof UniversalActivitySymbol
     */
    'id'?: string;
    /**
     * The security\'s trading ticker symbol. For example \"AAPL\" for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \"Yahoo Finance Market Coverage and Data Delays\"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a \'.TO\' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix.
     * @type {string}
     * @memberof UniversalActivitySymbol
     */
    'symbol'?: string;
    /**
     * The raw symbol is `symbol` with the exchange suffix removed. For example, if `symbol` is \"VAB.TO\", then `raw_symbol` is \"VAB\".
     * @type {string}
     * @memberof UniversalActivitySymbol
     */
    'raw_symbol'?: string;
    /**
     * A human-readable description of the security. This is usually the company name or ETF name.
     * @type {string}
     * @memberof UniversalActivitySymbol
     */
    'description'?: string | null;
    /**
     * 
     * @type {SymbolCurrency}
     * @memberof UniversalActivitySymbol
     */
    'currency'?: SymbolCurrency;
    /**
     * 
     * @type {SymbolExchange}
     * @memberof UniversalActivitySymbol
     */
    'exchange'?: SymbolExchange;
    /**
     * 
     * @type {SecurityType}
     * @memberof UniversalActivitySymbol
     */
    'type'?: SecurityType;
    /**
     * This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the `figi_code` in the `figi_instrument` child property.
     * @type {string}
     * @memberof UniversalActivitySymbol
     */
    'figi_code'?: string | null;
    /**
     * 
     * @type {SymbolFigiInstrument}
     * @memberof UniversalActivitySymbol
     */
    'figi_instrument'?: SymbolFigiInstrument | null;
}

