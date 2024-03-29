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
 * Details of a security held
 * @export
 * @interface PortfolioGroupPosition
 */
export interface PortfolioGroupPosition {
    [key: string]: any;

    /**
     * 
     * @type {UniversalSymbol}
     * @memberof PortfolioGroupPosition
     */
    'symbol'?: UniversalSymbol;
    /**
     * Last known market price for the symbol
     * @type {number}
     * @memberof PortfolioGroupPosition
     */
    'price'?: number | null;
    /**
     * 
     * @type {number}
     * @memberof PortfolioGroupPosition
     */
    'units'?: number;
}

