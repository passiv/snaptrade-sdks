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
import { OptionsSymbol } from './options-symbol';

/**
 * Option Holdings
 * @export
 * @interface OptionsHoldings
 */
export interface OptionsHoldings {
    [key: string]: any;

    /**
     * Options information
     * @type {string}
     * @memberof OptionsHoldings
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof OptionsHoldings
     */
    'symbol'?: string;
    /**
     * 
     * @type {OptionsSymbol}
     * @memberof OptionsHoldings
     */
    'option_symbol'?: OptionsSymbol;
    /**
     * Trade Price if limit or stop limit order
     * @type {number}
     * @memberof OptionsHoldings
     */
    'price'?: number;
    /**
     * 
     * @type {Currency}
     * @memberof OptionsHoldings
     */
    'currency'?: Currency;
    /**
     * Average purchase price for this position
     * @type {number}
     * @memberof OptionsHoldings
     */
    'average_purchase_price'?: number;
}

