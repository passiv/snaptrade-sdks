/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { USExchange } from './usexchange';

/**
 * The exchange on which the security is listed and traded.
 * @export
 * @interface UnderlyingSymbolExchange
 */
export interface UnderlyingSymbolExchange {
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'code'?: string;
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'mic_code'?: string;
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'name'?: string;
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'timezone'?: string;
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'start_time'?: string;
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'close_time'?: string;
    /**
     * 
     * @type {string}
     * @memberof UnderlyingSymbolExchange
     */
    'suffix'?: string | null;
    /**
     * 
     * @type {boolean}
     * @memberof UnderlyingSymbolExchange
     */
    'allows_cryptocurrency_symbols'?: boolean;
}

