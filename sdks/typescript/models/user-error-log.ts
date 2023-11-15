/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"


/**
 * An API error log for a specific SnapTrade user.
 * @export
 * @interface UserErrorLog
 */
export interface UserErrorLog {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof UserErrorLog
     */
    'requestedAt'?: string;
    /**
     * 
     * @type {string}
     * @memberof UserErrorLog
     */
    'response'?: string;
    /**
     * 
     * @type {number}
     * @memberof UserErrorLog
     */
    'statusCode'?: number;
    /**
     * 
     * @type {string}
     * @memberof UserErrorLog
     */
    'queryParams'?: string;
    /**
     * 
     * @type {string}
     * @memberof UserErrorLog
     */
    'httpMethod'?: string;
    /**
     * 
     * @type {string}
     * @memberof UserErrorLog
     */
    'endpoint'?: string;
}

