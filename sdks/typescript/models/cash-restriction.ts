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
 * Cash restriction rules that apply to this account when undergoing portfolio rebalance calculations.
 * @export
 * @interface CashRestriction
 */
export interface CashRestriction {
    [key: string]: any;

    /**
     * 
     * @type {string}
     * @memberof CashRestriction
     */
    'id'?: string;
    /**
     * 
     * @type {string}
     * @memberof CashRestriction
     */
    'account'?: string;
    /**
     * 
     * @type {string}
     * @memberof CashRestriction
     */
    'currency'?: string;
    /**
     * 
     * @type {string}
     * @memberof CashRestriction
     */
    'type'?: CashRestrictionTypeEnum;
    /**
     * 
     * @type {number}
     * @memberof CashRestriction
     */
    'amount'?: number;
}

export const CashRestrictionTypeEnum = {
    AllocateMax: 'ALLOCATE_MAX',
    RetainMin: 'RETAIN_MIN'
} as const;

export type CashRestrictionTypeEnum = typeof CashRestrictionTypeEnum[keyof typeof CashRestrictionTypeEnum];

