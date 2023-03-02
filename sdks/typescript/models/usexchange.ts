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
 * US Stock Exchange
 * @export
 * @interface USExchange
 */
export interface USExchange {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'code'?: string;
    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'mic_code'?: string;
    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'name'?: string;
    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'timezone'?: string;
    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'start_time'?: string;
    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'close_time'?: string;
    /**
     * 
     * @type {string}
     * @memberof USExchange
     */
    'suffix'?: string | null;
    /**
     * 
     * @type {boolean}
     * @memberof USExchange
     */
    'allows_cryptocurrency_symbols'?: boolean;
}

