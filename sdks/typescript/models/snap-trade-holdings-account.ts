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


/**
 * SnapTradeUser Investment Account
 * @export
 * @interface SnapTradeHoldingsAccount
 */
export interface SnapTradeHoldingsAccount {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof SnapTradeHoldingsAccount
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeHoldingsAccount
     */
    'brokerage_authorization'?: string;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeHoldingsAccount
     */
    'portfolio_group'?: string;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeHoldingsAccount
     */
    'name'?: string | null;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeHoldingsAccount
     */
    'number'?: string;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeHoldingsAccount
     */
    'institution_name'?: string;
    /**
     * 
     * @type {{ [key: string]: any; }}
     * @memberof SnapTradeHoldingsAccount
     */
    'meta'?: { [key: string]: any; };
}

