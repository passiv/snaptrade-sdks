/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { UniversalSymbol } from './universal-symbol';

/**
 * 
 * @export
 * @interface ModelPortfolioSecurity
 */
export interface ModelPortfolioSecurity {
    [key: string]: any;

    /**
     * 
     * @type {UniversalSymbol}
     * @memberof ModelPortfolioSecurity
     */
    'symbol'?: UniversalSymbol;
    /**
     * 
     * @type {number}
     * @memberof ModelPortfolioSecurity
     */
    'percent'?: number;
}

