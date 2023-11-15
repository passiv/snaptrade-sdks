/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"


/**
 * Stock Exchange
 * @export
 * @interface Exchange
 */
export interface Exchange {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'code'?: string;
    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'mic_code'?: string;
    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'name'?: string;
    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'timezone'?: string;
    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'start_time'?: string;
    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'close_time'?: string;
    /**
     * 
     * @type {string}
     * @memberof Exchange
     */
    'suffix'?: string | null;
}

