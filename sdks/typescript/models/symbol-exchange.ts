/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Exchange } from './exchange';

/**
 * The exchange on which the security is listed and traded.
 * @export
 * @interface SymbolExchange
 */
export interface SymbolExchange {
    /**
     * Unique ID for the exchange in SnapTrade.
     * @type {string}
     * @memberof SymbolExchange
     */
    'id'?: string;
    /**
     * A short name for the exchange. For standardized exchange code, please us the `mic_code` field.
     * @type {string}
     * @memberof SymbolExchange
     */
    'code'?: string;
    /**
     * The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange.
     * @type {string}
     * @memberof SymbolExchange
     */
    'mic_code'?: string;
    /**
     * The full name of the exchange.
     * @type {string}
     * @memberof SymbolExchange
     */
    'name'?: string;
    /**
     * The timezone for the trading hours (`start_time` and `close_time`) of the exchange.
     * @type {string}
     * @memberof SymbolExchange
     */
    'timezone'?: string;
    /**
     * The time when the exchange opens for trading.
     * @type {string}
     * @memberof SymbolExchange
     */
    'start_time'?: string;
    /**
     * The time when the exchange closes for trading.
     * @type {string}
     * @memberof SymbolExchange
     */
    'close_time'?: string;
    /**
     * The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is `.TO`. See `UniversalSymbol->symbol` and `UniversalSymbol->raw_symbol` for more detail.
     * @type {string}
     * @memberof SymbolExchange
     */
    'suffix'?: string | null;
}
