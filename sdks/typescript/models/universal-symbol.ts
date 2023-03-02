/* tslint:disable */
/* eslint-disable */
/**
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This file is auto generated by Konfig (https://konfigthis.com).
 * https://konfigthis.com
 * Do not edit the class manually.
 */

// May contain unused imports in some cases
// @ts-ignore
import { Currency } from './currency';
// May contain unused imports in some cases
// @ts-ignore
import { Exchange } from './exchange';
// May contain unused imports in some cases
// @ts-ignore
import { SecurityType } from './security-type';

/**
 * Universal symbol
 * @export
 * @interface UniversalSymbol
 */
export interface UniversalSymbol {
    /**
     * 
     * @type {string}
     * @memberof UniversalSymbol
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof UniversalSymbol
     */
    'symbol'?: string;
    /**
     * 
     * @type {string}
     * @memberof UniversalSymbol
     */
    'raw_symbol'?: string;
    /**
     * 
     * @type {string}
     * @memberof UniversalSymbol
     */
    'description'?: string | null;
    /**
     * 
     * @type {Currency}
     * @memberof UniversalSymbol
     */
    'currency'?: Currency;
    /**
     * 
     * @type {Exchange}
     * @memberof UniversalSymbol
     */
    'exchange'?: Exchange;
    /**
     * 
     * @type {SecurityType}
     * @memberof UniversalSymbol
     */
    'type'?: SecurityType;
    /**
     * 
     * @type {Array<Currency>}
     * @memberof UniversalSymbol
     */
    'currencies'?: Array<Currency>;
}

