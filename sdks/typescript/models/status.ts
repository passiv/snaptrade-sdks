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
 * Status of API
 * @export
 * @interface Status
 */
export interface Status {
    [key: string]: any;

    /**
     * 
     * @type {number}
     * @memberof Status
     */
    'version'?: number;
    /**
     * 
     * @type {string}
     * @memberof Status
     */
    'timestamp'?: string;
    /**
     * 
     * @type {boolean}
     * @memberof Status
     */
    'online'?: boolean;
}

