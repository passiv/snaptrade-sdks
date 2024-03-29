/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"


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

type CashRestrictionTypeEnum = 'ALLOCATE_MAX' | 'RETAIN_MIN'


