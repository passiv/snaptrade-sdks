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
 * Data to login a user via SnapTrade Partner
 * @export
 * @interface SnapTradeLoginUserRequestBody
 */
export interface SnapTradeLoginUserRequestBody {
    /**
     * 
     * @type {string}
     * @memberof SnapTradeLoginUserRequestBody
     */
    'broker'?: string;
    /**
     * 
     * @type {boolean}
     * @memberof SnapTradeLoginUserRequestBody
     */
    'immediateRedirect'?: boolean;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeLoginUserRequestBody
     */
    'customRedirect'?: string;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeLoginUserRequestBody
     */
    'reconnect'?: string;
    /**
     * 
     * @type {string}
     * @memberof SnapTradeLoginUserRequestBody
     */
    'connectionType'?: SnapTradeLoginUserRequestBodyConnectionTypeEnum;
}

export const SnapTradeLoginUserRequestBodyConnectionTypeEnum = {
    Read: 'read',
    Trade: 'trade'
} as const;

export type SnapTradeLoginUserRequestBodyConnectionTypeEnum = typeof SnapTradeLoginUserRequestBodyConnectionTypeEnum[keyof typeof SnapTradeLoginUserRequestBodyConnectionTypeEnum];

