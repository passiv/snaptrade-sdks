/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { Currency } from './currency';
import { Exchange } from './exchange';
import { SecurityType } from './security-type';
import { UniversalSymbol } from './universal-symbol';

/**
 * Symbol returned in position object
 * @export
 * @interface PositionSymbol
 */
export interface PositionSymbol {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof PositionSymbol
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof PositionSymbol
     */
    'description'?: string;
    /**
     * 
     * @type {UniversalSymbol}
     * @memberof PositionSymbol
     */
    'symbol'?: UniversalSymbol;
    /**
     * 
     * @type {string}
     * @memberof PositionSymbol
     */
    'local_id'?: string | null;
    /**
     * 
     * @type {boolean}
     * @memberof PositionSymbol
     */
    'is_quotable'?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof PositionSymbol
     */
    'is_tradable'?: boolean;
}

