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
import { UnderlyingSymbol } from './underlying-symbol';

/**
 * Options Symbol
 * @export
 * @interface OptionsSymbol
 */
export interface OptionsSymbol {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof OptionsSymbol
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof OptionsSymbol
     */
    'ticker'?: string;
    /**
     * 
     * @type {number}
     * @memberof OptionsSymbol
     */
    'strike_price'?: number;
    /**
     * 
     * @type {string}
     * @memberof OptionsSymbol
     */
    'expiration_date'?: string;
    /**
     * 
     * @type {boolean}
     * @memberof OptionsSymbol
     */
    'is_mini_option'?: boolean;
    /**
     * 
     * @type {UnderlyingSymbol}
     * @memberof OptionsSymbol
     */
    'underlying_symbol'?: UnderlyingSymbol;
    /**
     * 
     * @type {string}
     * @memberof OptionsSymbol
     */
    'local_id'?: string;
    /**
     * 
     * @type {any}
     * @memberof OptionsSymbol
     */
    'security_type'?: any;
    /**
     * 
     * @type {any}
     * @memberof OptionsSymbol
     */
    'listing_exchange'?: any;
    /**
     * 
     * @type {boolean}
     * @memberof OptionsSymbol
     */
    'is_quotable'?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof OptionsSymbol
     */
    'is_tradable'?: boolean;
}
