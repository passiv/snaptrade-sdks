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
 * Order Type
 * @export
 * @enum {string}
 */

export const OrderType = {
    Limit: 'Limit',
    Market: 'Market',
    StopLimit: 'StopLimit',
    StopLoss: 'StopLoss'
} as const;

export type OrderType = typeof OrderType[keyof typeof OrderType];


